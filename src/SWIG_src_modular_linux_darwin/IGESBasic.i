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
%module IGESBasic

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


%include IGESBasic_dependencies.i


%include IGESBasic_headers.i




%nodefaultctor Handle_IGESBasic_ReadWriteModule;
class Handle_IGESBasic_ReadWriteModule : public Handle_IGESData_ReadWriteModule {
	public:
		%feature("autodoc", "1");
		Handle_IGESBasic_ReadWriteModule();
		%feature("autodoc", "1");
		Handle_IGESBasic_ReadWriteModule(const Handle_IGESBasic_ReadWriteModule &aHandle);
		%feature("autodoc", "1");
		Handle_IGESBasic_ReadWriteModule(const IGESBasic_ReadWriteModule *anItem);
		%feature("autodoc", "1");
		Handle_IGESBasic_ReadWriteModule const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESBasic_ReadWriteModule {
	IGESBasic_ReadWriteModule* GetObject() {
	return (IGESBasic_ReadWriteModule*)$self->Access();
	}
};
%extend Handle_IGESBasic_ReadWriteModule {
	~Handle_IGESBasic_ReadWriteModule() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_IGESBasic_ReadWriteModule\n");}
	}
};

%nodefaultctor Handle_IGESBasic_SingleParent;
class Handle_IGESBasic_SingleParent : public Handle_IGESData_SingleParentEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESBasic_SingleParent();
		%feature("autodoc", "1");
		Handle_IGESBasic_SingleParent(const Handle_IGESBasic_SingleParent &aHandle);
		%feature("autodoc", "1");
		Handle_IGESBasic_SingleParent(const IGESBasic_SingleParent *anItem);
		%feature("autodoc", "1");
		Handle_IGESBasic_SingleParent const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESBasic_SingleParent {
	IGESBasic_SingleParent* GetObject() {
	return (IGESBasic_SingleParent*)$self->Access();
	}
};
%extend Handle_IGESBasic_SingleParent {
	~Handle_IGESBasic_SingleParent() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_IGESBasic_SingleParent\n");}
	}
};

%nodefaultctor Handle_IGESBasic_ExternalRefLibName;
class Handle_IGESBasic_ExternalRefLibName : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESBasic_ExternalRefLibName();
		%feature("autodoc", "1");
		Handle_IGESBasic_ExternalRefLibName(const Handle_IGESBasic_ExternalRefLibName &aHandle);
		%feature("autodoc", "1");
		Handle_IGESBasic_ExternalRefLibName(const IGESBasic_ExternalRefLibName *anItem);
		%feature("autodoc", "1");
		Handle_IGESBasic_ExternalRefLibName const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESBasic_ExternalRefLibName {
	IGESBasic_ExternalRefLibName* GetObject() {
	return (IGESBasic_ExternalRefLibName*)$self->Access();
	}
};
%extend Handle_IGESBasic_ExternalRefLibName {
	~Handle_IGESBasic_ExternalRefLibName() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_IGESBasic_ExternalRefLibName\n");}
	}
};

%nodefaultctor Handle_IGESBasic_Protocol;
class Handle_IGESBasic_Protocol : public Handle_IGESData_Protocol {
	public:
		%feature("autodoc", "1");
		Handle_IGESBasic_Protocol();
		%feature("autodoc", "1");
		Handle_IGESBasic_Protocol(const Handle_IGESBasic_Protocol &aHandle);
		%feature("autodoc", "1");
		Handle_IGESBasic_Protocol(const IGESBasic_Protocol *anItem);
		%feature("autodoc", "1");
		Handle_IGESBasic_Protocol const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESBasic_Protocol {
	IGESBasic_Protocol* GetObject() {
	return (IGESBasic_Protocol*)$self->Access();
	}
};
%extend Handle_IGESBasic_Protocol {
	~Handle_IGESBasic_Protocol() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_IGESBasic_Protocol\n");}
	}
};

%nodefaultctor Handle_IGESBasic_HArray1OfHArray1OfXYZ;
class Handle_IGESBasic_HArray1OfHArray1OfXYZ : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_IGESBasic_HArray1OfHArray1OfXYZ();
		%feature("autodoc", "1");
		Handle_IGESBasic_HArray1OfHArray1OfXYZ(const Handle_IGESBasic_HArray1OfHArray1OfXYZ &aHandle);
		%feature("autodoc", "1");
		Handle_IGESBasic_HArray1OfHArray1OfXYZ(const IGESBasic_HArray1OfHArray1OfXYZ *anItem);
		%feature("autodoc", "1");
		Handle_IGESBasic_HArray1OfHArray1OfXYZ const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESBasic_HArray1OfHArray1OfXYZ {
	IGESBasic_HArray1OfHArray1OfXYZ* GetObject() {
	return (IGESBasic_HArray1OfHArray1OfXYZ*)$self->Access();
	}
};
%extend Handle_IGESBasic_HArray1OfHArray1OfXYZ {
	~Handle_IGESBasic_HArray1OfHArray1OfXYZ() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_IGESBasic_HArray1OfHArray1OfXYZ\n");}
	}
};

%nodefaultctor Handle_IGESBasic_Group;
class Handle_IGESBasic_Group : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESBasic_Group();
		%feature("autodoc", "1");
		Handle_IGESBasic_Group(const Handle_IGESBasic_Group &aHandle);
		%feature("autodoc", "1");
		Handle_IGESBasic_Group(const IGESBasic_Group *anItem);
		%feature("autodoc", "1");
		Handle_IGESBasic_Group const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESBasic_Group {
	IGESBasic_Group* GetObject() {
	return (IGESBasic_Group*)$self->Access();
	}
};
%extend Handle_IGESBasic_Group {
	~Handle_IGESBasic_Group() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_IGESBasic_Group\n");}
	}
};

%nodefaultctor Handle_IGESBasic_GroupWithoutBackP;
class Handle_IGESBasic_GroupWithoutBackP : public Handle_IGESBasic_Group {
	public:
		%feature("autodoc", "1");
		Handle_IGESBasic_GroupWithoutBackP();
		%feature("autodoc", "1");
		Handle_IGESBasic_GroupWithoutBackP(const Handle_IGESBasic_GroupWithoutBackP &aHandle);
		%feature("autodoc", "1");
		Handle_IGESBasic_GroupWithoutBackP(const IGESBasic_GroupWithoutBackP *anItem);
		%feature("autodoc", "1");
		Handle_IGESBasic_GroupWithoutBackP const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESBasic_GroupWithoutBackP {
	IGESBasic_GroupWithoutBackP* GetObject() {
	return (IGESBasic_GroupWithoutBackP*)$self->Access();
	}
};
%extend Handle_IGESBasic_GroupWithoutBackP {
	~Handle_IGESBasic_GroupWithoutBackP() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_IGESBasic_GroupWithoutBackP\n");}
	}
};

%nodefaultctor Handle_IGESBasic_Hierarchy;
class Handle_IGESBasic_Hierarchy : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESBasic_Hierarchy();
		%feature("autodoc", "1");
		Handle_IGESBasic_Hierarchy(const Handle_IGESBasic_Hierarchy &aHandle);
		%feature("autodoc", "1");
		Handle_IGESBasic_Hierarchy(const IGESBasic_Hierarchy *anItem);
		%feature("autodoc", "1");
		Handle_IGESBasic_Hierarchy const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESBasic_Hierarchy {
	IGESBasic_Hierarchy* GetObject() {
	return (IGESBasic_Hierarchy*)$self->Access();
	}
};
%extend Handle_IGESBasic_Hierarchy {
	~Handle_IGESBasic_Hierarchy() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_IGESBasic_Hierarchy\n");}
	}
};

