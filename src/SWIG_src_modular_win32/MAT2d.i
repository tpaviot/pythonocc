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
%module MAT2d

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
%typemap(in,numinputs=0) Standard_Real &OutValue(Standard_Real temp) {
    $1 = &temp;
}


%include MAT2d_dependencies.i


%include MAT2d_headers.i




%nodefaultctor Handle_MAT2d_DataMapNodeOfDataMapOfIntegerConnexion;
class Handle_MAT2d_DataMapNodeOfDataMapOfIntegerConnexion : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_MAT2d_DataMapNodeOfDataMapOfIntegerConnexion();
		%feature("autodoc", "1");
		Handle_MAT2d_DataMapNodeOfDataMapOfIntegerConnexion(const Handle_MAT2d_DataMapNodeOfDataMapOfIntegerConnexion &aHandle);
		%feature("autodoc", "1");
		Handle_MAT2d_DataMapNodeOfDataMapOfIntegerConnexion(const MAT2d_DataMapNodeOfDataMapOfIntegerConnexion *anItem);
		%feature("autodoc", "1");
		Handle_MAT2d_DataMapNodeOfDataMapOfIntegerConnexion const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MAT2d_DataMapNodeOfDataMapOfIntegerConnexion {
	MAT2d_DataMapNodeOfDataMapOfIntegerConnexion* GetObject() {
	return (MAT2d_DataMapNodeOfDataMapOfIntegerConnexion*)$self->Access();
	}
};
%extend Handle_MAT2d_DataMapNodeOfDataMapOfIntegerConnexion {
	~Handle_MAT2d_DataMapNodeOfDataMapOfIntegerConnexion() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_MAT2d_DataMapNodeOfDataMapOfIntegerConnexion\n");}
	}
};

%nodefaultctor Handle_MAT2d_Connexion;
class Handle_MAT2d_Connexion : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_MAT2d_Connexion();
		%feature("autodoc", "1");
		Handle_MAT2d_Connexion(const Handle_MAT2d_Connexion &aHandle);
		%feature("autodoc", "1");
		Handle_MAT2d_Connexion(const MAT2d_Connexion *anItem);
		%feature("autodoc", "1");
		Handle_MAT2d_Connexion const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MAT2d_Connexion {
	MAT2d_Connexion* GetObject() {
	return (MAT2d_Connexion*)$self->Access();
	}
};
%extend Handle_MAT2d_Connexion {
	~Handle_MAT2d_Connexion() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_MAT2d_Connexion\n");}
	}
};

%nodefaultctor Handle_MAT2d_DataMapNodeOfDataMapOfIntegerPnt2d;
class Handle_MAT2d_DataMapNodeOfDataMapOfIntegerPnt2d : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_MAT2d_DataMapNodeOfDataMapOfIntegerPnt2d();
		%feature("autodoc", "1");
		Handle_MAT2d_DataMapNodeOfDataMapOfIntegerPnt2d(const Handle_MAT2d_DataMapNodeOfDataMapOfIntegerPnt2d &aHandle);
		%feature("autodoc", "1");
		Handle_MAT2d_DataMapNodeOfDataMapOfIntegerPnt2d(const MAT2d_DataMapNodeOfDataMapOfIntegerPnt2d *anItem);
		%feature("autodoc", "1");
		Handle_MAT2d_DataMapNodeOfDataMapOfIntegerPnt2d const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MAT2d_DataMapNodeOfDataMapOfIntegerPnt2d {
	MAT2d_DataMapNodeOfDataMapOfIntegerPnt2d* GetObject() {
	return (MAT2d_DataMapNodeOfDataMapOfIntegerPnt2d*)$self->Access();
	}
};
%extend Handle_MAT2d_DataMapNodeOfDataMapOfIntegerPnt2d {
	~Handle_MAT2d_DataMapNodeOfDataMapOfIntegerPnt2d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_MAT2d_DataMapNodeOfDataMapOfIntegerPnt2d\n");}
	}
};

%nodefaultctor Handle_MAT2d_DataMapNodeOfDataMapOfBiIntInteger;
class Handle_MAT2d_DataMapNodeOfDataMapOfBiIntInteger : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_MAT2d_DataMapNodeOfDataMapOfBiIntInteger();
		%feature("autodoc", "1");
		Handle_MAT2d_DataMapNodeOfDataMapOfBiIntInteger(const Handle_MAT2d_DataMapNodeOfDataMapOfBiIntInteger &aHandle);
		%feature("autodoc", "1");
		Handle_MAT2d_DataMapNodeOfDataMapOfBiIntInteger(const MAT2d_DataMapNodeOfDataMapOfBiIntInteger *anItem);
		%feature("autodoc", "1");
		Handle_MAT2d_DataMapNodeOfDataMapOfBiIntInteger const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MAT2d_DataMapNodeOfDataMapOfBiIntInteger {
	MAT2d_DataMapNodeOfDataMapOfBiIntInteger* GetObject() {
	return (MAT2d_DataMapNodeOfDataMapOfBiIntInteger*)$self->Access();
	}
};
%extend Handle_MAT2d_DataMapNodeOfDataMapOfBiIntInteger {
	~Handle_MAT2d_DataMapNodeOfDataMapOfBiIntInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_MAT2d_DataMapNodeOfDataMapOfBiIntInteger\n");}
	}
};

%nodefaultctor Handle_MAT2d_DataMapNodeOfDataMapOfIntegerBisec;
class Handle_MAT2d_DataMapNodeOfDataMapOfIntegerBisec : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_MAT2d_DataMapNodeOfDataMapOfIntegerBisec();
		%feature("autodoc", "1");
		Handle_MAT2d_DataMapNodeOfDataMapOfIntegerBisec(const Handle_MAT2d_DataMapNodeOfDataMapOfIntegerBisec &aHandle);
		%feature("autodoc", "1");
		Handle_MAT2d_DataMapNodeOfDataMapOfIntegerBisec(const MAT2d_DataMapNodeOfDataMapOfIntegerBisec *anItem);
		%feature("autodoc", "1");
		Handle_MAT2d_DataMapNodeOfDataMapOfIntegerBisec const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MAT2d_DataMapNodeOfDataMapOfIntegerBisec {
	MAT2d_DataMapNodeOfDataMapOfIntegerBisec* GetObject() {
	return (MAT2d_DataMapNodeOfDataMapOfIntegerBisec*)$self->Access();
	}
};
%extend Handle_MAT2d_DataMapNodeOfDataMapOfIntegerBisec {
	~Handle_MAT2d_DataMapNodeOfDataMapOfIntegerBisec() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_MAT2d_DataMapNodeOfDataMapOfIntegerBisec\n");}
	}
};

