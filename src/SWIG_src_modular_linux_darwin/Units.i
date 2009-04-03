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
%module Units

%include typemaps.i
%include cmalloc.i
%include cpointer.i
%include carrays.i
%include exception.i
%include std_list.i
%include std_string.i

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


%include Units_dependencies.i


%include Units_headers.i




%nodefaultctor Handle_Units_SequenceNodeOfQtsSequence;
class Handle_Units_SequenceNodeOfQtsSequence : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_Units_SequenceNodeOfQtsSequence();
		%feature("autodoc", "1");
		Handle_Units_SequenceNodeOfQtsSequence(const Handle_Units_SequenceNodeOfQtsSequence &aHandle);
		%feature("autodoc", "1");
		Handle_Units_SequenceNodeOfQtsSequence(const Units_SequenceNodeOfQtsSequence *anItem);
		%feature("autodoc", "1");
		Handle_Units_SequenceNodeOfQtsSequence const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Units_SequenceNodeOfQtsSequence {
	Units_SequenceNodeOfQtsSequence* GetObject() {
	return (Units_SequenceNodeOfQtsSequence*)$self->Access();
	}
};
%extend Handle_Units_SequenceNodeOfQtsSequence {
	~Handle_Units_SequenceNodeOfQtsSequence() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Units_SequenceNodeOfQtsSequence\n");}
	}
};

%nodefaultctor Handle_Units_Quantity;
class Handle_Units_Quantity : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Units_Quantity();
		%feature("autodoc", "1");
		Handle_Units_Quantity(const Handle_Units_Quantity &aHandle);
		%feature("autodoc", "1");
		Handle_Units_Quantity(const Units_Quantity *anItem);
		%feature("autodoc", "1");
		Handle_Units_Quantity const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Units_Quantity {
	Units_Quantity* GetObject() {
	return (Units_Quantity*)$self->Access();
	}
};
%extend Handle_Units_Quantity {
	~Handle_Units_Quantity() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Units_Quantity\n");}
	}
};

%nodefaultctor Handle_Units_SequenceNodeOfTksSequence;
class Handle_Units_SequenceNodeOfTksSequence : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_Units_SequenceNodeOfTksSequence();
		%feature("autodoc", "1");
		Handle_Units_SequenceNodeOfTksSequence(const Handle_Units_SequenceNodeOfTksSequence &aHandle);
		%feature("autodoc", "1");
		Handle_Units_SequenceNodeOfTksSequence(const Units_SequenceNodeOfTksSequence *anItem);
		%feature("autodoc", "1");
		Handle_Units_SequenceNodeOfTksSequence const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Units_SequenceNodeOfTksSequence {
	Units_SequenceNodeOfTksSequence* GetObject() {
	return (Units_SequenceNodeOfTksSequence*)$self->Access();
	}
};
%extend Handle_Units_SequenceNodeOfTksSequence {
	~Handle_Units_SequenceNodeOfTksSequence() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Units_SequenceNodeOfTksSequence\n");}
	}
};

%nodefaultctor Handle_Units_UnitsSequence;
class Handle_Units_UnitsSequence : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Units_UnitsSequence();
		%feature("autodoc", "1");
		Handle_Units_UnitsSequence(const Handle_Units_UnitsSequence &aHandle);
		%feature("autodoc", "1");
		Handle_Units_UnitsSequence(const Units_UnitsSequence *anItem);
		%feature("autodoc", "1");
		Handle_Units_UnitsSequence const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Units_UnitsSequence {
	Units_UnitsSequence* GetObject() {
	return (Units_UnitsSequence*)$self->Access();
	}
};
%extend Handle_Units_UnitsSequence {
	~Handle_Units_UnitsSequence() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Units_UnitsSequence\n");}
	}
};

%nodefaultctor Handle_Units_StringsSequence;
class Handle_Units_StringsSequence : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Units_StringsSequence();
		%feature("autodoc", "1");
		Handle_Units_StringsSequence(const Handle_Units_StringsSequence &aHandle);
		%feature("autodoc", "1");
		Handle_Units_StringsSequence(const Units_StringsSequence *anItem);
		%feature("autodoc", "1");
		Handle_Units_StringsSequence const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Units_StringsSequence {
	Units_StringsSequence* GetObject() {
	return (Units_StringsSequence*)$self->Access();
	}
};
%extend Handle_Units_StringsSequence {
	~Handle_Units_StringsSequence() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Units_StringsSequence\n");}
	}
};

%nodefaultctor Handle_Units_Lexicon;
class Handle_Units_Lexicon : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Units_Lexicon();
		%feature("autodoc", "1");
		Handle_Units_Lexicon(const Handle_Units_Lexicon &aHandle);
		%feature("autodoc", "1");
		Handle_Units_Lexicon(const Units_Lexicon *anItem);
		%feature("autodoc", "1");
		Handle_Units_Lexicon const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Units_Lexicon {
	Units_Lexicon* GetObject() {
	return (Units_Lexicon*)$self->Access();
	}
};
%extend Handle_Units_Lexicon {
	~Handle_Units_Lexicon() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Units_Lexicon\n");}
	}
};

%nodefaultctor Handle_Units_UnitsLexicon;
class Handle_Units_UnitsLexicon : public Handle_Units_Lexicon {
	public:
		%feature("autodoc", "1");
		Handle_Units_UnitsLexicon();
		%feature("autodoc", "1");
		Handle_Units_UnitsLexicon(const Handle_Units_UnitsLexicon &aHandle);
		%feature("autodoc", "1");
		Handle_Units_UnitsLexicon(const Units_UnitsLexicon *anItem);
		%feature("autodoc", "1");
		Handle_Units_UnitsLexicon const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Units_UnitsLexicon {
	Units_UnitsLexicon* GetObject() {
	return (Units_UnitsLexicon*)$self->Access();
	}
};
%extend Handle_Units_UnitsLexicon {
	~Handle_Units_UnitsLexicon() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Units_UnitsLexicon\n");}
	}
};