%nodefaultctor Handle_IGESBasic_HArray1OfHArray1OfInteger;
class Handle_IGESBasic_HArray1OfHArray1OfInteger : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_IGESBasic_HArray1OfHArray1OfInteger();
		%feature("autodoc", "1");
		Handle_IGESBasic_HArray1OfHArray1OfInteger(const Handle_IGESBasic_HArray1OfHArray1OfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_IGESBasic_HArray1OfHArray1OfInteger(const IGESBasic_HArray1OfHArray1OfInteger *anItem);
		%feature("autodoc", "1");
		Handle_IGESBasic_HArray1OfHArray1OfInteger const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESBasic_HArray1OfHArray1OfInteger {
	IGESBasic_HArray1OfHArray1OfInteger* GetObject() {
	return (IGESBasic_HArray1OfHArray1OfInteger*)$self->Access();
	}
};
%extend Handle_IGESBasic_HArray1OfHArray1OfInteger {
	~Handle_IGESBasic_HArray1OfHArray1OfInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_IGESBasic_HArray1OfHArray1OfInteger\n");}
	}
};

%nodefaultctor Handle_IGESBasic_SingularSubfigure;
class Handle_IGESBasic_SingularSubfigure : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESBasic_SingularSubfigure();
		%feature("autodoc", "1");
		Handle_IGESBasic_SingularSubfigure(const Handle_IGESBasic_SingularSubfigure &aHandle);
		%feature("autodoc", "1");
		Handle_IGESBasic_SingularSubfigure(const IGESBasic_SingularSubfigure *anItem);
		%feature("autodoc", "1");
		Handle_IGESBasic_SingularSubfigure const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESBasic_SingularSubfigure {
	IGESBasic_SingularSubfigure* GetObject() {
	return (IGESBasic_SingularSubfigure*)$self->Access();
	}
};
%extend Handle_IGESBasic_SingularSubfigure {
	~Handle_IGESBasic_SingularSubfigure() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_IGESBasic_SingularSubfigure\n");}
	}
};

%nodefaultctor Handle_IGESBasic_HArray1OfLineFontEntity;
class Handle_IGESBasic_HArray1OfLineFontEntity : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_IGESBasic_HArray1OfLineFontEntity();
		%feature("autodoc", "1");
		Handle_IGESBasic_HArray1OfLineFontEntity(const Handle_IGESBasic_HArray1OfLineFontEntity &aHandle);
		%feature("autodoc", "1");
		Handle_IGESBasic_HArray1OfLineFontEntity(const IGESBasic_HArray1OfLineFontEntity *anItem);
		%feature("autodoc", "1");
		Handle_IGESBasic_HArray1OfLineFontEntity const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESBasic_HArray1OfLineFontEntity {
	IGESBasic_HArray1OfLineFontEntity* GetObject() {
	return (IGESBasic_HArray1OfLineFontEntity*)$self->Access();
	}
};
%extend Handle_IGESBasic_HArray1OfLineFontEntity {
	~Handle_IGESBasic_HArray1OfLineFontEntity() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_IGESBasic_HArray1OfLineFontEntity\n");}
	}
};

%nodefaultctor Handle_IGESBasic_ExternalRefFileName;
class Handle_IGESBasic_ExternalRefFileName : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESBasic_ExternalRefFileName();
		%feature("autodoc", "1");
		Handle_IGESBasic_ExternalRefFileName(const Handle_IGESBasic_ExternalRefFileName &aHandle);
		%feature("autodoc", "1");
		Handle_IGESBasic_ExternalRefFileName(const IGESBasic_ExternalRefFileName *anItem);
		%feature("autodoc", "1");
		Handle_IGESBasic_ExternalRefFileName const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESBasic_ExternalRefFileName {
	IGESBasic_ExternalRefFileName* GetObject() {
	return (IGESBasic_ExternalRefFileName*)$self->Access();
	}
};
%extend Handle_IGESBasic_ExternalRefFileName {
	~Handle_IGESBasic_ExternalRefFileName() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_IGESBasic_ExternalRefFileName\n");}
	}
};

%nodefaultctor Handle_IGESBasic_HArray2OfHArray1OfReal;
class Handle_IGESBasic_HArray2OfHArray1OfReal : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_IGESBasic_HArray2OfHArray1OfReal();
		%feature("autodoc", "1");
		Handle_IGESBasic_HArray2OfHArray1OfReal(const Handle_IGESBasic_HArray2OfHArray1OfReal &aHandle);
		%feature("autodoc", "1");
		Handle_IGESBasic_HArray2OfHArray1OfReal(const IGESBasic_HArray2OfHArray1OfReal *anItem);
		%feature("autodoc", "1");
		Handle_IGESBasic_HArray2OfHArray1OfReal const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESBasic_HArray2OfHArray1OfReal {
	IGESBasic_HArray2OfHArray1OfReal* GetObject() {
	return (IGESBasic_HArray2OfHArray1OfReal*)$self->Access();
	}
};
%extend Handle_IGESBasic_HArray2OfHArray1OfReal {
	~Handle_IGESBasic_HArray2OfHArray1OfReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_IGESBasic_HArray2OfHArray1OfReal\n");}
	}
};

%nodefaultctor Handle_IGESBasic_AssocGroupType;
class Handle_IGESBasic_AssocGroupType : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESBasic_AssocGroupType();
		%feature("autodoc", "1");
		Handle_IGESBasic_AssocGroupType(const Handle_IGESBasic_AssocGroupType &aHandle);
		%feature("autodoc", "1");
		Handle_IGESBasic_AssocGroupType(const IGESBasic_AssocGroupType *anItem);
		%feature("autodoc", "1");
		Handle_IGESBasic_AssocGroupType const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESBasic_AssocGroupType {
	IGESBasic_AssocGroupType* GetObject() {
	return (IGESBasic_AssocGroupType*)$self->Access();
	}
};
%extend Handle_IGESBasic_AssocGroupType {
	~Handle_IGESBasic_AssocGroupType() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_IGESBasic_AssocGroupType\n");}
	}
};

%nodefaultctor Handle_IGESBasic_HArray1OfHArray1OfXY;
class Handle_IGESBasic_HArray1OfHArray1OfXY : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_IGESBasic_HArray1OfHArray1OfXY();
		%feature("autodoc", "1");
		Handle_IGESBasic_HArray1OfHArray1OfXY(const Handle_IGESBasic_HArray1OfHArray1OfXY &aHandle);
		%feature("autodoc", "1");
		Handle_IGESBasic_HArray1OfHArray1OfXY(const IGESBasic_HArray1OfHArray1OfXY *anItem);
		%feature("autodoc", "1");
		Handle_IGESBasic_HArray1OfHArray1OfXY const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESBasic_HArray1OfHArray1OfXY {
	IGESBasic_HArray1OfHArray1OfXY* GetObject() {
	return (IGESBasic_HArray1OfHArray1OfXY*)$self->Access();
	}
};
%extend Handle_IGESBasic_HArray1OfHArray1OfXY {
	~Handle_IGESBasic_HArray1OfHArray1OfXY() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_IGESBasic_HArray1OfHArray1OfXY\n");}
	}
};

%nodefaultctor Handle_IGESBasic_Name;
class Handle_IGESBasic_Name : public Handle_IGESData_NameEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESBasic_Name();
		%feature("autodoc", "1");
		Handle_IGESBasic_Name(const Handle_IGESBasic_Name &aHandle);
		%feature("autodoc", "1");
		Handle_IGESBasic_Name(const IGESBasic_Name *anItem);
		%feature("autodoc", "1");
		Handle_IGESBasic_Name const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESBasic_Name {
	IGESBasic_Name* GetObject() {
	return (IGESBasic_Name*)$self->Access();
	}
};
%extend Handle_IGESBasic_Name {
	~Handle_IGESBasic_Name() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_IGESBasic_Name\n");}
	}
};