%nodefaultctor Handle_MAT2d_DataMapNodeOfDataMapOfIntegerVec2d;
class Handle_MAT2d_DataMapNodeOfDataMapOfIntegerVec2d : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_MAT2d_DataMapNodeOfDataMapOfIntegerVec2d();
		%feature("autodoc", "1");
		Handle_MAT2d_DataMapNodeOfDataMapOfIntegerVec2d(const Handle_MAT2d_DataMapNodeOfDataMapOfIntegerVec2d &aHandle);
		%feature("autodoc", "1");
		Handle_MAT2d_DataMapNodeOfDataMapOfIntegerVec2d(const MAT2d_DataMapNodeOfDataMapOfIntegerVec2d *anItem);
		%feature("autodoc", "1");
		Handle_MAT2d_DataMapNodeOfDataMapOfIntegerVec2d const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MAT2d_DataMapNodeOfDataMapOfIntegerVec2d {
	MAT2d_DataMapNodeOfDataMapOfIntegerVec2d* GetObject() {
	return (MAT2d_DataMapNodeOfDataMapOfIntegerVec2d*)$self->Access();
	}
};
%extend Handle_MAT2d_DataMapNodeOfDataMapOfIntegerVec2d {
	~Handle_MAT2d_DataMapNodeOfDataMapOfIntegerVec2d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_MAT2d_DataMapNodeOfDataMapOfIntegerVec2d\n");}
	}
};

%nodefaultctor Handle_MAT2d_SequenceNodeOfSequenceOfConnexion;
class Handle_MAT2d_SequenceNodeOfSequenceOfConnexion : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_MAT2d_SequenceNodeOfSequenceOfConnexion();
		%feature("autodoc", "1");
		Handle_MAT2d_SequenceNodeOfSequenceOfConnexion(const Handle_MAT2d_SequenceNodeOfSequenceOfConnexion &aHandle);
		%feature("autodoc", "1");
		Handle_MAT2d_SequenceNodeOfSequenceOfConnexion(const MAT2d_SequenceNodeOfSequenceOfConnexion *anItem);
		%feature("autodoc", "1");
		Handle_MAT2d_SequenceNodeOfSequenceOfConnexion const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MAT2d_SequenceNodeOfSequenceOfConnexion {
	MAT2d_SequenceNodeOfSequenceOfConnexion* GetObject() {
	return (MAT2d_SequenceNodeOfSequenceOfConnexion*)$self->Access();
	}
};
%extend Handle_MAT2d_SequenceNodeOfSequenceOfConnexion {
	~Handle_MAT2d_SequenceNodeOfSequenceOfConnexion() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_MAT2d_SequenceNodeOfSequenceOfConnexion\n");}
	}
};

%nodefaultctor Handle_MAT2d_DataMapNodeOfDataMapOfIntegerSequenceOfConnexion;
class Handle_MAT2d_DataMapNodeOfDataMapOfIntegerSequenceOfConnexion : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_MAT2d_DataMapNodeOfDataMapOfIntegerSequenceOfConnexion();
		%feature("autodoc", "1");
		Handle_MAT2d_DataMapNodeOfDataMapOfIntegerSequenceOfConnexion(const Handle_MAT2d_DataMapNodeOfDataMapOfIntegerSequenceOfConnexion &aHandle);
		%feature("autodoc", "1");
		Handle_MAT2d_DataMapNodeOfDataMapOfIntegerSequenceOfConnexion(const MAT2d_DataMapNodeOfDataMapOfIntegerSequenceOfConnexion *anItem);
		%feature("autodoc", "1");
		Handle_MAT2d_DataMapNodeOfDataMapOfIntegerSequenceOfConnexion const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MAT2d_DataMapNodeOfDataMapOfIntegerSequenceOfConnexion {
	MAT2d_DataMapNodeOfDataMapOfIntegerSequenceOfConnexion* GetObject() {
	return (MAT2d_DataMapNodeOfDataMapOfIntegerSequenceOfConnexion*)$self->Access();
	}
};
%extend Handle_MAT2d_DataMapNodeOfDataMapOfIntegerSequenceOfConnexion {
	~Handle_MAT2d_DataMapNodeOfDataMapOfIntegerSequenceOfConnexion() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_MAT2d_DataMapNodeOfDataMapOfIntegerSequenceOfConnexion\n");}
	}
};

%nodefaultctor Handle_MAT2d_SequenceNodeOfSequenceOfSequenceOfGeometry;
class Handle_MAT2d_SequenceNodeOfSequenceOfSequenceOfGeometry : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_MAT2d_SequenceNodeOfSequenceOfSequenceOfGeometry();
		%feature("autodoc", "1");
		Handle_MAT2d_SequenceNodeOfSequenceOfSequenceOfGeometry(const Handle_MAT2d_SequenceNodeOfSequenceOfSequenceOfGeometry &aHandle);
		%feature("autodoc", "1");
		Handle_MAT2d_SequenceNodeOfSequenceOfSequenceOfGeometry(const MAT2d_SequenceNodeOfSequenceOfSequenceOfGeometry *anItem);
		%feature("autodoc", "1");
		Handle_MAT2d_SequenceNodeOfSequenceOfSequenceOfGeometry const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MAT2d_SequenceNodeOfSequenceOfSequenceOfGeometry {
	MAT2d_SequenceNodeOfSequenceOfSequenceOfGeometry* GetObject() {
	return (MAT2d_SequenceNodeOfSequenceOfSequenceOfGeometry*)$self->Access();
	}
};
%extend Handle_MAT2d_SequenceNodeOfSequenceOfSequenceOfGeometry {
	~Handle_MAT2d_SequenceNodeOfSequenceOfSequenceOfGeometry() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_MAT2d_SequenceNodeOfSequenceOfSequenceOfGeometry\n");}
	}
};

%nodefaultctor Handle_MAT2d_Circuit;
class Handle_MAT2d_Circuit : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_MAT2d_Circuit();
		%feature("autodoc", "1");
		Handle_MAT2d_Circuit(const Handle_MAT2d_Circuit &aHandle);
		%feature("autodoc", "1");
		Handle_MAT2d_Circuit(const MAT2d_Circuit *anItem);
		%feature("autodoc", "1");
		Handle_MAT2d_Circuit const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MAT2d_Circuit {
	MAT2d_Circuit* GetObject() {
	return (MAT2d_Circuit*)$self->Access();
	}
};
%extend Handle_MAT2d_Circuit {
	~Handle_MAT2d_Circuit() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_MAT2d_Circuit\n");}
	}
};

%nodefaultctor Handle_MAT2d_DataMapNodeOfDataMapOfBiIntSequenceOfInteger;
class Handle_MAT2d_DataMapNodeOfDataMapOfBiIntSequenceOfInteger : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_MAT2d_DataMapNodeOfDataMapOfBiIntSequenceOfInteger();
		%feature("autodoc", "1");
		Handle_MAT2d_DataMapNodeOfDataMapOfBiIntSequenceOfInteger(const Handle_MAT2d_DataMapNodeOfDataMapOfBiIntSequenceOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_MAT2d_DataMapNodeOfDataMapOfBiIntSequenceOfInteger(const MAT2d_DataMapNodeOfDataMapOfBiIntSequenceOfInteger *anItem);
		%feature("autodoc", "1");
		Handle_MAT2d_DataMapNodeOfDataMapOfBiIntSequenceOfInteger const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MAT2d_DataMapNodeOfDataMapOfBiIntSequenceOfInteger {
	MAT2d_DataMapNodeOfDataMapOfBiIntSequenceOfInteger* GetObject() {
	return (MAT2d_DataMapNodeOfDataMapOfBiIntSequenceOfInteger*)$self->Access();
	}
};
%extend Handle_MAT2d_DataMapNodeOfDataMapOfBiIntSequenceOfInteger {
	~Handle_MAT2d_DataMapNodeOfDataMapOfBiIntSequenceOfInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_MAT2d_DataMapNodeOfDataMapOfBiIntSequenceOfInteger\n");}
	}
};