%nodefaultctor Handle_Units_TokensSequence;
class Handle_Units_TokensSequence : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Units_TokensSequence();
		%feature("autodoc", "1");
		Handle_Units_TokensSequence(const Handle_Units_TokensSequence &aHandle);
		%feature("autodoc", "1");
		Handle_Units_TokensSequence(const Units_TokensSequence *anItem);
		%feature("autodoc", "1");
		Handle_Units_TokensSequence const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Units_TokensSequence {
	Units_TokensSequence* GetObject() {
	return (Units_TokensSequence*)$self->Access();
	}
};
%extend Handle_Units_TokensSequence {
	~Handle_Units_TokensSequence() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Units_TokensSequence\n");}
	}
};

%nodefaultctor Handle_Units_UnitsDictionary;
class Handle_Units_UnitsDictionary : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Units_UnitsDictionary();
		%feature("autodoc", "1");
		Handle_Units_UnitsDictionary(const Handle_Units_UnitsDictionary &aHandle);
		%feature("autodoc", "1");
		Handle_Units_UnitsDictionary(const Units_UnitsDictionary *anItem);
		%feature("autodoc", "1");
		Handle_Units_UnitsDictionary const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Units_UnitsDictionary {
	Units_UnitsDictionary* GetObject() {
	return (Units_UnitsDictionary*)$self->Access();
	}
};
%extend Handle_Units_UnitsDictionary {
	~Handle_Units_UnitsDictionary() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Units_UnitsDictionary\n");}
	}
};

%nodefaultctor Handle_Units_NoSuchType;
class Handle_Units_NoSuchType : public Handle_Standard_NoSuchObject {
	public:
		%feature("autodoc", "1");
		Handle_Units_NoSuchType();
		%feature("autodoc", "1");
		Handle_Units_NoSuchType(const Handle_Units_NoSuchType &aHandle);
		%feature("autodoc", "1");
		Handle_Units_NoSuchType(const Units_NoSuchType *anItem);
		%feature("autodoc", "1");
		Handle_Units_NoSuchType const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Units_NoSuchType {
	Units_NoSuchType* GetObject() {
	return (Units_NoSuchType*)$self->Access();
	}
};
%extend Handle_Units_NoSuchType {
	~Handle_Units_NoSuchType() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Units_NoSuchType\n");}
	}
};

%nodefaultctor Handle_Units_Unit;
class Handle_Units_Unit : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Units_Unit();
		%feature("autodoc", "1");
		Handle_Units_Unit(const Handle_Units_Unit &aHandle);
		%feature("autodoc", "1");
		Handle_Units_Unit(const Units_Unit *anItem);
		%feature("autodoc", "1");
		Handle_Units_Unit const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Units_Unit {
	Units_Unit* GetObject() {
	return (Units_Unit*)$self->Access();
	}
};
%extend Handle_Units_Unit {
	~Handle_Units_Unit() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Units_Unit\n");}
	}
};

%nodefaultctor Handle_Units_Token;
class Handle_Units_Token : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Units_Token();
		%feature("autodoc", "1");
		Handle_Units_Token(const Handle_Units_Token &aHandle);
		%feature("autodoc", "1");
		Handle_Units_Token(const Units_Token *anItem);
		%feature("autodoc", "1");
		Handle_Units_Token const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Units_Token {
	Units_Token* GetObject() {
	return (Units_Token*)$self->Access();
	}
};
%extend Handle_Units_Token {
	~Handle_Units_Token() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Units_Token\n");}
	}
};

%nodefaultctor Handle_Units_ShiftedToken;
class Handle_Units_ShiftedToken : public Handle_Units_Token {
	public:
		%feature("autodoc", "1");
		Handle_Units_ShiftedToken();
		%feature("autodoc", "1");
		Handle_Units_ShiftedToken(const Handle_Units_ShiftedToken &aHandle);
		%feature("autodoc", "1");
		Handle_Units_ShiftedToken(const Units_ShiftedToken *anItem);
		%feature("autodoc", "1");
		Handle_Units_ShiftedToken const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Units_ShiftedToken {
	Units_ShiftedToken* GetObject() {
	return (Units_ShiftedToken*)$self->Access();
	}
};
%extend Handle_Units_ShiftedToken {
	~Handle_Units_ShiftedToken() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Units_ShiftedToken\n");}
	}
};

%nodefaultctor Handle_Units_SequenceNodeOfUtsSequence;
class Handle_Units_SequenceNodeOfUtsSequence : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_Units_SequenceNodeOfUtsSequence();
		%feature("autodoc", "1");
		Handle_Units_SequenceNodeOfUtsSequence(const Handle_Units_SequenceNodeOfUtsSequence &aHandle);
		%feature("autodoc", "1");
		Handle_Units_SequenceNodeOfUtsSequence(const Units_SequenceNodeOfUtsSequence *anItem);
		%feature("autodoc", "1");
		Handle_Units_SequenceNodeOfUtsSequence const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Units_SequenceNodeOfUtsSequence {
	Units_SequenceNodeOfUtsSequence* GetObject() {
	return (Units_SequenceNodeOfUtsSequence*)$self->Access();
	}
};
%extend Handle_Units_SequenceNodeOfUtsSequence {
	~Handle_Units_SequenceNodeOfUtsSequence() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Units_SequenceNodeOfUtsSequence\n");}
	}
};

%nodefaultctor Handle_Units_NoSuchUnit;
class Handle_Units_NoSuchUnit : public Handle_Standard_NoSuchObject {
	public:
		%feature("autodoc", "1");
		Handle_Units_NoSuchUnit();
		%feature("autodoc", "1");
		Handle_Units_NoSuchUnit(const Handle_Units_NoSuchUnit &aHandle);
		%feature("autodoc", "1");
		Handle_Units_NoSuchUnit(const Units_NoSuchUnit *anItem);
		%feature("autodoc", "1");
		Handle_Units_NoSuchUnit const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Units_NoSuchUnit {
	Units_NoSuchUnit* GetObject() {
	return (Units_NoSuchUnit*)$self->Access();
	}
};
%extend Handle_Units_NoSuchUnit {
	~Handle_Units_NoSuchUnit() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Units_NoSuchUnit\n");}
	}
};

