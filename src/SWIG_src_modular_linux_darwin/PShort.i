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
%module PShort

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


%include PShort_dependencies.i


%include PShort_headers.i




%nodefaultctor Handle_PShort_VArrayNodeOfFieldOfHArray2OfShortReal;
class Handle_PShort_VArrayNodeOfFieldOfHArray2OfShortReal : public Handle_PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		~Handle_PShort_VArrayNodeOfFieldOfHArray2OfShortReal();
		%feature("autodoc", "1");
		Handle_PShort_VArrayNodeOfFieldOfHArray2OfShortReal();
		%feature("autodoc", "1");
		Handle_PShort_VArrayNodeOfFieldOfHArray2OfShortReal(const Handle_PShort_VArrayNodeOfFieldOfHArray2OfShortReal &aHandle);
		%feature("autodoc", "1");
		Handle_PShort_VArrayNodeOfFieldOfHArray2OfShortReal(const PShort_VArrayNodeOfFieldOfHArray2OfShortReal *anItem);
		%feature("autodoc", "1");
		Handle_PShort_VArrayNodeOfFieldOfHArray2OfShortReal const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PShort_VArrayNodeOfFieldOfHArray2OfShortReal {
	PShort_VArrayNodeOfFieldOfHArray2OfShortReal* GetObject() {
	return (PShort_VArrayNodeOfFieldOfHArray2OfShortReal*)$self->Access();
	}
};

%nodefaultctor Handle_PShort_HSequenceOfShortReal;
class Handle_PShort_HSequenceOfShortReal : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		~Handle_PShort_HSequenceOfShortReal();
		%feature("autodoc", "1");
		Handle_PShort_HSequenceOfShortReal();
		%feature("autodoc", "1");
		Handle_PShort_HSequenceOfShortReal(const Handle_PShort_HSequenceOfShortReal &aHandle);
		%feature("autodoc", "1");
		Handle_PShort_HSequenceOfShortReal(const PShort_HSequenceOfShortReal *anItem);
		%feature("autodoc", "1");
		Handle_PShort_HSequenceOfShortReal const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PShort_HSequenceOfShortReal {
	PShort_HSequenceOfShortReal* GetObject() {
	return (PShort_HSequenceOfShortReal*)$self->Access();
	}
};

%nodefaultctor Handle_PShort_HArray2OfShortReal;
class Handle_PShort_HArray2OfShortReal : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		~Handle_PShort_HArray2OfShortReal();
		%feature("autodoc", "1");
		Handle_PShort_HArray2OfShortReal();
		%feature("autodoc", "1");
		Handle_PShort_HArray2OfShortReal(const Handle_PShort_HArray2OfShortReal &aHandle);
		%feature("autodoc", "1");
		Handle_PShort_HArray2OfShortReal(const PShort_HArray2OfShortReal *anItem);
		%feature("autodoc", "1");
		Handle_PShort_HArray2OfShortReal const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PShort_HArray2OfShortReal {
	PShort_HArray2OfShortReal* GetObject() {
	return (PShort_HArray2OfShortReal*)$self->Access();
	}
};

%nodefaultctor Handle_PShort_VArrayNodeOfFieldOfHArray1OfShortReal;
class Handle_PShort_VArrayNodeOfFieldOfHArray1OfShortReal : public Handle_PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		~Handle_PShort_VArrayNodeOfFieldOfHArray1OfShortReal();
		%feature("autodoc", "1");
		Handle_PShort_VArrayNodeOfFieldOfHArray1OfShortReal();
		%feature("autodoc", "1");
		Handle_PShort_VArrayNodeOfFieldOfHArray1OfShortReal(const Handle_PShort_VArrayNodeOfFieldOfHArray1OfShortReal &aHandle);
		%feature("autodoc", "1");
		Handle_PShort_VArrayNodeOfFieldOfHArray1OfShortReal(const PShort_VArrayNodeOfFieldOfHArray1OfShortReal *anItem);
		%feature("autodoc", "1");
		Handle_PShort_VArrayNodeOfFieldOfHArray1OfShortReal const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PShort_VArrayNodeOfFieldOfHArray1OfShortReal {
	PShort_VArrayNodeOfFieldOfHArray1OfShortReal* GetObject() {
	return (PShort_VArrayNodeOfFieldOfHArray1OfShortReal*)$self->Access();
	}
};