%nodefaultctor Handle_MAT2d_SequenceNodeOfSequenceOfSequenceOfCurve;
class Handle_MAT2d_SequenceNodeOfSequenceOfSequenceOfCurve : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_MAT2d_SequenceNodeOfSequenceOfSequenceOfCurve();
		%feature("autodoc", "1");
		Handle_MAT2d_SequenceNodeOfSequenceOfSequenceOfCurve(const Handle_MAT2d_SequenceNodeOfSequenceOfSequenceOfCurve &aHandle);
		%feature("autodoc", "1");
		Handle_MAT2d_SequenceNodeOfSequenceOfSequenceOfCurve(const MAT2d_SequenceNodeOfSequenceOfSequenceOfCurve *anItem);
		%feature("autodoc", "1");
		Handle_MAT2d_SequenceNodeOfSequenceOfSequenceOfCurve const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MAT2d_SequenceNodeOfSequenceOfSequenceOfCurve {
	MAT2d_SequenceNodeOfSequenceOfSequenceOfCurve* GetObject() {
	return (MAT2d_SequenceNodeOfSequenceOfSequenceOfCurve*)$self->Access();
	}
};
%extend Handle_MAT2d_SequenceNodeOfSequenceOfSequenceOfCurve {
	~Handle_MAT2d_SequenceNodeOfSequenceOfSequenceOfCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_MAT2d_SequenceNodeOfSequenceOfSequenceOfCurve\n");}
	}
};

%nodefaultctor Handle_MAT2d_SequenceNodeOfSequenceOfBoolean;
class Handle_MAT2d_SequenceNodeOfSequenceOfBoolean : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_MAT2d_SequenceNodeOfSequenceOfBoolean();
		%feature("autodoc", "1");
		Handle_MAT2d_SequenceNodeOfSequenceOfBoolean(const Handle_MAT2d_SequenceNodeOfSequenceOfBoolean &aHandle);
		%feature("autodoc", "1");
		Handle_MAT2d_SequenceNodeOfSequenceOfBoolean(const MAT2d_SequenceNodeOfSequenceOfBoolean *anItem);
		%feature("autodoc", "1");
		Handle_MAT2d_SequenceNodeOfSequenceOfBoolean const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MAT2d_SequenceNodeOfSequenceOfBoolean {
	MAT2d_SequenceNodeOfSequenceOfBoolean* GetObject() {
	return (MAT2d_SequenceNodeOfSequenceOfBoolean*)$self->Access();
	}
};
%extend Handle_MAT2d_SequenceNodeOfSequenceOfBoolean {
	~Handle_MAT2d_SequenceNodeOfSequenceOfBoolean() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_MAT2d_SequenceNodeOfSequenceOfBoolean\n");}
	}
};

%nodefaultctor MAT2d_DataMapNodeOfDataMapOfBiIntInteger;
class MAT2d_DataMapNodeOfDataMapOfBiIntInteger : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		MAT2d_DataMapNodeOfDataMapOfBiIntInteger(const MAT2d_BiInt &K, const Standard_Integer &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		MAT2d_BiInt & Key() const;
		%feature("autodoc", "1");
		Standard_Integer & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MAT2d_DataMapNodeOfDataMapOfBiIntInteger {
	Handle_MAT2d_DataMapNodeOfDataMapOfBiIntInteger GetHandle() {
	return *(Handle_MAT2d_DataMapNodeOfDataMapOfBiIntInteger*) &$self;
	}
};
%extend MAT2d_DataMapNodeOfDataMapOfBiIntInteger {
	~MAT2d_DataMapNodeOfDataMapOfBiIntInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of MAT2d_DataMapNodeOfDataMapOfBiIntInteger\n");}
	}
};

%nodefaultctor MAT2d_DataMapNodeOfDataMapOfBiIntSequenceOfInteger;
class MAT2d_DataMapNodeOfDataMapOfBiIntSequenceOfInteger : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		MAT2d_DataMapNodeOfDataMapOfBiIntSequenceOfInteger(const MAT2d_BiInt &K, const TColStd_SequenceOfInteger &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		MAT2d_BiInt & Key() const;
		%feature("autodoc", "1");
		TColStd_SequenceOfInteger & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MAT2d_DataMapNodeOfDataMapOfBiIntSequenceOfInteger {
	Handle_MAT2d_DataMapNodeOfDataMapOfBiIntSequenceOfInteger GetHandle() {
	return *(Handle_MAT2d_DataMapNodeOfDataMapOfBiIntSequenceOfInteger*) &$self;
	}
};
%extend MAT2d_DataMapNodeOfDataMapOfBiIntSequenceOfInteger {
	~MAT2d_DataMapNodeOfDataMapOfBiIntSequenceOfInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of MAT2d_DataMapNodeOfDataMapOfBiIntSequenceOfInteger\n");}
	}
};

%nodefaultctor MAT2d_DataMapIteratorOfDataMapOfIntegerVec2d;
class MAT2d_DataMapIteratorOfDataMapOfIntegerVec2d : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		MAT2d_DataMapIteratorOfDataMapOfIntegerVec2d();
		%feature("autodoc", "1");
		MAT2d_DataMapIteratorOfDataMapOfIntegerVec2d(const MAT2d_DataMapOfIntegerVec2d &aMap);
		%feature("autodoc", "1");
		void Initialize(const MAT2d_DataMapOfIntegerVec2d &aMap);
		%feature("autodoc", "1");
		const Standard_Integer & Key() const;
		%feature("autodoc", "1");
		const gp_Vec2d & Value() const;

};
%extend MAT2d_DataMapIteratorOfDataMapOfIntegerVec2d {
	~MAT2d_DataMapIteratorOfDataMapOfIntegerVec2d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of MAT2d_DataMapIteratorOfDataMapOfIntegerVec2d\n");}
	}
};

%nodefaultctor MAT2d_DataMapNodeOfDataMapOfIntegerBisec;
class MAT2d_DataMapNodeOfDataMapOfIntegerBisec : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		MAT2d_DataMapNodeOfDataMapOfIntegerBisec(const Standard_Integer &K, const Bisector_Bisec &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Standard_Integer & Key() const;
		%feature("autodoc", "1");
		Bisector_Bisec & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MAT2d_DataMapNodeOfDataMapOfIntegerBisec {
	Handle_MAT2d_DataMapNodeOfDataMapOfIntegerBisec GetHandle() {
	return *(Handle_MAT2d_DataMapNodeOfDataMapOfIntegerBisec*) &$self;
	}
};
%extend MAT2d_DataMapNodeOfDataMapOfIntegerBisec {
	~MAT2d_DataMapNodeOfDataMapOfIntegerBisec() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of MAT2d_DataMapNodeOfDataMapOfIntegerBisec\n");}
	}
};

%nodefaultctor MAT2d_BiInt;
class MAT2d_BiInt {
	public:
		%feature("autodoc", "1");
		MAT2d_BiInt(const Standard_Integer I1, const Standard_Integer I2);
		%feature("autodoc", "1");
		Standard_Integer FirstIndex() const;
		%feature("autodoc", "1");
		Standard_Integer SecondIndex() const;
		%feature("autodoc", "1");
		void FirstIndex(const Standard_Integer I1);
		%feature("autodoc", "1");
		void SecondIndex(const Standard_Integer I2);
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const MAT2d_BiInt &B) const;
		%feature("autodoc", "1");
		Standard_Boolean operator==(const MAT2d_BiInt &B) const;

};
%extend MAT2d_BiInt {
	~MAT2d_BiInt() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of MAT2d_BiInt\n");}
	}
};