%nodefaultctor Handle_Units_ShiftedUnit;
class Handle_Units_ShiftedUnit : public Handle_Units_Unit {
	public:
		%feature("autodoc", "1");
		Handle_Units_ShiftedUnit();
		%feature("autodoc", "1");
		Handle_Units_ShiftedUnit(const Handle_Units_ShiftedUnit &aHandle);
		%feature("autodoc", "1");
		Handle_Units_ShiftedUnit(const Units_ShiftedUnit *anItem);
		%feature("autodoc", "1");
		Handle_Units_ShiftedUnit const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Units_ShiftedUnit {
	Units_ShiftedUnit* GetObject() {
	return (Units_ShiftedUnit*)$self->Access();
	}
};
%extend Handle_Units_ShiftedUnit {
	~Handle_Units_ShiftedUnit() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Units_ShiftedUnit\n");}
	}
};

%nodefaultctor Handle_Units_Dimensions;
class Handle_Units_Dimensions : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Units_Dimensions();
		%feature("autodoc", "1");
		Handle_Units_Dimensions(const Handle_Units_Dimensions &aHandle);
		%feature("autodoc", "1");
		Handle_Units_Dimensions(const Units_Dimensions *anItem);
		%feature("autodoc", "1");
		Handle_Units_Dimensions const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Units_Dimensions {
	Units_Dimensions* GetObject() {
	return (Units_Dimensions*)$self->Access();
	}
};
%extend Handle_Units_Dimensions {
	~Handle_Units_Dimensions() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Units_Dimensions\n");}
	}
};

%nodefaultctor Handle_Units_SequenceNodeOfStrgSequence;
class Handle_Units_SequenceNodeOfStrgSequence : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_Units_SequenceNodeOfStrgSequence();
		%feature("autodoc", "1");
		Handle_Units_SequenceNodeOfStrgSequence(const Handle_Units_SequenceNodeOfStrgSequence &aHandle);
		%feature("autodoc", "1");
		Handle_Units_SequenceNodeOfStrgSequence(const Units_SequenceNodeOfStrgSequence *anItem);
		%feature("autodoc", "1");
		Handle_Units_SequenceNodeOfStrgSequence const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Units_SequenceNodeOfStrgSequence {
	Units_SequenceNodeOfStrgSequence* GetObject() {
	return (Units_SequenceNodeOfStrgSequence*)$self->Access();
	}
};
%extend Handle_Units_SequenceNodeOfStrgSequence {
	~Handle_Units_SequenceNodeOfStrgSequence() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Units_SequenceNodeOfStrgSequence\n");}
	}
};

%nodefaultctor Handle_Units_QuantitiesSequence;
class Handle_Units_QuantitiesSequence : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Units_QuantitiesSequence();
		%feature("autodoc", "1");
		Handle_Units_QuantitiesSequence(const Handle_Units_QuantitiesSequence &aHandle);
		%feature("autodoc", "1");
		Handle_Units_QuantitiesSequence(const Units_QuantitiesSequence *anItem);
		%feature("autodoc", "1");
		Handle_Units_QuantitiesSequence const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Units_QuantitiesSequence {
	Units_QuantitiesSequence* GetObject() {
	return (Units_QuantitiesSequence*)$self->Access();
	}
};
%extend Handle_Units_QuantitiesSequence {
	~Handle_Units_QuantitiesSequence() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Units_QuantitiesSequence\n");}
	}
};

%nodefaultctor Handle_Units_UnitsSystem;
class Handle_Units_UnitsSystem : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Units_UnitsSystem();
		%feature("autodoc", "1");
		Handle_Units_UnitsSystem(const Handle_Units_UnitsSystem &aHandle);
		%feature("autodoc", "1");
		Handle_Units_UnitsSystem(const Units_UnitsSystem *anItem);
		%feature("autodoc", "1");
		Handle_Units_UnitsSystem const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Units_UnitsSystem {
	Units_UnitsSystem* GetObject() {
	return (Units_UnitsSystem*)$self->Access();
	}
};
%extend Handle_Units_UnitsSystem {
	~Handle_Units_UnitsSystem() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Units_UnitsSystem\n");}
	}
};

%nodefaultctor Units_Lexicon;
class Units_Lexicon : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Units_Lexicon();
		%feature("autodoc", "1");
		void Creates(const char * afilename);
		%feature("autodoc", "1");
		Handle_Units_TokensSequence Sequence() const;
		%feature("autodoc", "1");
		TCollection_AsciiString FileName() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean UpToDate() const;
		%feature("autodoc", "1");
		void AddToken(const char * aword, const char * amean, const Standard_Real avalue);
		%feature("autodoc", "1");
		virtual		void Dump() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Units_Lexicon {
	Handle_Units_Lexicon GetHandle() {
	return *(Handle_Units_Lexicon*) &$self;
	}
};
%extend Units_Lexicon {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Units_Lexicon {
	~Units_Lexicon() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Units_Lexicon\n");}
	}
};

%nodefaultctor Units_UnitsLexicon;
class Units_UnitsLexicon : public Units_Lexicon {
	public:
		%feature("autodoc", "1");
		Units_UnitsLexicon();
		%feature("autodoc", "1");
		void Creates(const char * afilename1, const char * afilename2, const Standard_Boolean amode=1);
		%feature("autodoc", "1");
		TCollection_AsciiString FileName2() const;

};
%extend Units_UnitsLexicon {
	Handle_Units_UnitsLexicon GetHandle() {
	return *(Handle_Units_UnitsLexicon*) &$self;
	}
};
%extend Units_UnitsLexicon {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Units_UnitsLexicon {
	~Units_UnitsLexicon() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Units_UnitsLexicon\n");}
	}
};

