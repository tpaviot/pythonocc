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
%module MDataStd

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


%include MDataStd_dependencies.i


%include MDataStd_headers.i




%nodefaultctor Handle_MDataStd_DirectoryRetrievalDriver;
class Handle_MDataStd_DirectoryRetrievalDriver : public Handle_MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_DirectoryRetrievalDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_DirectoryRetrievalDriver(const Handle_MDataStd_DirectoryRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_DirectoryRetrievalDriver(const MDataStd_DirectoryRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_DirectoryRetrievalDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_DirectoryRetrievalDriver {
	MDataStd_DirectoryRetrievalDriver* GetObject() {
	return (MDataStd_DirectoryRetrievalDriver*)$self->Access();
	}
};
%extend Handle_MDataStd_DirectoryRetrievalDriver {
	~Handle_MDataStd_DirectoryRetrievalDriver() {
	printf("Call custom destructor for instance of Handle_MDataStd_DirectoryRetrievalDriver\n");
	}
};

%nodefaultctor Handle_MDataStd_RealArrayRetrievalDriver_1;
class Handle_MDataStd_RealArrayRetrievalDriver_1 : public Handle_MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_RealArrayRetrievalDriver_1();
		%feature("autodoc", "1");
		Handle_MDataStd_RealArrayRetrievalDriver_1(const Handle_MDataStd_RealArrayRetrievalDriver_1 &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_RealArrayRetrievalDriver_1(const MDataStd_RealArrayRetrievalDriver_1 *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_RealArrayRetrievalDriver_1 const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_RealArrayRetrievalDriver_1 {
	MDataStd_RealArrayRetrievalDriver_1* GetObject() {
	return (MDataStd_RealArrayRetrievalDriver_1*)$self->Access();
	}
};
%extend Handle_MDataStd_RealArrayRetrievalDriver_1 {
	~Handle_MDataStd_RealArrayRetrievalDriver_1() {
	printf("Call custom destructor for instance of Handle_MDataStd_RealArrayRetrievalDriver_1\n");
	}
};

%nodefaultctor Handle_MDataStd_ByteArrayRetrievalDriver_1;
class Handle_MDataStd_ByteArrayRetrievalDriver_1 : public Handle_MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_ByteArrayRetrievalDriver_1();
		%feature("autodoc", "1");
		Handle_MDataStd_ByteArrayRetrievalDriver_1(const Handle_MDataStd_ByteArrayRetrievalDriver_1 &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_ByteArrayRetrievalDriver_1(const MDataStd_ByteArrayRetrievalDriver_1 *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_ByteArrayRetrievalDriver_1 const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_ByteArrayRetrievalDriver_1 {
	MDataStd_ByteArrayRetrievalDriver_1* GetObject() {
	return (MDataStd_ByteArrayRetrievalDriver_1*)$self->Access();
	}
};
%extend Handle_MDataStd_ByteArrayRetrievalDriver_1 {
	~Handle_MDataStd_ByteArrayRetrievalDriver_1() {
	printf("Call custom destructor for instance of Handle_MDataStd_ByteArrayRetrievalDriver_1\n");
	}
};

%nodefaultctor Handle_MDataStd_ReferenceListStorageDriver;
class Handle_MDataStd_ReferenceListStorageDriver : public Handle_MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_ReferenceListStorageDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_ReferenceListStorageDriver(const Handle_MDataStd_ReferenceListStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_ReferenceListStorageDriver(const MDataStd_ReferenceListStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_ReferenceListStorageDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_ReferenceListStorageDriver {
	MDataStd_ReferenceListStorageDriver* GetObject() {
	return (MDataStd_ReferenceListStorageDriver*)$self->Access();
	}
};
%extend Handle_MDataStd_ReferenceListStorageDriver {
	~Handle_MDataStd_ReferenceListStorageDriver() {
	printf("Call custom destructor for instance of Handle_MDataStd_ReferenceListStorageDriver\n");
	}
};

%nodefaultctor Handle_MDataStd_IntegerListStorageDriver;
class Handle_MDataStd_IntegerListStorageDriver : public Handle_MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_IntegerListStorageDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_IntegerListStorageDriver(const Handle_MDataStd_IntegerListStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_IntegerListStorageDriver(const MDataStd_IntegerListStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_IntegerListStorageDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_IntegerListStorageDriver {
	MDataStd_IntegerListStorageDriver* GetObject() {
	return (MDataStd_IntegerListStorageDriver*)$self->Access();
	}
};
%extend Handle_MDataStd_IntegerListStorageDriver {
	~Handle_MDataStd_IntegerListStorageDriver() {
	printf("Call custom destructor for instance of Handle_MDataStd_IntegerListStorageDriver\n");
	}
};

%nodefaultctor Handle_MDataStd_BooleanListRetrievalDriver;
class Handle_MDataStd_BooleanListRetrievalDriver : public Handle_MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_BooleanListRetrievalDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_BooleanListRetrievalDriver(const Handle_MDataStd_BooleanListRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_BooleanListRetrievalDriver(const MDataStd_BooleanListRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_BooleanListRetrievalDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_BooleanListRetrievalDriver {
	MDataStd_BooleanListRetrievalDriver* GetObject() {
	return (MDataStd_BooleanListRetrievalDriver*)$self->Access();
	}
};
%extend Handle_MDataStd_BooleanListRetrievalDriver {
	~Handle_MDataStd_BooleanListRetrievalDriver() {
	printf("Call custom destructor for instance of Handle_MDataStd_BooleanListRetrievalDriver\n");
	}
};

%nodefaultctor Handle_MDataStd_ExtStringArrayRetrievalDriver_1;
class Handle_MDataStd_ExtStringArrayRetrievalDriver_1 : public Handle_MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_ExtStringArrayRetrievalDriver_1();
		%feature("autodoc", "1");
		Handle_MDataStd_ExtStringArrayRetrievalDriver_1(const Handle_MDataStd_ExtStringArrayRetrievalDriver_1 &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_ExtStringArrayRetrievalDriver_1(const MDataStd_ExtStringArrayRetrievalDriver_1 *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_ExtStringArrayRetrievalDriver_1 const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_ExtStringArrayRetrievalDriver_1 {
	MDataStd_ExtStringArrayRetrievalDriver_1* GetObject() {
	return (MDataStd_ExtStringArrayRetrievalDriver_1*)$self->Access();
	}
};
%extend Handle_MDataStd_ExtStringArrayRetrievalDriver_1 {
	~Handle_MDataStd_ExtStringArrayRetrievalDriver_1() {
	printf("Call custom destructor for instance of Handle_MDataStd_ExtStringArrayRetrievalDriver_1\n");
	}
};

%nodefaultctor Handle_MDataStd_TreeNodeRetrievalDriver;
class Handle_MDataStd_TreeNodeRetrievalDriver : public Handle_MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_TreeNodeRetrievalDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_TreeNodeRetrievalDriver(const Handle_MDataStd_TreeNodeRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_TreeNodeRetrievalDriver(const MDataStd_TreeNodeRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_TreeNodeRetrievalDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_TreeNodeRetrievalDriver {
	MDataStd_TreeNodeRetrievalDriver* GetObject() {
	return (MDataStd_TreeNodeRetrievalDriver*)$self->Access();
	}
};
%extend Handle_MDataStd_TreeNodeRetrievalDriver {
	~Handle_MDataStd_TreeNodeRetrievalDriver() {
	printf("Call custom destructor for instance of Handle_MDataStd_TreeNodeRetrievalDriver\n");
	}
};

%nodefaultctor Handle_MDataStd_CommentStorageDriver;
class Handle_MDataStd_CommentStorageDriver : public Handle_MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_CommentStorageDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_CommentStorageDriver(const Handle_MDataStd_CommentStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_CommentStorageDriver(const MDataStd_CommentStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_CommentStorageDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_CommentStorageDriver {
	MDataStd_CommentStorageDriver* GetObject() {
	return (MDataStd_CommentStorageDriver*)$self->Access();
	}
};
%extend Handle_MDataStd_CommentStorageDriver {
	~Handle_MDataStd_CommentStorageDriver() {
	printf("Call custom destructor for instance of Handle_MDataStd_CommentStorageDriver\n");
	}
};

%nodefaultctor Handle_MDataStd_PlaneRetrievalDriver;
class Handle_MDataStd_PlaneRetrievalDriver : public Handle_MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_PlaneRetrievalDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_PlaneRetrievalDriver(const Handle_MDataStd_PlaneRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_PlaneRetrievalDriver(const MDataStd_PlaneRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_PlaneRetrievalDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_PlaneRetrievalDriver {
	MDataStd_PlaneRetrievalDriver* GetObject() {
	return (MDataStd_PlaneRetrievalDriver*)$self->Access();
	}
};
%extend Handle_MDataStd_PlaneRetrievalDriver {
	~Handle_MDataStd_PlaneRetrievalDriver() {
	printf("Call custom destructor for instance of Handle_MDataStd_PlaneRetrievalDriver\n");
	}
};

%nodefaultctor Handle_MDataStd_NoteBookStorageDriver;
class Handle_MDataStd_NoteBookStorageDriver : public Handle_MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_NoteBookStorageDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_NoteBookStorageDriver(const Handle_MDataStd_NoteBookStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_NoteBookStorageDriver(const MDataStd_NoteBookStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_NoteBookStorageDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_NoteBookStorageDriver {
	MDataStd_NoteBookStorageDriver* GetObject() {
	return (MDataStd_NoteBookStorageDriver*)$self->Access();
	}
};
%extend Handle_MDataStd_NoteBookStorageDriver {
	~Handle_MDataStd_NoteBookStorageDriver() {
	printf("Call custom destructor for instance of Handle_MDataStd_NoteBookStorageDriver\n");
	}
};

%nodefaultctor Handle_MDataStd_PatternStdStorageDriver;
class Handle_MDataStd_PatternStdStorageDriver : public Handle_MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_PatternStdStorageDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_PatternStdStorageDriver(const Handle_MDataStd_PatternStdStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_PatternStdStorageDriver(const MDataStd_PatternStdStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_PatternStdStorageDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_PatternStdStorageDriver {
	MDataStd_PatternStdStorageDriver* GetObject() {
	return (MDataStd_PatternStdStorageDriver*)$self->Access();
	}
};
%extend Handle_MDataStd_PatternStdStorageDriver {
	~Handle_MDataStd_PatternStdStorageDriver() {
	printf("Call custom destructor for instance of Handle_MDataStd_PatternStdStorageDriver\n");
	}
};

%nodefaultctor Handle_MDataStd_ExtStringListRetrievalDriver;
class Handle_MDataStd_ExtStringListRetrievalDriver : public Handle_MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_ExtStringListRetrievalDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_ExtStringListRetrievalDriver(const Handle_MDataStd_ExtStringListRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_ExtStringListRetrievalDriver(const MDataStd_ExtStringListRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_ExtStringListRetrievalDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_ExtStringListRetrievalDriver {
	MDataStd_ExtStringListRetrievalDriver* GetObject() {
	return (MDataStd_ExtStringListRetrievalDriver*)$self->Access();
	}
};
%extend Handle_MDataStd_ExtStringListRetrievalDriver {
	~Handle_MDataStd_ExtStringListRetrievalDriver() {
	printf("Call custom destructor for instance of Handle_MDataStd_ExtStringListRetrievalDriver\n");
	}
};

%nodefaultctor Handle_MDataStd_BooleanArrayRetrievalDriver;
class Handle_MDataStd_BooleanArrayRetrievalDriver : public Handle_MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_BooleanArrayRetrievalDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_BooleanArrayRetrievalDriver(const Handle_MDataStd_BooleanArrayRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_BooleanArrayRetrievalDriver(const MDataStd_BooleanArrayRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_BooleanArrayRetrievalDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_BooleanArrayRetrievalDriver {
	MDataStd_BooleanArrayRetrievalDriver* GetObject() {
	return (MDataStd_BooleanArrayRetrievalDriver*)$self->Access();
	}
};
%extend Handle_MDataStd_BooleanArrayRetrievalDriver {
	~Handle_MDataStd_BooleanArrayRetrievalDriver() {
	printf("Call custom destructor for instance of Handle_MDataStd_BooleanArrayRetrievalDriver\n");
	}
};

%nodefaultctor Handle_MDataStd_IntegerListRetrievalDriver;
class Handle_MDataStd_IntegerListRetrievalDriver : public Handle_MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_IntegerListRetrievalDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_IntegerListRetrievalDriver(const Handle_MDataStd_IntegerListRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_IntegerListRetrievalDriver(const MDataStd_IntegerListRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_IntegerListRetrievalDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_IntegerListRetrievalDriver {
	MDataStd_IntegerListRetrievalDriver* GetObject() {
	return (MDataStd_IntegerListRetrievalDriver*)$self->Access();
	}
};
%extend Handle_MDataStd_IntegerListRetrievalDriver {
	~Handle_MDataStd_IntegerListRetrievalDriver() {
	printf("Call custom destructor for instance of Handle_MDataStd_IntegerListRetrievalDriver\n");
	}
};

%nodefaultctor Handle_MDataStd_AxisStorageDriver;
class Handle_MDataStd_AxisStorageDriver : public Handle_MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_AxisStorageDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_AxisStorageDriver(const Handle_MDataStd_AxisStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_AxisStorageDriver(const MDataStd_AxisStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_AxisStorageDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_AxisStorageDriver {
	MDataStd_AxisStorageDriver* GetObject() {
	return (MDataStd_AxisStorageDriver*)$self->Access();
	}
};
%extend Handle_MDataStd_AxisStorageDriver {
	~Handle_MDataStd_AxisStorageDriver() {
	printf("Call custom destructor for instance of Handle_MDataStd_AxisStorageDriver\n");
	}
};

%nodefaultctor Handle_MDataStd_VariableStorageDriver;
class Handle_MDataStd_VariableStorageDriver : public Handle_MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_VariableStorageDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_VariableStorageDriver(const Handle_MDataStd_VariableStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_VariableStorageDriver(const MDataStd_VariableStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_VariableStorageDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_VariableStorageDriver {
	MDataStd_VariableStorageDriver* GetObject() {
	return (MDataStd_VariableStorageDriver*)$self->Access();
	}
};
%extend Handle_MDataStd_VariableStorageDriver {
	~Handle_MDataStd_VariableStorageDriver() {
	printf("Call custom destructor for instance of Handle_MDataStd_VariableStorageDriver\n");
	}
};

%nodefaultctor Handle_MDataStd_DirectoryStorageDriver;
class Handle_MDataStd_DirectoryStorageDriver : public Handle_MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_DirectoryStorageDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_DirectoryStorageDriver(const Handle_MDataStd_DirectoryStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_DirectoryStorageDriver(const MDataStd_DirectoryStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_DirectoryStorageDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_DirectoryStorageDriver {
	MDataStd_DirectoryStorageDriver* GetObject() {
	return (MDataStd_DirectoryStorageDriver*)$self->Access();
	}
};
%extend Handle_MDataStd_DirectoryStorageDriver {
	~Handle_MDataStd_DirectoryStorageDriver() {
	printf("Call custom destructor for instance of Handle_MDataStd_DirectoryStorageDriver\n");
	}
};

%nodefaultctor Handle_MDataStd_GeometryStorageDriver;
class Handle_MDataStd_GeometryStorageDriver : public Handle_MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_GeometryStorageDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_GeometryStorageDriver(const Handle_MDataStd_GeometryStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_GeometryStorageDriver(const MDataStd_GeometryStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_GeometryStorageDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_GeometryStorageDriver {
	MDataStd_GeometryStorageDriver* GetObject() {
	return (MDataStd_GeometryStorageDriver*)$self->Access();
	}
};
%extend Handle_MDataStd_GeometryStorageDriver {
	~Handle_MDataStd_GeometryStorageDriver() {
	printf("Call custom destructor for instance of Handle_MDataStd_GeometryStorageDriver\n");
	}
};

%nodefaultctor Handle_MDataStd_RealRetrievalDriver;
class Handle_MDataStd_RealRetrievalDriver : public Handle_MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_RealRetrievalDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_RealRetrievalDriver(const Handle_MDataStd_RealRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_RealRetrievalDriver(const MDataStd_RealRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_RealRetrievalDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_RealRetrievalDriver {
	MDataStd_RealRetrievalDriver* GetObject() {
	return (MDataStd_RealRetrievalDriver*)$self->Access();
	}
};
%extend Handle_MDataStd_RealRetrievalDriver {
	~Handle_MDataStd_RealRetrievalDriver() {
	printf("Call custom destructor for instance of Handle_MDataStd_RealRetrievalDriver\n");
	}
};

%nodefaultctor Handle_MDataStd_CommentRetrievalDriver;
class Handle_MDataStd_CommentRetrievalDriver : public Handle_MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_CommentRetrievalDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_CommentRetrievalDriver(const Handle_MDataStd_CommentRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_CommentRetrievalDriver(const MDataStd_CommentRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_CommentRetrievalDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_CommentRetrievalDriver {
	MDataStd_CommentRetrievalDriver* GetObject() {
	return (MDataStd_CommentRetrievalDriver*)$self->Access();
	}
};
%extend Handle_MDataStd_CommentRetrievalDriver {
	~Handle_MDataStd_CommentRetrievalDriver() {
	printf("Call custom destructor for instance of Handle_MDataStd_CommentRetrievalDriver\n");
	}
};

%nodefaultctor Handle_MDataStd_RealStorageDriver;
class Handle_MDataStd_RealStorageDriver : public Handle_MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_RealStorageDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_RealStorageDriver(const Handle_MDataStd_RealStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_RealStorageDriver(const MDataStd_RealStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_RealStorageDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_RealStorageDriver {
	MDataStd_RealStorageDriver* GetObject() {
	return (MDataStd_RealStorageDriver*)$self->Access();
	}
};
%extend Handle_MDataStd_RealStorageDriver {
	~Handle_MDataStd_RealStorageDriver() {
	printf("Call custom destructor for instance of Handle_MDataStd_RealStorageDriver\n");
	}
};

%nodefaultctor Handle_MDataStd_ReferenceArrayRetrievalDriver;
class Handle_MDataStd_ReferenceArrayRetrievalDriver : public Handle_MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_ReferenceArrayRetrievalDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_ReferenceArrayRetrievalDriver(const Handle_MDataStd_ReferenceArrayRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_ReferenceArrayRetrievalDriver(const MDataStd_ReferenceArrayRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_ReferenceArrayRetrievalDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_ReferenceArrayRetrievalDriver {
	MDataStd_ReferenceArrayRetrievalDriver* GetObject() {
	return (MDataStd_ReferenceArrayRetrievalDriver*)$self->Access();
	}
};
%extend Handle_MDataStd_ReferenceArrayRetrievalDriver {
	~Handle_MDataStd_ReferenceArrayRetrievalDriver() {
	printf("Call custom destructor for instance of Handle_MDataStd_ReferenceArrayRetrievalDriver\n");
	}
};

%nodefaultctor Handle_MDataStd_RealArrayStorageDriver;
class Handle_MDataStd_RealArrayStorageDriver : public Handle_MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_RealArrayStorageDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_RealArrayStorageDriver(const Handle_MDataStd_RealArrayStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_RealArrayStorageDriver(const MDataStd_RealArrayStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_RealArrayStorageDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_RealArrayStorageDriver {
	MDataStd_RealArrayStorageDriver* GetObject() {
	return (MDataStd_RealArrayStorageDriver*)$self->Access();
	}
};
%extend Handle_MDataStd_RealArrayStorageDriver {
	~Handle_MDataStd_RealArrayStorageDriver() {
	printf("Call custom destructor for instance of Handle_MDataStd_RealArrayStorageDriver\n");
	}
};

%nodefaultctor Handle_MDataStd_PatternStdRetrievalDriver;
class Handle_MDataStd_PatternStdRetrievalDriver : public Handle_MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_PatternStdRetrievalDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_PatternStdRetrievalDriver(const Handle_MDataStd_PatternStdRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_PatternStdRetrievalDriver(const MDataStd_PatternStdRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_PatternStdRetrievalDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_PatternStdRetrievalDriver {
	MDataStd_PatternStdRetrievalDriver* GetObject() {
	return (MDataStd_PatternStdRetrievalDriver*)$self->Access();
	}
};
%extend Handle_MDataStd_PatternStdRetrievalDriver {
	~Handle_MDataStd_PatternStdRetrievalDriver() {
	printf("Call custom destructor for instance of Handle_MDataStd_PatternStdRetrievalDriver\n");
	}
};

%nodefaultctor Handle_MDataStd_ConstraintRetrievalDriver;
class Handle_MDataStd_ConstraintRetrievalDriver : public Handle_MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_ConstraintRetrievalDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_ConstraintRetrievalDriver(const Handle_MDataStd_ConstraintRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_ConstraintRetrievalDriver(const MDataStd_ConstraintRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_ConstraintRetrievalDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_ConstraintRetrievalDriver {
	MDataStd_ConstraintRetrievalDriver* GetObject() {
	return (MDataStd_ConstraintRetrievalDriver*)$self->Access();
	}
};
%extend Handle_MDataStd_ConstraintRetrievalDriver {
	~Handle_MDataStd_ConstraintRetrievalDriver() {
	printf("Call custom destructor for instance of Handle_MDataStd_ConstraintRetrievalDriver\n");
	}
};

%nodefaultctor Handle_MDataStd_AsciiStringRetrievalDriver;
class Handle_MDataStd_AsciiStringRetrievalDriver : public Handle_MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_AsciiStringRetrievalDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_AsciiStringRetrievalDriver(const Handle_MDataStd_AsciiStringRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_AsciiStringRetrievalDriver(const MDataStd_AsciiStringRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_AsciiStringRetrievalDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_AsciiStringRetrievalDriver {
	MDataStd_AsciiStringRetrievalDriver* GetObject() {
	return (MDataStd_AsciiStringRetrievalDriver*)$self->Access();
	}
};
%extend Handle_MDataStd_AsciiStringRetrievalDriver {
	~Handle_MDataStd_AsciiStringRetrievalDriver() {
	printf("Call custom destructor for instance of Handle_MDataStd_AsciiStringRetrievalDriver\n");
	}
};

%nodefaultctor Handle_MDataStd_UAttributeStorageDriver;
class Handle_MDataStd_UAttributeStorageDriver : public Handle_MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_UAttributeStorageDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_UAttributeStorageDriver(const Handle_MDataStd_UAttributeStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_UAttributeStorageDriver(const MDataStd_UAttributeStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_UAttributeStorageDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_UAttributeStorageDriver {
	MDataStd_UAttributeStorageDriver* GetObject() {
	return (MDataStd_UAttributeStorageDriver*)$self->Access();
	}
};
%extend Handle_MDataStd_UAttributeStorageDriver {
	~Handle_MDataStd_UAttributeStorageDriver() {
	printf("Call custom destructor for instance of Handle_MDataStd_UAttributeStorageDriver\n");
	}
};

%nodefaultctor Handle_MDataStd_IntPackedMapRetrievalDriver_1;
class Handle_MDataStd_IntPackedMapRetrievalDriver_1 : public Handle_MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_IntPackedMapRetrievalDriver_1();
		%feature("autodoc", "1");
		Handle_MDataStd_IntPackedMapRetrievalDriver_1(const Handle_MDataStd_IntPackedMapRetrievalDriver_1 &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_IntPackedMapRetrievalDriver_1(const MDataStd_IntPackedMapRetrievalDriver_1 *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_IntPackedMapRetrievalDriver_1 const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_IntPackedMapRetrievalDriver_1 {
	MDataStd_IntPackedMapRetrievalDriver_1* GetObject() {
	return (MDataStd_IntPackedMapRetrievalDriver_1*)$self->Access();
	}
};
%extend Handle_MDataStd_IntPackedMapRetrievalDriver_1 {
	~Handle_MDataStd_IntPackedMapRetrievalDriver_1() {
	printf("Call custom destructor for instance of Handle_MDataStd_IntPackedMapRetrievalDriver_1\n");
	}
};

%nodefaultctor Handle_MDataStd_IntegerStorageDriver;
class Handle_MDataStd_IntegerStorageDriver : public Handle_MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_IntegerStorageDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_IntegerStorageDriver(const Handle_MDataStd_IntegerStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_IntegerStorageDriver(const MDataStd_IntegerStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_IntegerStorageDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_IntegerStorageDriver {
	MDataStd_IntegerStorageDriver* GetObject() {
	return (MDataStd_IntegerStorageDriver*)$self->Access();
	}
};
%extend Handle_MDataStd_IntegerStorageDriver {
	~Handle_MDataStd_IntegerStorageDriver() {
	printf("Call custom destructor for instance of Handle_MDataStd_IntegerStorageDriver\n");
	}
};

%nodefaultctor Handle_MDataStd_VariableRetrievalDriver;
class Handle_MDataStd_VariableRetrievalDriver : public Handle_MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_VariableRetrievalDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_VariableRetrievalDriver(const Handle_MDataStd_VariableRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_VariableRetrievalDriver(const MDataStd_VariableRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_VariableRetrievalDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_VariableRetrievalDriver {
	MDataStd_VariableRetrievalDriver* GetObject() {
	return (MDataStd_VariableRetrievalDriver*)$self->Access();
	}
};
%extend Handle_MDataStd_VariableRetrievalDriver {
	~Handle_MDataStd_VariableRetrievalDriver() {
	printf("Call custom destructor for instance of Handle_MDataStd_VariableRetrievalDriver\n");
	}
};

%nodefaultctor Handle_MDataStd_ReferenceArrayStorageDriver;
class Handle_MDataStd_ReferenceArrayStorageDriver : public Handle_MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_ReferenceArrayStorageDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_ReferenceArrayStorageDriver(const Handle_MDataStd_ReferenceArrayStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_ReferenceArrayStorageDriver(const MDataStd_ReferenceArrayStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_ReferenceArrayStorageDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_ReferenceArrayStorageDriver {
	MDataStd_ReferenceArrayStorageDriver* GetObject() {
	return (MDataStd_ReferenceArrayStorageDriver*)$self->Access();
	}
};
%extend Handle_MDataStd_ReferenceArrayStorageDriver {
	~Handle_MDataStd_ReferenceArrayStorageDriver() {
	printf("Call custom destructor for instance of Handle_MDataStd_ReferenceArrayStorageDriver\n");
	}
};

%nodefaultctor Handle_MDataStd_ExpressionRetrievalDriver;
class Handle_MDataStd_ExpressionRetrievalDriver : public Handle_MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_ExpressionRetrievalDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_ExpressionRetrievalDriver(const Handle_MDataStd_ExpressionRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_ExpressionRetrievalDriver(const MDataStd_ExpressionRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_ExpressionRetrievalDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_ExpressionRetrievalDriver {
	MDataStd_ExpressionRetrievalDriver* GetObject() {
	return (MDataStd_ExpressionRetrievalDriver*)$self->Access();
	}
};
%extend Handle_MDataStd_ExpressionRetrievalDriver {
	~Handle_MDataStd_ExpressionRetrievalDriver() {
	printf("Call custom destructor for instance of Handle_MDataStd_ExpressionRetrievalDriver\n");
	}
};

%nodefaultctor Handle_MDataStd_ExtStringArrayStorageDriver;
class Handle_MDataStd_ExtStringArrayStorageDriver : public Handle_MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_ExtStringArrayStorageDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_ExtStringArrayStorageDriver(const Handle_MDataStd_ExtStringArrayStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_ExtStringArrayStorageDriver(const MDataStd_ExtStringArrayStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_ExtStringArrayStorageDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_ExtStringArrayStorageDriver {
	MDataStd_ExtStringArrayStorageDriver* GetObject() {
	return (MDataStd_ExtStringArrayStorageDriver*)$self->Access();
	}
};
%extend Handle_MDataStd_ExtStringArrayStorageDriver {
	~Handle_MDataStd_ExtStringArrayStorageDriver() {
	printf("Call custom destructor for instance of Handle_MDataStd_ExtStringArrayStorageDriver\n");
	}
};

%nodefaultctor Handle_MDataStd_UAttributeRetrievalDriver;
class Handle_MDataStd_UAttributeRetrievalDriver : public Handle_MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_UAttributeRetrievalDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_UAttributeRetrievalDriver(const Handle_MDataStd_UAttributeRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_UAttributeRetrievalDriver(const MDataStd_UAttributeRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_UAttributeRetrievalDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_UAttributeRetrievalDriver {
	MDataStd_UAttributeRetrievalDriver* GetObject() {
	return (MDataStd_UAttributeRetrievalDriver*)$self->Access();
	}
};
%extend Handle_MDataStd_UAttributeRetrievalDriver {
	~Handle_MDataStd_UAttributeRetrievalDriver() {
	printf("Call custom destructor for instance of Handle_MDataStd_UAttributeRetrievalDriver\n");
	}
};

%nodefaultctor Handle_MDataStd_RelationRetrievalDriver;
class Handle_MDataStd_RelationRetrievalDriver : public Handle_MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_RelationRetrievalDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_RelationRetrievalDriver(const Handle_MDataStd_RelationRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_RelationRetrievalDriver(const MDataStd_RelationRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_RelationRetrievalDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_RelationRetrievalDriver {
	MDataStd_RelationRetrievalDriver* GetObject() {
	return (MDataStd_RelationRetrievalDriver*)$self->Access();
	}
};
%extend Handle_MDataStd_RelationRetrievalDriver {
	~Handle_MDataStd_RelationRetrievalDriver() {
	printf("Call custom destructor for instance of Handle_MDataStd_RelationRetrievalDriver\n");
	}
};

%nodefaultctor Handle_MDataStd_TickRetrievalDriver;
class Handle_MDataStd_TickRetrievalDriver : public Handle_MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_TickRetrievalDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_TickRetrievalDriver(const Handle_MDataStd_TickRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_TickRetrievalDriver(const MDataStd_TickRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_TickRetrievalDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_TickRetrievalDriver {
	MDataStd_TickRetrievalDriver* GetObject() {
	return (MDataStd_TickRetrievalDriver*)$self->Access();
	}
};
%extend Handle_MDataStd_TickRetrievalDriver {
	~Handle_MDataStd_TickRetrievalDriver() {
	printf("Call custom destructor for instance of Handle_MDataStd_TickRetrievalDriver\n");
	}
};

%nodefaultctor Handle_MDataStd_PointRetrievalDriver;
class Handle_MDataStd_PointRetrievalDriver : public Handle_MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_PointRetrievalDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_PointRetrievalDriver(const Handle_MDataStd_PointRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_PointRetrievalDriver(const MDataStd_PointRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_PointRetrievalDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_PointRetrievalDriver {
	MDataStd_PointRetrievalDriver* GetObject() {
	return (MDataStd_PointRetrievalDriver*)$self->Access();
	}
};
%extend Handle_MDataStd_PointRetrievalDriver {
	~Handle_MDataStd_PointRetrievalDriver() {
	printf("Call custom destructor for instance of Handle_MDataStd_PointRetrievalDriver\n");
	}
};

%nodefaultctor Handle_MDataStd_NoteBookRetrievalDriver;
class Handle_MDataStd_NoteBookRetrievalDriver : public Handle_MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_NoteBookRetrievalDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_NoteBookRetrievalDriver(const Handle_MDataStd_NoteBookRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_NoteBookRetrievalDriver(const MDataStd_NoteBookRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_NoteBookRetrievalDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_NoteBookRetrievalDriver {
	MDataStd_NoteBookRetrievalDriver* GetObject() {
	return (MDataStd_NoteBookRetrievalDriver*)$self->Access();
	}
};
%extend Handle_MDataStd_NoteBookRetrievalDriver {
	~Handle_MDataStd_NoteBookRetrievalDriver() {
	printf("Call custom destructor for instance of Handle_MDataStd_NoteBookRetrievalDriver\n");
	}
};

%nodefaultctor Handle_MDataStd_IntegerArrayRetrievalDriver;
class Handle_MDataStd_IntegerArrayRetrievalDriver : public Handle_MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_IntegerArrayRetrievalDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_IntegerArrayRetrievalDriver(const Handle_MDataStd_IntegerArrayRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_IntegerArrayRetrievalDriver(const MDataStd_IntegerArrayRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_IntegerArrayRetrievalDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_IntegerArrayRetrievalDriver {
	MDataStd_IntegerArrayRetrievalDriver* GetObject() {
	return (MDataStd_IntegerArrayRetrievalDriver*)$self->Access();
	}
};
%extend Handle_MDataStd_IntegerArrayRetrievalDriver {
	~Handle_MDataStd_IntegerArrayRetrievalDriver() {
	printf("Call custom destructor for instance of Handle_MDataStd_IntegerArrayRetrievalDriver\n");
	}
};

%nodefaultctor Handle_MDataStd_IntPackedMapRetrievalDriver;
class Handle_MDataStd_IntPackedMapRetrievalDriver : public Handle_MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_IntPackedMapRetrievalDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_IntPackedMapRetrievalDriver(const Handle_MDataStd_IntPackedMapRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_IntPackedMapRetrievalDriver(const MDataStd_IntPackedMapRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_IntPackedMapRetrievalDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_IntPackedMapRetrievalDriver {
	MDataStd_IntPackedMapRetrievalDriver* GetObject() {
	return (MDataStd_IntPackedMapRetrievalDriver*)$self->Access();
	}
};
%extend Handle_MDataStd_IntPackedMapRetrievalDriver {
	~Handle_MDataStd_IntPackedMapRetrievalDriver() {
	printf("Call custom destructor for instance of Handle_MDataStd_IntPackedMapRetrievalDriver\n");
	}
};

%nodefaultctor Handle_MDataStd_ByteArrayRetrievalDriver;
class Handle_MDataStd_ByteArrayRetrievalDriver : public Handle_MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_ByteArrayRetrievalDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_ByteArrayRetrievalDriver(const Handle_MDataStd_ByteArrayRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_ByteArrayRetrievalDriver(const MDataStd_ByteArrayRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_ByteArrayRetrievalDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_ByteArrayRetrievalDriver {
	MDataStd_ByteArrayRetrievalDriver* GetObject() {
	return (MDataStd_ByteArrayRetrievalDriver*)$self->Access();
	}
};
%extend Handle_MDataStd_ByteArrayRetrievalDriver {
	~Handle_MDataStd_ByteArrayRetrievalDriver() {
	printf("Call custom destructor for instance of Handle_MDataStd_ByteArrayRetrievalDriver\n");
	}
};

%nodefaultctor Handle_MDataStd_NamedDataRetrievalDriver;
class Handle_MDataStd_NamedDataRetrievalDriver : public Handle_MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_NamedDataRetrievalDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_NamedDataRetrievalDriver(const Handle_MDataStd_NamedDataRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_NamedDataRetrievalDriver(const MDataStd_NamedDataRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_NamedDataRetrievalDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_NamedDataRetrievalDriver {
	MDataStd_NamedDataRetrievalDriver* GetObject() {
	return (MDataStd_NamedDataRetrievalDriver*)$self->Access();
	}
};
%extend Handle_MDataStd_NamedDataRetrievalDriver {
	~Handle_MDataStd_NamedDataRetrievalDriver() {
	printf("Call custom destructor for instance of Handle_MDataStd_NamedDataRetrievalDriver\n");
	}
};

%nodefaultctor Handle_MDataStd_NameRetrievalDriver;
class Handle_MDataStd_NameRetrievalDriver : public Handle_MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_NameRetrievalDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_NameRetrievalDriver(const Handle_MDataStd_NameRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_NameRetrievalDriver(const MDataStd_NameRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_NameRetrievalDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_NameRetrievalDriver {
	MDataStd_NameRetrievalDriver* GetObject() {
	return (MDataStd_NameRetrievalDriver*)$self->Access();
	}
};
%extend Handle_MDataStd_NameRetrievalDriver {
	~Handle_MDataStd_NameRetrievalDriver() {
	printf("Call custom destructor for instance of Handle_MDataStd_NameRetrievalDriver\n");
	}
};

%nodefaultctor Handle_MDataStd_ExpressionStorageDriver;
class Handle_MDataStd_ExpressionStorageDriver : public Handle_MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_ExpressionStorageDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_ExpressionStorageDriver(const Handle_MDataStd_ExpressionStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_ExpressionStorageDriver(const MDataStd_ExpressionStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_ExpressionStorageDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_ExpressionStorageDriver {
	MDataStd_ExpressionStorageDriver* GetObject() {
	return (MDataStd_ExpressionStorageDriver*)$self->Access();
	}
};
%extend Handle_MDataStd_ExpressionStorageDriver {
	~Handle_MDataStd_ExpressionStorageDriver() {
	printf("Call custom destructor for instance of Handle_MDataStd_ExpressionStorageDriver\n");
	}
};

%nodefaultctor Handle_MDataStd_ExtStringArrayRetrievalDriver;
class Handle_MDataStd_ExtStringArrayRetrievalDriver : public Handle_MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_ExtStringArrayRetrievalDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_ExtStringArrayRetrievalDriver(const Handle_MDataStd_ExtStringArrayRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_ExtStringArrayRetrievalDriver(const MDataStd_ExtStringArrayRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_ExtStringArrayRetrievalDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_ExtStringArrayRetrievalDriver {
	MDataStd_ExtStringArrayRetrievalDriver* GetObject() {
	return (MDataStd_ExtStringArrayRetrievalDriver*)$self->Access();
	}
};
%extend Handle_MDataStd_ExtStringArrayRetrievalDriver {
	~Handle_MDataStd_ExtStringArrayRetrievalDriver() {
	printf("Call custom destructor for instance of Handle_MDataStd_ExtStringArrayRetrievalDriver\n");
	}
};

%nodefaultctor Handle_MDataStd_NameStorageDriver;
class Handle_MDataStd_NameStorageDriver : public Handle_MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_NameStorageDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_NameStorageDriver(const Handle_MDataStd_NameStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_NameStorageDriver(const MDataStd_NameStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_NameStorageDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_NameStorageDriver {
	MDataStd_NameStorageDriver* GetObject() {
	return (MDataStd_NameStorageDriver*)$self->Access();
	}
};
%extend Handle_MDataStd_NameStorageDriver {
	~Handle_MDataStd_NameStorageDriver() {
	printf("Call custom destructor for instance of Handle_MDataStd_NameStorageDriver\n");
	}
};

%nodefaultctor Handle_MDataStd_PointStorageDriver;
class Handle_MDataStd_PointStorageDriver : public Handle_MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_PointStorageDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_PointStorageDriver(const Handle_MDataStd_PointStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_PointStorageDriver(const MDataStd_PointStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_PointStorageDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_PointStorageDriver {
	MDataStd_PointStorageDriver* GetObject() {
	return (MDataStd_PointStorageDriver*)$self->Access();
	}
};
%extend Handle_MDataStd_PointStorageDriver {
	~Handle_MDataStd_PointStorageDriver() {
	printf("Call custom destructor for instance of Handle_MDataStd_PointStorageDriver\n");
	}
};

%nodefaultctor Handle_MDataStd_IntegerRetrievalDriver;
class Handle_MDataStd_IntegerRetrievalDriver : public Handle_MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_IntegerRetrievalDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_IntegerRetrievalDriver(const Handle_MDataStd_IntegerRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_IntegerRetrievalDriver(const MDataStd_IntegerRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_IntegerRetrievalDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_IntegerRetrievalDriver {
	MDataStd_IntegerRetrievalDriver* GetObject() {
	return (MDataStd_IntegerRetrievalDriver*)$self->Access();
	}
};
%extend Handle_MDataStd_IntegerRetrievalDriver {
	~Handle_MDataStd_IntegerRetrievalDriver() {
	printf("Call custom destructor for instance of Handle_MDataStd_IntegerRetrievalDriver\n");
	}
};

%nodefaultctor Handle_MDataStd_RealListRetrievalDriver;
class Handle_MDataStd_RealListRetrievalDriver : public Handle_MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_RealListRetrievalDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_RealListRetrievalDriver(const Handle_MDataStd_RealListRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_RealListRetrievalDriver(const MDataStd_RealListRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_RealListRetrievalDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_RealListRetrievalDriver {
	MDataStd_RealListRetrievalDriver* GetObject() {
	return (MDataStd_RealListRetrievalDriver*)$self->Access();
	}
};
%extend Handle_MDataStd_RealListRetrievalDriver {
	~Handle_MDataStd_RealListRetrievalDriver() {
	printf("Call custom destructor for instance of Handle_MDataStd_RealListRetrievalDriver\n");
	}
};

%nodefaultctor Handle_MDataStd_BooleanArrayStorageDriver;
class Handle_MDataStd_BooleanArrayStorageDriver : public Handle_MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_BooleanArrayStorageDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_BooleanArrayStorageDriver(const Handle_MDataStd_BooleanArrayStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_BooleanArrayStorageDriver(const MDataStd_BooleanArrayStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_BooleanArrayStorageDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_BooleanArrayStorageDriver {
	MDataStd_BooleanArrayStorageDriver* GetObject() {
	return (MDataStd_BooleanArrayStorageDriver*)$self->Access();
	}
};
%extend Handle_MDataStd_BooleanArrayStorageDriver {
	~Handle_MDataStd_BooleanArrayStorageDriver() {
	printf("Call custom destructor for instance of Handle_MDataStd_BooleanArrayStorageDriver\n");
	}
};

%nodefaultctor Handle_MDataStd_NamedDataStorageDriver;
class Handle_MDataStd_NamedDataStorageDriver : public Handle_MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_NamedDataStorageDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_NamedDataStorageDriver(const Handle_MDataStd_NamedDataStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_NamedDataStorageDriver(const MDataStd_NamedDataStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_NamedDataStorageDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_NamedDataStorageDriver {
	MDataStd_NamedDataStorageDriver* GetObject() {
	return (MDataStd_NamedDataStorageDriver*)$self->Access();
	}
};
%extend Handle_MDataStd_NamedDataStorageDriver {
	~Handle_MDataStd_NamedDataStorageDriver() {
	printf("Call custom destructor for instance of Handle_MDataStd_NamedDataStorageDriver\n");
	}
};

%nodefaultctor Handle_MDataStd_ExtStringListStorageDriver;
class Handle_MDataStd_ExtStringListStorageDriver : public Handle_MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_ExtStringListStorageDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_ExtStringListStorageDriver(const Handle_MDataStd_ExtStringListStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_ExtStringListStorageDriver(const MDataStd_ExtStringListStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_ExtStringListStorageDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_ExtStringListStorageDriver {
	MDataStd_ExtStringListStorageDriver* GetObject() {
	return (MDataStd_ExtStringListStorageDriver*)$self->Access();
	}
};
%extend Handle_MDataStd_ExtStringListStorageDriver {
	~Handle_MDataStd_ExtStringListStorageDriver() {
	printf("Call custom destructor for instance of Handle_MDataStd_ExtStringListStorageDriver\n");
	}
};

%nodefaultctor Handle_MDataStd_ByteArrayStorageDriver;
class Handle_MDataStd_ByteArrayStorageDriver : public Handle_MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_ByteArrayStorageDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_ByteArrayStorageDriver(const Handle_MDataStd_ByteArrayStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_ByteArrayStorageDriver(const MDataStd_ByteArrayStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_ByteArrayStorageDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_ByteArrayStorageDriver {
	MDataStd_ByteArrayStorageDriver* GetObject() {
	return (MDataStd_ByteArrayStorageDriver*)$self->Access();
	}
};
%extend Handle_MDataStd_ByteArrayStorageDriver {
	~Handle_MDataStd_ByteArrayStorageDriver() {
	printf("Call custom destructor for instance of Handle_MDataStd_ByteArrayStorageDriver\n");
	}
};

%nodefaultctor Handle_MDataStd_ShapeRetrievalDriver;
class Handle_MDataStd_ShapeRetrievalDriver : public Handle_MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_ShapeRetrievalDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_ShapeRetrievalDriver(const Handle_MDataStd_ShapeRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_ShapeRetrievalDriver(const MDataStd_ShapeRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_ShapeRetrievalDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_ShapeRetrievalDriver {
	MDataStd_ShapeRetrievalDriver* GetObject() {
	return (MDataStd_ShapeRetrievalDriver*)$self->Access();
	}
};
%extend Handle_MDataStd_ShapeRetrievalDriver {
	~Handle_MDataStd_ShapeRetrievalDriver() {
	printf("Call custom destructor for instance of Handle_MDataStd_ShapeRetrievalDriver\n");
	}
};

%nodefaultctor Handle_MDataStd_AxisRetrievalDriver;
class Handle_MDataStd_AxisRetrievalDriver : public Handle_MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_AxisRetrievalDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_AxisRetrievalDriver(const Handle_MDataStd_AxisRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_AxisRetrievalDriver(const MDataStd_AxisRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_AxisRetrievalDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_AxisRetrievalDriver {
	MDataStd_AxisRetrievalDriver* GetObject() {
	return (MDataStd_AxisRetrievalDriver*)$self->Access();
	}
};
%extend Handle_MDataStd_AxisRetrievalDriver {
	~Handle_MDataStd_AxisRetrievalDriver() {
	printf("Call custom destructor for instance of Handle_MDataStd_AxisRetrievalDriver\n");
	}
};

%nodefaultctor Handle_MDataStd_IntegerArrayStorageDriver;
class Handle_MDataStd_IntegerArrayStorageDriver : public Handle_MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_IntegerArrayStorageDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_IntegerArrayStorageDriver(const Handle_MDataStd_IntegerArrayStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_IntegerArrayStorageDriver(const MDataStd_IntegerArrayStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_IntegerArrayStorageDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_IntegerArrayStorageDriver {
	MDataStd_IntegerArrayStorageDriver* GetObject() {
	return (MDataStd_IntegerArrayStorageDriver*)$self->Access();
	}
};
%extend Handle_MDataStd_IntegerArrayStorageDriver {
	~Handle_MDataStd_IntegerArrayStorageDriver() {
	printf("Call custom destructor for instance of Handle_MDataStd_IntegerArrayStorageDriver\n");
	}
};

%nodefaultctor Handle_MDataStd_IntegerArrayRetrievalDriver_1;
class Handle_MDataStd_IntegerArrayRetrievalDriver_1 : public Handle_MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_IntegerArrayRetrievalDriver_1();
		%feature("autodoc", "1");
		Handle_MDataStd_IntegerArrayRetrievalDriver_1(const Handle_MDataStd_IntegerArrayRetrievalDriver_1 &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_IntegerArrayRetrievalDriver_1(const MDataStd_IntegerArrayRetrievalDriver_1 *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_IntegerArrayRetrievalDriver_1 const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_IntegerArrayRetrievalDriver_1 {
	MDataStd_IntegerArrayRetrievalDriver_1* GetObject() {
	return (MDataStd_IntegerArrayRetrievalDriver_1*)$self->Access();
	}
};
%extend Handle_MDataStd_IntegerArrayRetrievalDriver_1 {
	~Handle_MDataStd_IntegerArrayRetrievalDriver_1() {
	printf("Call custom destructor for instance of Handle_MDataStd_IntegerArrayRetrievalDriver_1\n");
	}
};

%nodefaultctor Handle_MDataStd_RealListStorageDriver;
class Handle_MDataStd_RealListStorageDriver : public Handle_MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_RealListStorageDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_RealListStorageDriver(const Handle_MDataStd_RealListStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_RealListStorageDriver(const MDataStd_RealListStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_RealListStorageDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_RealListStorageDriver {
	MDataStd_RealListStorageDriver* GetObject() {
	return (MDataStd_RealListStorageDriver*)$self->Access();
	}
};
%extend Handle_MDataStd_RealListStorageDriver {
	~Handle_MDataStd_RealListStorageDriver() {
	printf("Call custom destructor for instance of Handle_MDataStd_RealListStorageDriver\n");
	}
};

%nodefaultctor Handle_MDataStd_PlacementRetrievalDriver;
class Handle_MDataStd_PlacementRetrievalDriver : public Handle_MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_PlacementRetrievalDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_PlacementRetrievalDriver(const Handle_MDataStd_PlacementRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_PlacementRetrievalDriver(const MDataStd_PlacementRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_PlacementRetrievalDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_PlacementRetrievalDriver {
	MDataStd_PlacementRetrievalDriver* GetObject() {
	return (MDataStd_PlacementRetrievalDriver*)$self->Access();
	}
};
%extend Handle_MDataStd_PlacementRetrievalDriver {
	~Handle_MDataStd_PlacementRetrievalDriver() {
	printf("Call custom destructor for instance of Handle_MDataStd_PlacementRetrievalDriver\n");
	}
};

%nodefaultctor Handle_MDataStd_IntPackedMapStorageDriver;
class Handle_MDataStd_IntPackedMapStorageDriver : public Handle_MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_IntPackedMapStorageDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_IntPackedMapStorageDriver(const Handle_MDataStd_IntPackedMapStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_IntPackedMapStorageDriver(const MDataStd_IntPackedMapStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_IntPackedMapStorageDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_IntPackedMapStorageDriver {
	MDataStd_IntPackedMapStorageDriver* GetObject() {
	return (MDataStd_IntPackedMapStorageDriver*)$self->Access();
	}
};
%extend Handle_MDataStd_IntPackedMapStorageDriver {
	~Handle_MDataStd_IntPackedMapStorageDriver() {
	printf("Call custom destructor for instance of Handle_MDataStd_IntPackedMapStorageDriver\n");
	}
};

%nodefaultctor Handle_MDataStd_ReferenceListRetrievalDriver;
class Handle_MDataStd_ReferenceListRetrievalDriver : public Handle_MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_ReferenceListRetrievalDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_ReferenceListRetrievalDriver(const Handle_MDataStd_ReferenceListRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_ReferenceListRetrievalDriver(const MDataStd_ReferenceListRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_ReferenceListRetrievalDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_ReferenceListRetrievalDriver {
	MDataStd_ReferenceListRetrievalDriver* GetObject() {
	return (MDataStd_ReferenceListRetrievalDriver*)$self->Access();
	}
};
%extend Handle_MDataStd_ReferenceListRetrievalDriver {
	~Handle_MDataStd_ReferenceListRetrievalDriver() {
	printf("Call custom destructor for instance of Handle_MDataStd_ReferenceListRetrievalDriver\n");
	}
};

%nodefaultctor Handle_MDataStd_PlaneStorageDriver;
class Handle_MDataStd_PlaneStorageDriver : public Handle_MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_PlaneStorageDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_PlaneStorageDriver(const Handle_MDataStd_PlaneStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_PlaneStorageDriver(const MDataStd_PlaneStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_PlaneStorageDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_PlaneStorageDriver {
	MDataStd_PlaneStorageDriver* GetObject() {
	return (MDataStd_PlaneStorageDriver*)$self->Access();
	}
};
%extend Handle_MDataStd_PlaneStorageDriver {
	~Handle_MDataStd_PlaneStorageDriver() {
	printf("Call custom destructor for instance of Handle_MDataStd_PlaneStorageDriver\n");
	}
};

%nodefaultctor Handle_MDataStd_AsciiStringStorageDriver;
class Handle_MDataStd_AsciiStringStorageDriver : public Handle_MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_AsciiStringStorageDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_AsciiStringStorageDriver(const Handle_MDataStd_AsciiStringStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_AsciiStringStorageDriver(const MDataStd_AsciiStringStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_AsciiStringStorageDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_AsciiStringStorageDriver {
	MDataStd_AsciiStringStorageDriver* GetObject() {
	return (MDataStd_AsciiStringStorageDriver*)$self->Access();
	}
};
%extend Handle_MDataStd_AsciiStringStorageDriver {
	~Handle_MDataStd_AsciiStringStorageDriver() {
	printf("Call custom destructor for instance of Handle_MDataStd_AsciiStringStorageDriver\n");
	}
};

%nodefaultctor Handle_MDataStd_GeometryRetrievalDriver;
class Handle_MDataStd_GeometryRetrievalDriver : public Handle_MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_GeometryRetrievalDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_GeometryRetrievalDriver(const Handle_MDataStd_GeometryRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_GeometryRetrievalDriver(const MDataStd_GeometryRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_GeometryRetrievalDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_GeometryRetrievalDriver {
	MDataStd_GeometryRetrievalDriver* GetObject() {
	return (MDataStd_GeometryRetrievalDriver*)$self->Access();
	}
};
%extend Handle_MDataStd_GeometryRetrievalDriver {
	~Handle_MDataStd_GeometryRetrievalDriver() {
	printf("Call custom destructor for instance of Handle_MDataStd_GeometryRetrievalDriver\n");
	}
};

%nodefaultctor Handle_MDataStd_PlacementStorageDriver;
class Handle_MDataStd_PlacementStorageDriver : public Handle_MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_PlacementStorageDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_PlacementStorageDriver(const Handle_MDataStd_PlacementStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_PlacementStorageDriver(const MDataStd_PlacementStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_PlacementStorageDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_PlacementStorageDriver {
	MDataStd_PlacementStorageDriver* GetObject() {
	return (MDataStd_PlacementStorageDriver*)$self->Access();
	}
};
%extend Handle_MDataStd_PlacementStorageDriver {
	~Handle_MDataStd_PlacementStorageDriver() {
	printf("Call custom destructor for instance of Handle_MDataStd_PlacementStorageDriver\n");
	}
};

%nodefaultctor Handle_MDataStd_TreeNodeStorageDriver;
class Handle_MDataStd_TreeNodeStorageDriver : public Handle_MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_TreeNodeStorageDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_TreeNodeStorageDriver(const Handle_MDataStd_TreeNodeStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_TreeNodeStorageDriver(const MDataStd_TreeNodeStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_TreeNodeStorageDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_TreeNodeStorageDriver {
	MDataStd_TreeNodeStorageDriver* GetObject() {
	return (MDataStd_TreeNodeStorageDriver*)$self->Access();
	}
};
%extend Handle_MDataStd_TreeNodeStorageDriver {
	~Handle_MDataStd_TreeNodeStorageDriver() {
	printf("Call custom destructor for instance of Handle_MDataStd_TreeNodeStorageDriver\n");
	}
};

%nodefaultctor Handle_MDataStd_ShapeStorageDriver;
class Handle_MDataStd_ShapeStorageDriver : public Handle_MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_ShapeStorageDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_ShapeStorageDriver(const Handle_MDataStd_ShapeStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_ShapeStorageDriver(const MDataStd_ShapeStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_ShapeStorageDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_ShapeStorageDriver {
	MDataStd_ShapeStorageDriver* GetObject() {
	return (MDataStd_ShapeStorageDriver*)$self->Access();
	}
};
%extend Handle_MDataStd_ShapeStorageDriver {
	~Handle_MDataStd_ShapeStorageDriver() {
	printf("Call custom destructor for instance of Handle_MDataStd_ShapeStorageDriver\n");
	}
};

%nodefaultctor Handle_MDataStd_BooleanListStorageDriver;
class Handle_MDataStd_BooleanListStorageDriver : public Handle_MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_BooleanListStorageDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_BooleanListStorageDriver(const Handle_MDataStd_BooleanListStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_BooleanListStorageDriver(const MDataStd_BooleanListStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_BooleanListStorageDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_BooleanListStorageDriver {
	MDataStd_BooleanListStorageDriver* GetObject() {
	return (MDataStd_BooleanListStorageDriver*)$self->Access();
	}
};
%extend Handle_MDataStd_BooleanListStorageDriver {
	~Handle_MDataStd_BooleanListStorageDriver() {
	printf("Call custom destructor for instance of Handle_MDataStd_BooleanListStorageDriver\n");
	}
};

%nodefaultctor Handle_MDataStd_ConstraintStorageDriver;
class Handle_MDataStd_ConstraintStorageDriver : public Handle_MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_ConstraintStorageDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_ConstraintStorageDriver(const Handle_MDataStd_ConstraintStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_ConstraintStorageDriver(const MDataStd_ConstraintStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_ConstraintStorageDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_ConstraintStorageDriver {
	MDataStd_ConstraintStorageDriver* GetObject() {
	return (MDataStd_ConstraintStorageDriver*)$self->Access();
	}
};
%extend Handle_MDataStd_ConstraintStorageDriver {
	~Handle_MDataStd_ConstraintStorageDriver() {
	printf("Call custom destructor for instance of Handle_MDataStd_ConstraintStorageDriver\n");
	}
};

%nodefaultctor Handle_MDataStd_RelationStorageDriver;
class Handle_MDataStd_RelationStorageDriver : public Handle_MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_RelationStorageDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_RelationStorageDriver(const Handle_MDataStd_RelationStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_RelationStorageDriver(const MDataStd_RelationStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_RelationStorageDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_RelationStorageDriver {
	MDataStd_RelationStorageDriver* GetObject() {
	return (MDataStd_RelationStorageDriver*)$self->Access();
	}
};
%extend Handle_MDataStd_RelationStorageDriver {
	~Handle_MDataStd_RelationStorageDriver() {
	printf("Call custom destructor for instance of Handle_MDataStd_RelationStorageDriver\n");
	}
};

%nodefaultctor Handle_MDataStd_TickStorageDriver;
class Handle_MDataStd_TickStorageDriver : public Handle_MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_TickStorageDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_TickStorageDriver(const Handle_MDataStd_TickStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_TickStorageDriver(const MDataStd_TickStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_TickStorageDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_TickStorageDriver {
	MDataStd_TickStorageDriver* GetObject() {
	return (MDataStd_TickStorageDriver*)$self->Access();
	}
};
%extend Handle_MDataStd_TickStorageDriver {
	~Handle_MDataStd_TickStorageDriver() {
	printf("Call custom destructor for instance of Handle_MDataStd_TickStorageDriver\n");
	}
};

%nodefaultctor Handle_MDataStd_RealArrayRetrievalDriver;
class Handle_MDataStd_RealArrayRetrievalDriver : public Handle_MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		Handle_MDataStd_RealArrayRetrievalDriver();
		%feature("autodoc", "1");
		Handle_MDataStd_RealArrayRetrievalDriver(const Handle_MDataStd_RealArrayRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_MDataStd_RealArrayRetrievalDriver(const MDataStd_RealArrayRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_MDataStd_RealArrayRetrievalDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MDataStd_RealArrayRetrievalDriver {
	MDataStd_RealArrayRetrievalDriver* GetObject() {
	return (MDataStd_RealArrayRetrievalDriver*)$self->Access();
	}
};
%extend Handle_MDataStd_RealArrayRetrievalDriver {
	~Handle_MDataStd_RealArrayRetrievalDriver() {
	printf("Call custom destructor for instance of Handle_MDataStd_RealArrayRetrievalDriver\n");
	}
};

%nodefaultctor MDataStd_RealStorageDriver;
class MDataStd_RealStorageDriver : public MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_RealStorageDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_PDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, const Handle_PDF_Attribute &Target, const Handle_MDF_SRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_RealStorageDriver {
	Handle_MDataStd_RealStorageDriver GetHandle() {
	return *(Handle_MDataStd_RealStorageDriver*) &$self;
	}
};
%extend MDataStd_RealStorageDriver {
	~MDataStd_RealStorageDriver() {
	printf("Call custom destructor for instance of MDataStd_RealStorageDriver\n");
	}
};

%nodefaultctor MDataStd_ReferenceArrayRetrievalDriver;
class MDataStd_ReferenceArrayRetrievalDriver : public MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_ReferenceArrayRetrievalDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_PDF_Attribute &Source, const Handle_TDF_Attribute &Target, const Handle_MDF_RRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_ReferenceArrayRetrievalDriver {
	Handle_MDataStd_ReferenceArrayRetrievalDriver GetHandle() {
	return *(Handle_MDataStd_ReferenceArrayRetrievalDriver*) &$self;
	}
};
%extend MDataStd_ReferenceArrayRetrievalDriver {
	~MDataStd_ReferenceArrayRetrievalDriver() {
	printf("Call custom destructor for instance of MDataStd_ReferenceArrayRetrievalDriver\n");
	}
};

%nodefaultctor MDataStd_TreeNodeRetrievalDriver;
class MDataStd_TreeNodeRetrievalDriver : public MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_TreeNodeRetrievalDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_PDF_Attribute &Source, const Handle_TDF_Attribute &Target, const Handle_MDF_RRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_TreeNodeRetrievalDriver {
	Handle_MDataStd_TreeNodeRetrievalDriver GetHandle() {
	return *(Handle_MDataStd_TreeNodeRetrievalDriver*) &$self;
	}
};
%extend MDataStd_TreeNodeRetrievalDriver {
	~MDataStd_TreeNodeRetrievalDriver() {
	printf("Call custom destructor for instance of MDataStd_TreeNodeRetrievalDriver\n");
	}
};

%nodefaultctor MDataStd_BooleanArrayRetrievalDriver;
class MDataStd_BooleanArrayRetrievalDriver : public MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_BooleanArrayRetrievalDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_PDF_Attribute &Source, const Handle_TDF_Attribute &Target, const Handle_MDF_RRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_BooleanArrayRetrievalDriver {
	Handle_MDataStd_BooleanArrayRetrievalDriver GetHandle() {
	return *(Handle_MDataStd_BooleanArrayRetrievalDriver*) &$self;
	}
};
%extend MDataStd_BooleanArrayRetrievalDriver {
	~MDataStd_BooleanArrayRetrievalDriver() {
	printf("Call custom destructor for instance of MDataStd_BooleanArrayRetrievalDriver\n");
	}
};

%nodefaultctor MDataStd_ConstraintRetrievalDriver;
class MDataStd_ConstraintRetrievalDriver : public MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_ConstraintRetrievalDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_PDF_Attribute &Source, const Handle_TDF_Attribute &Target, const Handle_MDF_RRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_ConstraintRetrievalDriver {
	Handle_MDataStd_ConstraintRetrievalDriver GetHandle() {
	return *(Handle_MDataStd_ConstraintRetrievalDriver*) &$self;
	}
};
%extend MDataStd_ConstraintRetrievalDriver {
	~MDataStd_ConstraintRetrievalDriver() {
	printf("Call custom destructor for instance of MDataStd_ConstraintRetrievalDriver\n");
	}
};

%nodefaultctor MDataStd_RelationRetrievalDriver;
class MDataStd_RelationRetrievalDriver : public MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_RelationRetrievalDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_PDF_Attribute &Source, const Handle_TDF_Attribute &Target, const Handle_MDF_RRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_RelationRetrievalDriver {
	Handle_MDataStd_RelationRetrievalDriver GetHandle() {
	return *(Handle_MDataStd_RelationRetrievalDriver*) &$self;
	}
};
%extend MDataStd_RelationRetrievalDriver {
	~MDataStd_RelationRetrievalDriver() {
	printf("Call custom destructor for instance of MDataStd_RelationRetrievalDriver\n");
	}
};

%nodefaultctor MDataStd_ExtStringArrayStorageDriver;
class MDataStd_ExtStringArrayStorageDriver : public MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_ExtStringArrayStorageDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_PDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, const Handle_PDF_Attribute &Target, const Handle_MDF_SRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_ExtStringArrayStorageDriver {
	Handle_MDataStd_ExtStringArrayStorageDriver GetHandle() {
	return *(Handle_MDataStd_ExtStringArrayStorageDriver*) &$self;
	}
};
%extend MDataStd_ExtStringArrayStorageDriver {
	~MDataStd_ExtStringArrayStorageDriver() {
	printf("Call custom destructor for instance of MDataStd_ExtStringArrayStorageDriver\n");
	}
};

%nodefaultctor MDataStd_ConstraintStorageDriver;
class MDataStd_ConstraintStorageDriver : public MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_ConstraintStorageDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_PDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, const Handle_PDF_Attribute &Target, const Handle_MDF_SRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_ConstraintStorageDriver {
	Handle_MDataStd_ConstraintStorageDriver GetHandle() {
	return *(Handle_MDataStd_ConstraintStorageDriver*) &$self;
	}
};
%extend MDataStd_ConstraintStorageDriver {
	~MDataStd_ConstraintStorageDriver() {
	printf("Call custom destructor for instance of MDataStd_ConstraintStorageDriver\n");
	}
};

%nodefaultctor MDataStd_AxisStorageDriver;
class MDataStd_AxisStorageDriver : public MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_AxisStorageDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_PDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, const Handle_PDF_Attribute &Target, const Handle_MDF_SRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_AxisStorageDriver {
	Handle_MDataStd_AxisStorageDriver GetHandle() {
	return *(Handle_MDataStd_AxisStorageDriver*) &$self;
	}
};
%extend MDataStd_AxisStorageDriver {
	~MDataStd_AxisStorageDriver() {
	printf("Call custom destructor for instance of MDataStd_AxisStorageDriver\n");
	}
};

%nodefaultctor MDataStd_PlacementRetrievalDriver;
class MDataStd_PlacementRetrievalDriver : public MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_PlacementRetrievalDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_PDF_Attribute &Source, const Handle_TDF_Attribute &Target, const Handle_MDF_RRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_PlacementRetrievalDriver {
	Handle_MDataStd_PlacementRetrievalDriver GetHandle() {
	return *(Handle_MDataStd_PlacementRetrievalDriver*) &$self;
	}
};
%extend MDataStd_PlacementRetrievalDriver {
	~MDataStd_PlacementRetrievalDriver() {
	printf("Call custom destructor for instance of MDataStd_PlacementRetrievalDriver\n");
	}
};

%nodefaultctor MDataStd_ExpressionRetrievalDriver;
class MDataStd_ExpressionRetrievalDriver : public MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_ExpressionRetrievalDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_PDF_Attribute &Source, const Handle_TDF_Attribute &Target, const Handle_MDF_RRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_ExpressionRetrievalDriver {
	Handle_MDataStd_ExpressionRetrievalDriver GetHandle() {
	return *(Handle_MDataStd_ExpressionRetrievalDriver*) &$self;
	}
};
%extend MDataStd_ExpressionRetrievalDriver {
	~MDataStd_ExpressionRetrievalDriver() {
	printf("Call custom destructor for instance of MDataStd_ExpressionRetrievalDriver\n");
	}
};

%nodefaultctor MDataStd_TickRetrievalDriver;
class MDataStd_TickRetrievalDriver : public MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_TickRetrievalDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_PDF_Attribute &Source, const Handle_TDF_Attribute &Target, const Handle_MDF_RRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_TickRetrievalDriver {
	Handle_MDataStd_TickRetrievalDriver GetHandle() {
	return *(Handle_MDataStd_TickRetrievalDriver*) &$self;
	}
};
%extend MDataStd_TickRetrievalDriver {
	~MDataStd_TickRetrievalDriver() {
	printf("Call custom destructor for instance of MDataStd_TickRetrievalDriver\n");
	}
};

%nodefaultctor MDataStd_CommentStorageDriver;
class MDataStd_CommentStorageDriver : public MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_CommentStorageDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_PDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, const Handle_PDF_Attribute &Target, const Handle_MDF_SRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_CommentStorageDriver {
	Handle_MDataStd_CommentStorageDriver GetHandle() {
	return *(Handle_MDataStd_CommentStorageDriver*) &$self;
	}
};
%extend MDataStd_CommentStorageDriver {
	~MDataStd_CommentStorageDriver() {
	printf("Call custom destructor for instance of MDataStd_CommentStorageDriver\n");
	}
};

%nodefaultctor MDataStd_UAttributeRetrievalDriver;
class MDataStd_UAttributeRetrievalDriver : public MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_UAttributeRetrievalDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_PDF_Attribute &Source, const Handle_TDF_Attribute &Target, const Handle_MDF_RRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_UAttributeRetrievalDriver {
	Handle_MDataStd_UAttributeRetrievalDriver GetHandle() {
	return *(Handle_MDataStd_UAttributeRetrievalDriver*) &$self;
	}
};
%extend MDataStd_UAttributeRetrievalDriver {
	~MDataStd_UAttributeRetrievalDriver() {
	printf("Call custom destructor for instance of MDataStd_UAttributeRetrievalDriver\n");
	}
};

%nodefaultctor MDataStd_PlaneRetrievalDriver;
class MDataStd_PlaneRetrievalDriver : public MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_PlaneRetrievalDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_PDF_Attribute &Source, const Handle_TDF_Attribute &Target, const Handle_MDF_RRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_PlaneRetrievalDriver {
	Handle_MDataStd_PlaneRetrievalDriver GetHandle() {
	return *(Handle_MDataStd_PlaneRetrievalDriver*) &$self;
	}
};
%extend MDataStd_PlaneRetrievalDriver {
	~MDataStd_PlaneRetrievalDriver() {
	printf("Call custom destructor for instance of MDataStd_PlaneRetrievalDriver\n");
	}
};

%nodefaultctor MDataStd_RealArrayRetrievalDriver_1;
class MDataStd_RealArrayRetrievalDriver_1 : public MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_RealArrayRetrievalDriver_1(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_PDF_Attribute &Source, const Handle_TDF_Attribute &Target, const Handle_MDF_RRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_RealArrayRetrievalDriver_1 {
	Handle_MDataStd_RealArrayRetrievalDriver_1 GetHandle() {
	return *(Handle_MDataStd_RealArrayRetrievalDriver_1*) &$self;
	}
};
%extend MDataStd_RealArrayRetrievalDriver_1 {
	~MDataStd_RealArrayRetrievalDriver_1() {
	printf("Call custom destructor for instance of MDataStd_RealArrayRetrievalDriver_1\n");
	}
};

%nodefaultctor MDataStd_ByteArrayRetrievalDriver_1;
class MDataStd_ByteArrayRetrievalDriver_1 : public MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_ByteArrayRetrievalDriver_1(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_PDF_Attribute &Source, const Handle_TDF_Attribute &Target, const Handle_MDF_RRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_ByteArrayRetrievalDriver_1 {
	Handle_MDataStd_ByteArrayRetrievalDriver_1 GetHandle() {
	return *(Handle_MDataStd_ByteArrayRetrievalDriver_1*) &$self;
	}
};
%extend MDataStd_ByteArrayRetrievalDriver_1 {
	~MDataStd_ByteArrayRetrievalDriver_1() {
	printf("Call custom destructor for instance of MDataStd_ByteArrayRetrievalDriver_1\n");
	}
};

%nodefaultctor MDataStd_ReferenceListRetrievalDriver;
class MDataStd_ReferenceListRetrievalDriver : public MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_ReferenceListRetrievalDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_PDF_Attribute &Source, const Handle_TDF_Attribute &Target, const Handle_MDF_RRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_ReferenceListRetrievalDriver {
	Handle_MDataStd_ReferenceListRetrievalDriver GetHandle() {
	return *(Handle_MDataStd_ReferenceListRetrievalDriver*) &$self;
	}
};
%extend MDataStd_ReferenceListRetrievalDriver {
	~MDataStd_ReferenceListRetrievalDriver() {
	printf("Call custom destructor for instance of MDataStd_ReferenceListRetrievalDriver\n");
	}
};

%nodefaultctor MDataStd_ReferenceListStorageDriver;
class MDataStd_ReferenceListStorageDriver : public MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_ReferenceListStorageDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_PDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, const Handle_PDF_Attribute &Target, const Handle_MDF_SRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_ReferenceListStorageDriver {
	Handle_MDataStd_ReferenceListStorageDriver GetHandle() {
	return *(Handle_MDataStd_ReferenceListStorageDriver*) &$self;
	}
};
%extend MDataStd_ReferenceListStorageDriver {
	~MDataStd_ReferenceListStorageDriver() {
	printf("Call custom destructor for instance of MDataStd_ReferenceListStorageDriver\n");
	}
};

%nodefaultctor MDataStd_BooleanListRetrievalDriver;
class MDataStd_BooleanListRetrievalDriver : public MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_BooleanListRetrievalDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_PDF_Attribute &Source, const Handle_TDF_Attribute &Target, const Handle_MDF_RRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_BooleanListRetrievalDriver {
	Handle_MDataStd_BooleanListRetrievalDriver GetHandle() {
	return *(Handle_MDataStd_BooleanListRetrievalDriver*) &$self;
	}
};
%extend MDataStd_BooleanListRetrievalDriver {
	~MDataStd_BooleanListRetrievalDriver() {
	printf("Call custom destructor for instance of MDataStd_BooleanListRetrievalDriver\n");
	}
};

%nodefaultctor MDataStd_RealArrayRetrievalDriver;
class MDataStd_RealArrayRetrievalDriver : public MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_RealArrayRetrievalDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_PDF_Attribute &Source, const Handle_TDF_Attribute &Target, const Handle_MDF_RRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_RealArrayRetrievalDriver {
	Handle_MDataStd_RealArrayRetrievalDriver GetHandle() {
	return *(Handle_MDataStd_RealArrayRetrievalDriver*) &$self;
	}
};
%extend MDataStd_RealArrayRetrievalDriver {
	~MDataStd_RealArrayRetrievalDriver() {
	printf("Call custom destructor for instance of MDataStd_RealArrayRetrievalDriver\n");
	}
};

%nodefaultctor MDataStd_NamedDataRetrievalDriver;
class MDataStd_NamedDataRetrievalDriver : public MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_NamedDataRetrievalDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_PDF_Attribute &Source, const Handle_TDF_Attribute &Target, const Handle_MDF_RRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_NamedDataRetrievalDriver {
	Handle_MDataStd_NamedDataRetrievalDriver GetHandle() {
	return *(Handle_MDataStd_NamedDataRetrievalDriver*) &$self;
	}
};
%extend MDataStd_NamedDataRetrievalDriver {
	~MDataStd_NamedDataRetrievalDriver() {
	printf("Call custom destructor for instance of MDataStd_NamedDataRetrievalDriver\n");
	}
};

%nodefaultctor MDataStd_IntegerListRetrievalDriver;
class MDataStd_IntegerListRetrievalDriver : public MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_IntegerListRetrievalDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_PDF_Attribute &Source, const Handle_TDF_Attribute &Target, const Handle_MDF_RRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_IntegerListRetrievalDriver {
	Handle_MDataStd_IntegerListRetrievalDriver GetHandle() {
	return *(Handle_MDataStd_IntegerListRetrievalDriver*) &$self;
	}
};
%extend MDataStd_IntegerListRetrievalDriver {
	~MDataStd_IntegerListRetrievalDriver() {
	printf("Call custom destructor for instance of MDataStd_IntegerListRetrievalDriver\n");
	}
};

%nodefaultctor MDataStd_DirectoryRetrievalDriver;
class MDataStd_DirectoryRetrievalDriver : public MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_DirectoryRetrievalDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_PDF_Attribute &Source, const Handle_TDF_Attribute &Target, const Handle_MDF_RRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_DirectoryRetrievalDriver {
	Handle_MDataStd_DirectoryRetrievalDriver GetHandle() {
	return *(Handle_MDataStd_DirectoryRetrievalDriver*) &$self;
	}
};
%extend MDataStd_DirectoryRetrievalDriver {
	~MDataStd_DirectoryRetrievalDriver() {
	printf("Call custom destructor for instance of MDataStd_DirectoryRetrievalDriver\n");
	}
};

%nodefaultctor MDataStd_AsciiStringRetrievalDriver;
class MDataStd_AsciiStringRetrievalDriver : public MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_AsciiStringRetrievalDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_PDF_Attribute &Source, const Handle_TDF_Attribute &Target, const Handle_MDF_RRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_AsciiStringRetrievalDriver {
	Handle_MDataStd_AsciiStringRetrievalDriver GetHandle() {
	return *(Handle_MDataStd_AsciiStringRetrievalDriver*) &$self;
	}
};
%extend MDataStd_AsciiStringRetrievalDriver {
	~MDataStd_AsciiStringRetrievalDriver() {
	printf("Call custom destructor for instance of MDataStd_AsciiStringRetrievalDriver\n");
	}
};

%nodefaultctor MDataStd_AxisRetrievalDriver;
class MDataStd_AxisRetrievalDriver : public MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_AxisRetrievalDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_PDF_Attribute &Source, const Handle_TDF_Attribute &Target, const Handle_MDF_RRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_AxisRetrievalDriver {
	Handle_MDataStd_AxisRetrievalDriver GetHandle() {
	return *(Handle_MDataStd_AxisRetrievalDriver*) &$self;
	}
};
%extend MDataStd_AxisRetrievalDriver {
	~MDataStd_AxisRetrievalDriver() {
	printf("Call custom destructor for instance of MDataStd_AxisRetrievalDriver\n");
	}
};

%nodefaultctor MDataStd_RelationStorageDriver;
class MDataStd_RelationStorageDriver : public MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_RelationStorageDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_PDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, const Handle_PDF_Attribute &Target, const Handle_MDF_SRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_RelationStorageDriver {
	Handle_MDataStd_RelationStorageDriver GetHandle() {
	return *(Handle_MDataStd_RelationStorageDriver*) &$self;
	}
};
%extend MDataStd_RelationStorageDriver {
	~MDataStd_RelationStorageDriver() {
	printf("Call custom destructor for instance of MDataStd_RelationStorageDriver\n");
	}
};

%nodefaultctor MDataStd_BooleanListStorageDriver;
class MDataStd_BooleanListStorageDriver : public MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_BooleanListStorageDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_PDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, const Handle_PDF_Attribute &Target, const Handle_MDF_SRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_BooleanListStorageDriver {
	Handle_MDataStd_BooleanListStorageDriver GetHandle() {
	return *(Handle_MDataStd_BooleanListStorageDriver*) &$self;
	}
};
%extend MDataStd_BooleanListStorageDriver {
	~MDataStd_BooleanListStorageDriver() {
	printf("Call custom destructor for instance of MDataStd_BooleanListStorageDriver\n");
	}
};

%nodefaultctor MDataStd_NameRetrievalDriver;
class MDataStd_NameRetrievalDriver : public MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_NameRetrievalDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_PDF_Attribute &Source, const Handle_TDF_Attribute &Target, const Handle_MDF_RRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_NameRetrievalDriver {
	Handle_MDataStd_NameRetrievalDriver GetHandle() {
	return *(Handle_MDataStd_NameRetrievalDriver*) &$self;
	}
};
%extend MDataStd_NameRetrievalDriver {
	~MDataStd_NameRetrievalDriver() {
	printf("Call custom destructor for instance of MDataStd_NameRetrievalDriver\n");
	}
};

%nodefaultctor MDataStd_ShapeStorageDriver;
class MDataStd_ShapeStorageDriver : public MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_ShapeStorageDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_PDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, const Handle_PDF_Attribute &Target, const Handle_MDF_SRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_ShapeStorageDriver {
	Handle_MDataStd_ShapeStorageDriver GetHandle() {
	return *(Handle_MDataStd_ShapeStorageDriver*) &$self;
	}
};
%extend MDataStd_ShapeStorageDriver {
	~MDataStd_ShapeStorageDriver() {
	printf("Call custom destructor for instance of MDataStd_ShapeStorageDriver\n");
	}
};

%nodefaultctor MDataStd_PatternStdStorageDriver;
class MDataStd_PatternStdStorageDriver : public MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_PatternStdStorageDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_PDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, const Handle_PDF_Attribute &Target, const Handle_MDF_SRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_PatternStdStorageDriver {
	Handle_MDataStd_PatternStdStorageDriver GetHandle() {
	return *(Handle_MDataStd_PatternStdStorageDriver*) &$self;
	}
};
%extend MDataStd_PatternStdStorageDriver {
	~MDataStd_PatternStdStorageDriver() {
	printf("Call custom destructor for instance of MDataStd_PatternStdStorageDriver\n");
	}
};

%nodefaultctor MDataStd_PatternStdRetrievalDriver;
class MDataStd_PatternStdRetrievalDriver : public MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_PatternStdRetrievalDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_PDF_Attribute &Source, const Handle_TDF_Attribute &Target, const Handle_MDF_RRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_PatternStdRetrievalDriver {
	Handle_MDataStd_PatternStdRetrievalDriver GetHandle() {
	return *(Handle_MDataStd_PatternStdRetrievalDriver*) &$self;
	}
};
%extend MDataStd_PatternStdRetrievalDriver {
	~MDataStd_PatternStdRetrievalDriver() {
	printf("Call custom destructor for instance of MDataStd_PatternStdRetrievalDriver\n");
	}
};

%nodefaultctor MDataStd_IntegerListStorageDriver;
class MDataStd_IntegerListStorageDriver : public MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_IntegerListStorageDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_PDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, const Handle_PDF_Attribute &Target, const Handle_MDF_SRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_IntegerListStorageDriver {
	Handle_MDataStd_IntegerListStorageDriver GetHandle() {
	return *(Handle_MDataStd_IntegerListStorageDriver*) &$self;
	}
};
%extend MDataStd_IntegerListStorageDriver {
	~MDataStd_IntegerListStorageDriver() {
	printf("Call custom destructor for instance of MDataStd_IntegerListStorageDriver\n");
	}
};

%nodefaultctor MDataStd_IntPackedMapRetrievalDriver_1;
class MDataStd_IntPackedMapRetrievalDriver_1 : public MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_IntPackedMapRetrievalDriver_1(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_PDF_Attribute &Source, const Handle_TDF_Attribute &Target, const Handle_MDF_RRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_IntPackedMapRetrievalDriver_1 {
	Handle_MDataStd_IntPackedMapRetrievalDriver_1 GetHandle() {
	return *(Handle_MDataStd_IntPackedMapRetrievalDriver_1*) &$self;
	}
};
%extend MDataStd_IntPackedMapRetrievalDriver_1 {
	~MDataStd_IntPackedMapRetrievalDriver_1() {
	printf("Call custom destructor for instance of MDataStd_IntPackedMapRetrievalDriver_1\n");
	}
};

%nodefaultctor MDataStd_IntegerArrayStorageDriver;
class MDataStd_IntegerArrayStorageDriver : public MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_IntegerArrayStorageDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_PDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, const Handle_PDF_Attribute &Target, const Handle_MDF_SRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_IntegerArrayStorageDriver {
	Handle_MDataStd_IntegerArrayStorageDriver GetHandle() {
	return *(Handle_MDataStd_IntegerArrayStorageDriver*) &$self;
	}
};
%extend MDataStd_IntegerArrayStorageDriver {
	~MDataStd_IntegerArrayStorageDriver() {
	printf("Call custom destructor for instance of MDataStd_IntegerArrayStorageDriver\n");
	}
};

%nodefaultctor MDataStd_NoteBookRetrievalDriver;
class MDataStd_NoteBookRetrievalDriver : public MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_NoteBookRetrievalDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_PDF_Attribute &Source, const Handle_TDF_Attribute &Target, const Handle_MDF_RRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_NoteBookRetrievalDriver {
	Handle_MDataStd_NoteBookRetrievalDriver GetHandle() {
	return *(Handle_MDataStd_NoteBookRetrievalDriver*) &$self;
	}
};
%extend MDataStd_NoteBookRetrievalDriver {
	~MDataStd_NoteBookRetrievalDriver() {
	printf("Call custom destructor for instance of MDataStd_NoteBookRetrievalDriver\n");
	}
};

%nodefaultctor MDataStd_IntegerRetrievalDriver;
class MDataStd_IntegerRetrievalDriver : public MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_IntegerRetrievalDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_PDF_Attribute &Source, const Handle_TDF_Attribute &Target, const Handle_MDF_RRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_IntegerRetrievalDriver {
	Handle_MDataStd_IntegerRetrievalDriver GetHandle() {
	return *(Handle_MDataStd_IntegerRetrievalDriver*) &$self;
	}
};
%extend MDataStd_IntegerRetrievalDriver {
	~MDataStd_IntegerRetrievalDriver() {
	printf("Call custom destructor for instance of MDataStd_IntegerRetrievalDriver\n");
	}
};

%nodefaultctor MDataStd_BooleanArrayStorageDriver;
class MDataStd_BooleanArrayStorageDriver : public MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_BooleanArrayStorageDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_PDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, const Handle_PDF_Attribute &Target, const Handle_MDF_SRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_BooleanArrayStorageDriver {
	Handle_MDataStd_BooleanArrayStorageDriver GetHandle() {
	return *(Handle_MDataStd_BooleanArrayStorageDriver*) &$self;
	}
};
%extend MDataStd_BooleanArrayStorageDriver {
	~MDataStd_BooleanArrayStorageDriver() {
	printf("Call custom destructor for instance of MDataStd_BooleanArrayStorageDriver\n");
	}
};

%nodefaultctor MDataStd_ReferenceArrayStorageDriver;
class MDataStd_ReferenceArrayStorageDriver : public MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_ReferenceArrayStorageDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_PDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, const Handle_PDF_Attribute &Target, const Handle_MDF_SRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_ReferenceArrayStorageDriver {
	Handle_MDataStd_ReferenceArrayStorageDriver GetHandle() {
	return *(Handle_MDataStd_ReferenceArrayStorageDriver*) &$self;
	}
};
%extend MDataStd_ReferenceArrayStorageDriver {
	~MDataStd_ReferenceArrayStorageDriver() {
	printf("Call custom destructor for instance of MDataStd_ReferenceArrayStorageDriver\n");
	}
};

%nodefaultctor MDataStd_IntPackedMapStorageDriver;
class MDataStd_IntPackedMapStorageDriver : public MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_IntPackedMapStorageDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_PDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, const Handle_PDF_Attribute &Target, const Handle_MDF_SRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_IntPackedMapStorageDriver {
	Handle_MDataStd_IntPackedMapStorageDriver GetHandle() {
	return *(Handle_MDataStd_IntPackedMapStorageDriver*) &$self;
	}
};
%extend MDataStd_IntPackedMapStorageDriver {
	~MDataStd_IntPackedMapStorageDriver() {
	printf("Call custom destructor for instance of MDataStd_IntPackedMapStorageDriver\n");
	}
};

%nodefaultctor MDataStd_IntPackedMapRetrievalDriver;
class MDataStd_IntPackedMapRetrievalDriver : public MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_IntPackedMapRetrievalDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_PDF_Attribute &Source, const Handle_TDF_Attribute &Target, const Handle_MDF_RRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_IntPackedMapRetrievalDriver {
	Handle_MDataStd_IntPackedMapRetrievalDriver GetHandle() {
	return *(Handle_MDataStd_IntPackedMapRetrievalDriver*) &$self;
	}
};
%extend MDataStd_IntPackedMapRetrievalDriver {
	~MDataStd_IntPackedMapRetrievalDriver() {
	printf("Call custom destructor for instance of MDataStd_IntPackedMapRetrievalDriver\n");
	}
};

%nodefaultctor MDataStd_NamedDataStorageDriver;
class MDataStd_NamedDataStorageDriver : public MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_NamedDataStorageDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_PDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, const Handle_PDF_Attribute &Target, const Handle_MDF_SRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_NamedDataStorageDriver {
	Handle_MDataStd_NamedDataStorageDriver GetHandle() {
	return *(Handle_MDataStd_NamedDataStorageDriver*) &$self;
	}
};
%extend MDataStd_NamedDataStorageDriver {
	~MDataStd_NamedDataStorageDriver() {
	printf("Call custom destructor for instance of MDataStd_NamedDataStorageDriver\n");
	}
};

%nodefaultctor MDataStd_IntegerStorageDriver;
class MDataStd_IntegerStorageDriver : public MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_IntegerStorageDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_PDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, const Handle_PDF_Attribute &Target, const Handle_MDF_SRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_IntegerStorageDriver {
	Handle_MDataStd_IntegerStorageDriver GetHandle() {
	return *(Handle_MDataStd_IntegerStorageDriver*) &$self;
	}
};
%extend MDataStd_IntegerStorageDriver {
	~MDataStd_IntegerStorageDriver() {
	printf("Call custom destructor for instance of MDataStd_IntegerStorageDriver\n");
	}
};

%nodefaultctor MDataStd_TreeNodeStorageDriver;
class MDataStd_TreeNodeStorageDriver : public MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_TreeNodeStorageDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_PDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, const Handle_PDF_Attribute &Target, const Handle_MDF_SRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_TreeNodeStorageDriver {
	Handle_MDataStd_TreeNodeStorageDriver GetHandle() {
	return *(Handle_MDataStd_TreeNodeStorageDriver*) &$self;
	}
};
%extend MDataStd_TreeNodeStorageDriver {
	~MDataStd_TreeNodeStorageDriver() {
	printf("Call custom destructor for instance of MDataStd_TreeNodeStorageDriver\n");
	}
};

%nodefaultctor MDataStd_NoteBookStorageDriver;
class MDataStd_NoteBookStorageDriver : public MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_NoteBookStorageDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_PDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, const Handle_PDF_Attribute &Target, const Handle_MDF_SRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_NoteBookStorageDriver {
	Handle_MDataStd_NoteBookStorageDriver GetHandle() {
	return *(Handle_MDataStd_NoteBookStorageDriver*) &$self;
	}
};
%extend MDataStd_NoteBookStorageDriver {
	~MDataStd_NoteBookStorageDriver() {
	printf("Call custom destructor for instance of MDataStd_NoteBookStorageDriver\n");
	}
};

%nodefaultctor MDataStd_UAttributeStorageDriver;
class MDataStd_UAttributeStorageDriver : public MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_UAttributeStorageDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_PDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, const Handle_PDF_Attribute &Target, const Handle_MDF_SRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_UAttributeStorageDriver {
	Handle_MDataStd_UAttributeStorageDriver GetHandle() {
	return *(Handle_MDataStd_UAttributeStorageDriver*) &$self;
	}
};
%extend MDataStd_UAttributeStorageDriver {
	~MDataStd_UAttributeStorageDriver() {
	printf("Call custom destructor for instance of MDataStd_UAttributeStorageDriver\n");
	}
};

%nodefaultctor MDataStd_PointRetrievalDriver;
class MDataStd_PointRetrievalDriver : public MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_PointRetrievalDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_PDF_Attribute &Source, const Handle_TDF_Attribute &Target, const Handle_MDF_RRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_PointRetrievalDriver {
	Handle_MDataStd_PointRetrievalDriver GetHandle() {
	return *(Handle_MDataStd_PointRetrievalDriver*) &$self;
	}
};
%extend MDataStd_PointRetrievalDriver {
	~MDataStd_PointRetrievalDriver() {
	printf("Call custom destructor for instance of MDataStd_PointRetrievalDriver\n");
	}
};

%nodefaultctor MDataStd_VariableRetrievalDriver;
class MDataStd_VariableRetrievalDriver : public MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_VariableRetrievalDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_PDF_Attribute &Source, const Handle_TDF_Attribute &Target, const Handle_MDF_RRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_VariableRetrievalDriver {
	Handle_MDataStd_VariableRetrievalDriver GetHandle() {
	return *(Handle_MDataStd_VariableRetrievalDriver*) &$self;
	}
};
%extend MDataStd_VariableRetrievalDriver {
	~MDataStd_VariableRetrievalDriver() {
	printf("Call custom destructor for instance of MDataStd_VariableRetrievalDriver\n");
	}
};

%nodefaultctor MDataStd_ExtStringArrayRetrievalDriver;
class MDataStd_ExtStringArrayRetrievalDriver : public MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_ExtStringArrayRetrievalDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_PDF_Attribute &Source, const Handle_TDF_Attribute &Target, const Handle_MDF_RRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_ExtStringArrayRetrievalDriver {
	Handle_MDataStd_ExtStringArrayRetrievalDriver GetHandle() {
	return *(Handle_MDataStd_ExtStringArrayRetrievalDriver*) &$self;
	}
};
%extend MDataStd_ExtStringArrayRetrievalDriver {
	~MDataStd_ExtStringArrayRetrievalDriver() {
	printf("Call custom destructor for instance of MDataStd_ExtStringArrayRetrievalDriver\n");
	}
};

%nodefaultctor MDataStd_ByteArrayRetrievalDriver;
class MDataStd_ByteArrayRetrievalDriver : public MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_ByteArrayRetrievalDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_PDF_Attribute &Source, const Handle_TDF_Attribute &Target, const Handle_MDF_RRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_ByteArrayRetrievalDriver {
	Handle_MDataStd_ByteArrayRetrievalDriver GetHandle() {
	return *(Handle_MDataStd_ByteArrayRetrievalDriver*) &$self;
	}
};
%extend MDataStd_ByteArrayRetrievalDriver {
	~MDataStd_ByteArrayRetrievalDriver() {
	printf("Call custom destructor for instance of MDataStd_ByteArrayRetrievalDriver\n");
	}
};

%nodefaultctor MDataStd_NameStorageDriver;
class MDataStd_NameStorageDriver : public MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_NameStorageDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_PDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, const Handle_PDF_Attribute &Target, const Handle_MDF_SRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_NameStorageDriver {
	Handle_MDataStd_NameStorageDriver GetHandle() {
	return *(Handle_MDataStd_NameStorageDriver*) &$self;
	}
};
%extend MDataStd_NameStorageDriver {
	~MDataStd_NameStorageDriver() {
	printf("Call custom destructor for instance of MDataStd_NameStorageDriver\n");
	}
};

%nodefaultctor MDataStd_ExtStringListRetrievalDriver;
class MDataStd_ExtStringListRetrievalDriver : public MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_ExtStringListRetrievalDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_PDF_Attribute &Source, const Handle_TDF_Attribute &Target, const Handle_MDF_RRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_ExtStringListRetrievalDriver {
	Handle_MDataStd_ExtStringListRetrievalDriver GetHandle() {
	return *(Handle_MDataStd_ExtStringListRetrievalDriver*) &$self;
	}
};
%extend MDataStd_ExtStringListRetrievalDriver {
	~MDataStd_ExtStringListRetrievalDriver() {
	printf("Call custom destructor for instance of MDataStd_ExtStringListRetrievalDriver\n");
	}
};

%nodefaultctor MDataStd_RealListStorageDriver;
class MDataStd_RealListStorageDriver : public MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_RealListStorageDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_PDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, const Handle_PDF_Attribute &Target, const Handle_MDF_SRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_RealListStorageDriver {
	Handle_MDataStd_RealListStorageDriver GetHandle() {
	return *(Handle_MDataStd_RealListStorageDriver*) &$self;
	}
};
%extend MDataStd_RealListStorageDriver {
	~MDataStd_RealListStorageDriver() {
	printf("Call custom destructor for instance of MDataStd_RealListStorageDriver\n");
	}
};

%nodefaultctor MDataStd_ExtStringListStorageDriver;
class MDataStd_ExtStringListStorageDriver : public MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_ExtStringListStorageDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_PDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, const Handle_PDF_Attribute &Target, const Handle_MDF_SRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_ExtStringListStorageDriver {
	Handle_MDataStd_ExtStringListStorageDriver GetHandle() {
	return *(Handle_MDataStd_ExtStringListStorageDriver*) &$self;
	}
};
%extend MDataStd_ExtStringListStorageDriver {
	~MDataStd_ExtStringListStorageDriver() {
	printf("Call custom destructor for instance of MDataStd_ExtStringListStorageDriver\n");
	}
};

%nodefaultctor MDataStd_RealRetrievalDriver;
class MDataStd_RealRetrievalDriver : public MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_RealRetrievalDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_PDF_Attribute &Source, const Handle_TDF_Attribute &Target, const Handle_MDF_RRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_RealRetrievalDriver {
	Handle_MDataStd_RealRetrievalDriver GetHandle() {
	return *(Handle_MDataStd_RealRetrievalDriver*) &$self;
	}
};
%extend MDataStd_RealRetrievalDriver {
	~MDataStd_RealRetrievalDriver() {
	printf("Call custom destructor for instance of MDataStd_RealRetrievalDriver\n");
	}
};

%nodefaultctor MDataStd_TickStorageDriver;
class MDataStd_TickStorageDriver : public MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_TickStorageDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_PDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, const Handle_PDF_Attribute &Target, const Handle_MDF_SRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_TickStorageDriver {
	Handle_MDataStd_TickStorageDriver GetHandle() {
	return *(Handle_MDataStd_TickStorageDriver*) &$self;
	}
};
%extend MDataStd_TickStorageDriver {
	~MDataStd_TickStorageDriver() {
	printf("Call custom destructor for instance of MDataStd_TickStorageDriver\n");
	}
};

%nodefaultctor MDataStd_ExtStringArrayRetrievalDriver_1;
class MDataStd_ExtStringArrayRetrievalDriver_1 : public MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_ExtStringArrayRetrievalDriver_1(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_PDF_Attribute &Source, const Handle_TDF_Attribute &Target, const Handle_MDF_RRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_ExtStringArrayRetrievalDriver_1 {
	Handle_MDataStd_ExtStringArrayRetrievalDriver_1 GetHandle() {
	return *(Handle_MDataStd_ExtStringArrayRetrievalDriver_1*) &$self;
	}
};
%extend MDataStd_ExtStringArrayRetrievalDriver_1 {
	~MDataStd_ExtStringArrayRetrievalDriver_1() {
	printf("Call custom destructor for instance of MDataStd_ExtStringArrayRetrievalDriver_1\n");
	}
};

%nodefaultctor MDataStd_PlacementStorageDriver;
class MDataStd_PlacementStorageDriver : public MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_PlacementStorageDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_PDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, const Handle_PDF_Attribute &Target, const Handle_MDF_SRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_PlacementStorageDriver {
	Handle_MDataStd_PlacementStorageDriver GetHandle() {
	return *(Handle_MDataStd_PlacementStorageDriver*) &$self;
	}
};
%extend MDataStd_PlacementStorageDriver {
	~MDataStd_PlacementStorageDriver() {
	printf("Call custom destructor for instance of MDataStd_PlacementStorageDriver\n");
	}
};

%nodefaultctor MDataStd_RealArrayStorageDriver;
class MDataStd_RealArrayStorageDriver : public MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_RealArrayStorageDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_PDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, const Handle_PDF_Attribute &Target, const Handle_MDF_SRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_RealArrayStorageDriver {
	Handle_MDataStd_RealArrayStorageDriver GetHandle() {
	return *(Handle_MDataStd_RealArrayStorageDriver*) &$self;
	}
};
%extend MDataStd_RealArrayStorageDriver {
	~MDataStd_RealArrayStorageDriver() {
	printf("Call custom destructor for instance of MDataStd_RealArrayStorageDriver\n");
	}
};

%nodefaultctor MDataStd_CommentRetrievalDriver;
class MDataStd_CommentRetrievalDriver : public MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_CommentRetrievalDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_PDF_Attribute &Source, const Handle_TDF_Attribute &Target, const Handle_MDF_RRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_CommentRetrievalDriver {
	Handle_MDataStd_CommentRetrievalDriver GetHandle() {
	return *(Handle_MDataStd_CommentRetrievalDriver*) &$self;
	}
};
%extend MDataStd_CommentRetrievalDriver {
	~MDataStd_CommentRetrievalDriver() {
	printf("Call custom destructor for instance of MDataStd_CommentRetrievalDriver\n");
	}
};

%nodefaultctor MDataStd_AsciiStringStorageDriver;
class MDataStd_AsciiStringStorageDriver : public MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_AsciiStringStorageDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_PDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, const Handle_PDF_Attribute &Target, const Handle_MDF_SRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_AsciiStringStorageDriver {
	Handle_MDataStd_AsciiStringStorageDriver GetHandle() {
	return *(Handle_MDataStd_AsciiStringStorageDriver*) &$self;
	}
};
%extend MDataStd_AsciiStringStorageDriver {
	~MDataStd_AsciiStringStorageDriver() {
	printf("Call custom destructor for instance of MDataStd_AsciiStringStorageDriver\n");
	}
};

%nodefaultctor MDataStd_VariableStorageDriver;
class MDataStd_VariableStorageDriver : public MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_VariableStorageDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_PDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, const Handle_PDF_Attribute &Target, const Handle_MDF_SRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_VariableStorageDriver {
	Handle_MDataStd_VariableStorageDriver GetHandle() {
	return *(Handle_MDataStd_VariableStorageDriver*) &$self;
	}
};
%extend MDataStd_VariableStorageDriver {
	~MDataStd_VariableStorageDriver() {
	printf("Call custom destructor for instance of MDataStd_VariableStorageDriver\n");
	}
};

%nodefaultctor MDataStd_ExpressionStorageDriver;
class MDataStd_ExpressionStorageDriver : public MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_ExpressionStorageDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_PDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, const Handle_PDF_Attribute &Target, const Handle_MDF_SRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_ExpressionStorageDriver {
	Handle_MDataStd_ExpressionStorageDriver GetHandle() {
	return *(Handle_MDataStd_ExpressionStorageDriver*) &$self;
	}
};
%extend MDataStd_ExpressionStorageDriver {
	~MDataStd_ExpressionStorageDriver() {
	printf("Call custom destructor for instance of MDataStd_ExpressionStorageDriver\n");
	}
};

%nodefaultctor MDataStd_PointStorageDriver;
class MDataStd_PointStorageDriver : public MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_PointStorageDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_PDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, const Handle_PDF_Attribute &Target, const Handle_MDF_SRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_PointStorageDriver {
	Handle_MDataStd_PointStorageDriver GetHandle() {
	return *(Handle_MDataStd_PointStorageDriver*) &$self;
	}
};
%extend MDataStd_PointStorageDriver {
	~MDataStd_PointStorageDriver() {
	printf("Call custom destructor for instance of MDataStd_PointStorageDriver\n");
	}
};

%nodefaultctor MDataStd_GeometryStorageDriver;
class MDataStd_GeometryStorageDriver : public MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_GeometryStorageDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_PDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, const Handle_PDF_Attribute &Target, const Handle_MDF_SRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_GeometryStorageDriver {
	Handle_MDataStd_GeometryStorageDriver GetHandle() {
	return *(Handle_MDataStd_GeometryStorageDriver*) &$self;
	}
};
%extend MDataStd_GeometryStorageDriver {
	~MDataStd_GeometryStorageDriver() {
	printf("Call custom destructor for instance of MDataStd_GeometryStorageDriver\n");
	}
};

%nodefaultctor MDataStd;
class MDataStd {
	public:
		%feature("autodoc", "1");
		MDataStd();
		%feature("autodoc", "1");
		void AddStorageDrivers(const Handle_MDF_ASDriverHSequence &aDriverSeq, const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		void AddRetrievalDrivers(const Handle_MDF_ARDriverHSequence &aDriverSeq, const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		Handle_PGeom_Geometry Translate(const Handle_Geom_Geometry &Geometry);
		%feature("autodoc", "1");
		Handle_Geom_Geometry Translate(const Handle_PGeom_Geometry &Geometry);
		%feature("autodoc", "1");
		Standard_Integer RealDimensionToInteger(const TDataStd_RealEnum e);
		%feature("autodoc", "1");
		TDataStd_RealEnum IntegerToRealDimension(const Standard_Integer i);
		%feature("autodoc", "1");
		Standard_Integer ConstraintTypeToInteger(const TDataStd_ConstraintEnum e);
		%feature("autodoc", "1");
		TDataStd_ConstraintEnum IntegerToConstraintType(const Standard_Integer i);
		%feature("autodoc", "1");
		Standard_Integer GeometryTypeToInteger(const TDataStd_GeometryEnum e);
		%feature("autodoc", "1");
		TDataStd_GeometryEnum IntegerToGeometryType(const Standard_Integer i);

};
%extend MDataStd {
	~MDataStd() {
	printf("Call custom destructor for instance of MDataStd\n");
	}
};

%nodefaultctor MDataStd_ByteArrayStorageDriver;
class MDataStd_ByteArrayStorageDriver : public MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_ByteArrayStorageDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_PDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, const Handle_PDF_Attribute &Target, const Handle_MDF_SRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_ByteArrayStorageDriver {
	Handle_MDataStd_ByteArrayStorageDriver GetHandle() {
	return *(Handle_MDataStd_ByteArrayStorageDriver*) &$self;
	}
};
%extend MDataStd_ByteArrayStorageDriver {
	~MDataStd_ByteArrayStorageDriver() {
	printf("Call custom destructor for instance of MDataStd_ByteArrayStorageDriver\n");
	}
};

%nodefaultctor MDataStd_IntegerArrayRetrievalDriver_1;
class MDataStd_IntegerArrayRetrievalDriver_1 : public MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_IntegerArrayRetrievalDriver_1(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_PDF_Attribute &Source, const Handle_TDF_Attribute &Target, const Handle_MDF_RRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_IntegerArrayRetrievalDriver_1 {
	Handle_MDataStd_IntegerArrayRetrievalDriver_1 GetHandle() {
	return *(Handle_MDataStd_IntegerArrayRetrievalDriver_1*) &$self;
	}
};
%extend MDataStd_IntegerArrayRetrievalDriver_1 {
	~MDataStd_IntegerArrayRetrievalDriver_1() {
	printf("Call custom destructor for instance of MDataStd_IntegerArrayRetrievalDriver_1\n");
	}
};

%nodefaultctor MDataStd_RealListRetrievalDriver;
class MDataStd_RealListRetrievalDriver : public MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_RealListRetrievalDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_PDF_Attribute &Source, const Handle_TDF_Attribute &Target, const Handle_MDF_RRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_RealListRetrievalDriver {
	Handle_MDataStd_RealListRetrievalDriver GetHandle() {
	return *(Handle_MDataStd_RealListRetrievalDriver*) &$self;
	}
};
%extend MDataStd_RealListRetrievalDriver {
	~MDataStd_RealListRetrievalDriver() {
	printf("Call custom destructor for instance of MDataStd_RealListRetrievalDriver\n");
	}
};

%nodefaultctor MDataStd_ShapeRetrievalDriver;
class MDataStd_ShapeRetrievalDriver : public MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_ShapeRetrievalDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_PDF_Attribute &Source, const Handle_TDF_Attribute &Target, const Handle_MDF_RRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_ShapeRetrievalDriver {
	Handle_MDataStd_ShapeRetrievalDriver GetHandle() {
	return *(Handle_MDataStd_ShapeRetrievalDriver*) &$self;
	}
};
%extend MDataStd_ShapeRetrievalDriver {
	~MDataStd_ShapeRetrievalDriver() {
	printf("Call custom destructor for instance of MDataStd_ShapeRetrievalDriver\n");
	}
};

%nodefaultctor MDataStd_DirectoryStorageDriver;
class MDataStd_DirectoryStorageDriver : public MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_DirectoryStorageDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_PDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, const Handle_PDF_Attribute &Target, const Handle_MDF_SRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_DirectoryStorageDriver {
	Handle_MDataStd_DirectoryStorageDriver GetHandle() {
	return *(Handle_MDataStd_DirectoryStorageDriver*) &$self;
	}
};
%extend MDataStd_DirectoryStorageDriver {
	~MDataStd_DirectoryStorageDriver() {
	printf("Call custom destructor for instance of MDataStd_DirectoryStorageDriver\n");
	}
};

%nodefaultctor MDataStd_IntegerArrayRetrievalDriver;
class MDataStd_IntegerArrayRetrievalDriver : public MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_IntegerArrayRetrievalDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_PDF_Attribute &Source, const Handle_TDF_Attribute &Target, const Handle_MDF_RRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_IntegerArrayRetrievalDriver {
	Handle_MDataStd_IntegerArrayRetrievalDriver GetHandle() {
	return *(Handle_MDataStd_IntegerArrayRetrievalDriver*) &$self;
	}
};
%extend MDataStd_IntegerArrayRetrievalDriver {
	~MDataStd_IntegerArrayRetrievalDriver() {
	printf("Call custom destructor for instance of MDataStd_IntegerArrayRetrievalDriver\n");
	}
};

%nodefaultctor MDataStd_GeometryRetrievalDriver;
class MDataStd_GeometryRetrievalDriver : public MDF_ARDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_GeometryRetrievalDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_PDF_Attribute &Source, const Handle_TDF_Attribute &Target, const Handle_MDF_RRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_GeometryRetrievalDriver {
	Handle_MDataStd_GeometryRetrievalDriver GetHandle() {
	return *(Handle_MDataStd_GeometryRetrievalDriver*) &$self;
	}
};
%extend MDataStd_GeometryRetrievalDriver {
	~MDataStd_GeometryRetrievalDriver() {
	printf("Call custom destructor for instance of MDataStd_GeometryRetrievalDriver\n");
	}
};

%nodefaultctor MDataStd_PlaneStorageDriver;
class MDataStd_PlaneStorageDriver : public MDF_ASDriver {
	public:
		%feature("autodoc", "1");
		MDataStd_PlaneStorageDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Standard_Integer VersionNumber() const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type SourceType() const;
		%feature("autodoc", "1");
		virtual		Handle_PDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, const Handle_PDF_Attribute &Target, const Handle_MDF_SRelocationTable &RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MDataStd_PlaneStorageDriver {
	Handle_MDataStd_PlaneStorageDriver GetHandle() {
	return *(Handle_MDataStd_PlaneStorageDriver*) &$self;
	}
};
%extend MDataStd_PlaneStorageDriver {
	~MDataStd_PlaneStorageDriver() {
	printf("Call custom destructor for instance of MDataStd_PlaneStorageDriver\n");
	}
};