%nodefaultctor MAT2d_MapBiIntHasher;
class MAT2d_MapBiIntHasher {
	public:
		%feature("autodoc", "1");
		MAT2d_MapBiIntHasher();
		%feature("autodoc", "1");
		Standard_Integer HashCode(const MAT2d_BiInt &Key1, const Standard_Integer upper);
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const MAT2d_BiInt &Key1, const MAT2d_BiInt &Key2);

};
%extend MAT2d_MapBiIntHasher {
	~MAT2d_MapBiIntHasher() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of MAT2d_MapBiIntHasher\n");}
	}
};

%nodefaultctor MAT2d_SequenceNodeOfSequenceOfConnexion;
class MAT2d_SequenceNodeOfSequenceOfConnexion : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		MAT2d_SequenceNodeOfSequenceOfConnexion(const Handle_MAT2d_Connexion &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_MAT2d_Connexion & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MAT2d_SequenceNodeOfSequenceOfConnexion {
	Handle_MAT2d_SequenceNodeOfSequenceOfConnexion GetHandle() {
	return *(Handle_MAT2d_SequenceNodeOfSequenceOfConnexion*) &$self;
	}
};
%extend MAT2d_SequenceNodeOfSequenceOfConnexion {
	~MAT2d_SequenceNodeOfSequenceOfConnexion() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of MAT2d_SequenceNodeOfSequenceOfConnexion\n");}
	}
};

%nodefaultctor MAT2d_SequenceOfSequenceOfGeometry;
class MAT2d_SequenceOfSequenceOfGeometry : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		MAT2d_SequenceOfSequenceOfGeometry();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const MAT2d_SequenceOfSequenceOfGeometry & Assign(const MAT2d_SequenceOfSequenceOfGeometry &Other);
		%feature("autodoc", "1");
		void Append(const TColGeom2d_SequenceOfGeometry &T);
		%feature("autodoc", "1");
		void Append(MAT2d_SequenceOfSequenceOfGeometry & S);
		%feature("autodoc", "1");
		void Prepend(const TColGeom2d_SequenceOfGeometry &T);
		%feature("autodoc", "1");
		void Prepend(MAT2d_SequenceOfSequenceOfGeometry & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const TColGeom2d_SequenceOfGeometry &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, MAT2d_SequenceOfSequenceOfGeometry & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const TColGeom2d_SequenceOfGeometry &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, MAT2d_SequenceOfSequenceOfGeometry & S);
		%feature("autodoc", "1");
		const TColGeom2d_SequenceOfGeometry & First() const;
		%feature("autodoc", "1");
		const TColGeom2d_SequenceOfGeometry & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, MAT2d_SequenceOfSequenceOfGeometry & S);
		%feature("autodoc", "1");
		const TColGeom2d_SequenceOfGeometry & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const TColGeom2d_SequenceOfGeometry & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const TColGeom2d_SequenceOfGeometry &I);
		%feature("autodoc", "1");
		TColGeom2d_SequenceOfGeometry & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		TColGeom2d_SequenceOfGeometry & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%extend MAT2d_SequenceOfSequenceOfGeometry {
	~MAT2d_SequenceOfSequenceOfGeometry() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of MAT2d_SequenceOfSequenceOfGeometry\n");}
	}
};

%nodefaultctor MAT2d_SequenceNodeOfSequenceOfSequenceOfGeometry;
class MAT2d_SequenceNodeOfSequenceOfSequenceOfGeometry : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		MAT2d_SequenceNodeOfSequenceOfSequenceOfGeometry(const TColGeom2d_SequenceOfGeometry &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		TColGeom2d_SequenceOfGeometry & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MAT2d_SequenceNodeOfSequenceOfSequenceOfGeometry {
	Handle_MAT2d_SequenceNodeOfSequenceOfSequenceOfGeometry GetHandle() {
	return *(Handle_MAT2d_SequenceNodeOfSequenceOfSequenceOfGeometry*) &$self;
	}
};
%extend MAT2d_SequenceNodeOfSequenceOfSequenceOfGeometry {
	~MAT2d_SequenceNodeOfSequenceOfSequenceOfGeometry() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of MAT2d_SequenceNodeOfSequenceOfSequenceOfGeometry\n");}
	}
};

%nodefaultctor MAT2d_DataMapIteratorOfDataMapOfIntegerSequenceOfConnexion;
class MAT2d_DataMapIteratorOfDataMapOfIntegerSequenceOfConnexion : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		MAT2d_DataMapIteratorOfDataMapOfIntegerSequenceOfConnexion();
		%feature("autodoc", "1");
		MAT2d_DataMapIteratorOfDataMapOfIntegerSequenceOfConnexion(const MAT2d_DataMapOfIntegerSequenceOfConnexion &aMap);
		%feature("autodoc", "1");
		void Initialize(const MAT2d_DataMapOfIntegerSequenceOfConnexion &aMap);
		%feature("autodoc", "1");
		const Standard_Integer & Key() const;
		%feature("autodoc", "1");
		const MAT2d_SequenceOfConnexion & Value() const;

};
%extend MAT2d_DataMapIteratorOfDataMapOfIntegerSequenceOfConnexion {
	~MAT2d_DataMapIteratorOfDataMapOfIntegerSequenceOfConnexion() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of MAT2d_DataMapIteratorOfDataMapOfIntegerSequenceOfConnexion\n");}
	}
};