%nodefaultctor Handle_IGESBasic_OrderedGroup;
class Handle_IGESBasic_OrderedGroup : public Handle_IGESBasic_Group {
	public:
		%feature("autodoc", "1");
		Handle_IGESBasic_OrderedGroup();
		%feature("autodoc", "1");
		Handle_IGESBasic_OrderedGroup(const Handle_IGESBasic_OrderedGroup &aHandle);
		%feature("autodoc", "1");
		Handle_IGESBasic_OrderedGroup(const IGESBasic_OrderedGroup *anItem);
		%feature("autodoc", "1");
		Handle_IGESBasic_OrderedGroup const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESBasic_OrderedGroup {
	IGESBasic_OrderedGroup* GetObject() {
	return (IGESBasic_OrderedGroup*)$self->Access();
	}
};
%extend Handle_IGESBasic_OrderedGroup {
	~Handle_IGESBasic_OrderedGroup() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_IGESBasic_OrderedGroup\n");}
	}
};

%nodefaultctor Handle_IGESBasic_ExternalRefName;
class Handle_IGESBasic_ExternalRefName : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESBasic_ExternalRefName();
		%feature("autodoc", "1");
		Handle_IGESBasic_ExternalRefName(const Handle_IGESBasic_ExternalRefName &aHandle);
		%feature("autodoc", "1");
		Handle_IGESBasic_ExternalRefName(const IGESBasic_ExternalRefName *anItem);
		%feature("autodoc", "1");
		Handle_IGESBasic_ExternalRefName const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESBasic_ExternalRefName {
	IGESBasic_ExternalRefName* GetObject() {
	return (IGESBasic_ExternalRefName*)$self->Access();
	}
};
%extend Handle_IGESBasic_ExternalRefName {
	~Handle_IGESBasic_ExternalRefName() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_IGESBasic_ExternalRefName\n");}
	}
};

%nodefaultctor Handle_IGESBasic_ExternalRefFile;
class Handle_IGESBasic_ExternalRefFile : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESBasic_ExternalRefFile();
		%feature("autodoc", "1");
		Handle_IGESBasic_ExternalRefFile(const Handle_IGESBasic_ExternalRefFile &aHandle);
		%feature("autodoc", "1");
		Handle_IGESBasic_ExternalRefFile(const IGESBasic_ExternalRefFile *anItem);
		%feature("autodoc", "1");
		Handle_IGESBasic_ExternalRefFile const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESBasic_ExternalRefFile {
	IGESBasic_ExternalRefFile* GetObject() {
	return (IGESBasic_ExternalRefFile*)$self->Access();
	}
};
%extend Handle_IGESBasic_ExternalRefFile {
	~Handle_IGESBasic_ExternalRefFile() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_IGESBasic_ExternalRefFile\n");}
	}
};

%nodefaultctor Handle_IGESBasic_SubfigureDef;
class Handle_IGESBasic_SubfigureDef : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESBasic_SubfigureDef();
		%feature("autodoc", "1");
		Handle_IGESBasic_SubfigureDef(const Handle_IGESBasic_SubfigureDef &aHandle);
		%feature("autodoc", "1");
		Handle_IGESBasic_SubfigureDef(const IGESBasic_SubfigureDef *anItem);
		%feature("autodoc", "1");
		Handle_IGESBasic_SubfigureDef const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESBasic_SubfigureDef {
	IGESBasic_SubfigureDef* GetObject() {
	return (IGESBasic_SubfigureDef*)$self->Access();
	}
};
%extend Handle_IGESBasic_SubfigureDef {
	~Handle_IGESBasic_SubfigureDef() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_IGESBasic_SubfigureDef\n");}
	}
};

%nodefaultctor Handle_IGESBasic_ExternalReferenceFile;
class Handle_IGESBasic_ExternalReferenceFile : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESBasic_ExternalReferenceFile();
		%feature("autodoc", "1");
		Handle_IGESBasic_ExternalReferenceFile(const Handle_IGESBasic_ExternalReferenceFile &aHandle);
		%feature("autodoc", "1");
		Handle_IGESBasic_ExternalReferenceFile(const IGESBasic_ExternalReferenceFile *anItem);
		%feature("autodoc", "1");
		Handle_IGESBasic_ExternalReferenceFile const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESBasic_ExternalReferenceFile {
	IGESBasic_ExternalReferenceFile* GetObject() {
	return (IGESBasic_ExternalReferenceFile*)$self->Access();
	}
};
%extend Handle_IGESBasic_ExternalReferenceFile {
	~Handle_IGESBasic_ExternalReferenceFile() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_IGESBasic_ExternalReferenceFile\n");}
	}
};

%nodefaultctor Handle_IGESBasic_HArray1OfHArray1OfReal;
class Handle_IGESBasic_HArray1OfHArray1OfReal : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_IGESBasic_HArray1OfHArray1OfReal();
		%feature("autodoc", "1");
		Handle_IGESBasic_HArray1OfHArray1OfReal(const Handle_IGESBasic_HArray1OfHArray1OfReal &aHandle);
		%feature("autodoc", "1");
		Handle_IGESBasic_HArray1OfHArray1OfReal(const IGESBasic_HArray1OfHArray1OfReal *anItem);
		%feature("autodoc", "1");
		Handle_IGESBasic_HArray1OfHArray1OfReal const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESBasic_HArray1OfHArray1OfReal {
	IGESBasic_HArray1OfHArray1OfReal* GetObject() {
	return (IGESBasic_HArray1OfHArray1OfReal*)$self->Access();
	}
};
%extend Handle_IGESBasic_HArray1OfHArray1OfReal {
	~Handle_IGESBasic_HArray1OfHArray1OfReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_IGESBasic_HArray1OfHArray1OfReal\n");}
	}
};

%nodefaultctor Handle_IGESBasic_ExternalRefFileIndex;
class Handle_IGESBasic_ExternalRefFileIndex : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESBasic_ExternalRefFileIndex();
		%feature("autodoc", "1");
		Handle_IGESBasic_ExternalRefFileIndex(const Handle_IGESBasic_ExternalRefFileIndex &aHandle);
		%feature("autodoc", "1");
		Handle_IGESBasic_ExternalRefFileIndex(const IGESBasic_ExternalRefFileIndex *anItem);
		%feature("autodoc", "1");
		Handle_IGESBasic_ExternalRefFileIndex const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESBasic_ExternalRefFileIndex {
	IGESBasic_ExternalRefFileIndex* GetObject() {
	return (IGESBasic_ExternalRefFileIndex*)$self->Access();
	}
};
%extend Handle_IGESBasic_ExternalRefFileIndex {
	~Handle_IGESBasic_ExternalRefFileIndex() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_IGESBasic_ExternalRefFileIndex\n");}
	}
};

%nodefaultctor Handle_IGESBasic_SpecificModule;
class Handle_IGESBasic_SpecificModule : public Handle_IGESData_SpecificModule {
	public:
		%feature("autodoc", "1");
		Handle_IGESBasic_SpecificModule();
		%feature("autodoc", "1");
		Handle_IGESBasic_SpecificModule(const Handle_IGESBasic_SpecificModule &aHandle);
		%feature("autodoc", "1");
		Handle_IGESBasic_SpecificModule(const IGESBasic_SpecificModule *anItem);
		%feature("autodoc", "1");
		Handle_IGESBasic_SpecificModule const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESBasic_SpecificModule {
	IGESBasic_SpecificModule* GetObject() {
	return (IGESBasic_SpecificModule*)$self->Access();
	}
};
%extend Handle_IGESBasic_SpecificModule {
	~Handle_IGESBasic_SpecificModule() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_IGESBasic_SpecificModule\n");}
	}
};