%nodefaultctor Units_NoSuchType;
class Units_NoSuchType : public Standard_NoSuchObject {
	public:
		%feature("autodoc", "1");
		Units_NoSuchType();
		%feature("autodoc", "1");
		Units_NoSuchType(const char * AString);
		%feature("autodoc", "1");
		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		Handle_Units_NoSuchType NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Units_NoSuchType {
	Handle_Units_NoSuchType GetHandle() {
	return *(Handle_Units_NoSuchType*) &$self;
	}
};
%extend Units_NoSuchType {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Units_NoSuchType {
	~Units_NoSuchType() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Units_NoSuchType\n");}
	}
};

%nodefaultctor Units_SequenceNodeOfTksSequence;
class Units_SequenceNodeOfTksSequence : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Units_SequenceNodeOfTksSequence(const Handle_Units_Token &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_Units_Token & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Units_SequenceNodeOfTksSequence {
	Handle_Units_SequenceNodeOfTksSequence GetHandle() {
	return *(Handle_Units_SequenceNodeOfTksSequence*) &$self;
	}
};
%extend Units_SequenceNodeOfTksSequence {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Units_SequenceNodeOfTksSequence {
	~Units_SequenceNodeOfTksSequence() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Units_SequenceNodeOfTksSequence\n");}
	}
};

%nodefaultctor Units_Sentence;
class Units_Sentence {
	public:
		%feature("autodoc", "1");
		Units_Sentence(const Handle_Units_Lexicon &alexicon, const char * astring);
		%feature("autodoc", "1");
		void SetConstants();
		%feature("autodoc", "1");
		Handle_Units_TokensSequence Sequence() const;
		%feature("autodoc", "1");
		void Sequence(const Handle_Units_TokensSequence &asequenceoftokens);
		%feature("autodoc", "1");
		Handle_Units_Token Evaluate();
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		void Dump() const;

};
%extend Units_Sentence {
	~Units_Sentence() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Units_Sentence\n");}
	}
};

%nodefaultctor Units_MathSentence;
class Units_MathSentence : public Units_Sentence {
	public:
		%feature("autodoc", "1");
		Units_MathSentence(const char * astring);

};
%extend Units_MathSentence {
	~Units_MathSentence() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Units_MathSentence\n");}
	}
};

%nodefaultctor Units_StringsSequence;
class Units_StringsSequence : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Units_StringsSequence();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const Handle_TCollection_HAsciiString &anItem);
		%feature("autodoc", "1");
		void Append(const Handle_Units_StringsSequence &aSequence);
		%feature("autodoc", "1");
		void Prepend(const Handle_TCollection_HAsciiString &anItem);
		%feature("autodoc", "1");
		void Prepend(const Handle_Units_StringsSequence &aSequence);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_TCollection_HAsciiString &anItem);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_Units_StringsSequence &aSequence);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_TCollection_HAsciiString &anItem);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_Units_StringsSequence &aSequence);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer anIndex, const Standard_Integer anOtherIndex);
		%feature("autodoc", "1");
		Handle_Units_StringsSequence Split(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer anIndex, const Handle_TCollection_HAsciiString &anItem);
		%feature("autodoc", "1");
		const Handle_TCollection_HAsciiString & Value(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString & ChangeValue(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer fromIndex, const Standard_Integer toIndex);
		%feature("autodoc", "1");
		const Units_StrgSequence & Sequence() const;
		%feature("autodoc", "1");
		Units_StrgSequence & ChangeSequence();
		%feature("autodoc", "1");
		Handle_Units_StringsSequence ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Units_StringsSequence {
	Handle_Units_StringsSequence GetHandle() {
	return *(Handle_Units_StringsSequence*) &$self;
	}
};
%extend Units_StringsSequence {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Units_StringsSequence {
	~Units_StringsSequence() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Units_StringsSequence\n");}
	}
};

%nodefaultctor Units_Unit;
class Units_Unit : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Units_Unit(const char * aname, const char * asymbol, const Standard_Real avalue, const Handle_Units_Quantity &aquantity);
		%feature("autodoc", "1");
		Units_Unit(const char * aname, const char * asymbol);
		%feature("autodoc", "1");
		Units_Unit(const char * aname);
		%feature("autodoc", "1");
		TCollection_AsciiString Name() const;
		%feature("autodoc", "1");
		void Symbol(const char * asymbol);
		%feature("autodoc", "1");
		Standard_Real Value() const;
		%feature("autodoc", "1");
		Handle_Units_Quantity Quantity() const;
		%feature("autodoc", "1");
		Handle_Units_StringsSequence SymbolsSequence() const;
		%feature("autodoc", "1");
		void Value(const Standard_Real avalue);
		%feature("autodoc", "1");
		void Quantity(const Handle_Units_Quantity &aquantity);
		%feature("autodoc", "1");
		virtual		Handle_Units_Token Token() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const char * astring) const;
		%feature("autodoc", "1");
		virtual		void Dump(const Standard_Integer ashift, const Standard_Integer alevel) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Units_Unit {
	Handle_Units_Unit GetHandle() {
	return *(Handle_Units_Unit*) &$self;
	}
};
%extend Units_Unit {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Units_Unit {
	~Units_Unit() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Units_Unit\n");}
	}
};