%nodefaultctor MAT2d_Circuit;
class MAT2d_Circuit : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		MAT2d_Circuit();
		%feature("autodoc", "1");
		void Perform(MAT2d_SequenceOfSequenceOfGeometry & aFigure, const MAT2d_SequenceOfBoolean &IsClosed, const Standard_Integer IndRefLine, const Standard_Boolean Trigo);
		%feature("autodoc", "1");
		Standard_Integer NumberOfItems() const;
		%feature("autodoc", "1");
		Handle_Geom2d_Geometry Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Integer LineLength(const Standard_Integer IndexLine) const;
		%feature("autodoc", "1");
		const TColStd_SequenceOfInteger & RefToEqui(const Standard_Integer IndLine, const Standard_Integer IndCurve) const;
		%feature("autodoc", "1");
		Handle_MAT2d_Connexion Connexion(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Boolean ConnexionOn(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MAT2d_Circuit {
	Handle_MAT2d_Circuit GetHandle() {
	return *(Handle_MAT2d_Circuit*) &$self;
	}
};
%extend MAT2d_Circuit {
	~MAT2d_Circuit() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of MAT2d_Circuit\n");}
	}
};

%nodefaultctor MAT2d_DataMapOfIntegerVec2d;
class MAT2d_DataMapOfIntegerVec2d : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		MAT2d_DataMapOfIntegerVec2d(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		MAT2d_DataMapOfIntegerVec2d & Assign(const MAT2d_DataMapOfIntegerVec2d &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Standard_Integer &K, const gp_Vec2d &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Standard_Integer &K);
		%feature("autodoc", "1");
		const gp_Vec2d & Find(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		const gp_Vec2d & operator()(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		gp_Vec2d & ChangeFind(const Standard_Integer &K);
		%feature("autodoc", "1");
		gp_Vec2d & operator()(const Standard_Integer &K);

};
%extend MAT2d_DataMapOfIntegerVec2d {
	~MAT2d_DataMapOfIntegerVec2d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of MAT2d_DataMapOfIntegerVec2d\n");}
	}
};

%nodefaultctor MAT2d_Tool2d;
class MAT2d_Tool2d {
	public:
		%feature("autodoc", "1");
		MAT2d_Tool2d();
		%feature("autodoc", "1");
		void Sense(const MAT_Side aside);
		%feature("autodoc", "1");
		void InitItems(const Handle_MAT2d_Circuit &aCircuit);
		%feature("autodoc", "1");
		Standard_Integer NumberOfItems() const;
		%feature("autodoc", "1");
		Standard_Real ToleranceOfConfusion() const;
		%feature("autodoc", "1");
		Standard_Integer FirstPoint(const Standard_Integer anitem, Standard_Real &OutValue);
		%feature("autodoc", "1");
		Standard_Integer TangentBefore(const Standard_Integer anitem);
		%feature("autodoc", "1");
		Standard_Integer TangentAfter(const Standard_Integer anitem);
		%feature("autodoc", "1");
		Standard_Integer Tangent(const Standard_Integer bisector);
		%feature("autodoc", "1");
		void CreateBisector(const Handle_MAT_Bisector &abisector);
		%feature("autodoc", "1");
		Standard_Boolean TrimBisector(const Handle_MAT_Bisector &abisector);
		%feature("autodoc", "1");
		Standard_Boolean TrimBisector(const Handle_MAT_Bisector &abisector, const Standard_Integer apoint);
		%feature("autodoc", "1");
		Standard_Real IntersectBisector(const Handle_MAT_Bisector &bisectorone, const Handle_MAT_Bisector &bisectortwo, Standard_Integer &OutValue);
		%feature("autodoc", "1");
		Standard_Real Distance(const Handle_MAT_Bisector &abisector, const Standard_Real param1, const Standard_Real param2) const;
		%feature("autodoc", "1");
		void Dump(const Standard_Integer bisector, const Standard_Integer erease) const;
		%feature("autodoc", "1");
		const Bisector_Bisec & GeomBis(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_Geom2d_Geometry GeomElt(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const gp_Pnt2d & GeomPnt(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const gp_Vec2d & GeomVec(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_MAT2d_Circuit Circuit() const;
		%feature("autodoc", "1");
		void BisecFusion(const Standard_Integer Index1, const Standard_Integer Index2);
		%feature("autodoc", "1");
		Bisector_Bisec & ChangeGeomBis(const Standard_Integer Index);

};
%extend MAT2d_Tool2d {
	~MAT2d_Tool2d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of MAT2d_Tool2d\n");}
	}
};

%nodefaultctor MAT2d_SequenceNodeOfSequenceOfBoolean;
class MAT2d_SequenceNodeOfSequenceOfBoolean : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		MAT2d_SequenceNodeOfSequenceOfBoolean(const Standard_Boolean &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Standard_Boolean & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MAT2d_SequenceNodeOfSequenceOfBoolean {
	Handle_MAT2d_SequenceNodeOfSequenceOfBoolean GetHandle() {
	return *(Handle_MAT2d_SequenceNodeOfSequenceOfBoolean*) &$self;
	}
};
%extend MAT2d_SequenceNodeOfSequenceOfBoolean {
	~MAT2d_SequenceNodeOfSequenceOfBoolean() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of MAT2d_SequenceNodeOfSequenceOfBoolean\n");}
	}
};

%nodefaultctor MAT2d_SequenceOfSequenceOfCurve;
class MAT2d_SequenceOfSequenceOfCurve : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		MAT2d_SequenceOfSequenceOfCurve();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const MAT2d_SequenceOfSequenceOfCurve & Assign(const MAT2d_SequenceOfSequenceOfCurve &Other);
		%feature("autodoc", "1");
		void Append(const TColGeom2d_SequenceOfCurve &T);
		%feature("autodoc", "1");
		void Append(MAT2d_SequenceOfSequenceOfCurve & S);
		%feature("autodoc", "1");
		void Prepend(const TColGeom2d_SequenceOfCurve &T);
		%feature("autodoc", "1");
		void Prepend(MAT2d_SequenceOfSequenceOfCurve & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const TColGeom2d_SequenceOfCurve &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, MAT2d_SequenceOfSequenceOfCurve & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const TColGeom2d_SequenceOfCurve &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, MAT2d_SequenceOfSequenceOfCurve & S);
		%feature("autodoc", "1");
		const TColGeom2d_SequenceOfCurve & First() const;
		%feature("autodoc", "1");
		const TColGeom2d_SequenceOfCurve & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, MAT2d_SequenceOfSequenceOfCurve & S);
		%feature("autodoc", "1");
		const TColGeom2d_SequenceOfCurve & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const TColGeom2d_SequenceOfCurve & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const TColGeom2d_SequenceOfCurve &I);
		%feature("autodoc", "1");
		TColGeom2d_SequenceOfCurve & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		TColGeom2d_SequenceOfCurve & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%extend MAT2d_SequenceOfSequenceOfCurve {
	~MAT2d_SequenceOfSequenceOfCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of MAT2d_SequenceOfSequenceOfCurve\n");}
	}
};

%nodefaultctor MAT2d_Array2OfConnexion;
class MAT2d_Array2OfConnexion {
	public:
		%feature("autodoc", "1");
		MAT2d_Array2OfConnexion(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		MAT2d_Array2OfConnexion(const Handle_MAT2d_Connexion &Item, const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		void Init(const Handle_MAT2d_Connexion &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		const MAT2d_Array2OfConnexion & Assign(const MAT2d_Array2OfConnexion &Other);
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
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const Handle_MAT2d_Connexion &Value);
		%feature("autodoc", "1");
		const Handle_MAT2d_Connexion & Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		const Handle_MAT2d_Connexion & operator()(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		Handle_MAT2d_Connexion & ChangeValue(const Standard_Integer Row, const Standard_Integer Col);
		%feature("autodoc", "1");
		Handle_MAT2d_Connexion & operator()(const Standard_Integer Row, const Standard_Integer Col);

};
%extend MAT2d_Array2OfConnexion {
	~MAT2d_Array2OfConnexion() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of MAT2d_Array2OfConnexion\n");}
	}
};

%nodefaultctor MAT2d_DataMapNodeOfDataMapOfIntegerSequenceOfConnexion;
class MAT2d_DataMapNodeOfDataMapOfIntegerSequenceOfConnexion : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		MAT2d_DataMapNodeOfDataMapOfIntegerSequenceOfConnexion(const Standard_Integer &K, const MAT2d_SequenceOfConnexion &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Standard_Integer & Key() const;
		%feature("autodoc", "1");
		MAT2d_SequenceOfConnexion & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MAT2d_DataMapNodeOfDataMapOfIntegerSequenceOfConnexion {
	Handle_MAT2d_DataMapNodeOfDataMapOfIntegerSequenceOfConnexion GetHandle() {
	return *(Handle_MAT2d_DataMapNodeOfDataMapOfIntegerSequenceOfConnexion*) &$self;
	}
};
%extend MAT2d_DataMapNodeOfDataMapOfIntegerSequenceOfConnexion {
	~MAT2d_DataMapNodeOfDataMapOfIntegerSequenceOfConnexion() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of MAT2d_DataMapNodeOfDataMapOfIntegerSequenceOfConnexion\n");}
	}
};

%nodefaultctor MAT2d_DataMapOfIntegerPnt2d;
class MAT2d_DataMapOfIntegerPnt2d : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		MAT2d_DataMapOfIntegerPnt2d(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		MAT2d_DataMapOfIntegerPnt2d & Assign(const MAT2d_DataMapOfIntegerPnt2d &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Standard_Integer &K, const gp_Pnt2d &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Standard_Integer &K);
		%feature("autodoc", "1");
		const gp_Pnt2d & Find(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		const gp_Pnt2d & operator()(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		gp_Pnt2d & ChangeFind(const Standard_Integer &K);
		%feature("autodoc", "1");
		gp_Pnt2d & operator()(const Standard_Integer &K);

};
%extend MAT2d_DataMapOfIntegerPnt2d {
	~MAT2d_DataMapOfIntegerPnt2d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of MAT2d_DataMapOfIntegerPnt2d\n");}
	}
};

%nodefaultctor MAT2d_DataMapOfBiIntSequenceOfInteger;
class MAT2d_DataMapOfBiIntSequenceOfInteger : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		MAT2d_DataMapOfBiIntSequenceOfInteger(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		MAT2d_DataMapOfBiIntSequenceOfInteger & Assign(const MAT2d_DataMapOfBiIntSequenceOfInteger &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const MAT2d_BiInt &K, const TColStd_SequenceOfInteger &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const MAT2d_BiInt &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const MAT2d_BiInt &K);
		%feature("autodoc", "1");
		const TColStd_SequenceOfInteger & Find(const MAT2d_BiInt &K) const;
		%feature("autodoc", "1");
		const TColStd_SequenceOfInteger & operator()(const MAT2d_BiInt &K) const;
		%feature("autodoc", "1");
		TColStd_SequenceOfInteger & ChangeFind(const MAT2d_BiInt &K);
		%feature("autodoc", "1");
		TColStd_SequenceOfInteger & operator()(const MAT2d_BiInt &K);

};
%extend MAT2d_DataMapOfBiIntSequenceOfInteger {
	~MAT2d_DataMapOfBiIntSequenceOfInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of MAT2d_DataMapOfBiIntSequenceOfInteger\n");}
	}
};

%nodefaultctor MAT2d_DataMapNodeOfDataMapOfIntegerVec2d;
class MAT2d_DataMapNodeOfDataMapOfIntegerVec2d : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		MAT2d_DataMapNodeOfDataMapOfIntegerVec2d(const Standard_Integer &K, const gp_Vec2d &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Standard_Integer & Key() const;
		%feature("autodoc", "1");
		gp_Vec2d & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MAT2d_DataMapNodeOfDataMapOfIntegerVec2d {
	Handle_MAT2d_DataMapNodeOfDataMapOfIntegerVec2d GetHandle() {
	return *(Handle_MAT2d_DataMapNodeOfDataMapOfIntegerVec2d*) &$self;
	}
};
%extend MAT2d_DataMapNodeOfDataMapOfIntegerVec2d {
	~MAT2d_DataMapNodeOfDataMapOfIntegerVec2d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of MAT2d_DataMapNodeOfDataMapOfIntegerVec2d\n");}
	}
};

%nodefaultctor MAT2d_DataMapIteratorOfDataMapOfIntegerPnt2d;
class MAT2d_DataMapIteratorOfDataMapOfIntegerPnt2d : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		MAT2d_DataMapIteratorOfDataMapOfIntegerPnt2d();
		%feature("autodoc", "1");
		MAT2d_DataMapIteratorOfDataMapOfIntegerPnt2d(const MAT2d_DataMapOfIntegerPnt2d &aMap);
		%feature("autodoc", "1");
		void Initialize(const MAT2d_DataMapOfIntegerPnt2d &aMap);
		%feature("autodoc", "1");
		const Standard_Integer & Key() const;
		%feature("autodoc", "1");
		const gp_Pnt2d & Value() const;

};
%extend MAT2d_DataMapIteratorOfDataMapOfIntegerPnt2d {
	~MAT2d_DataMapIteratorOfDataMapOfIntegerPnt2d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of MAT2d_DataMapIteratorOfDataMapOfIntegerPnt2d\n");}
	}
};

%nodefaultctor MAT2d_DataMapOfBiIntInteger;
class MAT2d_DataMapOfBiIntInteger : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		MAT2d_DataMapOfBiIntInteger(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		MAT2d_DataMapOfBiIntInteger & Assign(const MAT2d_DataMapOfBiIntInteger &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const MAT2d_BiInt &K, const Standard_Integer &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const MAT2d_BiInt &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const MAT2d_BiInt &K);
		%feature("autodoc", "1");
		const Standard_Integer & Find(const MAT2d_BiInt &K) const;
		%feature("autodoc", "1");
		const Standard_Integer & operator()(const MAT2d_BiInt &K) const;
		%feature("autodoc", "1");
		Standard_Integer & ChangeFind(const MAT2d_BiInt &K);
		%feature("autodoc", "1");
		Standard_Integer & operator()(const MAT2d_BiInt &K);

};
%extend MAT2d_DataMapOfBiIntInteger {
	~MAT2d_DataMapOfBiIntInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of MAT2d_DataMapOfBiIntInteger\n");}
	}
};

%nodefaultctor MAT2d_DataMapNodeOfDataMapOfIntegerConnexion;
class MAT2d_DataMapNodeOfDataMapOfIntegerConnexion : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		MAT2d_DataMapNodeOfDataMapOfIntegerConnexion(const Standard_Integer &K, const Handle_MAT2d_Connexion &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Standard_Integer & Key() const;
		%feature("autodoc", "1");
		Handle_MAT2d_Connexion & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MAT2d_DataMapNodeOfDataMapOfIntegerConnexion {
	Handle_MAT2d_DataMapNodeOfDataMapOfIntegerConnexion GetHandle() {
	return *(Handle_MAT2d_DataMapNodeOfDataMapOfIntegerConnexion*) &$self;
	}
};
%extend MAT2d_DataMapNodeOfDataMapOfIntegerConnexion {
	~MAT2d_DataMapNodeOfDataMapOfIntegerConnexion() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of MAT2d_DataMapNodeOfDataMapOfIntegerConnexion\n");}
	}
};

%nodefaultctor MAT2d_DataMapIteratorOfDataMapOfIntegerConnexion;
class MAT2d_DataMapIteratorOfDataMapOfIntegerConnexion : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		MAT2d_DataMapIteratorOfDataMapOfIntegerConnexion();
		%feature("autodoc", "1");
		MAT2d_DataMapIteratorOfDataMapOfIntegerConnexion(const MAT2d_DataMapOfIntegerConnexion &aMap);
		%feature("autodoc", "1");
		void Initialize(const MAT2d_DataMapOfIntegerConnexion &aMap);
		%feature("autodoc", "1");
		const Standard_Integer & Key() const;
		%feature("autodoc", "1");
		const Handle_MAT2d_Connexion & Value() const;

};
%extend MAT2d_DataMapIteratorOfDataMapOfIntegerConnexion {
	~MAT2d_DataMapIteratorOfDataMapOfIntegerConnexion() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of MAT2d_DataMapIteratorOfDataMapOfIntegerConnexion\n");}
	}
};