%nodefaultctor Handle_IGESBasic_HArray1OfHArray1OfIGESEntity;
class Handle_IGESBasic_HArray1OfHArray1OfIGESEntity : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_IGESBasic_HArray1OfHArray1OfIGESEntity();
		%feature("autodoc", "1");
		Handle_IGESBasic_HArray1OfHArray1OfIGESEntity(const Handle_IGESBasic_HArray1OfHArray1OfIGESEntity &aHandle);
		%feature("autodoc", "1");
		Handle_IGESBasic_HArray1OfHArray1OfIGESEntity(const IGESBasic_HArray1OfHArray1OfIGESEntity *anItem);
		%feature("autodoc", "1");
		Handle_IGESBasic_HArray1OfHArray1OfIGESEntity const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESBasic_HArray1OfHArray1OfIGESEntity {
	IGESBasic_HArray1OfHArray1OfIGESEntity* GetObject() {
	return (IGESBasic_HArray1OfHArray1OfIGESEntity*)$self->Access();
	}
};
%extend Handle_IGESBasic_HArray1OfHArray1OfIGESEntity {
	~Handle_IGESBasic_HArray1OfHArray1OfIGESEntity() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_IGESBasic_HArray1OfHArray1OfIGESEntity\n");}
	}
};

%nodefaultctor Handle_IGESBasic_OrderedGroupWithoutBackP;
class Handle_IGESBasic_OrderedGroupWithoutBackP : public Handle_IGESBasic_Group {
	public:
		%feature("autodoc", "1");
		Handle_IGESBasic_OrderedGroupWithoutBackP();
		%feature("autodoc", "1");
		Handle_IGESBasic_OrderedGroupWithoutBackP(const Handle_IGESBasic_OrderedGroupWithoutBackP &aHandle);
		%feature("autodoc", "1");
		Handle_IGESBasic_OrderedGroupWithoutBackP(const IGESBasic_OrderedGroupWithoutBackP *anItem);
		%feature("autodoc", "1");
		Handle_IGESBasic_OrderedGroupWithoutBackP const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESBasic_OrderedGroupWithoutBackP {
	IGESBasic_OrderedGroupWithoutBackP* GetObject() {
	return (IGESBasic_OrderedGroupWithoutBackP*)$self->Access();
	}
};
%extend Handle_IGESBasic_OrderedGroupWithoutBackP {
	~Handle_IGESBasic_OrderedGroupWithoutBackP() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_IGESBasic_OrderedGroupWithoutBackP\n");}
	}
};

%nodefaultctor Handle_IGESBasic_GeneralModule;
class Handle_IGESBasic_GeneralModule : public Handle_IGESData_GeneralModule {
	public:
		%feature("autodoc", "1");
		Handle_IGESBasic_GeneralModule();
		%feature("autodoc", "1");
		Handle_IGESBasic_GeneralModule(const Handle_IGESBasic_GeneralModule &aHandle);
		%feature("autodoc", "1");
		Handle_IGESBasic_GeneralModule(const IGESBasic_GeneralModule *anItem);
		%feature("autodoc", "1");
		Handle_IGESBasic_GeneralModule const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESBasic_GeneralModule {
	IGESBasic_GeneralModule* GetObject() {
	return (IGESBasic_GeneralModule*)$self->Access();
	}
};
%extend Handle_IGESBasic_GeneralModule {
	~Handle_IGESBasic_GeneralModule() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_IGESBasic_GeneralModule\n");}
	}
};

%nodefaultctor IGESBasic_ToolAssocGroupType;
class IGESBasic_ToolAssocGroupType {
	public:
		%feature("autodoc", "1");
		IGESBasic_ToolAssocGroupType();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESBasic_AssocGroupType &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESBasic_AssocGroupType &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESBasic_AssocGroupType &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		Standard_Boolean OwnCorrect(const Handle_IGESBasic_AssocGroupType &ent) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESBasic_AssocGroupType &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESBasic_AssocGroupType &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESBasic_AssocGroupType &entfrom, const Handle_IGESBasic_AssocGroupType &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESBasic_AssocGroupType &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%extend IGESBasic_ToolAssocGroupType {
	~IGESBasic_ToolAssocGroupType() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IGESBasic_ToolAssocGroupType\n");}
	}
};

%nodefaultctor IGESBasic_SpecificModule;
class IGESBasic_SpecificModule : public IGESData_SpecificModule {
	public:
		%feature("autodoc", "1");
		IGESBasic_SpecificModule();
		%feature("autodoc", "1");
		virtual		void OwnDump(const Standard_Integer CN, const Handle_IGESData_IGESEntity &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean OwnCorrect(const Standard_Integer CN, const Handle_IGESData_IGESEntity &ent) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESBasic_SpecificModule {
	Handle_IGESBasic_SpecificModule GetHandle() {
	return *(Handle_IGESBasic_SpecificModule*) &$self;
	}
};
%extend IGESBasic_SpecificModule {
	~IGESBasic_SpecificModule() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IGESBasic_SpecificModule\n");}
	}
};

%nodefaultctor IGESBasic_ToolSingleParent;
class IGESBasic_ToolSingleParent {
	public:
		%feature("autodoc", "1");
		IGESBasic_ToolSingleParent();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESBasic_SingleParent &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESBasic_SingleParent &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESBasic_SingleParent &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		Standard_Boolean OwnCorrect(const Handle_IGESBasic_SingleParent &ent) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESBasic_SingleParent &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESBasic_SingleParent &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESBasic_SingleParent &entfrom, const Handle_IGESBasic_SingleParent &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESBasic_SingleParent &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%extend IGESBasic_ToolSingleParent {
	~IGESBasic_ToolSingleParent() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IGESBasic_ToolSingleParent\n");}
	}
};

%nodefaultctor IGESBasic_GeneralModule;
class IGESBasic_GeneralModule : public IGESData_GeneralModule {
	public:
		%feature("autodoc", "1");
		IGESBasic_GeneralModule();
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
%extend IGESBasic_GeneralModule {
	Handle_IGESBasic_GeneralModule GetHandle() {
	return *(Handle_IGESBasic_GeneralModule*) &$self;
	}
};
%extend IGESBasic_GeneralModule {
	~IGESBasic_GeneralModule() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IGESBasic_GeneralModule\n");}
	}
};

%nodefaultctor IGESBasic_ToolExternalRefFileIndex;
class IGESBasic_ToolExternalRefFileIndex {
	public:
		%feature("autodoc", "1");
		IGESBasic_ToolExternalRefFileIndex();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESBasic_ExternalRefFileIndex &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESBasic_ExternalRefFileIndex &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESBasic_ExternalRefFileIndex &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESBasic_ExternalRefFileIndex &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESBasic_ExternalRefFileIndex &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESBasic_ExternalRefFileIndex &entfrom, const Handle_IGESBasic_ExternalRefFileIndex &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESBasic_ExternalRefFileIndex &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%extend IGESBasic_ToolExternalRefFileIndex {
	~IGESBasic_ToolExternalRefFileIndex() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IGESBasic_ToolExternalRefFileIndex\n");}
	}
};

%nodefaultctor IGESBasic_HArray2OfHArray1OfReal;
class IGESBasic_HArray2OfHArray1OfReal : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		IGESBasic_HArray2OfHArray1OfReal(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		IGESBasic_HArray2OfHArray1OfReal(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2, const Handle_TColStd_HArray1OfReal &V);
		%feature("autodoc", "1");
		void Init(const Handle_TColStd_HArray1OfReal &V);
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
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const Handle_TColStd_HArray1OfReal &Value);
		%feature("autodoc", "1");
		const Handle_TColStd_HArray1OfReal & Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal & ChangeValue(const Standard_Integer Row, const Standard_Integer Col);
		%feature("autodoc", "1");
		const IGESBasic_Array2OfHArray1OfReal & Array2() const;
		%feature("autodoc", "1");
		IGESBasic_Array2OfHArray1OfReal & ChangeArray2();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESBasic_HArray2OfHArray1OfReal {
	Handle_IGESBasic_HArray2OfHArray1OfReal GetHandle() {
	return *(Handle_IGESBasic_HArray2OfHArray1OfReal*) &$self;
	}
};
%extend IGESBasic_HArray2OfHArray1OfReal {
	~IGESBasic_HArray2OfHArray1OfReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IGESBasic_HArray2OfHArray1OfReal\n");}
	}
};