%nodefaultctor Units_ShiftedUnit;
class Units_ShiftedUnit : public Units_Unit {
	public:
		%feature("autodoc", "1");
		Units_ShiftedUnit(const char * aname, const char * asymbol, const Standard_Real avalue, const Standard_Real amove, const Handle_Units_Quantity &aquantity);
		%feature("autodoc", "1");
		Units_ShiftedUnit(const char * aname, const char * asymbol);
		%feature("autodoc", "1");
		Units_ShiftedUnit(const char * aname);
		%feature("autodoc", "1");
		void Move(const Standard_Real amove);
		%feature("autodoc", "1");
		Standard_Real Move() const;
		%feature("autodoc", "1");
		virtual		Handle_Units_Token Token() const;
		%feature("autodoc", "1");
		virtual		void Dump(const Standard_Integer ashift, const Standard_Integer alevel) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Units_ShiftedUnit {
	Handle_Units_ShiftedUnit GetHandle() {
	return *(Handle_Units_ShiftedUnit*) &$self;
	}
};
%extend Units_ShiftedUnit {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Units_ShiftedUnit {
	~Units_ShiftedUnit() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Units_ShiftedUnit\n");}
	}
};

%nodefaultctor Units_Measurement;
class Units_Measurement {
	public:
		%feature("autodoc", "1");
		Units_Measurement();
		%feature("autodoc", "1");
		Units_Measurement(const Standard_Real avalue, const Handle_Units_Token &atoken);
		%feature("autodoc", "1");
		Units_Measurement(const Standard_Real avalue, const char * aunit);
		%feature("autodoc", "1");
		void Convert(const char * aunit);
		%feature("autodoc", "1");
		Units_Measurement Integer() const;
		%feature("autodoc", "1");
		Units_Measurement Fractional() const;
		%feature("autodoc", "1");
		Standard_Real Measurement() const;
		%feature("autodoc", "1");
		Handle_Units_Token Token() const;
		%feature("autodoc", "1");
		Units_Measurement Add(const Units_Measurement &ameasurement) const;
		%feature("autodoc", "1");
		Units_Measurement operator+(const Units_Measurement &ameasurement) const;
		%feature("autodoc", "1");
		Units_Measurement Subtract(const Units_Measurement &ameasurement) const;
		%feature("autodoc", "1");
		Units_Measurement operator-(const Units_Measurement &ameasurement) const;
		%feature("autodoc", "1");
		Units_Measurement Multiply(const Units_Measurement &ameasurement) const;
		%feature("autodoc", "1");
		Units_Measurement operator*(const Units_Measurement &ameasurement) const;
		%feature("autodoc", "1");
		Units_Measurement Multiply(const Standard_Real avalue) const;
		%feature("autodoc", "1");
		Units_Measurement operator*(const Standard_Real avalue) const;
		%feature("autodoc", "1");
		Units_Measurement Divide(const Units_Measurement &ameasurement) const;
		%feature("autodoc", "1");
		Units_Measurement operator/(const Units_Measurement &ameasurement) const;
		%feature("autodoc", "1");
		Units_Measurement Divide(const Standard_Real avalue) const;
		%feature("autodoc", "1");
		Units_Measurement operator/(const Standard_Real avalue) const;
		%feature("autodoc", "1");
		Units_Measurement Power(const Standard_Real anexponent) const;
		%feature("autodoc", "1");
		Standard_Boolean HasToken() const;
		%feature("autodoc", "1");
		void Dump() const;

};
%extend Units_Measurement {
	~Units_Measurement() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Units_Measurement\n");}
	}
};

%nodefaultctor Units_QuantitiesSequence;
class Units_QuantitiesSequence : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Units_QuantitiesSequence();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const Handle_Units_Quantity &anItem);
		%feature("autodoc", "1");
		void Append(const Handle_Units_QuantitiesSequence &aSequence);
		%feature("autodoc", "1");
		void Prepend(const Handle_Units_Quantity &anItem);
		%feature("autodoc", "1");
		void Prepend(const Handle_Units_QuantitiesSequence &aSequence);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_Units_Quantity &anItem);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_Units_QuantitiesSequence &aSequence);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_Units_Quantity &anItem);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_Units_QuantitiesSequence &aSequence);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer anIndex, const Standard_Integer anOtherIndex);
		%feature("autodoc", "1");
		Handle_Units_QuantitiesSequence Split(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer anIndex, const Handle_Units_Quantity &anItem);
		%feature("autodoc", "1");
		const Handle_Units_Quantity & Value(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		Handle_Units_Quantity & ChangeValue(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer fromIndex, const Standard_Integer toIndex);
		%feature("autodoc", "1");
		const Units_QtsSequence & Sequence() const;
		%feature("autodoc", "1");
		Units_QtsSequence & ChangeSequence();
		%feature("autodoc", "1");
		Handle_Units_QuantitiesSequence ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Units_QuantitiesSequence {
	Handle_Units_QuantitiesSequence GetHandle() {
	return *(Handle_Units_QuantitiesSequence*) &$self;
	}
};
%extend Units_QuantitiesSequence {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Units_QuantitiesSequence {
	~Units_QuantitiesSequence() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Units_QuantitiesSequence\n");}
	}
};

%nodefaultctor Units_UnitsSequence;
class Units_UnitsSequence : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Units_UnitsSequence();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const Handle_Units_Unit &anItem);
		%feature("autodoc", "1");
		void Append(const Handle_Units_UnitsSequence &aSequence);
		%feature("autodoc", "1");
		void Prepend(const Handle_Units_Unit &anItem);
		%feature("autodoc", "1");
		void Prepend(const Handle_Units_UnitsSequence &aSequence);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_Units_Unit &anItem);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_Units_UnitsSequence &aSequence);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_Units_Unit &anItem);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_Units_UnitsSequence &aSequence);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer anIndex, const Standard_Integer anOtherIndex);
		%feature("autodoc", "1");
		Handle_Units_UnitsSequence Split(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer anIndex, const Handle_Units_Unit &anItem);
		%feature("autodoc", "1");
		const Handle_Units_Unit & Value(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		Handle_Units_Unit & ChangeValue(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer fromIndex, const Standard_Integer toIndex);
		%feature("autodoc", "1");
		const Units_UtsSequence & Sequence() const;
		%feature("autodoc", "1");
		Units_UtsSequence & ChangeSequence();
		%feature("autodoc", "1");
		Handle_Units_UnitsSequence ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Units_UnitsSequence {
	Handle_Units_UnitsSequence GetHandle() {
	return *(Handle_Units_UnitsSequence*) &$self;
	}
};
%extend Units_UnitsSequence {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Units_UnitsSequence {
	~Units_UnitsSequence() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Units_UnitsSequence\n");}
	}
};

%nodefaultctor Units_NoSuchUnit;
class Units_NoSuchUnit : public Standard_NoSuchObject {
	public:
		%feature("autodoc", "1");
		Units_NoSuchUnit();
		%feature("autodoc", "1");
		Units_NoSuchUnit(const char * AString);
		%feature("autodoc", "1");
		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		Handle_Units_NoSuchUnit NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Units_NoSuchUnit {
	Handle_Units_NoSuchUnit GetHandle() {
	return *(Handle_Units_NoSuchUnit*) &$self;
	}
};
%extend Units_NoSuchUnit {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Units_NoSuchUnit {
	~Units_NoSuchUnit() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Units_NoSuchUnit\n");}
	}
};

%nodefaultctor Units_Token;
class Units_Token : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Units_Token();
		%feature("autodoc", "1");
		Units_Token(const char * aword);
		%feature("autodoc", "1");
		Units_Token(const Handle_Units_Token &atoken);
		%feature("autodoc", "1");
		Units_Token(const char * aword, const char * amean);
		%feature("autodoc", "1");
		Units_Token(const char * aword, const char * amean, const Standard_Real avalue);
		%feature("autodoc", "1");
		Units_Token(const char * aword, const char * amean, const Standard_Real avalue, const Handle_Units_Dimensions &adimension);
		%feature("autodoc", "1");
		virtual		Handle_Units_Token Creates() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		TCollection_AsciiString Word() const;
		%feature("autodoc", "1");
		void Word(const char * aword);
		%feature("autodoc", "1");
		TCollection_AsciiString Mean() const;
		%feature("autodoc", "1");
		void Mean(const char * amean);
		%feature("autodoc", "1");
		Standard_Real Value() const;
		%feature("autodoc", "1");
		void Value(const Standard_Real avalue);
		%feature("autodoc", "1");
		Handle_Units_Dimensions Dimensions() const;
		%feature("autodoc", "1");
		void Dimensions(const Handle_Units_Dimensions &adimensions);
		%feature("autodoc", "1");
		void Update(const char * amean);
		%feature("autodoc", "1");
		Handle_Units_Token Add(const Standard_Integer aninteger) const;
		%feature("autodoc", "1");
		Handle_Units_Token Add(const Handle_Units_Token &atoken) const;
		%feature("autodoc", "1");
		Handle_Units_Token Subtract(const Handle_Units_Token &atoken) const;
		%feature("autodoc", "1");
		Handle_Units_Token Multiply(const Handle_Units_Token &atoken) const;
		%feature("autodoc", "1");
		virtual		Standard_Real Multiplied(const Standard_Real avalue) const;
		%feature("autodoc", "1");
		Handle_Units_Token Divide(const Handle_Units_Token &atoken) const;
		%feature("autodoc", "1");
		virtual		Standard_Real Divided(const Standard_Real avalue) const;
		%feature("autodoc", "1");
		Handle_Units_Token Power(const Handle_Units_Token &atoken) const;
		%feature("autodoc", "1");
		Handle_Units_Token Power(const Standard_Real anexponent) const;
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const char * astring) const;
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const Handle_Units_Token &atoken) const;
		%feature("autodoc", "1");
		Standard_Boolean IsNotEqual(const char * astring) const;
		%feature("autodoc", "1");
		Standard_Boolean IsNotEqual(const Handle_Units_Token &atoken) const;
		%feature("autodoc", "1");
		Standard_Boolean IsLessOrEqual(const char * astring) const;
		%feature("autodoc", "1");
		Standard_Boolean IsGreater(const char * astring) const;
		%feature("autodoc", "1");
		Standard_Boolean IsGreater(const Handle_Units_Token &atoken) const;
		%feature("autodoc", "1");
		Standard_Boolean IsGreaterOrEqual(const Handle_Units_Token &atoken) const;
		%feature("autodoc", "1");
		virtual		void Destroy();
		%feature("autodoc", "1");
		virtual		void Dump(const Standard_Integer ashift, const Standard_Integer alevel) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Units_Token {
	Handle_Units_Token GetHandle() {
	return *(Handle_Units_Token*) &$self;
	}
};
%extend Units_Token {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Units_Token {
	~Units_Token() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Units_Token\n");}
	}
};

