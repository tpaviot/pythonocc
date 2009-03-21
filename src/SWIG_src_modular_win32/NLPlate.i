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
%module NLPlate

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


%include NLPlate_dependencies.i


%include NLPlate_headers.i




%nodefaultctor Handle_NLPlate_HGPPConstraint;
class Handle_NLPlate_HGPPConstraint : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_NLPlate_HGPPConstraint();
		%feature("autodoc", "1");
		Handle_NLPlate_HGPPConstraint(const Handle_NLPlate_HGPPConstraint &aHandle);
		%feature("autodoc", "1");
		Handle_NLPlate_HGPPConstraint(const NLPlate_HGPPConstraint *anItem);
		%feature("autodoc", "1");
		Handle_NLPlate_HGPPConstraint const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_NLPlate_HGPPConstraint {
	NLPlate_HGPPConstraint* GetObject() {
	return (NLPlate_HGPPConstraint*)$self->Access();
	}
};
%extend Handle_NLPlate_HGPPConstraint {
	~Handle_NLPlate_HGPPConstraint() {
	printf("Call custom destructor for instance of Handle_NLPlate_HGPPConstraint\n");
	}
};

%nodefaultctor Handle_NLPlate_HPG0Constraint;
class Handle_NLPlate_HPG0Constraint : public Handle_NLPlate_HGPPConstraint {
	public:
		%feature("autodoc", "1");
		Handle_NLPlate_HPG0Constraint();
		%feature("autodoc", "1");
		Handle_NLPlate_HPG0Constraint(const Handle_NLPlate_HPG0Constraint &aHandle);
		%feature("autodoc", "1");
		Handle_NLPlate_HPG0Constraint(const NLPlate_HPG0Constraint *anItem);
		%feature("autodoc", "1");
		Handle_NLPlate_HPG0Constraint const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_NLPlate_HPG0Constraint {
	NLPlate_HPG0Constraint* GetObject() {
	return (NLPlate_HPG0Constraint*)$self->Access();
	}
};
%extend Handle_NLPlate_HPG0Constraint {
	~Handle_NLPlate_HPG0Constraint() {
	printf("Call custom destructor for instance of Handle_NLPlate_HPG0Constraint\n");
	}
};

%nodefaultctor Handle_NLPlate_HPG0G1Constraint;
class Handle_NLPlate_HPG0G1Constraint : public Handle_NLPlate_HPG0Constraint {
	public:
		%feature("autodoc", "1");
		Handle_NLPlate_HPG0G1Constraint();
		%feature("autodoc", "1");
		Handle_NLPlate_HPG0G1Constraint(const Handle_NLPlate_HPG0G1Constraint &aHandle);
		%feature("autodoc", "1");
		Handle_NLPlate_HPG0G1Constraint(const NLPlate_HPG0G1Constraint *anItem);
		%feature("autodoc", "1");
		Handle_NLPlate_HPG0G1Constraint const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_NLPlate_HPG0G1Constraint {
	NLPlate_HPG0G1Constraint* GetObject() {
	return (NLPlate_HPG0G1Constraint*)$self->Access();
	}
};
%extend Handle_NLPlate_HPG0G1Constraint {
	~Handle_NLPlate_HPG0G1Constraint() {
	printf("Call custom destructor for instance of Handle_NLPlate_HPG0G1Constraint\n");
	}
};

%nodefaultctor Handle_NLPlate_SequenceNodeOfSequenceOfHGPPConstraint;
class Handle_NLPlate_SequenceNodeOfSequenceOfHGPPConstraint : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_NLPlate_SequenceNodeOfSequenceOfHGPPConstraint();
		%feature("autodoc", "1");
		Handle_NLPlate_SequenceNodeOfSequenceOfHGPPConstraint(const Handle_NLPlate_SequenceNodeOfSequenceOfHGPPConstraint &aHandle);
		%feature("autodoc", "1");
		Handle_NLPlate_SequenceNodeOfSequenceOfHGPPConstraint(const NLPlate_SequenceNodeOfSequenceOfHGPPConstraint *anItem);
		%feature("autodoc", "1");
		Handle_NLPlate_SequenceNodeOfSequenceOfHGPPConstraint const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_NLPlate_SequenceNodeOfSequenceOfHGPPConstraint {
	NLPlate_SequenceNodeOfSequenceOfHGPPConstraint* GetObject() {
	return (NLPlate_SequenceNodeOfSequenceOfHGPPConstraint*)$self->Access();
	}
};
%extend Handle_NLPlate_SequenceNodeOfSequenceOfHGPPConstraint {
	~Handle_NLPlate_SequenceNodeOfSequenceOfHGPPConstraint() {
	printf("Call custom destructor for instance of Handle_NLPlate_SequenceNodeOfSequenceOfHGPPConstraint\n");
	}
};

%nodefaultctor Handle_NLPlate_HPG1Constraint;
class Handle_NLPlate_HPG1Constraint : public Handle_NLPlate_HGPPConstraint {
	public:
		%feature("autodoc", "1");
		Handle_NLPlate_HPG1Constraint();
		%feature("autodoc", "1");
		Handle_NLPlate_HPG1Constraint(const Handle_NLPlate_HPG1Constraint &aHandle);
		%feature("autodoc", "1");
		Handle_NLPlate_HPG1Constraint(const NLPlate_HPG1Constraint *anItem);
		%feature("autodoc", "1");
		Handle_NLPlate_HPG1Constraint const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_NLPlate_HPG1Constraint {
	NLPlate_HPG1Constraint* GetObject() {
	return (NLPlate_HPG1Constraint*)$self->Access();
	}
};
%extend Handle_NLPlate_HPG1Constraint {
	~Handle_NLPlate_HPG1Constraint() {
	printf("Call custom destructor for instance of Handle_NLPlate_HPG1Constraint\n");
	}
};

%nodefaultctor Handle_NLPlate_HPG2Constraint;
class Handle_NLPlate_HPG2Constraint : public Handle_NLPlate_HPG1Constraint {
	public:
		%feature("autodoc", "1");
		Handle_NLPlate_HPG2Constraint();
		%feature("autodoc", "1");
		Handle_NLPlate_HPG2Constraint(const Handle_NLPlate_HPG2Constraint &aHandle);
		%feature("autodoc", "1");
		Handle_NLPlate_HPG2Constraint(const NLPlate_HPG2Constraint *anItem);
		%feature("autodoc", "1");
		Handle_NLPlate_HPG2Constraint const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_NLPlate_HPG2Constraint {
	NLPlate_HPG2Constraint* GetObject() {
	return (NLPlate_HPG2Constraint*)$self->Access();
	}
};
%extend Handle_NLPlate_HPG2Constraint {
	~Handle_NLPlate_HPG2Constraint() {
	printf("Call custom destructor for instance of Handle_NLPlate_HPG2Constraint\n");
	}
};

%nodefaultctor Handle_NLPlate_HPG3Constraint;
class Handle_NLPlate_HPG3Constraint : public Handle_NLPlate_HPG2Constraint {
	public:
		%feature("autodoc", "1");
		Handle_NLPlate_HPG3Constraint();
		%feature("autodoc", "1");
		Handle_NLPlate_HPG3Constraint(const Handle_NLPlate_HPG3Constraint &aHandle);
		%feature("autodoc", "1");
		Handle_NLPlate_HPG3Constraint(const NLPlate_HPG3Constraint *anItem);
		%feature("autodoc", "1");
		Handle_NLPlate_HPG3Constraint const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_NLPlate_HPG3Constraint {
	NLPlate_HPG3Constraint* GetObject() {
	return (NLPlate_HPG3Constraint*)$self->Access();
	}
};
%extend Handle_NLPlate_HPG3Constraint {
	~Handle_NLPlate_HPG3Constraint() {
	printf("Call custom destructor for instance of Handle_NLPlate_HPG3Constraint\n");
	}
};

%nodefaultctor Handle_NLPlate_StackNodeOfStackOfPlate;
class Handle_NLPlate_StackNodeOfStackOfPlate : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_NLPlate_StackNodeOfStackOfPlate();
		%feature("autodoc", "1");
		Handle_NLPlate_StackNodeOfStackOfPlate(const Handle_NLPlate_StackNodeOfStackOfPlate &aHandle);
		%feature("autodoc", "1");
		Handle_NLPlate_StackNodeOfStackOfPlate(const NLPlate_StackNodeOfStackOfPlate *anItem);
		%feature("autodoc", "1");
		Handle_NLPlate_StackNodeOfStackOfPlate const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_NLPlate_StackNodeOfStackOfPlate {
	NLPlate_StackNodeOfStackOfPlate* GetObject() {
	return (NLPlate_StackNodeOfStackOfPlate*)$self->Access();
	}
};
%extend Handle_NLPlate_StackNodeOfStackOfPlate {
	~Handle_NLPlate_StackNodeOfStackOfPlate() {
	printf("Call custom destructor for instance of Handle_NLPlate_StackNodeOfStackOfPlate\n");
	}
};

%nodefaultctor Handle_NLPlate_HPG0G2Constraint;
class Handle_NLPlate_HPG0G2Constraint : public Handle_NLPlate_HPG0G1Constraint {
	public:
		%feature("autodoc", "1");
		Handle_NLPlate_HPG0G2Constraint();
		%feature("autodoc", "1");
		Handle_NLPlate_HPG0G2Constraint(const Handle_NLPlate_HPG0G2Constraint &aHandle);
		%feature("autodoc", "1");
		Handle_NLPlate_HPG0G2Constraint(const NLPlate_HPG0G2Constraint *anItem);
		%feature("autodoc", "1");
		Handle_NLPlate_HPG0G2Constraint const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_NLPlate_HPG0G2Constraint {
	NLPlate_HPG0G2Constraint* GetObject() {
	return (NLPlate_HPG0G2Constraint*)$self->Access();
	}
};
%extend Handle_NLPlate_HPG0G2Constraint {
	~Handle_NLPlate_HPG0G2Constraint() {
	printf("Call custom destructor for instance of Handle_NLPlate_HPG0G2Constraint\n");
	}
};

%nodefaultctor Handle_NLPlate_HPG0G3Constraint;
class Handle_NLPlate_HPG0G3Constraint : public Handle_NLPlate_HPG0G2Constraint {
	public:
		%feature("autodoc", "1");
		Handle_NLPlate_HPG0G3Constraint();
		%feature("autodoc", "1");
		Handle_NLPlate_HPG0G3Constraint(const Handle_NLPlate_HPG0G3Constraint &aHandle);
		%feature("autodoc", "1");
		Handle_NLPlate_HPG0G3Constraint(const NLPlate_HPG0G3Constraint *anItem);
		%feature("autodoc", "1");
		Handle_NLPlate_HPG0G3Constraint const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_NLPlate_HPG0G3Constraint {
	NLPlate_HPG0G3Constraint* GetObject() {
	return (NLPlate_HPG0G3Constraint*)$self->Access();
	}
};
%extend Handle_NLPlate_HPG0G3Constraint {
	~Handle_NLPlate_HPG0G3Constraint() {
	printf("Call custom destructor for instance of Handle_NLPlate_HPG0G3Constraint\n");
	}
};

%nodefaultctor NLPlate_StackIteratorOfStackOfPlate;
class NLPlate_StackIteratorOfStackOfPlate {
	public:
		%feature("autodoc", "1");
		NLPlate_StackIteratorOfStackOfPlate();
		%feature("autodoc", "1");
		NLPlate_StackIteratorOfStackOfPlate(const NLPlate_StackOfPlate &S);
		%feature("autodoc", "1");
		void Initialize(const NLPlate_StackOfPlate &S);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		const Plate_Plate & Value() const;

};
%extend NLPlate_StackIteratorOfStackOfPlate {
	~NLPlate_StackIteratorOfStackOfPlate() {
	printf("Call custom destructor for instance of NLPlate_StackIteratorOfStackOfPlate\n");
	}
};

%nodefaultctor NLPlate_SequenceOfHGPPConstraint;
class NLPlate_SequenceOfHGPPConstraint : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		NLPlate_SequenceOfHGPPConstraint();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const NLPlate_SequenceOfHGPPConstraint & Assign(const NLPlate_SequenceOfHGPPConstraint &Other);
		%feature("autodoc", "1");
		void Append(const Handle_NLPlate_HGPPConstraint &T);
		%feature("autodoc", "1");
		void Append(NLPlate_SequenceOfHGPPConstraint & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_NLPlate_HGPPConstraint &T);
		%feature("autodoc", "1");
		void Prepend(NLPlate_SequenceOfHGPPConstraint & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_NLPlate_HGPPConstraint &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, NLPlate_SequenceOfHGPPConstraint & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_NLPlate_HGPPConstraint &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, NLPlate_SequenceOfHGPPConstraint & S);
		%feature("autodoc", "1");
		const Handle_NLPlate_HGPPConstraint & First() const;
		%feature("autodoc", "1");
		const Handle_NLPlate_HGPPConstraint & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, NLPlate_SequenceOfHGPPConstraint & S);
		%feature("autodoc", "1");
		const Handle_NLPlate_HGPPConstraint & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_NLPlate_HGPPConstraint & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_NLPlate_HGPPConstraint &I);
		%feature("autodoc", "1");
		Handle_NLPlate_HGPPConstraint & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_NLPlate_HGPPConstraint & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%extend NLPlate_SequenceOfHGPPConstraint {
	~NLPlate_SequenceOfHGPPConstraint() {
	printf("Call custom destructor for instance of NLPlate_SequenceOfHGPPConstraint\n");
	}
};

%nodefaultctor NLPlate_HGPPConstraint;
class NLPlate_HGPPConstraint : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		virtual		void SetUVFreeSliding(const Standard_Boolean UVFree);
		%feature("autodoc", "1");
		virtual		void SetIncrementalLoadAllowed(const Standard_Boolean ILA);
		%feature("autodoc", "1");
		virtual		void SetActiveOrder(const Standard_Integer ActiveOrder);
		%feature("autodoc", "1");
		virtual		void SetUV(const gp_XY &UV);
		%feature("autodoc", "1");
		virtual		void SetOrientation(const Standard_Integer Orient=0);
		%feature("autodoc", "1");
		virtual		void SetG0Criterion(const Standard_Real TolDist);
		%feature("autodoc", "1");
		virtual		void SetG1Criterion(const Standard_Real TolAng);
		%feature("autodoc", "1");
		virtual		void SetG2Criterion(const Standard_Real TolCurv);
		%feature("autodoc", "1");
		virtual		void SetG3Criterion(const Standard_Real TolG3);
		%feature("autodoc", "1");
		virtual		Standard_Boolean UVFreeSliding() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IncrementalLoadAllowed() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer ActiveOrder() const;
		%feature("autodoc", "1");
		virtual		const gp_XY & UV() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer Orientation();
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsG0() const;
		%feature("autodoc", "1");
		virtual		const gp_XYZ & G0Target() const;
		%feature("autodoc", "1");
		virtual		const Plate_D1 & G1Target() const;
		%feature("autodoc", "1");
		virtual		const Plate_D2 & G2Target() const;
		%feature("autodoc", "1");
		virtual		const Plate_D3 & G3Target() const;
		%feature("autodoc", "1");
		virtual		Standard_Real G0Criterion() const;
		%feature("autodoc", "1");
		virtual		Standard_Real G1Criterion() const;
		%feature("autodoc", "1");
		virtual		Standard_Real G2Criterion() const;
		%feature("autodoc", "1");
		virtual		Standard_Real G3Criterion() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend NLPlate_HGPPConstraint {
	Handle_NLPlate_HGPPConstraint GetHandle() {
	return *(Handle_NLPlate_HGPPConstraint*) &$self;
	}
};
%extend NLPlate_HGPPConstraint {
	~NLPlate_HGPPConstraint() {
	printf("Call custom destructor for instance of NLPlate_HGPPConstraint\n");
	}
};

%nodefaultctor NLPlate_HPG0Constraint;
class NLPlate_HPG0Constraint : public NLPlate_HGPPConstraint {
	public:
		%feature("autodoc", "1");
		NLPlate_HPG0Constraint(const gp_XY &UV, const gp_XYZ &Value);

};
%extend NLPlate_HPG0Constraint {
	Handle_NLPlate_HPG0Constraint GetHandle() {
	return *(Handle_NLPlate_HPG0Constraint*) &$self;
	}
};
%extend NLPlate_HPG0Constraint {
	~NLPlate_HPG0Constraint() {
	printf("Call custom destructor for instance of NLPlate_HPG0Constraint\n");
	}
};

%nodefaultctor NLPlate_HPG0G1Constraint;
class NLPlate_HPG0G1Constraint : public NLPlate_HPG0Constraint {
	public:
		%feature("autodoc", "1");
		NLPlate_HPG0G1Constraint(const gp_XY &UV, const gp_XYZ &Value, const Plate_D1 &D1T);

};
%extend NLPlate_HPG0G1Constraint {
	Handle_NLPlate_HPG0G1Constraint GetHandle() {
	return *(Handle_NLPlate_HPG0G1Constraint*) &$self;
	}
};
%extend NLPlate_HPG0G1Constraint {
	~NLPlate_HPG0G1Constraint() {
	printf("Call custom destructor for instance of NLPlate_HPG0G1Constraint\n");
	}
};

%nodefaultctor NLPlate_HPG0G2Constraint;
class NLPlate_HPG0G2Constraint : public NLPlate_HPG0G1Constraint {
	public:
		%feature("autodoc", "1");
		NLPlate_HPG0G2Constraint(const gp_XY &UV, const gp_XYZ &Value, const Plate_D1 &D1T, const Plate_D2 &D2T);

};
%extend NLPlate_HPG0G2Constraint {
	Handle_NLPlate_HPG0G2Constraint GetHandle() {
	return *(Handle_NLPlate_HPG0G2Constraint*) &$self;
	}
};
%extend NLPlate_HPG0G2Constraint {
	~NLPlate_HPG0G2Constraint() {
	printf("Call custom destructor for instance of NLPlate_HPG0G2Constraint\n");
	}
};

%nodefaultctor NLPlate_HPG1Constraint;
class NLPlate_HPG1Constraint : public NLPlate_HGPPConstraint {
	public:
		%feature("autodoc", "1");
		NLPlate_HPG1Constraint(const gp_XY &UV, const Plate_D1 &D1T);
		%feature("autodoc", "1");
		virtual		void SetIncrementalLoadAllowed(const Standard_Boolean ILA);
		%feature("autodoc", "1");
		virtual		void SetOrientation(const Standard_Integer Orient=0);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IncrementalLoadAllowed() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer ActiveOrder() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsG0() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer Orientation();
		%feature("autodoc", "1");
		virtual		const Plate_D1 & G1Target() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend NLPlate_HPG1Constraint {
	Handle_NLPlate_HPG1Constraint GetHandle() {
	return *(Handle_NLPlate_HPG1Constraint*) &$self;
	}
};
%extend NLPlate_HPG1Constraint {
	~NLPlate_HPG1Constraint() {
	printf("Call custom destructor for instance of NLPlate_HPG1Constraint\n");
	}
};

%nodefaultctor NLPlate_HPG2Constraint;
class NLPlate_HPG2Constraint : public NLPlate_HPG1Constraint {
	public:
		%feature("autodoc", "1");
		NLPlate_HPG2Constraint(const gp_XY &UV, const Plate_D1 &D1T, const Plate_D2 &D2T);
		%feature("autodoc", "1");
		virtual		const Plate_D2 & G2Target() const;

};
%extend NLPlate_HPG2Constraint {
	Handle_NLPlate_HPG2Constraint GetHandle() {
	return *(Handle_NLPlate_HPG2Constraint*) &$self;
	}
};
%extend NLPlate_HPG2Constraint {
	~NLPlate_HPG2Constraint() {
	printf("Call custom destructor for instance of NLPlate_HPG2Constraint\n");
	}
};

%nodefaultctor NLPlate_HPG3Constraint;
class NLPlate_HPG3Constraint : public NLPlate_HPG2Constraint {
	public:
		%feature("autodoc", "1");
		NLPlate_HPG3Constraint(const gp_XY &UV, const Plate_D1 &D1T, const Plate_D2 &D2T, const Plate_D3 &D3T);
		%feature("autodoc", "1");
		virtual		Standard_Integer ActiveOrder() const;
		%feature("autodoc", "1");
		virtual		const Plate_D3 & G3Target() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend NLPlate_HPG3Constraint {
	Handle_NLPlate_HPG3Constraint GetHandle() {
	return *(Handle_NLPlate_HPG3Constraint*) &$self;
	}
};
%extend NLPlate_HPG3Constraint {
	~NLPlate_HPG3Constraint() {
	printf("Call custom destructor for instance of NLPlate_HPG3Constraint\n");
	}
};

%nodefaultctor NLPlate_StackNodeOfStackOfPlate;
class NLPlate_StackNodeOfStackOfPlate : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		NLPlate_StackNodeOfStackOfPlate(const Plate_Plate &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Plate_Plate & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend NLPlate_StackNodeOfStackOfPlate {
	Handle_NLPlate_StackNodeOfStackOfPlate GetHandle() {
	return *(Handle_NLPlate_StackNodeOfStackOfPlate*) &$self;
	}
};
%extend NLPlate_StackNodeOfStackOfPlate {
	~NLPlate_StackNodeOfStackOfPlate() {
	printf("Call custom destructor for instance of NLPlate_StackNodeOfStackOfPlate\n");
	}
};

%nodefaultctor NLPlate_SequenceNodeOfSequenceOfHGPPConstraint;
class NLPlate_SequenceNodeOfSequenceOfHGPPConstraint : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		NLPlate_SequenceNodeOfSequenceOfHGPPConstraint(const Handle_NLPlate_HGPPConstraint &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_NLPlate_HGPPConstraint & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend NLPlate_SequenceNodeOfSequenceOfHGPPConstraint {
	Handle_NLPlate_SequenceNodeOfSequenceOfHGPPConstraint GetHandle() {
	return *(Handle_NLPlate_SequenceNodeOfSequenceOfHGPPConstraint*) &$self;
	}
};
%extend NLPlate_SequenceNodeOfSequenceOfHGPPConstraint {
	~NLPlate_SequenceNodeOfSequenceOfHGPPConstraint() {
	printf("Call custom destructor for instance of NLPlate_SequenceNodeOfSequenceOfHGPPConstraint\n");
	}
};

%nodefaultctor NLPlate_NLPlate;
class NLPlate_NLPlate {
	public:
		%feature("autodoc", "1");
		NLPlate_NLPlate(const Handle_Geom_Surface &InitialSurface);
		%feature("autodoc", "1");
		void Load(const Handle_NLPlate_HGPPConstraint &GConst);
		%feature("autodoc", "1");
		void Solve(const Standard_Integer ord=2, const Standard_Integer InitialConsraintOrder=1);
		%feature("autodoc", "1");
		void Solve2(const Standard_Integer ord=2, const Standard_Integer InitialConsraintOrder=1);
		%feature("autodoc", "1");
		void IncrementalSolve(const Standard_Integer ord=2, const Standard_Integer InitialConsraintOrder=1, const Standard_Integer NbIncrements=4, const Standard_Boolean UVSliding=0);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		void destroy();
		%feature("autodoc", "1");
		void Init();
		%feature("autodoc", "1");
		gp_XYZ Evaluate(const gp_XY &point2d) const;
		%feature("autodoc", "1");
		gp_XYZ EvaluateDerivative(const gp_XY &point2d, const Standard_Integer iu, const Standard_Integer iv) const;
		%feature("autodoc", "1");
		Standard_Integer Continuity() const;
		%feature("autodoc", "1");
		void ConstraintsSliding(const Standard_Integer NbIterations=3);
		%feature("autodoc", "1");
		Standard_Integer MaxActiveConstraintOrder() const;

};
%extend NLPlate_NLPlate {
	~NLPlate_NLPlate() {
	printf("Call custom destructor for instance of NLPlate_NLPlate\n");
	}
};

%nodefaultctor NLPlate_HPG0G3Constraint;
class NLPlate_HPG0G3Constraint : public NLPlate_HPG0G2Constraint {
	public:
		%feature("autodoc", "1");
		NLPlate_HPG0G3Constraint(const gp_XY &UV, const gp_XYZ &Value, const Plate_D1 &D1T, const Plate_D2 &D2T, const Plate_D3 &D3T);
		%feature("autodoc", "1");
		virtual		Standard_Integer ActiveOrder() const;
		%feature("autodoc", "1");
		virtual		const Plate_D3 & G3Target() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend NLPlate_HPG0G3Constraint {
	Handle_NLPlate_HPG0G3Constraint GetHandle() {
	return *(Handle_NLPlate_HPG0G3Constraint*) &$self;
	}
};
%extend NLPlate_HPG0G3Constraint {
	~NLPlate_HPG0G3Constraint() {
	printf("Call custom destructor for instance of NLPlate_HPG0G3Constraint\n");
	}
};

%nodefaultctor NLPlate_StackOfPlate;
class NLPlate_StackOfPlate {
	public:
		%feature("autodoc", "1");
		NLPlate_StackOfPlate();
		%feature("autodoc", "1");
		const NLPlate_StackOfPlate & Assign(const NLPlate_StackOfPlate &Other);
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Depth() const;
		%feature("autodoc", "1");
		const Plate_Plate & Top() const;
		%feature("autodoc", "1");
		void Push(const Plate_Plate &I);
		%feature("autodoc", "1");
		void Pop();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Plate_Plate & ChangeTop();

};
%extend NLPlate_StackOfPlate {
	~NLPlate_StackOfPlate() {
	printf("Call custom destructor for instance of NLPlate_StackOfPlate\n");
	}
};