%nodefaultctor IGESBasic_ExternalRefName;
class IGESBasic_ExternalRefName : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESBasic_ExternalRefName();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &anExtName);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString ReferenceName() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESBasic_ExternalRefName {
	Handle_IGESBasic_ExternalRefName GetHandle() {
	return *(Handle_IGESBasic_ExternalRefName*) &$self;
	}
};
%extend IGESBasic_ExternalRefName {
	~IGESBasic_ExternalRefName() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IGESBasic_ExternalRefName\n");}
	}
};

%nodefaultctor IGESBasic_Array2OfHArray1OfReal;
class IGESBasic_Array2OfHArray1OfReal {
	public:
		%feature("autodoc", "1");
		IGESBasic_Array2OfHArray1OfReal(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		IGESBasic_Array2OfHArray1OfReal(const Handle_TColStd_HArray1OfReal &Item, const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		void Init(const Handle_TColStd_HArray1OfReal &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		const IGESBasic_Array2OfHArray1OfReal & Assign(const IGESBasic_Array2OfHArray1OfReal &Other);
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
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const Handle_TColStd_HArray1OfReal &Value);
		%feature("autodoc", "1");
		const Handle_TColStd_HArray1OfReal & Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		const Handle_TColStd_HArray1OfReal & operator()(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal & ChangeValue(const Standard_Integer Row, const Standard_Integer Col);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal & operator()(const Standard_Integer Row, const Standard_Integer Col);

};
%extend IGESBasic_Array2OfHArray1OfReal {
	~IGESBasic_Array2OfHArray1OfReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IGESBasic_Array2OfHArray1OfReal\n");}
	}
};

%nodefaultctor IGESBasic_HArray1OfHArray1OfReal;
class IGESBasic_HArray1OfHArray1OfReal : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		IGESBasic_HArray1OfHArray1OfReal(const Standard_Integer low, const Standard_Integer up);
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer num, const Handle_TColStd_HArray1OfReal &val);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal Value(const Standard_Integer num) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESBasic_HArray1OfHArray1OfReal {
	Handle_IGESBasic_HArray1OfHArray1OfReal GetHandle() {
	return *(Handle_IGESBasic_HArray1OfHArray1OfReal*) &$self;
	}
};
%extend IGESBasic_HArray1OfHArray1OfReal {
	~IGESBasic_HArray1OfHArray1OfReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IGESBasic_HArray1OfHArray1OfReal\n");}
	}
};

%nodefaultctor IGESBasic_ToolExternalReferenceFile;
class IGESBasic_ToolExternalReferenceFile {
	public:
		%feature("autodoc", "1");
		IGESBasic_ToolExternalReferenceFile();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESBasic_ExternalReferenceFile &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESBasic_ExternalReferenceFile &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESBasic_ExternalReferenceFile &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESBasic_ExternalReferenceFile &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESBasic_ExternalReferenceFile &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESBasic_ExternalReferenceFile &entfrom, const Handle_IGESBasic_ExternalReferenceFile &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESBasic_ExternalReferenceFile &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%extend IGESBasic_ToolExternalReferenceFile {
	~IGESBasic_ToolExternalReferenceFile() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IGESBasic_ToolExternalReferenceFile\n");}
	}
};

%nodefaultctor IGESBasic_Group;
class IGESBasic_Group : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESBasic_Group();
		%feature("autodoc", "1");
		IGESBasic_Group(const Standard_Integer nb);
		%feature("autodoc", "1");
		void Init(const Handle_IGESData_HArray1OfIGESEntity &allEntities);
		%feature("autodoc", "1");
		void SetOrdered(const Standard_Boolean mode);
		%feature("autodoc", "1");
		void SetWithoutBackP(const Standard_Boolean mode);
		%feature("autodoc", "1");
		Standard_Boolean IsOrdered() const;
		%feature("autodoc", "1");
		Standard_Boolean IsWithoutBackP() const;
		%feature("autodoc", "1");
		void SetUser(const Standard_Integer type, const Standard_Integer form);
		%feature("autodoc", "1");
		void SetNb(const Standard_Integer nb);
		%feature("autodoc", "1");
		Standard_Integer NbEntities() const;
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity Entity(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_Standard_Transient Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_IGESData_IGESEntity &ent);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESBasic_Group {
	Handle_IGESBasic_Group GetHandle() {
	return *(Handle_IGESBasic_Group*) &$self;
	}
};
%extend IGESBasic_Group {
	~IGESBasic_Group() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IGESBasic_Group\n");}
	}
};

%nodefaultctor IGESBasic_GroupWithoutBackP;
class IGESBasic_GroupWithoutBackP : public IGESBasic_Group {
	public:
		%feature("autodoc", "1");
		IGESBasic_GroupWithoutBackP();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESBasic_GroupWithoutBackP {
	Handle_IGESBasic_GroupWithoutBackP GetHandle() {
	return *(Handle_IGESBasic_GroupWithoutBackP*) &$self;
	}
};
%extend IGESBasic_GroupWithoutBackP {
	~IGESBasic_GroupWithoutBackP() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IGESBasic_GroupWithoutBackP\n");}
	}
};

%nodefaultctor IGESBasic_ToolGroup;
class IGESBasic_ToolGroup {
	public:
		%feature("autodoc", "1");
		IGESBasic_ToolGroup();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESBasic_Group &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESBasic_Group &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESBasic_Group &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		Standard_Boolean OwnCorrect(const Handle_IGESBasic_Group &ent) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESBasic_Group &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESBasic_Group &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESBasic_Group &entfrom, const Handle_IGESBasic_Group &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESBasic_Group &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%extend IGESBasic_ToolGroup {
	~IGESBasic_ToolGroup() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IGESBasic_ToolGroup\n");}
	}
};

%nodefaultctor IGESBasic_Name;
class IGESBasic_Name : public IGESData_NameEntity {
	public:
		%feature("autodoc", "1");
		IGESBasic_Name();
		%feature("autodoc", "1");
		void Init(const Standard_Integer nbPropVal, const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		Standard_Integer NbPropertyValues() const;
		%feature("autodoc", "1");
		virtual		Handle_TCollection_HAsciiString Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESBasic_Name {
	Handle_IGESBasic_Name GetHandle() {
	return *(Handle_IGESBasic_Name*) &$self;
	}
};
%extend IGESBasic_Name {
	~IGESBasic_Name() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IGESBasic_Name\n");}
	}
};

%nodefaultctor IGESBasic_ToolOrderedGroupWithoutBackP;
class IGESBasic_ToolOrderedGroupWithoutBackP {
	public:
		%feature("autodoc", "1");
		IGESBasic_ToolOrderedGroupWithoutBackP();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESBasic_OrderedGroupWithoutBackP &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESBasic_OrderedGroupWithoutBackP &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESBasic_OrderedGroupWithoutBackP &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		Standard_Boolean OwnCorrect(const Handle_IGESBasic_OrderedGroupWithoutBackP &ent) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESBasic_OrderedGroupWithoutBackP &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESBasic_OrderedGroupWithoutBackP &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESBasic_OrderedGroupWithoutBackP &entfrom, const Handle_IGESBasic_OrderedGroupWithoutBackP &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESBasic_OrderedGroupWithoutBackP &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%extend IGESBasic_ToolOrderedGroupWithoutBackP {
	~IGESBasic_ToolOrderedGroupWithoutBackP() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IGESBasic_ToolOrderedGroupWithoutBackP\n");}
	}
};

%nodefaultctor IGESBasic;
class IGESBasic {
	public:
		%feature("autodoc", "1");
		IGESBasic();
		%feature("autodoc", "1");
		void Init();
		%feature("autodoc", "1");
		Handle_IGESBasic_Protocol Protocol();

};
%extend IGESBasic {
	~IGESBasic() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IGESBasic\n");}
	}
};