%nodefaultctor Units_ShiftedToken;
class Units_ShiftedToken : public Units_Token {
	public:
		%feature("autodoc", "1");
		Units_ShiftedToken(const char * aword, const char * amean, const Standard_Real avalue, const Standard_Real amove, const Handle_Units_Dimensions &adimensions);
		%feature("autodoc", "1");
		Standard_Real Move() const;

};
%extend Units_ShiftedToken {
	Handle_Units_ShiftedToken GetHandle() {
	return *(Handle_Units_ShiftedToken*) &$self;
	}
};
%extend Units_ShiftedToken {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Units_ShiftedToken {
	~Units_ShiftedToken() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Units_ShiftedToken\n");}
	}
};

%nodefaultctor Units_SequenceNodeOfStrgSequence;
class Units_SequenceNodeOfStrgSequence : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Units_SequenceNodeOfStrgSequence(const Handle_TCollection_HAsciiString &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Units_SequenceNodeOfStrgSequence {
	Handle_Units_SequenceNodeOfStrgSequence GetHandle() {
	return *(Handle_Units_SequenceNodeOfStrgSequence*) &$self;
	}
};
%extend Units_SequenceNodeOfStrgSequence {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Units_SequenceNodeOfStrgSequence {
	~Units_SequenceNodeOfStrgSequence() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Units_SequenceNodeOfStrgSequence\n");}
	}
};

%nodefaultctor Units_UnitsSystem;
class Units_UnitsSystem : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Units_UnitsSystem();
		%feature("autodoc", "1");
		Units_UnitsSystem(const char * aName, const Standard_Boolean Verbose=0);
		%feature("autodoc", "1");
		Handle_Units_QuantitiesSequence QuantitiesSequence() const;
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfInteger ActiveUnitsSequence() const;
		%feature("autodoc", "1");
		void Specify(const char * aquantity, const char * aunit);
		%feature("autodoc", "1");
		void Remove(const char * aquantity, const char * aunit);
		%feature("autodoc", "1");
		void Activate(const char * aquantity, const char * aunit);
		%feature("autodoc", "1");
		void Activates();
		%feature("autodoc", "1");
		TCollection_AsciiString ActiveUnit(const char * aquantity) const;
		%feature("autodoc", "1");
		Standard_Real ConvertValueToUserSystem(const char * aquantity, const Standard_Real avalue, const char * aunit) const;
		%feature("autodoc", "1");
		Standard_Real ConvertSIValueToUserSystem(const char * aquantity, const Standard_Real avalue) const;
		%feature("autodoc", "1");
		Standard_Real ConvertUserSystemValueToSI(const char * aquantity, const Standard_Real avalue) const;
		%feature("autodoc", "1");
		void Dump() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Units_UnitsSystem {
	Handle_Units_UnitsSystem GetHandle() {
	return *(Handle_Units_UnitsSystem*) &$self;
	}
};
%extend Units_UnitsSystem {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Units_UnitsSystem {
	~Units_UnitsSystem() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Units_UnitsSystem\n");}
	}
};

%nodefaultctor Units_UnitsDictionary;
class Units_UnitsDictionary : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Units_UnitsDictionary();
		%feature("autodoc", "1");
		void Creates(const char * afilename);
		%feature("autodoc", "1");
		Handle_Units_QuantitiesSequence Sequence() const;
		%feature("autodoc", "1");
		Standard_Boolean UpToDate() const;
		%feature("autodoc", "1");
		TCollection_AsciiString ActiveUnit(const char * aquantity) const;
		%feature("autodoc", "1");
		void Dump(const Standard_Integer alevel) const;
		%feature("autodoc", "1");
		void Dump(const Handle_Units_Dimensions &adimensions) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Units_UnitsDictionary {
	Handle_Units_UnitsDictionary GetHandle() {
	return *(Handle_Units_UnitsDictionary*) &$self;
	}
};
%extend Units_UnitsDictionary {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Units_UnitsDictionary {
	~Units_UnitsDictionary() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Units_UnitsDictionary\n");}
	}
};

%nodefaultctor Units_UtsSequence;
class Units_UtsSequence : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		Units_UtsSequence();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const Units_UtsSequence & Assign(const Units_UtsSequence &Other);
		%feature("autodoc", "1");
		void Append(const Handle_Units_Unit &T);
		%feature("autodoc", "1");
		void Append(Units_UtsSequence & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_Units_Unit &T);
		%feature("autodoc", "1");
		void Prepend(Units_UtsSequence & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_Units_Unit &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, Units_UtsSequence & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_Units_Unit &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, Units_UtsSequence & S);
		%feature("autodoc", "1");
		const Handle_Units_Unit & First() const;
		%feature("autodoc", "1");
		const Handle_Units_Unit & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, Units_UtsSequence & S);
		%feature("autodoc", "1");
		const Handle_Units_Unit & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_Units_Unit & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_Units_Unit &I);
		%feature("autodoc", "1");
		Handle_Units_Unit & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_Units_Unit & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%extend Units_UtsSequence {
	~Units_UtsSequence() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Units_UtsSequence\n");}
	}
};