%nodefaultctor Handle_PShort_HArray1OfShortReal;
class Handle_PShort_HArray1OfShortReal : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		~Handle_PShort_HArray1OfShortReal();
		%feature("autodoc", "1");
		Handle_PShort_HArray1OfShortReal();
		%feature("autodoc", "1");
		Handle_PShort_HArray1OfShortReal(const Handle_PShort_HArray1OfShortReal &aHandle);
		%feature("autodoc", "1");
		Handle_PShort_HArray1OfShortReal(const PShort_HArray1OfShortReal *anItem);
		%feature("autodoc", "1");
		Handle_PShort_HArray1OfShortReal const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PShort_HArray1OfShortReal {
	PShort_HArray1OfShortReal* GetObject() {
	return (PShort_HArray1OfShortReal*)$self->Access();
	}
};

%nodefaultctor Handle_PShort_SeqNodeOfHSequenceOfShortReal;
class Handle_PShort_SeqNodeOfHSequenceOfShortReal : public Handle_PMMgt_PManaged {
	public:
		%feature("autodoc", "1");
		~Handle_PShort_SeqNodeOfHSequenceOfShortReal();
		%feature("autodoc", "1");
		Handle_PShort_SeqNodeOfHSequenceOfShortReal();
		%feature("autodoc", "1");
		Handle_PShort_SeqNodeOfHSequenceOfShortReal(const Handle_PShort_SeqNodeOfHSequenceOfShortReal &aHandle);
		%feature("autodoc", "1");
		Handle_PShort_SeqNodeOfHSequenceOfShortReal(const PShort_SeqNodeOfHSequenceOfShortReal *anItem);
		%feature("autodoc", "1");
		Handle_PShort_SeqNodeOfHSequenceOfShortReal const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PShort_SeqNodeOfHSequenceOfShortReal {
	PShort_SeqNodeOfHSequenceOfShortReal* GetObject() {
	return (PShort_SeqNodeOfHSequenceOfShortReal*)$self->Access();
	}
};

%nodefaultctor PShort_VArrayTNodeOfFieldOfHArray2OfShortReal;
class PShort_VArrayTNodeOfFieldOfHArray2OfShortReal {
	public:
		%feature("autodoc", "1");
		~PShort_VArrayTNodeOfFieldOfHArray2OfShortReal();
		%feature("autodoc", "1");
		PShort_VArrayTNodeOfFieldOfHArray2OfShortReal();
		%feature("autodoc", "1");
		PShort_VArrayTNodeOfFieldOfHArray2OfShortReal(const Standard_ShortReal &aValue);
		%feature("autodoc", "1");
		void SetValue(const Standard_ShortReal &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;

};

%nodefaultctor PShort_VArrayNodeOfFieldOfHArray2OfShortReal;
class PShort_VArrayNodeOfFieldOfHArray2OfShortReal : public PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		PShort_VArrayNodeOfFieldOfHArray2OfShortReal();
		%feature("autodoc", "1");
		PShort_VArrayNodeOfFieldOfHArray2OfShortReal(const Standard_ShortReal &aValue);
		%feature("autodoc", "1");
		void SetValue(const Standard_ShortReal &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;
		%feature("autodoc", "1");
		PShort_VArrayNodeOfFieldOfHArray2OfShortReal(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_ShortReal _CSFDB_GetPShort_VArrayNodeOfFieldOfHArray2OfShortRealmyValue() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPShort_VArrayNodeOfFieldOfHArray2OfShortRealmyValue(const Standard_ShortReal p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PShort_VArrayNodeOfFieldOfHArray2OfShortReal();

};
%extend PShort_VArrayNodeOfFieldOfHArray2OfShortReal {
	Handle_PShort_VArrayNodeOfFieldOfHArray2OfShortReal GetHandle() {
	return *(Handle_PShort_VArrayNodeOfFieldOfHArray2OfShortReal*) &$self;
	}
};

%nodefaultctor PShort_VArrayNodeOfFieldOfHArray1OfShortReal;
class PShort_VArrayNodeOfFieldOfHArray1OfShortReal : public PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		PShort_VArrayNodeOfFieldOfHArray1OfShortReal();
		%feature("autodoc", "1");
		PShort_VArrayNodeOfFieldOfHArray1OfShortReal(const Standard_ShortReal &aValue);
		%feature("autodoc", "1");
		void SetValue(const Standard_ShortReal &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;
		%feature("autodoc", "1");
		PShort_VArrayNodeOfFieldOfHArray1OfShortReal(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_ShortReal _CSFDB_GetPShort_VArrayNodeOfFieldOfHArray1OfShortRealmyValue() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPShort_VArrayNodeOfFieldOfHArray1OfShortRealmyValue(const Standard_ShortReal p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PShort_VArrayNodeOfFieldOfHArray1OfShortReal();

};
%extend PShort_VArrayNodeOfFieldOfHArray1OfShortReal {
	Handle_PShort_VArrayNodeOfFieldOfHArray1OfShortReal GetHandle() {
	return *(Handle_PShort_VArrayNodeOfFieldOfHArray1OfShortReal*) &$self;
	}
};

%nodefaultctor PShort_FieldOfHArray1OfShortReal;
class PShort_FieldOfHArray1OfShortReal : public DBC_BaseArray {
	public:
		%feature("autodoc", "1");
		PShort_FieldOfHArray1OfShortReal();
		%feature("autodoc", "1");
		PShort_FieldOfHArray1OfShortReal(const Standard_Integer Size);
		%feature("autodoc", "1");
		PShort_FieldOfHArray1OfShortReal(const PShort_FieldOfHArray1OfShortReal &Varray);
		%feature("autodoc", "1");
		void Resize(const Standard_Integer Size);
		%feature("autodoc", "1");
		void Assign(const PShort_FieldOfHArray1OfShortReal &Other);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Standard_ShortReal &Value);
		%feature("autodoc", "1");
		Standard_ShortReal & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_ShortReal & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		virtual		~PShort_FieldOfHArray1OfShortReal();

};

%nodefaultctor PShort_VArrayTNodeOfFieldOfHArray1OfShortReal;
class PShort_VArrayTNodeOfFieldOfHArray1OfShortReal {
	public:
		%feature("autodoc", "1");
		~PShort_VArrayTNodeOfFieldOfHArray1OfShortReal();
		%feature("autodoc", "1");
		PShort_VArrayTNodeOfFieldOfHArray1OfShortReal();
		%feature("autodoc", "1");
		PShort_VArrayTNodeOfFieldOfHArray1OfShortReal(const Standard_ShortReal &aValue);
		%feature("autodoc", "1");
		void SetValue(const Standard_ShortReal &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;

};

%nodefaultctor PShort_FieldOfHArray2OfShortReal;
class PShort_FieldOfHArray2OfShortReal : public DBC_BaseArray {
	public:
		%feature("autodoc", "1");
		PShort_FieldOfHArray2OfShortReal();
		%feature("autodoc", "1");
		PShort_FieldOfHArray2OfShortReal(const Standard_Integer Size);
		%feature("autodoc", "1");
		PShort_FieldOfHArray2OfShortReal(const PShort_FieldOfHArray2OfShortReal &Varray);
		%feature("autodoc", "1");
		void Resize(const Standard_Integer Size);
		%feature("autodoc", "1");
		void Assign(const PShort_FieldOfHArray2OfShortReal &Other);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Standard_ShortReal &Value);
		%feature("autodoc", "1");
		Standard_ShortReal & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_ShortReal & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		virtual		~PShort_FieldOfHArray2OfShortReal();

};

%nodefaultctor PShort_SeqExplorerOfHSequenceOfShortReal;
class PShort_SeqExplorerOfHSequenceOfShortReal {
	public:
		%feature("autodoc", "1");
		~PShort_SeqExplorerOfHSequenceOfShortReal();
		%feature("autodoc", "1");
		PShort_SeqExplorerOfHSequenceOfShortReal(const Handle_PShort_HSequenceOfShortReal &S);
		%feature("autodoc", "1");
		Standard_ShortReal Value(const Standard_Integer Index);
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Standard_ShortReal &T);
		%feature("autodoc", "1");
		Standard_Integer Location(const Standard_Integer N, const Standard_ShortReal &T, const Standard_Integer FromIndex, const Standard_Integer ToIndex);
		%feature("autodoc", "1");
		Standard_Integer Location(const Standard_Integer N, const Standard_ShortReal &T);

};

%nodefaultctor PShort_SeqNodeOfHSequenceOfShortReal;
class PShort_SeqNodeOfHSequenceOfShortReal : public PMMgt_PManaged {
	public:
		%feature("autodoc", "1");
		PShort_SeqNodeOfHSequenceOfShortReal(const Handle_PShort_SeqNodeOfHSequenceOfShortReal &TheLast, const Standard_ShortReal &TheItem);
		%feature("autodoc", "1");
		PShort_SeqNodeOfHSequenceOfShortReal(const Standard_ShortReal &TheItem, const Handle_PShort_SeqNodeOfHSequenceOfShortReal &TheFirst);
		%feature("autodoc", "1");
		PShort_SeqNodeOfHSequenceOfShortReal(const Handle_PShort_SeqNodeOfHSequenceOfShortReal &ThePrevious, const Handle_PShort_SeqNodeOfHSequenceOfShortReal &TheNext, const Standard_ShortReal &TheItem);
		%feature("autodoc", "1");
		Standard_ShortReal Value() const;
		%feature("autodoc", "1");
		Handle_PShort_SeqNodeOfHSequenceOfShortReal Next() const;
		%feature("autodoc", "1");
		Handle_PShort_SeqNodeOfHSequenceOfShortReal Previous() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_ShortReal &AnItem);
		%feature("autodoc", "1");
		void SetNext(const Handle_PShort_SeqNodeOfHSequenceOfShortReal &ANode);
		%feature("autodoc", "1");
		void SetPrevious(const Handle_PShort_SeqNodeOfHSequenceOfShortReal &ANode);
		%feature("autodoc", "1");
		PShort_SeqNodeOfHSequenceOfShortReal();
		%feature("autodoc", "1");
		PShort_SeqNodeOfHSequenceOfShortReal(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Handle_PShort_SeqNodeOfHSequenceOfShortReal _CSFDB_GetPShort_SeqNodeOfHSequenceOfShortRealMyPrevious() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPShort_SeqNodeOfHSequenceOfShortRealMyPrevious(const Handle_PShort_SeqNodeOfHSequenceOfShortReal &p);
		%feature("autodoc", "1");
		Standard_ShortReal _CSFDB_GetPShort_SeqNodeOfHSequenceOfShortRealMyItem() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPShort_SeqNodeOfHSequenceOfShortRealMyItem(const Standard_ShortReal p);
		%feature("autodoc", "1");
		Handle_PShort_SeqNodeOfHSequenceOfShortReal _CSFDB_GetPShort_SeqNodeOfHSequenceOfShortRealMyNext() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPShort_SeqNodeOfHSequenceOfShortRealMyNext(const Handle_PShort_SeqNodeOfHSequenceOfShortReal &p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PShort_SeqNodeOfHSequenceOfShortReal();

};
%extend PShort_SeqNodeOfHSequenceOfShortReal {
	Handle_PShort_SeqNodeOfHSequenceOfShortReal GetHandle() {
	return *(Handle_PShort_SeqNodeOfHSequenceOfShortReal*) &$self;
	}
};

%nodefaultctor PShort_HArray2OfShortReal;
class PShort_HArray2OfShortReal : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		PShort_HArray2OfShortReal(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		PShort_HArray2OfShortReal(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2, const Standard_ShortReal &V);
		%feature("autodoc", "1");
		Standard_Integer ColLength() const;
		%feature("autodoc", "1");
		Standard_Integer LowerCol() const;
		%feature("autodoc", "1");
		Standard_Integer LowerRow() const;
		%feature("autodoc", "1");
		Standard_Integer RowLength() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const Standard_ShortReal &Value);
		%feature("autodoc", "1");
		Standard_Integer UpperCol() const;
		%feature("autodoc", "1");
		Standard_Integer UpperRow() const;
		%feature("autodoc", "1");
		Standard_ShortReal Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Persistent ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		void ShallowDump(Standard_OStream & s) const;
		%feature("autodoc", "1");
		PShort_HArray2OfShortReal();
		%feature("autodoc", "1");
		PShort_HArray2OfShortReal(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPShort_HArray2OfShortRealmyLowerRow() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPShort_HArray2OfShortRealmyLowerRow(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPShort_HArray2OfShortRealmyLowerCol() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPShort_HArray2OfShortRealmyLowerCol(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPShort_HArray2OfShortRealmyUpperRow() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPShort_HArray2OfShortRealmyUpperRow(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPShort_HArray2OfShortRealmyUpperCol() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPShort_HArray2OfShortRealmyUpperCol(const Standard_Integer p);
		%feature("autodoc", "1");
		const PShort_FieldOfHArray2OfShortReal & _CSFDB_GetPShort_HArray2OfShortRealData() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PShort_HArray2OfShortReal();

};
%extend PShort_HArray2OfShortReal {
	Handle_PShort_HArray2OfShortReal GetHandle() {
	return *(Handle_PShort_HArray2OfShortReal*) &$self;
	}
};

%nodefaultctor PShort_HArray1OfShortReal;
class PShort_HArray1OfShortReal : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		PShort_HArray1OfShortReal(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		PShort_HArray1OfShortReal(const Standard_Integer Low, const Standard_Integer Up, const Standard_ShortReal &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Standard_ShortReal &Value);
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		Standard_ShortReal Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Persistent ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		void ShallowDump(Standard_OStream & s) const;
		%feature("autodoc", "1");
		PShort_HArray1OfShortReal();
		%feature("autodoc", "1");
		PShort_HArray1OfShortReal(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPShort_HArray1OfShortRealLowerBound() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPShort_HArray1OfShortRealLowerBound(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPShort_HArray1OfShortRealUpperBound() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPShort_HArray1OfShortRealUpperBound(const Standard_Integer p);
		%feature("autodoc", "1");
		const PShort_FieldOfHArray1OfShortReal & _CSFDB_GetPShort_HArray1OfShortRealData() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PShort_HArray1OfShortReal();

};
%extend PShort_HArray1OfShortReal {
	Handle_PShort_HArray1OfShortReal GetHandle() {
	return *(Handle_PShort_HArray1OfShortReal*) &$self;
	}
};

%nodefaultctor PShort_HSequenceOfShortReal;
class PShort_HSequenceOfShortReal : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		PShort_HSequenceOfShortReal();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_ShortReal First() const;
		%feature("autodoc", "1");
		Standard_ShortReal Last() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const Standard_ShortReal &T);
		%feature("autodoc", "1");
		void Append(const Handle_PShort_HSequenceOfShortReal &S);
		%feature("autodoc", "1");
		void Prepend(const Standard_ShortReal &T);
		%feature("autodoc", "1");
		void Prepend(const Handle_PShort_HSequenceOfShortReal &S);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Standard_ShortReal &T);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_PShort_HSequenceOfShortReal &S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Standard_ShortReal &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_PShort_HSequenceOfShortReal &S);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer I, const Standard_Integer J);
		%feature("autodoc", "1");
		Handle_PShort_HSequenceOfShortReal SubSequence(const Standard_Integer FromIndex, const Standard_Integer ToIndex) const;
		%feature("autodoc", "1");
		Handle_PShort_HSequenceOfShortReal Split(const Standard_Integer Index);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Standard_ShortReal &T);
		%feature("autodoc", "1");
		Standard_ShortReal Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Standard_ShortReal &T) const;
		%feature("autodoc", "1");
		Standard_Integer Location(const Standard_Integer N, const Standard_ShortReal &T, const Standard_Integer FromIndex, const Standard_Integer ToIndex) const;
		%feature("autodoc", "1");
		Standard_Integer Location(const Standard_Integer N, const Standard_ShortReal &T) const;
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);
		%feature("autodoc", "1");
		virtual		Handle_Standard_Persistent ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		void ShallowDump(Standard_OStream & s) const;
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		virtual		~PShort_HSequenceOfShortReal();
		%feature("autodoc", "1");
		PShort_HSequenceOfShortReal(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Handle_PShort_SeqNodeOfHSequenceOfShortReal _CSFDB_GetPShort_HSequenceOfShortRealFirstItem() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPShort_HSequenceOfShortRealFirstItem(const Handle_PShort_SeqNodeOfHSequenceOfShortReal &p);
		%feature("autodoc", "1");
		Handle_PShort_SeqNodeOfHSequenceOfShortReal _CSFDB_GetPShort_HSequenceOfShortRealLastItem() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPShort_HSequenceOfShortRealLastItem(const Handle_PShort_SeqNodeOfHSequenceOfShortReal &p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPShort_HSequenceOfShortRealSize() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPShort_HSequenceOfShortRealSize(const Standard_Integer p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PShort_HSequenceOfShortReal {
	Handle_PShort_HSequenceOfShortReal GetHandle() {
	return *(Handle_PShort_HSequenceOfShortReal*) &$self;
	}
};