%nodefaultctor MAT2d_Connexion;
class MAT2d_Connexion : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		MAT2d_Connexion();
		%feature("autodoc", "1");
		MAT2d_Connexion(const Standard_Integer LineA, const Standard_Integer LineB, const Standard_Integer ItemA, const Standard_Integer ItemB, const Standard_Real Distance, const Standard_Real ParameterOnA, const Standard_Real ParameterOnB, const gp_Pnt2d &PointA, const gp_Pnt2d &PointB);
		%feature("autodoc", "1");
		Standard_Integer IndexFirstLine() const;
		%feature("autodoc", "1");
		Standard_Integer IndexSecondLine() const;
		%feature("autodoc", "1");
		Standard_Integer IndexItemOnFirst() const;
		%feature("autodoc", "1");
		Standard_Integer IndexItemOnSecond() const;
		%feature("autodoc", "1");
		Standard_Real ParameterOnFirst() const;
		%feature("autodoc", "1");
		Standard_Real ParameterOnSecond() const;
		%feature("autodoc", "1");
		gp_Pnt2d PointOnFirst() const;
		%feature("autodoc", "1");
		gp_Pnt2d PointOnSecond() const;
		%feature("autodoc", "1");
		Standard_Real Distance() const;
		%feature("autodoc", "1");
		void IndexFirstLine(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void IndexSecondLine(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void IndexItemOnFirst(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void IndexItemOnSecond(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void ParameterOnFirst(const Standard_Real aParameter);
		%feature("autodoc", "1");
		void ParameterOnSecond(const Standard_Real aParameter);
		%feature("autodoc", "1");
		void PointOnFirst(const gp_Pnt2d &aPoint);
		%feature("autodoc", "1");
		void PointOnSecond(const gp_Pnt2d &aPoint);
		%feature("autodoc", "1");
		void Distance(const Standard_Real aDistance);
		%feature("autodoc", "1");
		Handle_MAT2d_Connexion Reverse() const;
		%feature("autodoc", "1");
		Standard_Boolean IsAfter(const Handle_MAT2d_Connexion &aConnexion, const Standard_Real aSense) const;
		%feature("autodoc", "1");
		void Dump(const Standard_Integer Deep=0, const Standard_Integer Offset=0) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MAT2d_Connexion {
	Handle_MAT2d_Connexion GetHandle() {
	return *(Handle_MAT2d_Connexion*) &$self;
	}
};
%extend MAT2d_Connexion {
	~MAT2d_Connexion() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of MAT2d_Connexion\n");}
	}
};

%nodefaultctor MAT2d_SequenceNodeOfSequenceOfSequenceOfCurve;
class MAT2d_SequenceNodeOfSequenceOfSequenceOfCurve : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		MAT2d_SequenceNodeOfSequenceOfSequenceOfCurve(const TColGeom2d_SequenceOfCurve &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		TColGeom2d_SequenceOfCurve & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MAT2d_SequenceNodeOfSequenceOfSequenceOfCurve {
	Handle_MAT2d_SequenceNodeOfSequenceOfSequenceOfCurve GetHandle() {
	return *(Handle_MAT2d_SequenceNodeOfSequenceOfSequenceOfCurve*) &$self;
	}
};
%extend MAT2d_SequenceNodeOfSequenceOfSequenceOfCurve {
	~MAT2d_SequenceNodeOfSequenceOfSequenceOfCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of MAT2d_SequenceNodeOfSequenceOfSequenceOfCurve\n");}
	}
};

%nodefaultctor MAT2d_DataMapOfIntegerSequenceOfConnexion;
class MAT2d_DataMapOfIntegerSequenceOfConnexion : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		MAT2d_DataMapOfIntegerSequenceOfConnexion(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		MAT2d_DataMapOfIntegerSequenceOfConnexion & Assign(const MAT2d_DataMapOfIntegerSequenceOfConnexion &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Standard_Integer &K, const MAT2d_SequenceOfConnexion &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Standard_Integer &K);
		%feature("autodoc", "1");
		const MAT2d_SequenceOfConnexion & Find(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		const MAT2d_SequenceOfConnexion & operator()(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		MAT2d_SequenceOfConnexion & ChangeFind(const Standard_Integer &K);
		%feature("autodoc", "1");
		MAT2d_SequenceOfConnexion & operator()(const Standard_Integer &K);

};
%extend MAT2d_DataMapOfIntegerSequenceOfConnexion {
	~MAT2d_DataMapOfIntegerSequenceOfConnexion() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of MAT2d_DataMapOfIntegerSequenceOfConnexion\n");}
	}
};

%nodefaultctor MAT2d_DataMapOfIntegerBisec;
class MAT2d_DataMapOfIntegerBisec : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		MAT2d_DataMapOfIntegerBisec(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		MAT2d_DataMapOfIntegerBisec & Assign(const MAT2d_DataMapOfIntegerBisec &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Standard_Integer &K, const Bisector_Bisec &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Standard_Integer &K);
		%feature("autodoc", "1");
		const Bisector_Bisec & Find(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		const Bisector_Bisec & operator()(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Bisector_Bisec & ChangeFind(const Standard_Integer &K);
		%feature("autodoc", "1");
		Bisector_Bisec & operator()(const Standard_Integer &K);

};
%extend MAT2d_DataMapOfIntegerBisec {
	~MAT2d_DataMapOfIntegerBisec() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of MAT2d_DataMapOfIntegerBisec\n");}
	}
};

%nodefaultctor MAT2d_DataMapOfIntegerConnexion;
class MAT2d_DataMapOfIntegerConnexion : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		MAT2d_DataMapOfIntegerConnexion(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		MAT2d_DataMapOfIntegerConnexion & Assign(const MAT2d_DataMapOfIntegerConnexion &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Standard_Integer &K, const Handle_MAT2d_Connexion &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Standard_Integer &K);
		%feature("autodoc", "1");
		const Handle_MAT2d_Connexion & Find(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		const Handle_MAT2d_Connexion & operator()(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Handle_MAT2d_Connexion & ChangeFind(const Standard_Integer &K);
		%feature("autodoc", "1");
		Handle_MAT2d_Connexion & operator()(const Standard_Integer &K);

};
%extend MAT2d_DataMapOfIntegerConnexion {
	~MAT2d_DataMapOfIntegerConnexion() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of MAT2d_DataMapOfIntegerConnexion\n");}
	}
};

%nodefaultctor MAT2d_DataMapIteratorOfDataMapOfBiIntInteger;
class MAT2d_DataMapIteratorOfDataMapOfBiIntInteger : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		MAT2d_DataMapIteratorOfDataMapOfBiIntInteger();
		%feature("autodoc", "1");
		MAT2d_DataMapIteratorOfDataMapOfBiIntInteger(const MAT2d_DataMapOfBiIntInteger &aMap);
		%feature("autodoc", "1");
		void Initialize(const MAT2d_DataMapOfBiIntInteger &aMap);
		%feature("autodoc", "1");
		const MAT2d_BiInt & Key() const;
		%feature("autodoc", "1");
		const Standard_Integer & Value() const;

};
%extend MAT2d_DataMapIteratorOfDataMapOfBiIntInteger {
	~MAT2d_DataMapIteratorOfDataMapOfBiIntInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of MAT2d_DataMapIteratorOfDataMapOfBiIntInteger\n");}
	}
};

%nodefaultctor MAT2d_DataMapIteratorOfDataMapOfBiIntSequenceOfInteger;
class MAT2d_DataMapIteratorOfDataMapOfBiIntSequenceOfInteger : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		MAT2d_DataMapIteratorOfDataMapOfBiIntSequenceOfInteger();
		%feature("autodoc", "1");
		MAT2d_DataMapIteratorOfDataMapOfBiIntSequenceOfInteger(const MAT2d_DataMapOfBiIntSequenceOfInteger &aMap);
		%feature("autodoc", "1");
		void Initialize(const MAT2d_DataMapOfBiIntSequenceOfInteger &aMap);
		%feature("autodoc", "1");
		const MAT2d_BiInt & Key() const;
		%feature("autodoc", "1");
		const TColStd_SequenceOfInteger & Value() const;

};
%extend MAT2d_DataMapIteratorOfDataMapOfBiIntSequenceOfInteger {
	~MAT2d_DataMapIteratorOfDataMapOfBiIntSequenceOfInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of MAT2d_DataMapIteratorOfDataMapOfBiIntSequenceOfInteger\n");}
	}
};

%nodefaultctor MAT2d_SequenceOfBoolean;
class MAT2d_SequenceOfBoolean : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		MAT2d_SequenceOfBoolean();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const MAT2d_SequenceOfBoolean & Assign(const MAT2d_SequenceOfBoolean &Other);
		%feature("autodoc", "1");
		void Append(const Standard_Boolean &T);
		%feature("autodoc", "1");
		void Append(MAT2d_SequenceOfBoolean & S);
		%feature("autodoc", "1");
		void Prepend(const Standard_Boolean &T);
		%feature("autodoc", "1");
		void Prepend(MAT2d_SequenceOfBoolean & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Standard_Boolean &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, MAT2d_SequenceOfBoolean & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Standard_Boolean &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, MAT2d_SequenceOfBoolean & S);
		%feature("autodoc", "1");
		const Standard_Boolean & First() const;
		%feature("autodoc", "1");
		const Standard_Boolean & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, MAT2d_SequenceOfBoolean & S);
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
%extend MAT2d_SequenceOfBoolean {
	~MAT2d_SequenceOfBoolean() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of MAT2d_SequenceOfBoolean\n");}
	}
};

