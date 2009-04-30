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
%module IGESDefs

%include IGESDefs_renames.i

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


%include IGESDefs_dependencies.i


%include IGESDefs_headers.i




%nodefaultctor Handle_IGESDefs_Protocol;
class Handle_IGESDefs_Protocol : public Handle_IGESData_Protocol {
	public:
		%feature("autodoc", "1");
		Handle_IGESDefs_Protocol();
		%feature("autodoc", "1");
		Handle_IGESDefs_Protocol(const Handle_IGESDefs_Protocol &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDefs_Protocol(const IGESDefs_Protocol *anItem);
		%feature("autodoc", "1");
		Handle_IGESDefs_Protocol const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESDefs_Protocol {
	IGESDefs_Protocol* GetObject() {
	return (IGESDefs_Protocol*)$self->Access();
	}
};
%extend Handle_IGESDefs_Protocol {
	~Handle_IGESDefs_Protocol() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_IGESDefs_Protocol\n");}
	}
};


%nodefaultctor Handle_IGESDefs_GeneralModule;
class Handle_IGESDefs_GeneralModule : public Handle_IGESData_GeneralModule {
	public:
		%feature("autodoc", "1");
		Handle_IGESDefs_GeneralModule();
		%feature("autodoc", "1");
		Handle_IGESDefs_GeneralModule(const Handle_IGESDefs_GeneralModule &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDefs_GeneralModule(const IGESDefs_GeneralModule *anItem);
		%feature("autodoc", "1");
		Handle_IGESDefs_GeneralModule const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESDefs_GeneralModule {
	IGESDefs_GeneralModule* GetObject() {
	return (IGESDefs_GeneralModule*)$self->Access();
	}
};
%extend Handle_IGESDefs_GeneralModule {
	~Handle_IGESDefs_GeneralModule() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_IGESDefs_GeneralModule\n");}
	}
};


%nodefaultctor Handle_IGESDefs_AttributeTable;
class Handle_IGESDefs_AttributeTable : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESDefs_AttributeTable();
		%feature("autodoc", "1");
		Handle_IGESDefs_AttributeTable(const Handle_IGESDefs_AttributeTable &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDefs_AttributeTable(const IGESDefs_AttributeTable *anItem);
		%feature("autodoc", "1");
		Handle_IGESDefs_AttributeTable const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESDefs_AttributeTable {
	IGESDefs_AttributeTable* GetObject() {
	return (IGESDefs_AttributeTable*)$self->Access();
	}
};
%extend Handle_IGESDefs_AttributeTable {
	~Handle_IGESDefs_AttributeTable() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_IGESDefs_AttributeTable\n");}
	}
};


%nodefaultctor Handle_IGESDefs_GenericData;
class Handle_IGESDefs_GenericData : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESDefs_GenericData();
		%feature("autodoc", "1");
		Handle_IGESDefs_GenericData(const Handle_IGESDefs_GenericData &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDefs_GenericData(const IGESDefs_GenericData *anItem);
		%feature("autodoc", "1");
		Handle_IGESDefs_GenericData const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESDefs_GenericData {
	IGESDefs_GenericData* GetObject() {
	return (IGESDefs_GenericData*)$self->Access();
	}
};
%extend Handle_IGESDefs_GenericData {
	~Handle_IGESDefs_GenericData() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_IGESDefs_GenericData\n");}
	}
};


%nodefaultctor Handle_IGESDefs_HArray1OfHArray1OfTextDisplayTemplate;
class Handle_IGESDefs_HArray1OfHArray1OfTextDisplayTemplate : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_IGESDefs_HArray1OfHArray1OfTextDisplayTemplate();
		%feature("autodoc", "1");
		Handle_IGESDefs_HArray1OfHArray1OfTextDisplayTemplate(const Handle_IGESDefs_HArray1OfHArray1OfTextDisplayTemplate &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDefs_HArray1OfHArray1OfTextDisplayTemplate(const IGESDefs_HArray1OfHArray1OfTextDisplayTemplate *anItem);
		%feature("autodoc", "1");
		Handle_IGESDefs_HArray1OfHArray1OfTextDisplayTemplate const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESDefs_HArray1OfHArray1OfTextDisplayTemplate {
	IGESDefs_HArray1OfHArray1OfTextDisplayTemplate* GetObject() {
	return (IGESDefs_HArray1OfHArray1OfTextDisplayTemplate*)$self->Access();
	}
};
%extend Handle_IGESDefs_HArray1OfHArray1OfTextDisplayTemplate {
	~Handle_IGESDefs_HArray1OfHArray1OfTextDisplayTemplate() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_IGESDefs_HArray1OfHArray1OfTextDisplayTemplate\n");}
	}
};


%nodefaultctor Handle_IGESDefs_SpecificModule;
class Handle_IGESDefs_SpecificModule : public Handle_IGESData_SpecificModule {
	public:
		%feature("autodoc", "1");
		Handle_IGESDefs_SpecificModule();
		%feature("autodoc", "1");
		Handle_IGESDefs_SpecificModule(const Handle_IGESDefs_SpecificModule &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDefs_SpecificModule(const IGESDefs_SpecificModule *anItem);
		%feature("autodoc", "1");
		Handle_IGESDefs_SpecificModule const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESDefs_SpecificModule {
	IGESDefs_SpecificModule* GetObject() {
	return (IGESDefs_SpecificModule*)$self->Access();
	}
};
%extend Handle_IGESDefs_SpecificModule {
	~Handle_IGESDefs_SpecificModule() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_IGESDefs_SpecificModule\n");}
	}
};


%nodefaultctor Handle_IGESDefs_HArray1OfTabularData;
class Handle_IGESDefs_HArray1OfTabularData : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_IGESDefs_HArray1OfTabularData();
		%feature("autodoc", "1");
		Handle_IGESDefs_HArray1OfTabularData(const Handle_IGESDefs_HArray1OfTabularData &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDefs_HArray1OfTabularData(const IGESDefs_HArray1OfTabularData *anItem);
		%feature("autodoc", "1");
		Handle_IGESDefs_HArray1OfTabularData const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESDefs_HArray1OfTabularData {
	IGESDefs_HArray1OfTabularData* GetObject() {
	return (IGESDefs_HArray1OfTabularData*)$self->Access();
	}
};
%extend Handle_IGESDefs_HArray1OfTabularData {
	~Handle_IGESDefs_HArray1OfTabularData() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_IGESDefs_HArray1OfTabularData\n");}
	}
};


%nodefaultctor Handle_IGESDefs_AssociativityDef;
class Handle_IGESDefs_AssociativityDef : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESDefs_AssociativityDef();
		%feature("autodoc", "1");
		Handle_IGESDefs_AssociativityDef(const Handle_IGESDefs_AssociativityDef &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDefs_AssociativityDef(const IGESDefs_AssociativityDef *anItem);
		%feature("autodoc", "1");
		Handle_IGESDefs_AssociativityDef const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESDefs_AssociativityDef {
	IGESDefs_AssociativityDef* GetObject() {
	return (IGESDefs_AssociativityDef*)$self->Access();
	}
};
%extend Handle_IGESDefs_AssociativityDef {
	~Handle_IGESDefs_AssociativityDef() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_IGESDefs_AssociativityDef\n");}
	}
};


%nodefaultctor Handle_IGESDefs_AttributeDef;
class Handle_IGESDefs_AttributeDef : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESDefs_AttributeDef();
		%feature("autodoc", "1");
		Handle_IGESDefs_AttributeDef(const Handle_IGESDefs_AttributeDef &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDefs_AttributeDef(const IGESDefs_AttributeDef *anItem);
		%feature("autodoc", "1");
		Handle_IGESDefs_AttributeDef const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESDefs_AttributeDef {
	IGESDefs_AttributeDef* GetObject() {
	return (IGESDefs_AttributeDef*)$self->Access();
	}
};
%extend Handle_IGESDefs_AttributeDef {
	~Handle_IGESDefs_AttributeDef() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_IGESDefs_AttributeDef\n");}
	}
};


%nodefaultctor Handle_IGESDefs_UnitsData;
class Handle_IGESDefs_UnitsData : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESDefs_UnitsData();
		%feature("autodoc", "1");
		Handle_IGESDefs_UnitsData(const Handle_IGESDefs_UnitsData &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDefs_UnitsData(const IGESDefs_UnitsData *anItem);
		%feature("autodoc", "1");
		Handle_IGESDefs_UnitsData const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESDefs_UnitsData {
	IGESDefs_UnitsData* GetObject() {
	return (IGESDefs_UnitsData*)$self->Access();
	}
};
%extend Handle_IGESDefs_UnitsData {
	~Handle_IGESDefs_UnitsData() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_IGESDefs_UnitsData\n");}
	}
};


%nodefaultctor Handle_IGESDefs_ReadWriteModule;
class Handle_IGESDefs_ReadWriteModule : public Handle_IGESData_ReadWriteModule {
	public:
		%feature("autodoc", "1");
		Handle_IGESDefs_ReadWriteModule();
		%feature("autodoc", "1");
		Handle_IGESDefs_ReadWriteModule(const Handle_IGESDefs_ReadWriteModule &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDefs_ReadWriteModule(const IGESDefs_ReadWriteModule *anItem);
		%feature("autodoc", "1");
		Handle_IGESDefs_ReadWriteModule const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESDefs_ReadWriteModule {
	IGESDefs_ReadWriteModule* GetObject() {
	return (IGESDefs_ReadWriteModule*)$self->Access();
	}
};
%extend Handle_IGESDefs_ReadWriteModule {
	~Handle_IGESDefs_ReadWriteModule() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_IGESDefs_ReadWriteModule\n");}
	}
};


%nodefaultctor Handle_IGESDefs_MacroDef;
class Handle_IGESDefs_MacroDef : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESDefs_MacroDef();
		%feature("autodoc", "1");
		Handle_IGESDefs_MacroDef(const Handle_IGESDefs_MacroDef &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDefs_MacroDef(const IGESDefs_MacroDef *anItem);
		%feature("autodoc", "1");
		Handle_IGESDefs_MacroDef const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESDefs_MacroDef {
	IGESDefs_MacroDef* GetObject() {
	return (IGESDefs_MacroDef*)$self->Access();
	}
};
%extend Handle_IGESDefs_MacroDef {
	~Handle_IGESDefs_MacroDef() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_IGESDefs_MacroDef\n");}
	}
};


%nodefaultctor Handle_IGESDefs_TabularData;
class Handle_IGESDefs_TabularData : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESDefs_TabularData();
		%feature("autodoc", "1");
		Handle_IGESDefs_TabularData(const Handle_IGESDefs_TabularData &aHandle);
		%feature("autodoc", "1");
		Handle_IGESDefs_TabularData(const IGESDefs_TabularData *anItem);
		%feature("autodoc", "1");
		Handle_IGESDefs_TabularData const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESDefs_TabularData {
	IGESDefs_TabularData* GetObject() {
	return (IGESDefs_TabularData*)$self->Access();
	}
};
%extend Handle_IGESDefs_TabularData {
	~Handle_IGESDefs_TabularData() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_IGESDefs_TabularData\n");}
	}
};


%nodefaultctor IGESDefs_GeneralModule;
class IGESDefs_GeneralModule : public IGESData_GeneralModule {
	public:
		%feature("autodoc", "1");
		IGESDefs_GeneralModule();
		%feature("autodoc", "1");
		virtual		void OwnSharedCase(const Standard_Integer CN, const Handle_IGESData_IGESEntity &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		virtual		IGESData_DirChecker DirChecker(const Standard_Integer CN, const Handle_IGESData_IGESEntity &ent) const;
		%feature("autodoc", "1");
		virtual		void OwnCheckCase(const Standard_Integer CN, const Handle_IGESData_IGESEntity &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean NewVoid(const Standard_Integer CN, Handle_Standard_Transient & entto) const;
		%feature("autodoc", "1");
		virtual		void OwnCopyCase(const Standard_Integer CN, const Handle_IGESData_IGESEntity &entfrom, const Handle_IGESData_IGESEntity &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer CategoryNumber(const Standard_Integer CN, const Handle_Standard_Transient &ent, const Interface_ShareTool &shares) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESDefs_GeneralModule {
	Handle_IGESDefs_GeneralModule GetHandle() {
	return *(Handle_IGESDefs_GeneralModule*) &$self;
	}
};
%extend IGESDefs_GeneralModule {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend IGESDefs_GeneralModule {
	~IGESDefs_GeneralModule() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of IGESDefs_GeneralModule\n");}
	}
};


%nodefaultctor IGESDefs_ToolAttributeDef;
class IGESDefs_ToolAttributeDef {
	public:
		%feature("autodoc", "1");
		IGESDefs_ToolAttributeDef();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESDefs_AttributeDef &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESDefs_AttributeDef &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESDefs_AttributeDef &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESDefs_AttributeDef &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESDefs_AttributeDef &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESDefs_AttributeDef &entfrom, const Handle_IGESDefs_AttributeDef &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESDefs_AttributeDef &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%extend IGESDefs_ToolAttributeDef {
	~IGESDefs_ToolAttributeDef() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of IGESDefs_ToolAttributeDef\n");}
	}
};


%nodefaultctor IGESDefs_SpecificModule;
class IGESDefs_SpecificModule : public IGESData_SpecificModule {
	public:
		%feature("autodoc", "1");
		IGESDefs_SpecificModule();
		%feature("autodoc", "1");
		virtual		void OwnDump(const Standard_Integer CN, const Handle_IGESData_IGESEntity &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESDefs_SpecificModule {
	Handle_IGESDefs_SpecificModule GetHandle() {
	return *(Handle_IGESDefs_SpecificModule*) &$self;
	}
};
%extend IGESDefs_SpecificModule {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend IGESDefs_SpecificModule {
	~IGESDefs_SpecificModule() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of IGESDefs_SpecificModule\n");}
	}
};


%nodefaultctor IGESDefs_ToolAssociativityDef;
class IGESDefs_ToolAssociativityDef {
	public:
		%feature("autodoc", "1");
		IGESDefs_ToolAssociativityDef();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESDefs_AssociativityDef &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESDefs_AssociativityDef &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESDefs_AssociativityDef &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESDefs_AssociativityDef &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESDefs_AssociativityDef &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESDefs_AssociativityDef &entfrom, const Handle_IGESDefs_AssociativityDef &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESDefs_AssociativityDef &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%extend IGESDefs_ToolAssociativityDef {
	~IGESDefs_ToolAssociativityDef() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of IGESDefs_ToolAssociativityDef\n");}
	}
};


%nodefaultctor IGESDefs_ReadWriteModule;
class IGESDefs_ReadWriteModule : public IGESData_ReadWriteModule {
	public:
		%feature("autodoc", "1");
		IGESDefs_ReadWriteModule();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseIGES(const Standard_Integer typenum, const Standard_Integer formnum) const;
		%feature("autodoc", "1");
		virtual		void ReadOwnParams(const Standard_Integer CN, const Handle_IGESData_IGESEntity &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		virtual		void WriteOwnParams(const Standard_Integer CN, const Handle_IGESData_IGESEntity &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESDefs_ReadWriteModule {
	Handle_IGESDefs_ReadWriteModule GetHandle() {
	return *(Handle_IGESDefs_ReadWriteModule*) &$self;
	}
};
%extend IGESDefs_ReadWriteModule {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend IGESDefs_ReadWriteModule {
	~IGESDefs_ReadWriteModule() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of IGESDefs_ReadWriteModule\n");}
	}
};


%nodefaultctor IGESDefs_AssociativityDef;
class IGESDefs_AssociativityDef : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESDefs_AssociativityDef();
		%feature("autodoc", "1");
		void Init(const Handle_TColStd_HArray1OfInteger &requirements, const Handle_TColStd_HArray1OfInteger &orders, const Handle_TColStd_HArray1OfInteger &numItems, const Handle_IGESBasic_HArray1OfHArray1OfInteger &items);
		%feature("autodoc", "1");
		void SetFormNumber(const Standard_Integer form);
		%feature("autodoc", "1");
		Standard_Integer NbClassDefs() const;
		%feature("autodoc", "1");
		Standard_Boolean IsBackPointerReq(const Standard_Integer ClassNum) const;
		%feature("autodoc", "1");
		Standard_Integer BackPointerReq(const Standard_Integer ClassNum) const;
		%feature("autodoc", "1");
		Standard_Boolean IsOrdered(const Standard_Integer ClassNum) const;
		%feature("autodoc", "1");
		Standard_Integer ClassOrder(const Standard_Integer ClassNum) const;
		%feature("autodoc", "1");
		Standard_Integer NbItemsPerClass(const Standard_Integer ClassNum) const;
		%feature("autodoc", "1");
		Standard_Integer Item(const Standard_Integer ClassNum, const Standard_Integer ItemNum) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESDefs_AssociativityDef {
	Handle_IGESDefs_AssociativityDef GetHandle() {
	return *(Handle_IGESDefs_AssociativityDef*) &$self;
	}
};
%extend IGESDefs_AssociativityDef {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend IGESDefs_AssociativityDef {
	~IGESDefs_AssociativityDef() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of IGESDefs_AssociativityDef\n");}
	}
};


%nodefaultctor IGESDefs;
class IGESDefs {
	public:
		%feature("autodoc", "1");
		IGESDefs();
		%feature("autodoc", "1");
		void Init();
		%feature("autodoc", "1");
		Handle_IGESDefs_Protocol Protocol();

};
%extend IGESDefs {
	~IGESDefs() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of IGESDefs\n");}
	}
};


%nodefaultctor IGESDefs_AttributeTable;
class IGESDefs_AttributeTable : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESDefs_AttributeTable();
		%feature("autodoc", "1");
		void Init(const Handle_TColStd_HArray2OfTransient &attributes);
		%feature("autodoc", "1");
		void SetDefinition(const Handle_IGESDefs_AttributeDef &def);
		%feature("autodoc", "1");
		Handle_IGESDefs_AttributeDef Definition() const;
		%feature("autodoc", "1");
		Standard_Integer NbRows() const;
		%feature("autodoc", "1");
		Standard_Integer NbAttributes() const;
		%feature("autodoc", "1");
		Standard_Integer DataType(const Standard_Integer Atnum) const;
		%feature("autodoc", "1");
		Standard_Integer ValueCount(const Standard_Integer Atnum) const;
		%feature("autodoc", "1");
		Handle_Standard_Transient AttributeList(const Standard_Integer Attribnum, const Standard_Integer Rownum) const;
		%feature("autodoc", "1");
		Standard_Integer AttributeAsInteger(const Standard_Integer AtNum, const Standard_Integer Rownum, const Standard_Integer ValNum) const;
		%feature("autodoc", "1");
		Standard_Real AttributeAsReal(const Standard_Integer AtNum, const Standard_Integer Rownum, const Standard_Integer ValNum) const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString AttributeAsString(const Standard_Integer AtNum, const Standard_Integer Rownum, const Standard_Integer ValNum) const;
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity AttributeAsEntity(const Standard_Integer AtNum, const Standard_Integer Rownum, const Standard_Integer ValNum) const;
		%feature("autodoc", "1");
		Standard_Boolean AttributeAsLogical(const Standard_Integer AtNum, const Standard_Integer Rownum, const Standard_Integer ValNum) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESDefs_AttributeTable {
	Handle_IGESDefs_AttributeTable GetHandle() {
	return *(Handle_IGESDefs_AttributeTable*) &$self;
	}
};
%extend IGESDefs_AttributeTable {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend IGESDefs_AttributeTable {
	~IGESDefs_AttributeTable() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of IGESDefs_AttributeTable\n");}
	}
};


%nodefaultctor IGESDefs_ToolUnitsData;
class IGESDefs_ToolUnitsData {
	public:
		%feature("autodoc", "1");
		IGESDefs_ToolUnitsData();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESDefs_UnitsData &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESDefs_UnitsData &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESDefs_UnitsData &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESDefs_UnitsData &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESDefs_UnitsData &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESDefs_UnitsData &entfrom, const Handle_IGESDefs_UnitsData &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESDefs_UnitsData &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%extend IGESDefs_ToolUnitsData {
	~IGESDefs_ToolUnitsData() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of IGESDefs_ToolUnitsData\n");}
	}
};


%nodefaultctor IGESDefs_ToolGenericData;
class IGESDefs_ToolGenericData {
	public:
		%feature("autodoc", "1");
		IGESDefs_ToolGenericData();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESDefs_GenericData &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESDefs_GenericData &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESDefs_GenericData &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESDefs_GenericData &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESDefs_GenericData &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESDefs_GenericData &entfrom, const Handle_IGESDefs_GenericData &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESDefs_GenericData &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%extend IGESDefs_ToolGenericData {
	~IGESDefs_ToolGenericData() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of IGESDefs_ToolGenericData\n");}
	}
};


%nodefaultctor IGESDefs_ToolMacroDef;
class IGESDefs_ToolMacroDef {
	public:
		%feature("autodoc", "1");
		IGESDefs_ToolMacroDef();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESDefs_MacroDef &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESDefs_MacroDef &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESDefs_MacroDef &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESDefs_MacroDef &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESDefs_MacroDef &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESDefs_MacroDef &entfrom, const Handle_IGESDefs_MacroDef &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESDefs_MacroDef &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%extend IGESDefs_ToolMacroDef {
	~IGESDefs_ToolMacroDef() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of IGESDefs_ToolMacroDef\n");}
	}
};


%nodefaultctor IGESDefs_HArray1OfTabularData;
class IGESDefs_HArray1OfTabularData : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		IGESDefs_HArray1OfTabularData(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		IGESDefs_HArray1OfTabularData(const Standard_Integer Low, const Standard_Integer Up, const Handle_IGESDefs_TabularData &V);
		%feature("autodoc", "1");
		void Init(const Handle_IGESDefs_TabularData &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_IGESDefs_TabularData &Value);
		%feature("autodoc", "1");
		const Handle_IGESDefs_TabularData & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_IGESDefs_TabularData & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const IGESDefs_Array1OfTabularData & Array1() const;
		%feature("autodoc", "1");
		IGESDefs_Array1OfTabularData & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESDefs_HArray1OfTabularData {
	Handle_IGESDefs_HArray1OfTabularData GetHandle() {
	return *(Handle_IGESDefs_HArray1OfTabularData*) &$self;
	}
};
%extend IGESDefs_HArray1OfTabularData {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend IGESDefs_HArray1OfTabularData {
	~IGESDefs_HArray1OfTabularData() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of IGESDefs_HArray1OfTabularData\n");}
	}
};


%nodefaultctor IGESDefs_GenericData;
class IGESDefs_GenericData : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESDefs_GenericData();
		%feature("autodoc", "1");
		void Init(const Standard_Integer nbPropVal, const Handle_TCollection_HAsciiString &aName, const Handle_TColStd_HArray1OfInteger &allTypes, const Handle_TColStd_HArray1OfTransient &allValues);
		%feature("autodoc", "1");
		Standard_Integer NbPropertyValues() const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Name() const;
		%feature("autodoc", "1");
		Standard_Integer NbTypeValuePairs() const;
		%feature("autodoc", "1");
		Standard_Integer Type(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_Standard_Transient Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Integer ValueAsInteger(const Standard_Integer ValueNum) const;
		%feature("autodoc", "1");
		Standard_Real ValueAsReal(const Standard_Integer ValueNum) const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString ValueAsString(const Standard_Integer ValueNum) const;
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity ValueAsEntity(const Standard_Integer ValueNum) const;
		%feature("autodoc", "1");
		Standard_Boolean ValueAsLogical(const Standard_Integer ValueNum) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESDefs_GenericData {
	Handle_IGESDefs_GenericData GetHandle() {
	return *(Handle_IGESDefs_GenericData*) &$self;
	}
};
%extend IGESDefs_GenericData {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend IGESDefs_GenericData {
	~IGESDefs_GenericData() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of IGESDefs_GenericData\n");}
	}
};


%nodefaultctor IGESDefs_ToolTabularData;
class IGESDefs_ToolTabularData {
	public:
		%feature("autodoc", "1");
		IGESDefs_ToolTabularData();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESDefs_TabularData &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESDefs_TabularData &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESDefs_TabularData &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESDefs_TabularData &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESDefs_TabularData &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESDefs_TabularData &entfrom, const Handle_IGESDefs_TabularData &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESDefs_TabularData &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%extend IGESDefs_ToolTabularData {
	~IGESDefs_ToolTabularData() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of IGESDefs_ToolTabularData\n");}
	}
};


%nodefaultctor IGESDefs_MacroDef;
class IGESDefs_MacroDef : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESDefs_MacroDef();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &macro, const Standard_Integer entityTypeID, const Handle_Interface_HArray1OfHAsciiString &langStatements, const Handle_TCollection_HAsciiString &endMacro);
		%feature("autodoc", "1");
		Standard_Integer NbStatements() const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString MACRO() const;
		%feature("autodoc", "1");
		Standard_Integer EntityTypeID() const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString LanguageStatement(const Standard_Integer StatNum) const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString ENDMACRO() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESDefs_MacroDef {
	Handle_IGESDefs_MacroDef GetHandle() {
	return *(Handle_IGESDefs_MacroDef*) &$self;
	}
};
%extend IGESDefs_MacroDef {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend IGESDefs_MacroDef {
	~IGESDefs_MacroDef() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of IGESDefs_MacroDef\n");}
	}
};


%nodefaultctor IGESDefs_UnitsData;
class IGESDefs_UnitsData : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESDefs_UnitsData();
		%feature("autodoc", "1");
		void Init(const Handle_Interface_HArray1OfHAsciiString &unitTypes, const Handle_Interface_HArray1OfHAsciiString &unitValues, const Handle_TColStd_HArray1OfReal &unitScales);
		%feature("autodoc", "1");
		Standard_Integer NbUnits() const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString UnitType(const Standard_Integer UnitNum) const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString UnitValue(const Standard_Integer UnitNum) const;
		%feature("autodoc", "1");
		Standard_Real ScaleFactor(const Standard_Integer UnitNum) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESDefs_UnitsData {
	Handle_IGESDefs_UnitsData GetHandle() {
	return *(Handle_IGESDefs_UnitsData*) &$self;
	}
};
%extend IGESDefs_UnitsData {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend IGESDefs_UnitsData {
	~IGESDefs_UnitsData() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of IGESDefs_UnitsData\n");}
	}
};


%nodefaultctor IGESDefs_ToolAttributeTable;
class IGESDefs_ToolAttributeTable {
	public:
		%feature("autodoc", "1");
		IGESDefs_ToolAttributeTable();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESDefs_AttributeTable &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESDefs_AttributeTable &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESDefs_AttributeTable &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESDefs_AttributeTable &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESDefs_AttributeTable &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESDefs_AttributeTable &entfrom, const Handle_IGESDefs_AttributeTable &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESDefs_AttributeTable &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%extend IGESDefs_ToolAttributeTable {
	~IGESDefs_ToolAttributeTable() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of IGESDefs_ToolAttributeTable\n");}
	}
};


%nodefaultctor IGESDefs_AttributeDef;
class IGESDefs_AttributeDef : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESDefs_AttributeDef();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aName, const Standard_Integer aListType, const Handle_TColStd_HArray1OfInteger &attrTypes, const Handle_TColStd_HArray1OfInteger &attrValueDataTypes, const Handle_TColStd_HArray1OfInteger &attrValueCounts, const Handle_TColStd_HArray1OfTransient &attrValues, const Handle_IGESDefs_HArray1OfHArray1OfTextDisplayTemplate &attrValuePointers);
		%feature("autodoc", "1");
		Standard_Boolean HasTableName() const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString TableName() const;
		%feature("autodoc", "1");
		Standard_Integer ListType() const;
		%feature("autodoc", "1");
		Standard_Integer NbAttributes() const;
		%feature("autodoc", "1");
		Standard_Integer AttributeType(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer AttributeValueDataType(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer AttributeValueCount(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Boolean HasValues() const;
		%feature("autodoc", "1");
		Standard_Boolean HasTextDisplay() const;
		%feature("autodoc", "1");
		Handle_IGESGraph_TextDisplayTemplate AttributeTextDisplay(const Standard_Integer AttrNum, const Standard_Integer PointerNum) const;
		%feature("autodoc", "1");
		Handle_Standard_Transient AttributeList(const Standard_Integer AttrNum) const;
		%feature("autodoc", "1");
		Standard_Integer AttributeAsInteger(const Standard_Integer AttrNum, const Standard_Integer ValueNum) const;
		%feature("autodoc", "1");
		Standard_Real AttributeAsReal(const Standard_Integer AttrNum, const Standard_Integer ValueNum) const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString AttributeAsString(const Standard_Integer AttrNum, const Standard_Integer ValueNum) const;
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity AttributeAsEntity(const Standard_Integer AttrNum, const Standard_Integer ValueNum) const;
		%feature("autodoc", "1");
		Standard_Boolean AttributeAsLogical(const Standard_Integer AttrNum, const Standard_Integer ValueNum) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESDefs_AttributeDef {
	Handle_IGESDefs_AttributeDef GetHandle() {
	return *(Handle_IGESDefs_AttributeDef*) &$self;
	}
};
%extend IGESDefs_AttributeDef {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend IGESDefs_AttributeDef {
	~IGESDefs_AttributeDef() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of IGESDefs_AttributeDef\n");}
	}
};


%nodefaultctor IGESDefs_HArray1OfHArray1OfTextDisplayTemplate;
class IGESDefs_HArray1OfHArray1OfTextDisplayTemplate : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		IGESDefs_HArray1OfHArray1OfTextDisplayTemplate(const Standard_Integer low, const Standard_Integer up);
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer num, const Handle_IGESGraph_HArray1OfTextDisplayTemplate &val);
		%feature("autodoc", "1");
		Handle_IGESGraph_HArray1OfTextDisplayTemplate Value(const Standard_Integer num) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESDefs_HArray1OfHArray1OfTextDisplayTemplate {
	Handle_IGESDefs_HArray1OfHArray1OfTextDisplayTemplate GetHandle() {
	return *(Handle_IGESDefs_HArray1OfHArray1OfTextDisplayTemplate*) &$self;
	}
};
%extend IGESDefs_HArray1OfHArray1OfTextDisplayTemplate {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend IGESDefs_HArray1OfHArray1OfTextDisplayTemplate {
	~IGESDefs_HArray1OfHArray1OfTextDisplayTemplate() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of IGESDefs_HArray1OfHArray1OfTextDisplayTemplate\n");}
	}
};


%nodefaultctor IGESDefs_TabularData;
class IGESDefs_TabularData : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESDefs_TabularData();
		%feature("autodoc", "1");
		void Init(const Standard_Integer nbProps, const Standard_Integer propType, const Handle_TColStd_HArray1OfInteger &typesInd, const Handle_TColStd_HArray1OfInteger &nbValuesInd, const Handle_IGESBasic_HArray1OfHArray1OfReal &valuesInd, const Handle_IGESBasic_HArray1OfHArray1OfReal &valuesDep);
		%feature("autodoc", "1");
		Standard_Integer NbPropertyValues() const;
		%feature("autodoc", "1");
		Standard_Integer ComputedNbPropertyValues() const;
		%feature("autodoc", "1");
		Standard_Boolean OwnCorrect();
		%feature("autodoc", "1");
		Standard_Integer PropertyType() const;
		%feature("autodoc", "1");
		Standard_Integer NbDependents() const;
		%feature("autodoc", "1");
		Standard_Integer NbIndependents() const;
		%feature("autodoc", "1");
		Standard_Integer TypeOfIndependents(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer NbValues(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Real IndependentValue(const Standard_Integer variablenum, const Standard_Integer valuenum) const;
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal DependentValues(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Real DependentValue(const Standard_Integer variablenum, const Standard_Integer valuenum) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESDefs_TabularData {
	Handle_IGESDefs_TabularData GetHandle() {
	return *(Handle_IGESDefs_TabularData*) &$self;
	}
};
%extend IGESDefs_TabularData {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend IGESDefs_TabularData {
	~IGESDefs_TabularData() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of IGESDefs_TabularData\n");}
	}
};


%nodefaultctor IGESDefs_Array1OfTabularData;
class IGESDefs_Array1OfTabularData {
	public:
		%feature("autodoc", "1");
		IGESDefs_Array1OfTabularData(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		IGESDefs_Array1OfTabularData(const Handle_IGESDefs_TabularData &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Handle_IGESDefs_TabularData &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const IGESDefs_Array1OfTabularData & Assign(const IGESDefs_Array1OfTabularData &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_IGESDefs_TabularData &Value);
		%feature("autodoc", "1");
		const Handle_IGESDefs_TabularData & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_IGESDefs_TabularData & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_IGESDefs_TabularData & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_IGESDefs_TabularData & operator()(const Standard_Integer Index);

};
%extend IGESDefs_Array1OfTabularData {
	~IGESDefs_Array1OfTabularData() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of IGESDefs_Array1OfTabularData\n");}
	}
};
