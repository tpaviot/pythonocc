/*
##Copyright 2008-2009 Thomas Paviot
##
##thomas.paviot@free.fr
##
##pythonOCC is a computer program whose purpose is to provide a complete set
##of python bindings for OpenCascade library.
##
##This software is governed by the CeCILL license under French law and
##abiding by the rules of distribution of free software.  You can  use, 
##modify and/ or redistribute the software under the terms of the CeCILL
##license as circulated by CEA, CNRS and INRIA at the following URL
##"http://www.cecill.info". 
##
##As a counterpart to the access to the source code and  rights to copy,
##modify and redistribute granted by the license, users are provided only
##with a limited warranty  and the software's author,  the holder of the
##economic rights,  and the successive licensors  have only  limited
##liability. 
##
##In this respect, the user's attention is drawn to the risks associated
##with loading,  using,  modifying and/or developing or reproducing the
##software by the user in light of its specific status of free software,
##that may mean  that it is complicated to manipulate,  and  that  also
##therefore means  that it is reserved for developers  and  experienced
##professionals having in-depth computer knowledge. Users are therefore
##encouraged to load and test the software's suitability as regards their
##requirements in conditions enabling the security of their systems and/or 
##data to be ensured and,  more generally, to use and operate it in the 
##same conditions as regards security. 
##
##The fact that you are presently reading this means that you have had
##knowledge of the CeCILL license and that you accept its terms.
*/
%module BinMDataStd

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


%include BinMDataStd_dependencies.i


%include BinMDataStd_headers.i