%nodefaultctor MAT2d_DataMapIteratorOfDataMapOfIntegerBisec;
class MAT2d_DataMapIteratorOfDataMapOfIntegerBisec : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		MAT2d_DataMapIteratorOfDataMapOfIntegerBisec();
		%feature("autodoc", "1");
		MAT2d_DataMapIteratorOfDataMapOfIntegerBisec(const MAT2d_DataMapOfIntegerBisec &aMap);
		%feature("autodoc", "1");
		void Initialize(const MAT2d_DataMapOfIntegerBisec &aMap);
		%feature("autodoc", "1");
		const Standard_Integer & Key() const;
		%feature("autodoc", "1");
		const Bisector_Bisec & Value() const;

};
%extend MAT2d_DataMapIteratorOfDataMapOfIntegerBisec {
	~MAT2d_DataMapIteratorOfDataMapOfIntegerBisec() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of MAT2d_DataMapIteratorOfDataMapOfIntegerBisec\n");}
	}
};

%nodefaultctor MAT2d_MiniPath;
class MAT2d_MiniPath {
	public:
		%feature("autodoc", "1");
		MAT2d_MiniPath();
		%feature("autodoc", "1");
		void Perform(const MAT2d_SequenceOfSequenceOfGeometry &Figure, const Standard_Integer IndStart, const Standard_Boolean Sense);
		%feature("autodoc", "1");
		void RunOnConnexions();
		%feature("autodoc", "1");
		const MAT2d_SequenceOfConnexion & Path() const;
		%feature("autodoc", "1");
		Standard_Boolean IsConnexionsFrom(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		MAT2d_SequenceOfConnexion & ConnexionsFrom(const Standard_Integer Index);
		%feature("autodoc", "1");
		Standard_Boolean IsRoot(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_MAT2d_Connexion Father(const Standard_Integer Index);

};
%extend MAT2d_MiniPath {
	~MAT2d_MiniPath() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of MAT2d_MiniPath\n");}
	}
};

%nodefaultctor MAT2d_DataMapNodeOfDataMapOfIntegerPnt2d;
class MAT2d_DataMapNodeOfDataMapOfIntegerPnt2d : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		MAT2d_DataMapNodeOfDataMapOfIntegerPnt2d(const Standard_Integer &K, const gp_Pnt2d &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Standard_Integer & Key() const;
		%feature("autodoc", "1");
		gp_Pnt2d & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MAT2d_DataMapNodeOfDataMapOfIntegerPnt2d {
	Handle_MAT2d_DataMapNodeOfDataMapOfIntegerPnt2d GetHandle() {
	return *(Handle_MAT2d_DataMapNodeOfDataMapOfIntegerPnt2d*) &$self;
	}
};
%extend MAT2d_DataMapNodeOfDataMapOfIntegerPnt2d {
	~MAT2d_DataMapNodeOfDataMapOfIntegerPnt2d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of MAT2d_DataMapNodeOfDataMapOfIntegerPnt2d\n");}
	}
};

%nodefaultctor MAT2d_SequenceOfConnexion;
class MAT2d_SequenceOfConnexion : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		MAT2d_SequenceOfConnexion();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const MAT2d_SequenceOfConnexion & Assign(const MAT2d_SequenceOfConnexion &Other);
		%feature("autodoc", "1");
		void Append(const Handle_MAT2d_Connexion &T);
		%feature("autodoc", "1");
		void Append(MAT2d_SequenceOfConnexion & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_MAT2d_Connexion &T);
		%feature("autodoc", "1");
		void Prepend(MAT2d_SequenceOfConnexion & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_MAT2d_Connexion &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, MAT2d_SequenceOfConnexion & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_MAT2d_Connexion &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, MAT2d_SequenceOfConnexion & S);
		%feature("autodoc", "1");
		const Handle_MAT2d_Connexion & First() const;
		%feature("autodoc", "1");
		const Handle_MAT2d_Connexion & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, MAT2d_SequenceOfConnexion & S);
		%feature("autodoc", "1");
		const Handle_MAT2d_Connexion & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_MAT2d_Connexion & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_MAT2d_Connexion &I);
		%feature("autodoc", "1");
		Handle_MAT2d_Connexion & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_MAT2d_Connexion & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%extend MAT2d_SequenceOfConnexion {
	~MAT2d_SequenceOfConnexion() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of MAT2d_SequenceOfConnexion\n");}
	}
};

%nodefaultctor MAT2d_Mat2d;
class MAT2d_Mat2d {
	public:
		%feature("autodoc", "1");
		MAT2d_Mat2d();
		%feature("autodoc", "1");
		void CreateMat(MAT2d_Tool2d & aTool);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		void Init();
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		Handle_MAT_Bisector Bisector() const;
		%feature("autodoc", "1");
		Standard_Boolean SemiInfinite() const;
		%feature("autodoc", "1");
		Standard_Integer NumberOfBisectors() const;

};
%extend MAT2d_Mat2d {
	~MAT2d_Mat2d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of MAT2d_Mat2d\n");}
	}
};