%nodefaultctor Units_Explorer;
class Units_Explorer {
	public:
		%feature("autodoc", "1");
		Units_Explorer();
		%feature("autodoc", "1");
		Units_Explorer(const Handle_Units_UnitsSystem &aunitssystem);
		%feature("autodoc", "1");
		Units_Explorer(const Handle_Units_UnitsDictionary &aunitsdictionary);
		%feature("autodoc", "1");
		Units_Explorer(const Handle_Units_UnitsSystem &aunitssystem, const char * aquantity);
		%feature("autodoc", "1");
		Units_Explorer(const Handle_Units_UnitsDictionary &aunitsdictionary, const char * aquantity);
		%feature("autodoc", "1");
		void Init(const Handle_Units_UnitsSystem &aunitssystem);
		%feature("autodoc", "1");
		void Init(const Handle_Units_UnitsDictionary &aunitsdictionary);
		%feature("autodoc", "1");
		void Init(const Handle_Units_UnitsSystem &aunitssystem, const char * aquantity);
		%feature("autodoc", "1");
		void Init(const Handle_Units_UnitsDictionary &aunitsdictionary, const char * aquantity);
		%feature("autodoc", "1");
		Standard_Boolean MoreQuantity() const;
		%feature("autodoc", "1");
		void NextQuantity();
		%feature("autodoc", "1");
		TCollection_AsciiString Quantity() const;
		%feature("autodoc", "1");
		Standard_Boolean MoreUnit() const;
		%feature("autodoc", "1");
		void NextUnit();
		%feature("autodoc", "1");
		TCollection_AsciiString Unit() const;
		%feature("autodoc", "1");
		Standard_Boolean IsActive() const;

};
%extend Units_Explorer {
	~Units_Explorer() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Units_Explorer\n");}
	}
};

%nodefaultctor Units;
class Units {
	public:
		%feature("autodoc", "1");
		Units();
		%feature("autodoc", "1");
		void UnitsFile(const char * afile);
		%feature("autodoc", "1");
		void LexiconFile(const char * afile);
		%feature("autodoc", "1");
		Handle_Units_UnitsDictionary DictionaryOfUnits(const Standard_Boolean amode=0);
		%feature("autodoc", "1");
		Handle_Units_Quantity Quantity(const char * aquantity);
		%feature("autodoc", "1");
		char * FirstQuantity(const char * aunit);
		%feature("autodoc", "1");
		Handle_Units_Lexicon LexiconUnits(const Standard_Boolean amode=1);
		%feature("autodoc", "1");
		Handle_Units_Lexicon LexiconFormula();
		%feature("autodoc", "1");
		Handle_Units_Dimensions NullDimensions();
		%feature("autodoc", "1");
		Standard_Real Convert(const Standard_Real avalue, const char * afirstunit, const char * asecondunit);
		%feature("autodoc", "1");
		Standard_Real ToSI(const Standard_Real aData, const char * aUnit);
		%feature("autodoc", "1");
		Standard_Real ToSI(const Standard_Real aData, const char * aUnit, Handle_Units_Dimensions & aDim);
		%feature("autodoc", "1");
		Standard_Real FromSI(const Standard_Real aData, const char * aUnit);
		%feature("autodoc", "1");
		Standard_Real FromSI(const Standard_Real aData, const char * aUnit, Handle_Units_Dimensions & aDim);
		%feature("autodoc", "1");
		Handle_Units_Dimensions Dimensions(const char * aType);

};
%extend Units {
	~Units() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Units\n");}
	}
};