%nodefaultctor IGESBasic_HArray1OfHArray1OfIGESEntity;
class IGESBasic_HArray1OfHArray1OfIGESEntity : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		IGESBasic_HArray1OfHArray1OfIGESEntity(const Standard_Integer low, const Standard_Integer up);
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer num, const Handle_IGESData_HArray1OfIGESEntity &val);
		%feature("autodoc", "1");
		Handle_IGESData_HArray1OfIGESEntity Value(const Standard_Integer num) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESBasic_HArray1OfHArray1OfIGESEntity {
	Handle_IGESBasic_HArray1OfHArray1OfIGESEntity GetHandle() {
	return *(Handle_IGESBasic_HArray1OfHArray1OfIGESEntity*) &$self;
	}
};
%extend IGESBasic_HArray1OfHArray1OfIGESEntity {
	~IGESBasic_HArray1OfHArray1OfIGESEntity() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IGESBasic_HArray1OfHArray1OfIGESEntity\n");}
	}
};

%nodefaultctor IGESBasic_ToolGroupWithoutBackP;
class IGESBasic_ToolGroupWithoutBackP {
	public:
		%feature("autodoc", "1");
		IGESBasic_ToolGroupWithoutBackP();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESBasic_GroupWithoutBackP &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESBasic_GroupWithoutBackP &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESBasic_GroupWithoutBackP &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		Standard_Boolean OwnCorrect(const Handle_IGESBasic_GroupWithoutBackP &ent) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESBasic_GroupWithoutBackP &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESBasic_GroupWithoutBackP &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESBasic_GroupWithoutBackP &entfrom, const Handle_IGESBasic_GroupWithoutBackP &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESBasic_GroupWithoutBackP &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%extend IGESBasic_ToolGroupWithoutBackP {
	~IGESBasic_ToolGroupWithoutBackP() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IGESBasic_ToolGroupWithoutBackP\n");}
	}
};

%nodefaultctor IGESBasic_ToolSingularSubfigure;
class IGESBasic_ToolSingularSubfigure {
	public:
		%feature("autodoc", "1");
		IGESBasic_ToolSingularSubfigure();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESBasic_SingularSubfigure &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESBasic_SingularSubfigure &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESBasic_SingularSubfigure &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESBasic_SingularSubfigure &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESBasic_SingularSubfigure &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESBasic_SingularSubfigure &entfrom, const Handle_IGESBasic_SingularSubfigure &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESBasic_SingularSubfigure &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%extend IGESBasic_ToolSingularSubfigure {
	~IGESBasic_ToolSingularSubfigure() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IGESBasic_ToolSingularSubfigure\n");}
	}
};

%nodefaultctor IGESBasic_ToolOrderedGroup;
class IGESBasic_ToolOrderedGroup {
	public:
		%feature("autodoc", "1");
		IGESBasic_ToolOrderedGroup();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESBasic_OrderedGroup &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESBasic_OrderedGroup &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESBasic_OrderedGroup &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		Standard_Boolean OwnCorrect(const Handle_IGESBasic_OrderedGroup &ent) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESBasic_OrderedGroup &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESBasic_OrderedGroup &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESBasic_OrderedGroup &entfrom, const Handle_IGESBasic_OrderedGroup &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESBasic_OrderedGroup &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%extend IGESBasic_ToolOrderedGroup {
	~IGESBasic_ToolOrderedGroup() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IGESBasic_ToolOrderedGroup\n");}
	}
};

%nodefaultctor IGESBasic_HArray1OfHArray1OfInteger;
class IGESBasic_HArray1OfHArray1OfInteger : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		IGESBasic_HArray1OfHArray1OfInteger(const Standard_Integer low, const Standard_Integer up);
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer num, const Handle_TColStd_HArray1OfInteger &val);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfInteger Value(const Standard_Integer num) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESBasic_HArray1OfHArray1OfInteger {
	Handle_IGESBasic_HArray1OfHArray1OfInteger GetHandle() {
	return *(Handle_IGESBasic_HArray1OfHArray1OfInteger*) &$self;
	}
};
%extend IGESBasic_HArray1OfHArray1OfInteger {
	~IGESBasic_HArray1OfHArray1OfInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IGESBasic_HArray1OfHArray1OfInteger\n");}
	}
};

%nodefaultctor IGESBasic_AssocGroupType;
class IGESBasic_AssocGroupType : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESBasic_AssocGroupType();
		%feature("autodoc", "1");
		void Init(const Standard_Integer nbDataFields, const Standard_Integer aType, const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		Standard_Integer NbData() const;
		%feature("autodoc", "1");
		Standard_Integer AssocType() const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Name() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESBasic_AssocGroupType {
	Handle_IGESBasic_AssocGroupType GetHandle() {
	return *(Handle_IGESBasic_AssocGroupType*) &$self;
	}
};
%extend IGESBasic_AssocGroupType {
	~IGESBasic_AssocGroupType() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IGESBasic_AssocGroupType\n");}
	}
};

%nodefaultctor IGESBasic_SingularSubfigure;
class IGESBasic_SingularSubfigure : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESBasic_SingularSubfigure();
		%feature("autodoc", "1");
		void Init(const Handle_IGESBasic_SubfigureDef &aSubfigureDef, const gp_XYZ &aTranslation, const Standard_Boolean hasScale, const Standard_Real aScale);
		%feature("autodoc", "1");
		Handle_IGESBasic_SubfigureDef Subfigure() const;
		%feature("autodoc", "1");
		gp_XYZ Translation() const;
		%feature("autodoc", "1");
		Standard_Real ScaleFactor() const;
		%feature("autodoc", "1");
		Standard_Boolean HasScaleFactor() const;
		%feature("autodoc", "1");
		gp_XYZ TransformedTranslation() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESBasic_SingularSubfigure {
	Handle_IGESBasic_SingularSubfigure GetHandle() {
	return *(Handle_IGESBasic_SingularSubfigure*) &$self;
	}
};
%extend IGESBasic_SingularSubfigure {
	~IGESBasic_SingularSubfigure() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IGESBasic_SingularSubfigure\n");}
	}
};

%nodefaultctor IGESBasic_Array1OfLineFontEntity;
class IGESBasic_Array1OfLineFontEntity {
	public:
		%feature("autodoc", "1");
		IGESBasic_Array1OfLineFontEntity(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		IGESBasic_Array1OfLineFontEntity(const Handle_IGESData_LineFontEntity &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Handle_IGESData_LineFontEntity &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const IGESBasic_Array1OfLineFontEntity & Assign(const IGESBasic_Array1OfLineFontEntity &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_IGESData_LineFontEntity &Value);
		%feature("autodoc", "1");
		const Handle_IGESData_LineFontEntity & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_IGESData_LineFontEntity & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_IGESData_LineFontEntity & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_IGESData_LineFontEntity & operator()(const Standard_Integer Index);

};
%extend IGESBasic_Array1OfLineFontEntity {
	~IGESBasic_Array1OfLineFontEntity() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IGESBasic_Array1OfLineFontEntity\n");}
	}
};

%nodefaultctor IGESBasic_ExternalRefFile;
class IGESBasic_ExternalRefFile : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESBasic_ExternalRefFile();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aFileIdent);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString FileId() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESBasic_ExternalRefFile {
	Handle_IGESBasic_ExternalRefFile GetHandle() {
	return *(Handle_IGESBasic_ExternalRefFile*) &$self;
	}
};
%extend IGESBasic_ExternalRefFile {
	~IGESBasic_ExternalRefFile() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IGESBasic_ExternalRefFile\n");}
	}
};

