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
%module Hatch

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


%include Hatch_dependencies.i


%include Hatch_headers.i


enum Hatch_LineForm {
	Hatch_XLINE,
	Hatch_YLINE,
	Hatch_ANYLINE,
	};



%nodefaultctor Handle_Hatch_SequenceNodeOfSequenceOfLine;
class Handle_Hatch_SequenceNodeOfSequenceOfLine : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_Hatch_SequenceNodeOfSequenceOfLine();
		%feature("autodoc", "1");
		Handle_Hatch_SequenceNodeOfSequenceOfLine(const Handle_Hatch_SequenceNodeOfSequenceOfLine &aHandle);
		%feature("autodoc", "1");
		Handle_Hatch_SequenceNodeOfSequenceOfLine(const Hatch_SequenceNodeOfSequenceOfLine *anItem);
		%feature("autodoc", "1");
		Handle_Hatch_SequenceNodeOfSequenceOfLine const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Hatch_SequenceNodeOfSequenceOfLine {
	Hatch_SequenceNodeOfSequenceOfLine* GetObject() {
	return (Hatch_SequenceNodeOfSequenceOfLine*)$self->Access();
	}
};
%extend Handle_Hatch_SequenceNodeOfSequenceOfLine {
	~Handle_Hatch_SequenceNodeOfSequenceOfLine() {
	printf("Call custom destructor for instance of Handle_Hatch_SequenceNodeOfSequenceOfLine\n");
	}
};

%nodefaultctor Handle_Hatch_SequenceNodeOfSequenceOfParameter;
class Handle_Hatch_SequenceNodeOfSequenceOfParameter : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_Hatch_SequenceNodeOfSequenceOfParameter();
		%feature("autodoc", "1");
		Handle_Hatch_SequenceNodeOfSequenceOfParameter(const Handle_Hatch_SequenceNodeOfSequenceOfParameter &aHandle);
		%feature("autodoc", "1");
		Handle_Hatch_SequenceNodeOfSequenceOfParameter(const Hatch_SequenceNodeOfSequenceOfParameter *anItem);
		%feature("autodoc", "1");
		Handle_Hatch_SequenceNodeOfSequenceOfParameter const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Hatch_SequenceNodeOfSequenceOfParameter {
	Hatch_SequenceNodeOfSequenceOfParameter* GetObject() {
	return (Hatch_SequenceNodeOfSequenceOfParameter*)$self->Access();
	}
};
%extend Handle_Hatch_SequenceNodeOfSequenceOfParameter {
	~Handle_Hatch_SequenceNodeOfSequenceOfParameter() {
	printf("Call custom destructor for instance of Handle_Hatch_SequenceNodeOfSequenceOfParameter\n");
	}
};

%nodefaultctor Hatch_SequenceOfParameter;
class Hatch_SequenceOfParameter : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		Hatch_SequenceOfParameter();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~Hatch_SequenceOfParameter();
		%feature("autodoc", "1");
		const Hatch_SequenceOfParameter & Assign(const Hatch_SequenceOfParameter &Other);
		%feature("autodoc", "1");
		void Append(const Hatch_Parameter &T);
		%feature("autodoc", "1");
		void Append(Hatch_SequenceOfParameter & S);
		%feature("autodoc", "1");
		void Prepend(const Hatch_Parameter &T);
		%feature("autodoc", "1");
		void Prepend(Hatch_SequenceOfParameter & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Hatch_Parameter &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, Hatch_SequenceOfParameter & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Hatch_Parameter &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, Hatch_SequenceOfParameter & S);
		%feature("autodoc", "1");
		const Hatch_Parameter & First() const;
		%feature("autodoc", "1");
		const Hatch_Parameter & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, Hatch_SequenceOfParameter & S);
		%feature("autodoc", "1");
		const Hatch_Parameter & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Hatch_Parameter & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Hatch_Parameter &I);
		%feature("autodoc", "1");
		Hatch_Parameter & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Hatch_Parameter & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};