%nodefaultctor Handle_BinMDataStd_NoteBookDriver;
class Handle_BinMDataStd_NoteBookDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_BinMDataStd_NoteBookDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_NoteBookDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_NoteBookDriver(const Handle_BinMDataStd_NoteBookDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMDataStd_NoteBookDriver(const BinMDataStd_NoteBookDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMDataStd_NoteBookDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMDataStd_NoteBookDriver {
	BinMDataStd_NoteBookDriver* GetObject() {
	return (BinMDataStd_NoteBookDriver*)$self->Access();
	}
};

%nodefaultctor Handle_BinMDataStd_PatternStdDriver;
class Handle_BinMDataStd_PatternStdDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_BinMDataStd_PatternStdDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_PatternStdDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_PatternStdDriver(const Handle_BinMDataStd_PatternStdDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMDataStd_PatternStdDriver(const BinMDataStd_PatternStdDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMDataStd_PatternStdDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMDataStd_PatternStdDriver {
	BinMDataStd_PatternStdDriver* GetObject() {
	return (BinMDataStd_PatternStdDriver*)$self->Access();
	}
};

%nodefaultctor Handle_BinMDataStd_PlacementDriver;
class Handle_BinMDataStd_PlacementDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_BinMDataStd_PlacementDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_PlacementDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_PlacementDriver(const Handle_BinMDataStd_PlacementDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMDataStd_PlacementDriver(const BinMDataStd_PlacementDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMDataStd_PlacementDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMDataStd_PlacementDriver {
	BinMDataStd_PlacementDriver* GetObject() {
	return (BinMDataStd_PlacementDriver*)$self->Access();
	}
};

%nodefaultctor Handle_BinMDataStd_ReferenceArrayDriver;
class Handle_BinMDataStd_ReferenceArrayDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_BinMDataStd_ReferenceArrayDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_ReferenceArrayDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_ReferenceArrayDriver(const Handle_BinMDataStd_ReferenceArrayDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMDataStd_ReferenceArrayDriver(const BinMDataStd_ReferenceArrayDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMDataStd_ReferenceArrayDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMDataStd_ReferenceArrayDriver {
	BinMDataStd_ReferenceArrayDriver* GetObject() {
	return (BinMDataStd_ReferenceArrayDriver*)$self->Access();
	}
};

%nodefaultctor Handle_BinMDataStd_IntegerDriver;
class Handle_BinMDataStd_IntegerDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_BinMDataStd_IntegerDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_IntegerDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_IntegerDriver(const Handle_BinMDataStd_IntegerDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMDataStd_IntegerDriver(const BinMDataStd_IntegerDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMDataStd_IntegerDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMDataStd_IntegerDriver {
	BinMDataStd_IntegerDriver* GetObject() {
	return (BinMDataStd_IntegerDriver*)$self->Access();
	}
};

%nodefaultctor Handle_BinMDataStd_ByteArrayDriver;
class Handle_BinMDataStd_ByteArrayDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_BinMDataStd_ByteArrayDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_ByteArrayDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_ByteArrayDriver(const Handle_BinMDataStd_ByteArrayDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMDataStd_ByteArrayDriver(const BinMDataStd_ByteArrayDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMDataStd_ByteArrayDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMDataStd_ByteArrayDriver {
	BinMDataStd_ByteArrayDriver* GetObject() {
	return (BinMDataStd_ByteArrayDriver*)$self->Access();
	}
};

%nodefaultctor Handle_BinMDataStd_PointDriver;
class Handle_BinMDataStd_PointDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_BinMDataStd_PointDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_PointDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_PointDriver(const Handle_BinMDataStd_PointDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMDataStd_PointDriver(const BinMDataStd_PointDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMDataStd_PointDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMDataStd_PointDriver {
	BinMDataStd_PointDriver* GetObject() {
	return (BinMDataStd_PointDriver*)$self->Access();
	}
};

%nodefaultctor Handle_BinMDataStd_ExpressionDriver;
class Handle_BinMDataStd_ExpressionDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_BinMDataStd_ExpressionDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_ExpressionDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_ExpressionDriver(const Handle_BinMDataStd_ExpressionDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMDataStd_ExpressionDriver(const BinMDataStd_ExpressionDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMDataStd_ExpressionDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMDataStd_ExpressionDriver {
	BinMDataStd_ExpressionDriver* GetObject() {
	return (BinMDataStd_ExpressionDriver*)$self->Access();
	}
};

%nodefaultctor Handle_BinMDataStd_UAttributeDriver;
class Handle_BinMDataStd_UAttributeDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_BinMDataStd_UAttributeDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_UAttributeDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_UAttributeDriver(const Handle_BinMDataStd_UAttributeDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMDataStd_UAttributeDriver(const BinMDataStd_UAttributeDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMDataStd_UAttributeDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMDataStd_UAttributeDriver {
	BinMDataStd_UAttributeDriver* GetObject() {
	return (BinMDataStd_UAttributeDriver*)$self->Access();
	}
};

%nodefaultctor Handle_BinMDataStd_NamedDataDriver;
class Handle_BinMDataStd_NamedDataDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_BinMDataStd_NamedDataDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_NamedDataDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_NamedDataDriver(const Handle_BinMDataStd_NamedDataDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMDataStd_NamedDataDriver(const BinMDataStd_NamedDataDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMDataStd_NamedDataDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMDataStd_NamedDataDriver {
	BinMDataStd_NamedDataDriver* GetObject() {
	return (BinMDataStd_NamedDataDriver*)$self->Access();
	}
};

%nodefaultctor Handle_BinMDataStd_PlaneDriver;
class Handle_BinMDataStd_PlaneDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_BinMDataStd_PlaneDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_PlaneDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_PlaneDriver(const Handle_BinMDataStd_PlaneDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMDataStd_PlaneDriver(const BinMDataStd_PlaneDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMDataStd_PlaneDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMDataStd_PlaneDriver {
	BinMDataStd_PlaneDriver* GetObject() {
	return (BinMDataStd_PlaneDriver*)$self->Access();
	}
};

%nodefaultctor Handle_BinMDataStd_IntegerArrayDriver;
class Handle_BinMDataStd_IntegerArrayDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_BinMDataStd_IntegerArrayDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_IntegerArrayDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_IntegerArrayDriver(const Handle_BinMDataStd_IntegerArrayDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMDataStd_IntegerArrayDriver(const BinMDataStd_IntegerArrayDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMDataStd_IntegerArrayDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMDataStd_IntegerArrayDriver {
	BinMDataStd_IntegerArrayDriver* GetObject() {
	return (BinMDataStd_IntegerArrayDriver*)$self->Access();
	}
};

%nodefaultctor Handle_BinMDataStd_DirectoryDriver;
class Handle_BinMDataStd_DirectoryDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_BinMDataStd_DirectoryDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_DirectoryDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_DirectoryDriver(const Handle_BinMDataStd_DirectoryDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMDataStd_DirectoryDriver(const BinMDataStd_DirectoryDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMDataStd_DirectoryDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMDataStd_DirectoryDriver {
	BinMDataStd_DirectoryDriver* GetObject() {
	return (BinMDataStd_DirectoryDriver*)$self->Access();
	}
};

%nodefaultctor Handle_BinMDataStd_AxisDriver;
class Handle_BinMDataStd_AxisDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_BinMDataStd_AxisDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_AxisDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_AxisDriver(const Handle_BinMDataStd_AxisDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMDataStd_AxisDriver(const BinMDataStd_AxisDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMDataStd_AxisDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMDataStd_AxisDriver {
	BinMDataStd_AxisDriver* GetObject() {
	return (BinMDataStd_AxisDriver*)$self->Access();
	}
};

%nodefaultctor Handle_BinMDataStd_ExtStringListDriver;
class Handle_BinMDataStd_ExtStringListDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_BinMDataStd_ExtStringListDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_ExtStringListDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_ExtStringListDriver(const Handle_BinMDataStd_ExtStringListDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMDataStd_ExtStringListDriver(const BinMDataStd_ExtStringListDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMDataStd_ExtStringListDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMDataStd_ExtStringListDriver {
	BinMDataStd_ExtStringListDriver* GetObject() {
	return (BinMDataStd_ExtStringListDriver*)$self->Access();
	}
};

%nodefaultctor Handle_BinMDataStd_BooleanListDriver;
class Handle_BinMDataStd_BooleanListDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_BinMDataStd_BooleanListDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_BooleanListDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_BooleanListDriver(const Handle_BinMDataStd_BooleanListDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMDataStd_BooleanListDriver(const BinMDataStd_BooleanListDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMDataStd_BooleanListDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMDataStd_BooleanListDriver {
	BinMDataStd_BooleanListDriver* GetObject() {
	return (BinMDataStd_BooleanListDriver*)$self->Access();
	}
};

%nodefaultctor Handle_BinMDataStd_ExtStringArrayDriver;
class Handle_BinMDataStd_ExtStringArrayDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_BinMDataStd_ExtStringArrayDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_ExtStringArrayDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_ExtStringArrayDriver(const Handle_BinMDataStd_ExtStringArrayDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMDataStd_ExtStringArrayDriver(const BinMDataStd_ExtStringArrayDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMDataStd_ExtStringArrayDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMDataStd_ExtStringArrayDriver {
	BinMDataStd_ExtStringArrayDriver* GetObject() {
	return (BinMDataStd_ExtStringArrayDriver*)$self->Access();
	}
};

%nodefaultctor Handle_BinMDataStd_VariableDriver;
class Handle_BinMDataStd_VariableDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_BinMDataStd_VariableDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_VariableDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_VariableDriver(const Handle_BinMDataStd_VariableDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMDataStd_VariableDriver(const BinMDataStd_VariableDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMDataStd_VariableDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMDataStd_VariableDriver {
	BinMDataStd_VariableDriver* GetObject() {
	return (BinMDataStd_VariableDriver*)$self->Access();
	}
};

%nodefaultctor Handle_BinMDataStd_TickDriver;
class Handle_BinMDataStd_TickDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_BinMDataStd_TickDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_TickDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_TickDriver(const Handle_BinMDataStd_TickDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMDataStd_TickDriver(const BinMDataStd_TickDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMDataStd_TickDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMDataStd_TickDriver {
	BinMDataStd_TickDriver* GetObject() {
	return (BinMDataStd_TickDriver*)$self->Access();
	}
};

%nodefaultctor Handle_BinMDataStd_TreeNodeDriver;
class Handle_BinMDataStd_TreeNodeDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_BinMDataStd_TreeNodeDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_TreeNodeDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_TreeNodeDriver(const Handle_BinMDataStd_TreeNodeDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMDataStd_TreeNodeDriver(const BinMDataStd_TreeNodeDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMDataStd_TreeNodeDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMDataStd_TreeNodeDriver {
	BinMDataStd_TreeNodeDriver* GetObject() {
	return (BinMDataStd_TreeNodeDriver*)$self->Access();
	}
};

%nodefaultctor Handle_BinMDataStd_NameDriver;
class Handle_BinMDataStd_NameDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_BinMDataStd_NameDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_NameDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_NameDriver(const Handle_BinMDataStd_NameDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMDataStd_NameDriver(const BinMDataStd_NameDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMDataStd_NameDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMDataStd_NameDriver {
	BinMDataStd_NameDriver* GetObject() {
	return (BinMDataStd_NameDriver*)$self->Access();
	}
};

%nodefaultctor Handle_BinMDataStd_RealArrayDriver;
class Handle_BinMDataStd_RealArrayDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_BinMDataStd_RealArrayDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_RealArrayDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_RealArrayDriver(const Handle_BinMDataStd_RealArrayDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMDataStd_RealArrayDriver(const BinMDataStd_RealArrayDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMDataStd_RealArrayDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMDataStd_RealArrayDriver {
	BinMDataStd_RealArrayDriver* GetObject() {
	return (BinMDataStd_RealArrayDriver*)$self->Access();
	}
};

%nodefaultctor Handle_BinMDataStd_RealDriver;
class Handle_BinMDataStd_RealDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_BinMDataStd_RealDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_RealDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_RealDriver(const Handle_BinMDataStd_RealDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMDataStd_RealDriver(const BinMDataStd_RealDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMDataStd_RealDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMDataStd_RealDriver {
	BinMDataStd_RealDriver* GetObject() {
	return (BinMDataStd_RealDriver*)$self->Access();
	}
};

%nodefaultctor Handle_BinMDataStd_ShapeDriver;
class Handle_BinMDataStd_ShapeDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_BinMDataStd_ShapeDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_ShapeDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_ShapeDriver(const Handle_BinMDataStd_ShapeDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMDataStd_ShapeDriver(const BinMDataStd_ShapeDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMDataStd_ShapeDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMDataStd_ShapeDriver {
	BinMDataStd_ShapeDriver* GetObject() {
	return (BinMDataStd_ShapeDriver*)$self->Access();
	}
};

%nodefaultctor Handle_BinMDataStd_ReferenceListDriver;
class Handle_BinMDataStd_ReferenceListDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_BinMDataStd_ReferenceListDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_ReferenceListDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_ReferenceListDriver(const Handle_BinMDataStd_ReferenceListDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMDataStd_ReferenceListDriver(const BinMDataStd_ReferenceListDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMDataStd_ReferenceListDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMDataStd_ReferenceListDriver {
	BinMDataStd_ReferenceListDriver* GetObject() {
	return (BinMDataStd_ReferenceListDriver*)$self->Access();
	}
};

%nodefaultctor Handle_BinMDataStd_CommentDriver;
class Handle_BinMDataStd_CommentDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_BinMDataStd_CommentDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_CommentDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_CommentDriver(const Handle_BinMDataStd_CommentDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMDataStd_CommentDriver(const BinMDataStd_CommentDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMDataStd_CommentDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMDataStd_CommentDriver {
	BinMDataStd_CommentDriver* GetObject() {
	return (BinMDataStd_CommentDriver*)$self->Access();
	}
};

%nodefaultctor Handle_BinMDataStd_BooleanArrayDriver;
class Handle_BinMDataStd_BooleanArrayDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_BinMDataStd_BooleanArrayDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_BooleanArrayDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_BooleanArrayDriver(const Handle_BinMDataStd_BooleanArrayDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMDataStd_BooleanArrayDriver(const BinMDataStd_BooleanArrayDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMDataStd_BooleanArrayDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMDataStd_BooleanArrayDriver {
	BinMDataStd_BooleanArrayDriver* GetObject() {
	return (BinMDataStd_BooleanArrayDriver*)$self->Access();
	}
};

%nodefaultctor Handle_BinMDataStd_ConstraintDriver;
class Handle_BinMDataStd_ConstraintDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_BinMDataStd_ConstraintDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_ConstraintDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_ConstraintDriver(const Handle_BinMDataStd_ConstraintDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMDataStd_ConstraintDriver(const BinMDataStd_ConstraintDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMDataStd_ConstraintDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMDataStd_ConstraintDriver {
	BinMDataStd_ConstraintDriver* GetObject() {
	return (BinMDataStd_ConstraintDriver*)$self->Access();
	}
};

%nodefaultctor Handle_BinMDataStd_RelationDriver;
class Handle_BinMDataStd_RelationDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_BinMDataStd_RelationDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_RelationDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_RelationDriver(const Handle_BinMDataStd_RelationDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMDataStd_RelationDriver(const BinMDataStd_RelationDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMDataStd_RelationDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMDataStd_RelationDriver {
	BinMDataStd_RelationDriver* GetObject() {
	return (BinMDataStd_RelationDriver*)$self->Access();
	}
};

%nodefaultctor Handle_BinMDataStd_IntegerListDriver;
class Handle_BinMDataStd_IntegerListDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_BinMDataStd_IntegerListDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_IntegerListDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_IntegerListDriver(const Handle_BinMDataStd_IntegerListDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMDataStd_IntegerListDriver(const BinMDataStd_IntegerListDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMDataStd_IntegerListDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMDataStd_IntegerListDriver {
	BinMDataStd_IntegerListDriver* GetObject() {
	return (BinMDataStd_IntegerListDriver*)$self->Access();
	}
};

%nodefaultctor Handle_BinMDataStd_IntPackedMapDriver;
class Handle_BinMDataStd_IntPackedMapDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_BinMDataStd_IntPackedMapDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_IntPackedMapDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_IntPackedMapDriver(const Handle_BinMDataStd_IntPackedMapDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMDataStd_IntPackedMapDriver(const BinMDataStd_IntPackedMapDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMDataStd_IntPackedMapDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMDataStd_IntPackedMapDriver {
	BinMDataStd_IntPackedMapDriver* GetObject() {
	return (BinMDataStd_IntPackedMapDriver*)$self->Access();
	}
};

%nodefaultctor Handle_BinMDataStd_RealListDriver;
class Handle_BinMDataStd_RealListDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_BinMDataStd_RealListDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_RealListDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_RealListDriver(const Handle_BinMDataStd_RealListDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMDataStd_RealListDriver(const BinMDataStd_RealListDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMDataStd_RealListDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMDataStd_RealListDriver {
	BinMDataStd_RealListDriver* GetObject() {
	return (BinMDataStd_RealListDriver*)$self->Access();
	}
};

%nodefaultctor Handle_BinMDataStd_AsciiStringDriver;
class Handle_BinMDataStd_AsciiStringDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_BinMDataStd_AsciiStringDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_AsciiStringDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_AsciiStringDriver(const Handle_BinMDataStd_AsciiStringDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMDataStd_AsciiStringDriver(const BinMDataStd_AsciiStringDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMDataStd_AsciiStringDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMDataStd_AsciiStringDriver {
	BinMDataStd_AsciiStringDriver* GetObject() {
	return (BinMDataStd_AsciiStringDriver*)$self->Access();
	}
};

%nodefaultctor Handle_BinMDataStd_GeometryDriver;
class Handle_BinMDataStd_GeometryDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_BinMDataStd_GeometryDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_GeometryDriver();
		%feature("autodoc", "1");
		Handle_BinMDataStd_GeometryDriver(const Handle_BinMDataStd_GeometryDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinMDataStd_GeometryDriver(const BinMDataStd_GeometryDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinMDataStd_GeometryDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinMDataStd_GeometryDriver {
	BinMDataStd_GeometryDriver* GetObject() {
	return (BinMDataStd_GeometryDriver*)$self->Access();
	}
};

%nodefaultctor BinMDataStd_VariableDriver;
class BinMDataStd_VariableDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMDataStd_VariableDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, BinObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, BinObjMgt_Persistent & Target, BinObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BinMDataStd_VariableDriver();

};
%extend BinMDataStd_VariableDriver {
	Handle_BinMDataStd_VariableDriver GetHandle() {
	return *(Handle_BinMDataStd_VariableDriver*) &$self;
	}
};

%nodefaultctor BinMDataStd_IntegerArrayDriver;
class BinMDataStd_IntegerArrayDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMDataStd_IntegerArrayDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, BinObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, BinObjMgt_Persistent & Target, BinObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BinMDataStd_IntegerArrayDriver();

};
%extend BinMDataStd_IntegerArrayDriver {
	Handle_BinMDataStd_IntegerArrayDriver GetHandle() {
	return *(Handle_BinMDataStd_IntegerArrayDriver*) &$self;
	}
};

%nodefaultctor BinMDataStd_TreeNodeDriver;
class BinMDataStd_TreeNodeDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMDataStd_TreeNodeDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, BinObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, BinObjMgt_Persistent & Target, BinObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BinMDataStd_TreeNodeDriver();

};
%extend BinMDataStd_TreeNodeDriver {
	Handle_BinMDataStd_TreeNodeDriver GetHandle() {
	return *(Handle_BinMDataStd_TreeNodeDriver*) &$self;
	}
};

%nodefaultctor BinMDataStd_TickDriver;
class BinMDataStd_TickDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMDataStd_TickDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, BinObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, BinObjMgt_Persistent & Target, BinObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BinMDataStd_TickDriver();

};
%extend BinMDataStd_TickDriver {
	Handle_BinMDataStd_TickDriver GetHandle() {
	return *(Handle_BinMDataStd_TickDriver*) &$self;
	}
};

%nodefaultctor BinMDataStd_GeometryDriver;
class BinMDataStd_GeometryDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMDataStd_GeometryDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, BinObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, BinObjMgt_Persistent & Target, BinObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BinMDataStd_GeometryDriver();

};
%extend BinMDataStd_GeometryDriver {
	Handle_BinMDataStd_GeometryDriver GetHandle() {
	return *(Handle_BinMDataStd_GeometryDriver*) &$self;
	}
};

%nodefaultctor BinMDataStd_AsciiStringDriver;
class BinMDataStd_AsciiStringDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMDataStd_AsciiStringDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, BinObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, BinObjMgt_Persistent & Target, BinObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BinMDataStd_AsciiStringDriver();

};
%extend BinMDataStd_AsciiStringDriver {
	Handle_BinMDataStd_AsciiStringDriver GetHandle() {
	return *(Handle_BinMDataStd_AsciiStringDriver*) &$self;
	}
};

%nodefaultctor BinMDataStd_NoteBookDriver;
class BinMDataStd_NoteBookDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMDataStd_NoteBookDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, BinObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, BinObjMgt_Persistent & Target, BinObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BinMDataStd_NoteBookDriver();

};
%extend BinMDataStd_NoteBookDriver {
	Handle_BinMDataStd_NoteBookDriver GetHandle() {
	return *(Handle_BinMDataStd_NoteBookDriver*) &$self;
	}
};

%nodefaultctor BinMDataStd_CommentDriver;
class BinMDataStd_CommentDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMDataStd_CommentDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, BinObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, BinObjMgt_Persistent & Target, BinObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BinMDataStd_CommentDriver();

};
%extend BinMDataStd_CommentDriver {
	Handle_BinMDataStd_CommentDriver GetHandle() {
	return *(Handle_BinMDataStd_CommentDriver*) &$self;
	}
};

%nodefaultctor BinMDataStd_NameDriver;
class BinMDataStd_NameDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMDataStd_NameDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, BinObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, BinObjMgt_Persistent & Target, BinObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BinMDataStd_NameDriver();

};
%extend BinMDataStd_NameDriver {
	Handle_BinMDataStd_NameDriver GetHandle() {
	return *(Handle_BinMDataStd_NameDriver*) &$self;
	}
};

%nodefaultctor BinMDataStd_ExtStringListDriver;
class BinMDataStd_ExtStringListDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMDataStd_ExtStringListDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, BinObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, BinObjMgt_Persistent & Target, BinObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BinMDataStd_ExtStringListDriver();

};
%extend BinMDataStd_ExtStringListDriver {
	Handle_BinMDataStd_ExtStringListDriver GetHandle() {
	return *(Handle_BinMDataStd_ExtStringListDriver*) &$self;
	}
};

%nodefaultctor BinMDataStd_ReferenceArrayDriver;
class BinMDataStd_ReferenceArrayDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMDataStd_ReferenceArrayDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, BinObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, BinObjMgt_Persistent & Target, BinObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BinMDataStd_ReferenceArrayDriver();

};
%extend BinMDataStd_ReferenceArrayDriver {
	Handle_BinMDataStd_ReferenceArrayDriver GetHandle() {
	return *(Handle_BinMDataStd_ReferenceArrayDriver*) &$self;
	}
};

%nodefaultctor BinMDataStd_RealDriver;
class BinMDataStd_RealDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMDataStd_RealDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, BinObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, BinObjMgt_Persistent & Target, BinObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BinMDataStd_RealDriver();

};
%extend BinMDataStd_RealDriver {
	Handle_BinMDataStd_RealDriver GetHandle() {
	return *(Handle_BinMDataStd_RealDriver*) &$self;
	}
};

%nodefaultctor BinMDataStd_ReferenceListDriver;
class BinMDataStd_ReferenceListDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMDataStd_ReferenceListDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, BinObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, BinObjMgt_Persistent & Target, BinObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BinMDataStd_ReferenceListDriver();

};
%extend BinMDataStd_ReferenceListDriver {
	Handle_BinMDataStd_ReferenceListDriver GetHandle() {
	return *(Handle_BinMDataStd_ReferenceListDriver*) &$self;
	}
};

%nodefaultctor BinMDataStd_RealArrayDriver;
class BinMDataStd_RealArrayDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMDataStd_RealArrayDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, BinObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, BinObjMgt_Persistent & Target, BinObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BinMDataStd_RealArrayDriver();

};
%extend BinMDataStd_RealArrayDriver {
	Handle_BinMDataStd_RealArrayDriver GetHandle() {
	return *(Handle_BinMDataStd_RealArrayDriver*) &$self;
	}
};

%nodefaultctor BinMDataStd_PlaneDriver;
class BinMDataStd_PlaneDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMDataStd_PlaneDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, BinObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, BinObjMgt_Persistent & Target, BinObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BinMDataStd_PlaneDriver();

};
%extend BinMDataStd_PlaneDriver {
	Handle_BinMDataStd_PlaneDriver GetHandle() {
	return *(Handle_BinMDataStd_PlaneDriver*) &$self;
	}
};

%nodefaultctor BinMDataStd_PatternStdDriver;
class BinMDataStd_PatternStdDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMDataStd_PatternStdDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, BinObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, BinObjMgt_Persistent & Target, BinObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BinMDataStd_PatternStdDriver();

};
%extend BinMDataStd_PatternStdDriver {
	Handle_BinMDataStd_PatternStdDriver GetHandle() {
	return *(Handle_BinMDataStd_PatternStdDriver*) &$self;
	}
};

%nodefaultctor BinMDataStd_UAttributeDriver;
class BinMDataStd_UAttributeDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMDataStd_UAttributeDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, BinObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, BinObjMgt_Persistent & Target, BinObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BinMDataStd_UAttributeDriver();

};
%extend BinMDataStd_UAttributeDriver {
	Handle_BinMDataStd_UAttributeDriver GetHandle() {
	return *(Handle_BinMDataStd_UAttributeDriver*) &$self;
	}
};

%nodefaultctor BinMDataStd_AxisDriver;
class BinMDataStd_AxisDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMDataStd_AxisDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, BinObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, BinObjMgt_Persistent & Target, BinObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BinMDataStd_AxisDriver();

};
%extend BinMDataStd_AxisDriver {
	Handle_BinMDataStd_AxisDriver GetHandle() {
	return *(Handle_BinMDataStd_AxisDriver*) &$self;
	}
};

%nodefaultctor BinMDataStd_BooleanArrayDriver;
class BinMDataStd_BooleanArrayDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMDataStd_BooleanArrayDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, BinObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, BinObjMgt_Persistent & Target, BinObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BinMDataStd_BooleanArrayDriver();

};
%extend BinMDataStd_BooleanArrayDriver {
	Handle_BinMDataStd_BooleanArrayDriver GetHandle() {
	return *(Handle_BinMDataStd_BooleanArrayDriver*) &$self;
	}
};

%nodefaultctor BinMDataStd_RealListDriver;
class BinMDataStd_RealListDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMDataStd_RealListDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, BinObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, BinObjMgt_Persistent & Target, BinObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BinMDataStd_RealListDriver();

};
%extend BinMDataStd_RealListDriver {
	Handle_BinMDataStd_RealListDriver GetHandle() {
	return *(Handle_BinMDataStd_RealListDriver*) &$self;
	}
};

%nodefaultctor BinMDataStd_IntPackedMapDriver;
class BinMDataStd_IntPackedMapDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMDataStd_IntPackedMapDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, BinObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, BinObjMgt_Persistent & Target, BinObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BinMDataStd_IntPackedMapDriver();

};
%extend BinMDataStd_IntPackedMapDriver {
	Handle_BinMDataStd_IntPackedMapDriver GetHandle() {
	return *(Handle_BinMDataStd_IntPackedMapDriver*) &$self;
	}
};

%nodefaultctor BinMDataStd_ByteArrayDriver;
class BinMDataStd_ByteArrayDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMDataStd_ByteArrayDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, BinObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, BinObjMgt_Persistent & Target, BinObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BinMDataStd_ByteArrayDriver();

};
%extend BinMDataStd_ByteArrayDriver {
	Handle_BinMDataStd_ByteArrayDriver GetHandle() {
	return *(Handle_BinMDataStd_ByteArrayDriver*) &$self;
	}
};

%nodefaultctor BinMDataStd_BooleanListDriver;
class BinMDataStd_BooleanListDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMDataStd_BooleanListDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, BinObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, BinObjMgt_Persistent & Target, BinObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BinMDataStd_BooleanListDriver();

};
%extend BinMDataStd_BooleanListDriver {
	Handle_BinMDataStd_BooleanListDriver GetHandle() {
	return *(Handle_BinMDataStd_BooleanListDriver*) &$self;
	}
};

%nodefaultctor BinMDataStd_DirectoryDriver;
class BinMDataStd_DirectoryDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMDataStd_DirectoryDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, BinObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, BinObjMgt_Persistent & Target, BinObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BinMDataStd_DirectoryDriver();

};
%extend BinMDataStd_DirectoryDriver {
	Handle_BinMDataStd_DirectoryDriver GetHandle() {
	return *(Handle_BinMDataStd_DirectoryDriver*) &$self;
	}
};

%nodefaultctor BinMDataStd_ShapeDriver;
class BinMDataStd_ShapeDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMDataStd_ShapeDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, BinObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, BinObjMgt_Persistent & Target, BinObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BinMDataStd_ShapeDriver();

};
%extend BinMDataStd_ShapeDriver {
	Handle_BinMDataStd_ShapeDriver GetHandle() {
	return *(Handle_BinMDataStd_ShapeDriver*) &$self;
	}
};

%nodefaultctor BinMDataStd_ExtStringArrayDriver;
class BinMDataStd_ExtStringArrayDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMDataStd_ExtStringArrayDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, BinObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, BinObjMgt_Persistent & Target, BinObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BinMDataStd_ExtStringArrayDriver();

};
%extend BinMDataStd_ExtStringArrayDriver {
	Handle_BinMDataStd_ExtStringArrayDriver GetHandle() {
	return *(Handle_BinMDataStd_ExtStringArrayDriver*) &$self;
	}
};

%nodefaultctor BinMDataStd_IntegerListDriver;
class BinMDataStd_IntegerListDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMDataStd_IntegerListDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, BinObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, BinObjMgt_Persistent & Target, BinObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BinMDataStd_IntegerListDriver();

};
%extend BinMDataStd_IntegerListDriver {
	Handle_BinMDataStd_IntegerListDriver GetHandle() {
	return *(Handle_BinMDataStd_IntegerListDriver*) &$self;
	}
};

%nodefaultctor BinMDataStd_NamedDataDriver;
class BinMDataStd_NamedDataDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMDataStd_NamedDataDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, BinObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, BinObjMgt_Persistent & Target, BinObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BinMDataStd_NamedDataDriver();

};
%extend BinMDataStd_NamedDataDriver {
	Handle_BinMDataStd_NamedDataDriver GetHandle() {
	return *(Handle_BinMDataStd_NamedDataDriver*) &$self;
	}
};

%nodefaultctor BinMDataStd_PointDriver;
class BinMDataStd_PointDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMDataStd_PointDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, BinObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, BinObjMgt_Persistent & Target, BinObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BinMDataStd_PointDriver();

};
%extend BinMDataStd_PointDriver {
	Handle_BinMDataStd_PointDriver GetHandle() {
	return *(Handle_BinMDataStd_PointDriver*) &$self;
	}
};

%nodefaultctor BinMDataStd;
class BinMDataStd {
	public:
		%feature("autodoc", "1");
		~BinMDataStd();
		%feature("autodoc", "1");
		BinMDataStd();
		%feature("autodoc", "1");
		void AddDrivers(const Handle_BinMDF_ADriverTable &theDriverTable, const Handle_CDM_MessageDriver &aMsgDrv);
		%feature("autodoc", "1");
		void SetDocumentVersion(const Standard_Integer DocVersion);
		%feature("autodoc", "1");
		Standard_Integer DocumentVersion();

};

%nodefaultctor BinMDataStd_ExpressionDriver;
class BinMDataStd_ExpressionDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMDataStd_ExpressionDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, BinObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, BinObjMgt_Persistent & Target, BinObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BinMDataStd_ExpressionDriver();

};
%extend BinMDataStd_ExpressionDriver {
	Handle_BinMDataStd_ExpressionDriver GetHandle() {
	return *(Handle_BinMDataStd_ExpressionDriver*) &$self;
	}
};

%nodefaultctor BinMDataStd_IntegerDriver;
class BinMDataStd_IntegerDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMDataStd_IntegerDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, BinObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, BinObjMgt_Persistent & Target, BinObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BinMDataStd_IntegerDriver();

};
%extend BinMDataStd_IntegerDriver {
	Handle_BinMDataStd_IntegerDriver GetHandle() {
	return *(Handle_BinMDataStd_IntegerDriver*) &$self;
	}
};

%nodefaultctor BinMDataStd_PlacementDriver;
class BinMDataStd_PlacementDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMDataStd_PlacementDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, BinObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, BinObjMgt_Persistent & Target, BinObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BinMDataStd_PlacementDriver();

};
%extend BinMDataStd_PlacementDriver {
	Handle_BinMDataStd_PlacementDriver GetHandle() {
	return *(Handle_BinMDataStd_PlacementDriver*) &$self;
	}
};

%nodefaultctor BinMDataStd_ConstraintDriver;
class BinMDataStd_ConstraintDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMDataStd_ConstraintDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, BinObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, BinObjMgt_Persistent & Target, BinObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BinMDataStd_ConstraintDriver();

};
%extend BinMDataStd_ConstraintDriver {
	Handle_BinMDataStd_ConstraintDriver GetHandle() {
	return *(Handle_BinMDataStd_ConstraintDriver*) &$self;
	}
};

%nodefaultctor BinMDataStd_RelationDriver;
class BinMDataStd_RelationDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinMDataStd_RelationDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, BinObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, BinObjMgt_Persistent & Target, BinObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BinMDataStd_RelationDriver();

};
%extend BinMDataStd_RelationDriver {
	Handle_BinMDataStd_RelationDriver GetHandle() {
	return *(Handle_BinMDataStd_RelationDriver*) &$self;
	}
};