%nodefaultctor Units_TokensSequence;
class Units_TokensSequence : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Units_TokensSequence();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const Handle_Units_Token &anItem);
		%feature("autodoc", "1");
		void Append(const Handle_Units_TokensSequence &aSequence);
		%feature("autodoc", "1");
		void Prepend(const Handle_Units_Token &anItem);
		%feature("autodoc", "1");
		void Prepend(const Handle_Units_TokensSequence &aSequence);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_Units_Token &anItem);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_Units_TokensSequence &aSequence);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_Units_Token &anItem);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_Units_TokensSequence &aSequence);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer anIndex, const Standard_Integer anOtherIndex);
		%feature("autodoc", "1");
		Handle_Units_TokensSequence Split(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer anIndex, const Handle_Units_Token &anItem);
		%feature("autodoc", "1");
		const Handle_Units_Token & Value(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		Handle_Units_Token & ChangeValue(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer fromIndex, const Standard_Integer toIndex);
		%feature("autodoc", "1");
		const Units_TksSequence & Sequence() const;
		%feature("autodoc", "1");
		Units_TksSequence & ChangeSequence();
		%feature("autodoc", "1");
		Handle_Units_TokensSequence ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Units_TokensSequence {
	Handle_Units_TokensSequence GetHandle() {
	return *(Handle_Units_TokensSequence*) &$self;
	}
};
%extend Units_TokensSequence {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Units_TokensSequence {
	~Units_TokensSequence() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Units_TokensSequence\n");}
	}
};

%nodefaultctor Units_UnitSentence;
class Units_UnitSentence : public Units_Sentence {
	public:
		%feature("autodoc", "1");
		Units_UnitSentence(const char * astring);
		%feature("autodoc", "1");
		Units_UnitSentence(const char * astring, const Handle_Units_QuantitiesSequence &aquantitiessequence);
		%feature("autodoc", "1");
		void Analyse();
		%feature("autodoc", "1");
		void SetUnits(const Handle_Units_QuantitiesSequence &aquantitiessequence);

};
%extend Units_UnitSentence {
	~Units_UnitSentence() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Units_UnitSentence\n");}
	}
};

%nodefaultctor Units_QtsSequence;
class Units_QtsSequence : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		Units_QtsSequence();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const Units_QtsSequence & Assign(const Units_QtsSequence &Other);
		%feature("autodoc", "1");
		void Append(const Handle_Units_Quantity &T);
		%feature("autodoc", "1");
		void Append(Units_QtsSequence & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_Units_Quantity &T);
		%feature("autodoc", "1");
		void Prepend(Units_QtsSequence & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_Units_Quantity &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, Units_QtsSequence & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_Units_Quantity &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, Units_QtsSequence & S);
		%feature("autodoc", "1");
		const Handle_Units_Quantity & First() const;
		%feature("autodoc", "1");
		const Handle_Units_Quantity & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, Units_QtsSequence & S);
		%feature("autodoc", "1");
		const Handle_Units_Quantity & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_Units_Quantity & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_Units_Quantity &I);
		%feature("autodoc", "1");
		Handle_Units_Quantity & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_Units_Quantity & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%extend Units_QtsSequence {
	~Units_QtsSequence() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Units_QtsSequence\n");}
	}
};

%nodefaultctor Units_SequenceNodeOfUtsSequence;
class Units_SequenceNodeOfUtsSequence : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Units_SequenceNodeOfUtsSequence(const Handle_Units_Unit &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_Units_Unit & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Units_SequenceNodeOfUtsSequence {
	Handle_Units_SequenceNodeOfUtsSequence GetHandle() {
	return *(Handle_Units_SequenceNodeOfUtsSequence*) &$self;
	}
};
%extend Units_SequenceNodeOfUtsSequence {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Units_SequenceNodeOfUtsSequence {
	~Units_SequenceNodeOfUtsSequence() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Units_SequenceNodeOfUtsSequence\n");}
	}
};

%nodefaultctor Units_SequenceNodeOfQtsSequence;
class Units_SequenceNodeOfQtsSequence : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Units_SequenceNodeOfQtsSequence(const Handle_Units_Quantity &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_Units_Quantity & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Units_SequenceNodeOfQtsSequence {
	Handle_Units_SequenceNodeOfQtsSequence GetHandle() {
	return *(Handle_Units_SequenceNodeOfQtsSequence*) &$self;
	}
};
%extend Units_SequenceNodeOfQtsSequence {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Units_SequenceNodeOfQtsSequence {
	~Units_SequenceNodeOfQtsSequence() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Units_SequenceNodeOfQtsSequence\n");}
	}
};

%nodefaultctor Units_StrgSequence;
class Units_StrgSequence : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		Units_StrgSequence();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const Units_StrgSequence & Assign(const Units_StrgSequence &Other);
		%feature("autodoc", "1");
		void Append(const Handle_TCollection_HAsciiString &T);
		%feature("autodoc", "1");
		void Append(Units_StrgSequence & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_TCollection_HAsciiString &T);
		%feature("autodoc", "1");
		void Prepend(Units_StrgSequence & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_TCollection_HAsciiString &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, Units_StrgSequence & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_TCollection_HAsciiString &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, Units_StrgSequence & S);
		%feature("autodoc", "1");
		const Handle_TCollection_HAsciiString & First() const;
		%feature("autodoc", "1");
		const Handle_TCollection_HAsciiString & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, Units_StrgSequence & S);
		%feature("autodoc", "1");
		const Handle_TCollection_HAsciiString & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_TCollection_HAsciiString & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_TCollection_HAsciiString &I);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%extend Units_StrgSequence {
	~Units_StrgSequence() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Units_StrgSequence\n");}
	}
};

%nodefaultctor Units_TksSequence;
class Units_TksSequence : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		Units_TksSequence();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const Units_TksSequence & Assign(const Units_TksSequence &Other);
		%feature("autodoc", "1");
		void Append(const Handle_Units_Token &T);
		%feature("autodoc", "1");
		void Append(Units_TksSequence & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_Units_Token &T);
		%feature("autodoc", "1");
		void Prepend(Units_TksSequence & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_Units_Token &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, Units_TksSequence & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_Units_Token &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, Units_TksSequence & S);
		%feature("autodoc", "1");
		const Handle_Units_Token & First() const;
		%feature("autodoc", "1");
		const Handle_Units_Token & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, Units_TksSequence & S);
		%feature("autodoc", "1");
		const Handle_Units_Token & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_Units_Token & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_Units_Token &I);
		%feature("autodoc", "1");
		Handle_Units_Token & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_Units_Token & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%extend Units_TksSequence {
	~Units_TksSequence() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Units_TksSequence\n");}
	}
};