%nodefaultctor Hatch_SequenceNodeOfSequenceOfLine;
class Hatch_SequenceNodeOfSequenceOfLine : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Hatch_SequenceNodeOfSequenceOfLine(const Hatch_Line &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Hatch_Line & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Hatch_SequenceNodeOfSequenceOfLine {
	Handle_Hatch_SequenceNodeOfSequenceOfLine GetHandle() {
	return *(Handle_Hatch_SequenceNodeOfSequenceOfLine*) &$self;
	}
};
%extend Hatch_SequenceNodeOfSequenceOfLine {
	~Hatch_SequenceNodeOfSequenceOfLine() {
	printf("Call custom destructor for instance of Hatch_SequenceNodeOfSequenceOfLine\n");
	}
};

%nodefaultctor Hatch_Hatcher;
class Hatch_Hatcher {
	public:
		%feature("autodoc", "1");
		~Hatch_Hatcher();
		%feature("autodoc", "1");
		Hatch_Hatcher(const Standard_Real Tol, const Standard_Boolean Oriented=1);
		%feature("autodoc", "1");
		void Tolerance(const Standard_Real Tol);
		%feature("autodoc", "1");
		Standard_Real Tolerance() const;
		%feature("autodoc", "1");
		void AddLine(const gp_Lin2d &L, const Hatch_LineForm T=Hatch_ANYLINE);
		%feature("autodoc", "1");
		void AddLine(const gp_Dir2d &D, const Standard_Real Dist);
		%feature("autodoc", "1");
		void AddXLine(const Standard_Real X);
		%feature("autodoc", "1");
		void AddYLine(const Standard_Real Y);
		%feature("autodoc", "1");
		void Trim(const gp_Lin2d &L, const Standard_Integer Index=0);
		%feature("autodoc", "1");
		void Trim(const gp_Lin2d &L, const Standard_Real Start, const Standard_Real End, const Standard_Integer Index=0);
		%feature("autodoc", "1");
		void Trim(const gp_Pnt2d &P1, const gp_Pnt2d &P2, const Standard_Integer Index=0);
		%feature("autodoc", "1");
		Standard_Integer NbIntervals() const;
		%feature("autodoc", "1");
		Standard_Integer NbLines() const;
		%feature("autodoc", "1");
		const gp_Lin2d & Line(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Hatch_LineForm LineForm(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Standard_Boolean IsXLine(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Standard_Boolean IsYLine(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Standard_Real Coordinate(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Standard_Integer NbIntervals(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Standard_Real Start(const Standard_Integer I, const Standard_Integer J) const;
		%feature("autodoc", "1");
		void StartIndex(const Standard_Integer I, const Standard_Integer J, Standard_Integer & Index, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Real End(const Standard_Integer I, const Standard_Integer J) const;
		%feature("autodoc", "1");
		void EndIndex(const Standard_Integer I, const Standard_Integer J, Standard_Integer & Index, Standard_Real &OutValue) const;

};

%nodefaultctor Hatch_Line;
class Hatch_Line {
	public:
		%feature("autodoc", "1");
		~Hatch_Line();
		%feature("autodoc", "1");
		Hatch_Line();
		%feature("autodoc", "1");
		Hatch_Line(const gp_Lin2d &L, const Hatch_LineForm T);
		%feature("autodoc", "1");
		void AddIntersection(const Standard_Real Par1, const Standard_Boolean Start, const Standard_Integer Index, const Standard_Real Par2, const Standard_Real theToler);

};

%nodefaultctor Hatch_SequenceOfLine;
class Hatch_SequenceOfLine : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		Hatch_SequenceOfLine();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~Hatch_SequenceOfLine();
		%feature("autodoc", "1");
		const Hatch_SequenceOfLine & Assign(const Hatch_SequenceOfLine &Other);
		%feature("autodoc", "1");
		void Append(const Hatch_Line &T);
		%feature("autodoc", "1");
		void Append(Hatch_SequenceOfLine & S);
		%feature("autodoc", "1");
		void Prepend(const Hatch_Line &T);
		%feature("autodoc", "1");
		void Prepend(Hatch_SequenceOfLine & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Hatch_Line &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, Hatch_SequenceOfLine & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Hatch_Line &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, Hatch_SequenceOfLine & S);
		%feature("autodoc", "1");
		const Hatch_Line & First() const;
		%feature("autodoc", "1");
		const Hatch_Line & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, Hatch_SequenceOfLine & S);
		%feature("autodoc", "1");
		const Hatch_Line & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Hatch_Line & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Hatch_Line &I);
		%feature("autodoc", "1");
		Hatch_Line & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Hatch_Line & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};

%nodefaultctor Hatch_Parameter;
class Hatch_Parameter {
	public:
		%feature("autodoc", "1");
		~Hatch_Parameter();
		%feature("autodoc", "1");
		Hatch_Parameter();
		%feature("autodoc", "1");
		Hatch_Parameter(const Standard_Real Par1, const Standard_Boolean Start, const Standard_Integer Index=0, const Standard_Real Par2=0);

};

%nodefaultctor Hatch_SequenceNodeOfSequenceOfParameter;
class Hatch_SequenceNodeOfSequenceOfParameter : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Hatch_SequenceNodeOfSequenceOfParameter(const Hatch_Parameter &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Hatch_Parameter & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Hatch_SequenceNodeOfSequenceOfParameter {
	Handle_Hatch_SequenceNodeOfSequenceOfParameter GetHandle() {
	return *(Handle_Hatch_SequenceNodeOfSequenceOfParameter*) &$self;
	}
};
%extend Hatch_SequenceNodeOfSequenceOfParameter {
	~Hatch_SequenceNodeOfSequenceOfParameter() {
	printf("Call custom destructor for instance of Hatch_SequenceNodeOfSequenceOfParameter\n");
	}
};