%nodefaultctor IGESBasic_ReadWriteModule;
class IGESBasic_ReadWriteModule : public IGESData_ReadWriteModule {
	public:
		%feature("autodoc", "1");
		IGESBasic_ReadWriteModule();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseIGES(const Standard_Integer typenum, const Standard_Integer formnum) const;
		%feature("autodoc", "1");
		virtual		void ReadOwnParams(const Standard_Integer CN, const Handle_IGESData_IGESEntity &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		virtual		void WriteOwnParams(const Standard_Integer CN, const Handle_IGESData_IGESEntity &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESBasic_ReadWriteModule {
	Handle_IGESBasic_ReadWriteModule GetHandle() {
	return *(Handle_IGESBasic_ReadWriteModule*) &$self;
	}
};
%extend IGESBasic_ReadWriteModule {
	~IGESBasic_ReadWriteModule() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IGESBasic_ReadWriteModule\n");}
	}
};

%nodefaultctor IGESBasic_ToolExternalRefLibName;
class IGESBasic_ToolExternalRefLibName {
	public:
		%feature("autodoc", "1");
		IGESBasic_ToolExternalRefLibName();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESBasic_ExternalRefLibName &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESBasic_ExternalRefLibName &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESBasic_ExternalRefLibName &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESBasic_ExternalRefLibName &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESBasic_ExternalRefLibName &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESBasic_ExternalRefLibName &entfrom, const Handle_IGESBasic_ExternalRefLibName &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESBasic_ExternalRefLibName &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%extend IGESBasic_ToolExternalRefLibName {
	~IGESBasic_ToolExternalRefLibName() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IGESBasic_ToolExternalRefLibName\n");}
	}
};

%nodefaultctor IGESBasic_HArray1OfLineFontEntity;
class IGESBasic_HArray1OfLineFontEntity : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		IGESBasic_HArray1OfLineFontEntity(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		IGESBasic_HArray1OfLineFontEntity(const Standard_Integer Low, const Standard_Integer Up, const Handle_IGESData_LineFontEntity &V);
		%feature("autodoc", "1");
		void Init(const Handle_IGESData_LineFontEntity &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_IGESData_LineFontEntity &Value);
		%feature("autodoc", "1");
		const Handle_IGESData_LineFontEntity & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_IGESData_LineFontEntity & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const IGESBasic_Array1OfLineFontEntity & Array1() const;
		%feature("autodoc", "1");
		IGESBasic_Array1OfLineFontEntity & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESBasic_HArray1OfLineFontEntity {
	Handle_IGESBasic_HArray1OfLineFontEntity GetHandle() {
	return *(Handle_IGESBasic_HArray1OfLineFontEntity*) &$self;
	}
};
%extend IGESBasic_HArray1OfLineFontEntity {
	~IGESBasic_HArray1OfLineFontEntity() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IGESBasic_HArray1OfLineFontEntity\n");}
	}
};

%nodefaultctor IGESBasic_ExternalRefFileName;
class IGESBasic_ExternalRefFileName : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESBasic_ExternalRefFileName();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aFileIdent, const Handle_TCollection_HAsciiString &anExtName);
		%feature("autodoc", "1");
		void SetForEntity(const Standard_Boolean mode);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString FileId() const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString ReferenceName() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESBasic_ExternalRefFileName {
	Handle_IGESBasic_ExternalRefFileName GetHandle() {
	return *(Handle_IGESBasic_ExternalRefFileName*) &$self;
	}
};
%extend IGESBasic_ExternalRefFileName {
	~IGESBasic_ExternalRefFileName() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IGESBasic_ExternalRefFileName\n");}
	}
};

%nodefaultctor IGESBasic_Hierarchy;
class IGESBasic_Hierarchy : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESBasic_Hierarchy();
		%feature("autodoc", "1");
		void Init(const Standard_Integer nbPropVal, const Standard_Integer aLineFont, const Standard_Integer aView, const Standard_Integer anEntityLevel, const Standard_Integer aBlankStatus, const Standard_Integer aLineWt, const Standard_Integer aColorNum);
		%feature("autodoc", "1");
		Standard_Integer NbPropertyValues() const;
		%feature("autodoc", "1");
		Standard_Integer NewLineFont() const;
		%feature("autodoc", "1");
		Standard_Integer NewView() const;
		%feature("autodoc", "1");
		Standard_Integer NewEntityLevel() const;
		%feature("autodoc", "1");
		Standard_Integer NewBlankStatus() const;
		%feature("autodoc", "1");
		Standard_Integer NewLineWeight() const;
		%feature("autodoc", "1");
		Standard_Integer NewColorNum() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESBasic_Hierarchy {
	Handle_IGESBasic_Hierarchy GetHandle() {
	return *(Handle_IGESBasic_Hierarchy*) &$self;
	}
};
%extend IGESBasic_Hierarchy {
	~IGESBasic_Hierarchy() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IGESBasic_Hierarchy\n");}
	}
};

%nodefaultctor IGESBasic_ExternalRefFileIndex;
class IGESBasic_ExternalRefFileIndex : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESBasic_ExternalRefFileIndex();
		%feature("autodoc", "1");
		void Init(const Handle_Interface_HArray1OfHAsciiString &aNameArray, const Handle_IGESData_HArray1OfIGESEntity &allEntities);
		%feature("autodoc", "1");
		Standard_Integer NbEntries() const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Name(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity Entity(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESBasic_ExternalRefFileIndex {
	Handle_IGESBasic_ExternalRefFileIndex GetHandle() {
	return *(Handle_IGESBasic_ExternalRefFileIndex*) &$self;
	}
};
%extend IGESBasic_ExternalRefFileIndex {
	~IGESBasic_ExternalRefFileIndex() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IGESBasic_ExternalRefFileIndex\n");}
	}
};

%nodefaultctor IGESBasic_ExternalReferenceFile;
class IGESBasic_ExternalReferenceFile : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESBasic_ExternalReferenceFile();
		%feature("autodoc", "1");
		void Init(const Handle_Interface_HArray1OfHAsciiString &aNameArray);
		%feature("autodoc", "1");
		Standard_Integer NbListEntries() const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Name(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESBasic_ExternalReferenceFile {
	Handle_IGESBasic_ExternalReferenceFile GetHandle() {
	return *(Handle_IGESBasic_ExternalReferenceFile*) &$self;
	}
};
%extend IGESBasic_ExternalReferenceFile {
	~IGESBasic_ExternalReferenceFile() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IGESBasic_ExternalReferenceFile\n");}
	}
};

%nodefaultctor IGESBasic_OrderedGroup;
class IGESBasic_OrderedGroup : public IGESBasic_Group {
	public:
		%feature("autodoc", "1");
		IGESBasic_OrderedGroup();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESBasic_OrderedGroup {
	Handle_IGESBasic_OrderedGroup GetHandle() {
	return *(Handle_IGESBasic_OrderedGroup*) &$self;
	}
};
%extend IGESBasic_OrderedGroup {
	~IGESBasic_OrderedGroup() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IGESBasic_OrderedGroup\n");}
	}
};

%nodefaultctor IGESBasic_SingleParent;
class IGESBasic_SingleParent : public IGESData_SingleParentEntity {
	public:
		%feature("autodoc", "1");
		IGESBasic_SingleParent();
		%feature("autodoc", "1");
		void Init(const Standard_Integer nbParentEntities, const Handle_IGESData_IGESEntity &aParentEntity, const Handle_IGESData_HArray1OfIGESEntity &allChildren);
		%feature("autodoc", "1");
		Standard_Integer NbParentEntities() const;
		%feature("autodoc", "1");
		virtual		Handle_IGESData_IGESEntity SingleParent() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbChildren() const;
		%feature("autodoc", "1");
		virtual		Handle_IGESData_IGESEntity Child(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESBasic_SingleParent {
	Handle_IGESBasic_SingleParent GetHandle() {
	return *(Handle_IGESBasic_SingleParent*) &$self;
	}
};
%extend IGESBasic_SingleParent {
	~IGESBasic_SingleParent() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IGESBasic_SingleParent\n");}
	}
};

%nodefaultctor IGESBasic_SubfigureDef;
class IGESBasic_SubfigureDef : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESBasic_SubfigureDef();
		%feature("autodoc", "1");
		void Init(const Standard_Integer aDepth, const Handle_TCollection_HAsciiString &aName, const Handle_IGESData_HArray1OfIGESEntity &allAssocEntities);
		%feature("autodoc", "1");
		Standard_Integer Depth() const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Name() const;
		%feature("autodoc", "1");
		Standard_Integer NbEntities() const;
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity AssociatedEntity(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_Standard_Transient Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESBasic_SubfigureDef {
	Handle_IGESBasic_SubfigureDef GetHandle() {
	return *(Handle_IGESBasic_SubfigureDef*) &$self;
	}
};
%extend IGESBasic_SubfigureDef {
	~IGESBasic_SubfigureDef() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IGESBasic_SubfigureDef\n");}
	}
};

%nodefaultctor IGESBasic_ToolExternalRefName;
class IGESBasic_ToolExternalRefName {
	public:
		%feature("autodoc", "1");
		IGESBasic_ToolExternalRefName();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESBasic_ExternalRefName &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESBasic_ExternalRefName &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESBasic_ExternalRefName &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESBasic_ExternalRefName &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESBasic_ExternalRefName &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESBasic_ExternalRefName &entfrom, const Handle_IGESBasic_ExternalRefName &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESBasic_ExternalRefName &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%extend IGESBasic_ToolExternalRefName {
	~IGESBasic_ToolExternalRefName() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IGESBasic_ToolExternalRefName\n");}
	}
};

%nodefaultctor IGESBasic_ToolExternalRefFileName;
class IGESBasic_ToolExternalRefFileName {
	public:
		%feature("autodoc", "1");
		IGESBasic_ToolExternalRefFileName();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESBasic_ExternalRefFileName &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESBasic_ExternalRefFileName &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESBasic_ExternalRefFileName &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESBasic_ExternalRefFileName &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESBasic_ExternalRefFileName &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESBasic_ExternalRefFileName &entfrom, const Handle_IGESBasic_ExternalRefFileName &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESBasic_ExternalRefFileName &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%extend IGESBasic_ToolExternalRefFileName {
	~IGESBasic_ToolExternalRefFileName() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IGESBasic_ToolExternalRefFileName\n");}
	}
};

%nodefaultctor IGESBasic_HArray1OfHArray1OfXYZ;
class IGESBasic_HArray1OfHArray1OfXYZ : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		IGESBasic_HArray1OfHArray1OfXYZ(const Standard_Integer low, const Standard_Integer up);
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer num, const Handle_TColgp_HArray1OfXYZ &val);
		%feature("autodoc", "1");
		Handle_TColgp_HArray1OfXYZ Value(const Standard_Integer num) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESBasic_HArray1OfHArray1OfXYZ {
	Handle_IGESBasic_HArray1OfHArray1OfXYZ GetHandle() {
	return *(Handle_IGESBasic_HArray1OfHArray1OfXYZ*) &$self;
	}
};
%extend IGESBasic_HArray1OfHArray1OfXYZ {
	~IGESBasic_HArray1OfHArray1OfXYZ() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IGESBasic_HArray1OfHArray1OfXYZ\n");}
	}
};

