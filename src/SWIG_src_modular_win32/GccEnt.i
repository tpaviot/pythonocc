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
%module GccEnt

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


%include GccEnt_dependencies.i


%include GccEnt_headers.i


enum GccEnt_Position {
	GccEnt_unqualified,
	GccEnt_enclosing,
	GccEnt_enclosed,
	GccEnt_outside,
	GccEnt_noqualifier,
	};



%nodefaultctor Handle_GccEnt_BadQualifier;
class Handle_GccEnt_BadQualifier : public Handle_Standard_DomainError {
	public:
		%feature("autodoc", "1");
		Handle_GccEnt_BadQualifier();
		%feature("autodoc", "1");
		Handle_GccEnt_BadQualifier(const Handle_GccEnt_BadQualifier &aHandle);
		%feature("autodoc", "1");
		Handle_GccEnt_BadQualifier(const GccEnt_BadQualifier *anItem);
		%feature("autodoc", "1");
		Handle_GccEnt_BadQualifier const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GccEnt_BadQualifier {
	GccEnt_BadQualifier* GetObject() {
	return (GccEnt_BadQualifier*)$self->Access();
	}
};
%extend Handle_GccEnt_BadQualifier {
	~Handle_GccEnt_BadQualifier() {
	printf("Call custom destructor for instance of Handle_GccEnt_BadQualifier\n");
	}
};

%nodefaultctor GccEnt;
class GccEnt {
	public:
		%feature("autodoc", "1");
		~GccEnt();
		%feature("autodoc", "1");
		GccEnt();
		%feature("autodoc", "1");
		GccEnt_QualifiedLin Unqualified(const gp_Lin2d &Obj);
		%feature("autodoc", "1");
		GccEnt_QualifiedCirc Unqualified(const gp_Circ2d &Obj);
		%feature("autodoc", "1");
		GccEnt_QualifiedCirc Enclosing(const gp_Circ2d &Obj);
		%feature("autodoc", "1");
		GccEnt_QualifiedLin Enclosed(const gp_Lin2d &Obj);
		%feature("autodoc", "1");
		GccEnt_QualifiedCirc Enclosed(const gp_Circ2d &Obj);
		%feature("autodoc", "1");
		GccEnt_QualifiedLin Outside(const gp_Lin2d &Obj);
		%feature("autodoc", "1");
		GccEnt_QualifiedCirc Outside(const gp_Circ2d &Obj);

};

%nodefaultctor GccEnt_QualifiedLin;
class GccEnt_QualifiedLin {
	public:
		%feature("autodoc", "1");
		~GccEnt_QualifiedLin();
		%feature("autodoc", "1");
		GccEnt_QualifiedLin(const gp_Lin2d &Qualified, const GccEnt_Position Qualifier);
		%feature("autodoc", "1");
		gp_Lin2d Qualified() const;
		%feature("autodoc", "1");
		GccEnt_Position Qualifier() const;
		%feature("autodoc", "1");
		Standard_Boolean IsUnqualified() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEnclosed() const;
		%feature("autodoc", "1");
		Standard_Boolean IsOutside() const;
		%feature("autodoc", "1");
		GccEnt_QualifiedLin();
		%feature("autodoc", "1");
		GccEnt_Position _CSFDB_GetGccEnt_QualifiedLinTheQualifier() const;
		%feature("autodoc", "1");
		void _CSFDB_SetGccEnt_QualifiedLinTheQualifier(const GccEnt_Position p);
		%feature("autodoc", "1");
		const gp_Lin2d & _CSFDB_GetGccEnt_QualifiedLinTheQualified() const;

};

%nodefaultctor GccEnt_Array1OfPosition;
class GccEnt_Array1OfPosition {
	public:
		%feature("autodoc", "1");
		GccEnt_Array1OfPosition(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		GccEnt_Array1OfPosition(const GccEnt_Position &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const GccEnt_Position &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		~GccEnt_Array1OfPosition();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const GccEnt_Array1OfPosition & Assign(const GccEnt_Array1OfPosition &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const GccEnt_Position &Value);
		%feature("autodoc", "1");
		const GccEnt_Position & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const GccEnt_Position & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		GccEnt_Position & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		GccEnt_Position & operator()(const Standard_Integer Index);

};

%nodefaultctor GccEnt_BadQualifier;
class GccEnt_BadQualifier : public Standard_DomainError {
	public:
		%feature("autodoc", "1");
		GccEnt_BadQualifier();
		%feature("autodoc", "1");
		GccEnt_BadQualifier(const char * AString);
		%feature("autodoc", "1");
		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		Handle_GccEnt_BadQualifier NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GccEnt_BadQualifier {
	Handle_GccEnt_BadQualifier GetHandle() {
	return *(Handle_GccEnt_BadQualifier*) &$self;
	}
};
%extend GccEnt_BadQualifier {
	~GccEnt_BadQualifier() {
	printf("Call custom destructor for instance of GccEnt_BadQualifier\n");
	}
};

%nodefaultctor GccEnt_QualifiedCirc;
class GccEnt_QualifiedCirc {
	public:
		%feature("autodoc", "1");
		~GccEnt_QualifiedCirc();
		%feature("autodoc", "1");
		GccEnt_QualifiedCirc(const gp_Circ2d &Qualified, const GccEnt_Position Qualifier);
		%feature("autodoc", "1");
		gp_Circ2d Qualified() const;
		%feature("autodoc", "1");
		GccEnt_Position Qualifier() const;
		%feature("autodoc", "1");
		Standard_Boolean IsUnqualified() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEnclosing() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEnclosed() const;
		%feature("autodoc", "1");
		Standard_Boolean IsOutside() const;
		%feature("autodoc", "1");
		GccEnt_QualifiedCirc();
		%feature("autodoc", "1");
		const gp_Circ2d & _CSFDB_GetGccEnt_QualifiedCircTheQualified() const;
		%feature("autodoc", "1");
		GccEnt_Position _CSFDB_GetGccEnt_QualifiedCircTheQualifier() const;
		%feature("autodoc", "1");
		void _CSFDB_SetGccEnt_QualifiedCircTheQualifier(const GccEnt_Position p);

};