%nodefaultctor IGESBasic_OrderedGroupWithoutBackP;
class IGESBasic_OrderedGroupWithoutBackP : public IGESBasic_Group {
	public:
		%feature("autodoc", "1");
		IGESBasic_OrderedGroupWithoutBackP();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESBasic_OrderedGroupWithoutBackP {
	Handle_IGESBasic_OrderedGroupWithoutBackP GetHandle() {
	return *(Handle_IGESBasic_OrderedGroupWithoutBackP*) &$self;
	}
};
%extend IGESBasic_OrderedGroupWithoutBackP {
	~IGESBasic_OrderedGroupWithoutBackP() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IGESBasic_OrderedGroupWithoutBackP\n");}
	}
};

%nodefaultctor IGESBasic_ToolExternalRefFile;
class IGESBasic_ToolExternalRefFile {
	public:
		%feature("autodoc", "1");
		IGESBasic_ToolExternalRefFile();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESBasic_ExternalRefFile &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESBasic_ExternalRefFile &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESBasic_ExternalRefFile &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESBasic_ExternalRefFile &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESBasic_ExternalRefFile &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESBasic_ExternalRefFile &entfrom, const Handle_IGESBasic_ExternalRefFile &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESBasic_ExternalRefFile &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%extend IGESBasic_ToolExternalRefFile {
	~IGESBasic_ToolExternalRefFile() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IGESBasic_ToolExternalRefFile\n");}
	}
};

%nodefaultctor IGESBasic_HArray1OfHArray1OfXY;
class IGESBasic_HArray1OfHArray1OfXY : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		IGESBasic_HArray1OfHArray1OfXY(const Standard_Integer low, const Standard_Integer up);
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer num, const Handle_TColgp_HArray1OfXY &val);
		%feature("autodoc", "1");
		Handle_TColgp_HArray1OfXY Value(const Standard_Integer num) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESBasic_HArray1OfHArray1OfXY {
	Handle_IGESBasic_HArray1OfHArray1OfXY GetHandle() {
	return *(Handle_IGESBasic_HArray1OfHArray1OfXY*) &$self;
	}
};
%extend IGESBasic_HArray1OfHArray1OfXY {
	~IGESBasic_HArray1OfHArray1OfXY() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IGESBasic_HArray1OfHArray1OfXY\n");}
	}
};

%nodefaultctor IGESBasic_ToolSubfigureDef;
class IGESBasic_ToolSubfigureDef {
	public:
		%feature("autodoc", "1");
		IGESBasic_ToolSubfigureDef();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESBasic_SubfigureDef &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESBasic_SubfigureDef &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESBasic_SubfigureDef &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESBasic_SubfigureDef &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESBasic_SubfigureDef &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESBasic_SubfigureDef &entfrom, const Handle_IGESBasic_SubfigureDef &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESBasic_SubfigureDef &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%extend IGESBasic_ToolSubfigureDef {
	~IGESBasic_ToolSubfigureDef() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IGESBasic_ToolSubfigureDef\n");}
	}
};

%nodefaultctor IGESBasic_ExternalRefLibName;
class IGESBasic_ExternalRefLibName : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESBasic_ExternalRefLibName();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aLibName, const Handle_TCollection_HAsciiString &anExtName);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString LibraryName() const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString ReferenceName() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESBasic_ExternalRefLibName {
	Handle_IGESBasic_ExternalRefLibName GetHandle() {
	return *(Handle_IGESBasic_ExternalRefLibName*) &$self;
	}
};
%extend IGESBasic_ExternalRefLibName {
	~IGESBasic_ExternalRefLibName() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IGESBasic_ExternalRefLibName\n");}
	}
};

%nodefaultctor IGESBasic_ToolName;
class IGESBasic_ToolName {
	public:
		%feature("autodoc", "1");
		IGESBasic_ToolName();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESBasic_Name &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESBasic_Name &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESBasic_Name &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		Standard_Boolean OwnCorrect(const Handle_IGESBasic_Name &ent) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESBasic_Name &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESBasic_Name &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESBasic_Name &entfrom, const Handle_IGESBasic_Name &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESBasic_Name &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%extend IGESBasic_ToolName {
	~IGESBasic_ToolName() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IGESBasic_ToolName\n");}
	}
};

%nodefaultctor IGESBasic_ToolHierarchy;
class IGESBasic_ToolHierarchy {
	public:
		%feature("autodoc", "1");
		IGESBasic_ToolHierarchy();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESBasic_Hierarchy &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESBasic_Hierarchy &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESBasic_Hierarchy &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		Standard_Boolean OwnCorrect(const Handle_IGESBasic_Hierarchy &ent) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESBasic_Hierarchy &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESBasic_Hierarchy &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESBasic_Hierarchy &entfrom, const Handle_IGESBasic_Hierarchy &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESBasic_Hierarchy &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%extend IGESBasic_ToolHierarchy {
	~IGESBasic_ToolHierarchy() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of IGESBasic_ToolHierarchy\n");}
	}
};