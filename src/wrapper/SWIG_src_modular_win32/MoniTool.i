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
%module MoniTool

%include MoniTool_renames.i

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

/*
Renaming operator = that can't be wrapped in Python
*/
%rename(Set) *::operator=;


%include MoniTool_dependencies.i


%include MoniTool_headers.i


enum MoniTool_ValueType {
	MoniTool_ValueMisc,
	MoniTool_ValueInteger,
	MoniTool_ValueReal,
	MoniTool_ValueIdent,
	MoniTool_ValueVoid,
	MoniTool_ValueText,
	MoniTool_ValueEnum,
	MoniTool_ValueLogical,
	MoniTool_ValueSub,
	MoniTool_ValueHexa,
	MoniTool_ValueBinary,
	};



%nodefaultctor Handle_MoniTool_SignText;
class Handle_MoniTool_SignText : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_MoniTool_SignText();
		%feature("autodoc", "1");
		Handle_MoniTool_SignText(const Handle_MoniTool_SignText &aHandle);
		%feature("autodoc", "1");
		Handle_MoniTool_SignText(const MoniTool_SignText *anItem);
		%feature("autodoc", "1");
		Handle_MoniTool_SignText & operator=(const Handle_MoniTool_SignText &aHandle);
		%feature("autodoc", "1");
		Handle_MoniTool_SignText & operator=(const MoniTool_SignText *anItem);
		%feature("autodoc", "1");
		Handle_MoniTool_SignText const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MoniTool_SignText {
	MoniTool_SignText* GetObject() {
	return (MoniTool_SignText*)$self->Access();
	}
};
%extend Handle_MoniTool_SignText {
	~Handle_MoniTool_SignText() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_MoniTool_SignText\n");}
	}
};


%nodefaultctor Handle_MoniTool_CaseData;
class Handle_MoniTool_CaseData : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_MoniTool_CaseData();
		%feature("autodoc", "1");
		Handle_MoniTool_CaseData(const Handle_MoniTool_CaseData &aHandle);
		%feature("autodoc", "1");
		Handle_MoniTool_CaseData(const MoniTool_CaseData *anItem);
		%feature("autodoc", "1");
		Handle_MoniTool_CaseData & operator=(const Handle_MoniTool_CaseData &aHandle);
		%feature("autodoc", "1");
		Handle_MoniTool_CaseData & operator=(const MoniTool_CaseData *anItem);
		%feature("autodoc", "1");
		Handle_MoniTool_CaseData const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MoniTool_CaseData {
	MoniTool_CaseData* GetObject() {
	return (MoniTool_CaseData*)$self->Access();
	}
};
%extend Handle_MoniTool_CaseData {
	~Handle_MoniTool_CaseData() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_MoniTool_CaseData\n");}
	}
};


%nodefaultctor Handle_MoniTool_DataMapNodeOfDataMapOfTimer;
class Handle_MoniTool_DataMapNodeOfDataMapOfTimer : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_MoniTool_DataMapNodeOfDataMapOfTimer();
		%feature("autodoc", "1");
		Handle_MoniTool_DataMapNodeOfDataMapOfTimer(const Handle_MoniTool_DataMapNodeOfDataMapOfTimer &aHandle);
		%feature("autodoc", "1");
		Handle_MoniTool_DataMapNodeOfDataMapOfTimer(const MoniTool_DataMapNodeOfDataMapOfTimer *anItem);
		%feature("autodoc", "1");
		Handle_MoniTool_DataMapNodeOfDataMapOfTimer & operator=(const Handle_MoniTool_DataMapNodeOfDataMapOfTimer &aHandle);
		%feature("autodoc", "1");
		Handle_MoniTool_DataMapNodeOfDataMapOfTimer & operator=(const MoniTool_DataMapNodeOfDataMapOfTimer *anItem);
		%feature("autodoc", "1");
		Handle_MoniTool_DataMapNodeOfDataMapOfTimer const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MoniTool_DataMapNodeOfDataMapOfTimer {
	MoniTool_DataMapNodeOfDataMapOfTimer* GetObject() {
	return (MoniTool_DataMapNodeOfDataMapOfTimer*)$self->Access();
	}
};
%extend Handle_MoniTool_DataMapNodeOfDataMapOfTimer {
	~Handle_MoniTool_DataMapNodeOfDataMapOfTimer() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_MoniTool_DataMapNodeOfDataMapOfTimer\n");}
	}
};


%nodefaultctor Handle_MoniTool_IntVal;
class Handle_MoniTool_IntVal : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_MoniTool_IntVal();
		%feature("autodoc", "1");
		Handle_MoniTool_IntVal(const Handle_MoniTool_IntVal &aHandle);
		%feature("autodoc", "1");
		Handle_MoniTool_IntVal(const MoniTool_IntVal *anItem);
		%feature("autodoc", "1");
		Handle_MoniTool_IntVal & operator=(const Handle_MoniTool_IntVal &aHandle);
		%feature("autodoc", "1");
		Handle_MoniTool_IntVal & operator=(const MoniTool_IntVal *anItem);
		%feature("autodoc", "1");
		Handle_MoniTool_IntVal const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MoniTool_IntVal {
	MoniTool_IntVal* GetObject() {
	return (MoniTool_IntVal*)$self->Access();
	}
};
%extend Handle_MoniTool_IntVal {
	~Handle_MoniTool_IntVal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_MoniTool_IntVal\n");}
	}
};


%nodefaultctor Handle_MoniTool_DataMapNodeOfDataMapOfShapeTransient;
class Handle_MoniTool_DataMapNodeOfDataMapOfShapeTransient : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_MoniTool_DataMapNodeOfDataMapOfShapeTransient();
		%feature("autodoc", "1");
		Handle_MoniTool_DataMapNodeOfDataMapOfShapeTransient(const Handle_MoniTool_DataMapNodeOfDataMapOfShapeTransient &aHandle);
		%feature("autodoc", "1");
		Handle_MoniTool_DataMapNodeOfDataMapOfShapeTransient(const MoniTool_DataMapNodeOfDataMapOfShapeTransient *anItem);
		%feature("autodoc", "1");
		Handle_MoniTool_DataMapNodeOfDataMapOfShapeTransient & operator=(const Handle_MoniTool_DataMapNodeOfDataMapOfShapeTransient &aHandle);
		%feature("autodoc", "1");
		Handle_MoniTool_DataMapNodeOfDataMapOfShapeTransient & operator=(const MoniTool_DataMapNodeOfDataMapOfShapeTransient *anItem);
		%feature("autodoc", "1");
		Handle_MoniTool_DataMapNodeOfDataMapOfShapeTransient const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MoniTool_DataMapNodeOfDataMapOfShapeTransient {
	MoniTool_DataMapNodeOfDataMapOfShapeTransient* GetObject() {
	return (MoniTool_DataMapNodeOfDataMapOfShapeTransient*)$self->Access();
	}
};
%extend Handle_MoniTool_DataMapNodeOfDataMapOfShapeTransient {
	~Handle_MoniTool_DataMapNodeOfDataMapOfShapeTransient() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_MoniTool_DataMapNodeOfDataMapOfShapeTransient\n");}
	}
};


%nodefaultctor Handle_MoniTool_RealVal;
class Handle_MoniTool_RealVal : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_MoniTool_RealVal();
		%feature("autodoc", "1");
		Handle_MoniTool_RealVal(const Handle_MoniTool_RealVal &aHandle);
		%feature("autodoc", "1");
		Handle_MoniTool_RealVal(const MoniTool_RealVal *anItem);
		%feature("autodoc", "1");
		Handle_MoniTool_RealVal & operator=(const Handle_MoniTool_RealVal &aHandle);
		%feature("autodoc", "1");
		Handle_MoniTool_RealVal & operator=(const MoniTool_RealVal *anItem);
		%feature("autodoc", "1");
		Handle_MoniTool_RealVal const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MoniTool_RealVal {
	MoniTool_RealVal* GetObject() {
	return (MoniTool_RealVal*)$self->Access();
	}
};
%extend Handle_MoniTool_RealVal {
	~Handle_MoniTool_RealVal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_MoniTool_RealVal\n");}
	}
};


%nodefaultctor Handle_MoniTool_Element;
class Handle_MoniTool_Element : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_MoniTool_Element();
		%feature("autodoc", "1");
		Handle_MoniTool_Element(const Handle_MoniTool_Element &aHandle);
		%feature("autodoc", "1");
		Handle_MoniTool_Element(const MoniTool_Element *anItem);
		%feature("autodoc", "1");
		Handle_MoniTool_Element & operator=(const Handle_MoniTool_Element &aHandle);
		%feature("autodoc", "1");
		Handle_MoniTool_Element & operator=(const MoniTool_Element *anItem);
		%feature("autodoc", "1");
		Handle_MoniTool_Element const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MoniTool_Element {
	MoniTool_Element* GetObject() {
	return (MoniTool_Element*)$self->Access();
	}
};
%extend Handle_MoniTool_Element {
	~Handle_MoniTool_Element() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_MoniTool_Element\n");}
	}
};


%nodefaultctor Handle_MoniTool_TransientElem;
class Handle_MoniTool_TransientElem : public Handle_MoniTool_Element {
	public:
		%feature("autodoc", "1");
		Handle_MoniTool_TransientElem();
		%feature("autodoc", "1");
		Handle_MoniTool_TransientElem(const Handle_MoniTool_TransientElem &aHandle);
		%feature("autodoc", "1");
		Handle_MoniTool_TransientElem(const MoniTool_TransientElem *anItem);
		%feature("autodoc", "1");
		Handle_MoniTool_TransientElem & operator=(const Handle_MoniTool_TransientElem &aHandle);
		%feature("autodoc", "1");
		Handle_MoniTool_TransientElem & operator=(const MoniTool_TransientElem *anItem);
		%feature("autodoc", "1");
		Handle_MoniTool_TransientElem const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MoniTool_TransientElem {
	MoniTool_TransientElem* GetObject() {
	return (MoniTool_TransientElem*)$self->Access();
	}
};
%extend Handle_MoniTool_TransientElem {
	~Handle_MoniTool_TransientElem() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_MoniTool_TransientElem\n");}
	}
};


%nodefaultctor Handle_MoniTool_Profile;
class Handle_MoniTool_Profile : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_MoniTool_Profile();
		%feature("autodoc", "1");
		Handle_MoniTool_Profile(const Handle_MoniTool_Profile &aHandle);
		%feature("autodoc", "1");
		Handle_MoniTool_Profile(const MoniTool_Profile *anItem);
		%feature("autodoc", "1");
		Handle_MoniTool_Profile & operator=(const Handle_MoniTool_Profile &aHandle);
		%feature("autodoc", "1");
		Handle_MoniTool_Profile & operator=(const MoniTool_Profile *anItem);
		%feature("autodoc", "1");
		Handle_MoniTool_Profile const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MoniTool_Profile {
	MoniTool_Profile* GetObject() {
	return (MoniTool_Profile*)$self->Access();
	}
};
%extend Handle_MoniTool_Profile {
	~Handle_MoniTool_Profile() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_MoniTool_Profile\n");}
	}
};


%nodefaultctor Handle_MoniTool_SequenceNodeOfSequenceOfElement;
class Handle_MoniTool_SequenceNodeOfSequenceOfElement : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_MoniTool_SequenceNodeOfSequenceOfElement();
		%feature("autodoc", "1");
		Handle_MoniTool_SequenceNodeOfSequenceOfElement(const Handle_MoniTool_SequenceNodeOfSequenceOfElement &aHandle);
		%feature("autodoc", "1");
		Handle_MoniTool_SequenceNodeOfSequenceOfElement(const MoniTool_SequenceNodeOfSequenceOfElement *anItem);
		%feature("autodoc", "1");
		Handle_MoniTool_SequenceNodeOfSequenceOfElement & operator=(const Handle_MoniTool_SequenceNodeOfSequenceOfElement &aHandle);
		%feature("autodoc", "1");
		Handle_MoniTool_SequenceNodeOfSequenceOfElement & operator=(const MoniTool_SequenceNodeOfSequenceOfElement *anItem);
		%feature("autodoc", "1");
		Handle_MoniTool_SequenceNodeOfSequenceOfElement const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MoniTool_SequenceNodeOfSequenceOfElement {
	MoniTool_SequenceNodeOfSequenceOfElement* GetObject() {
	return (MoniTool_SequenceNodeOfSequenceOfElement*)$self->Access();
	}
};
%extend Handle_MoniTool_SequenceNodeOfSequenceOfElement {
	~Handle_MoniTool_SequenceNodeOfSequenceOfElement() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_MoniTool_SequenceNodeOfSequenceOfElement\n");}
	}
};


%nodefaultctor Handle_MoniTool_Timer;
class Handle_MoniTool_Timer : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_MoniTool_Timer();
		%feature("autodoc", "1");
		Handle_MoniTool_Timer(const Handle_MoniTool_Timer &aHandle);
		%feature("autodoc", "1");
		Handle_MoniTool_Timer(const MoniTool_Timer *anItem);
		%feature("autodoc", "1");
		Handle_MoniTool_Timer & operator=(const Handle_MoniTool_Timer &aHandle);
		%feature("autodoc", "1");
		Handle_MoniTool_Timer & operator=(const MoniTool_Timer *anItem);
		%feature("autodoc", "1");
		Handle_MoniTool_Timer const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MoniTool_Timer {
	MoniTool_Timer* GetObject() {
	return (MoniTool_Timer*)$self->Access();
	}
};
%extend Handle_MoniTool_Timer {
	~Handle_MoniTool_Timer() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_MoniTool_Timer\n");}
	}
};


%nodefaultctor Handle_MoniTool_TypedValue;
class Handle_MoniTool_TypedValue : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_MoniTool_TypedValue();
		%feature("autodoc", "1");
		Handle_MoniTool_TypedValue(const Handle_MoniTool_TypedValue &aHandle);
		%feature("autodoc", "1");
		Handle_MoniTool_TypedValue(const MoniTool_TypedValue *anItem);
		%feature("autodoc", "1");
		Handle_MoniTool_TypedValue & operator=(const Handle_MoniTool_TypedValue &aHandle);
		%feature("autodoc", "1");
		Handle_MoniTool_TypedValue & operator=(const MoniTool_TypedValue *anItem);
		%feature("autodoc", "1");
		Handle_MoniTool_TypedValue const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MoniTool_TypedValue {
	MoniTool_TypedValue* GetObject() {
	return (MoniTool_TypedValue*)$self->Access();
	}
};
%extend Handle_MoniTool_TypedValue {
	~Handle_MoniTool_TypedValue() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_MoniTool_TypedValue\n");}
	}
};


%nodefaultctor Handle_MoniTool_Option;
class Handle_MoniTool_Option : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_MoniTool_Option();
		%feature("autodoc", "1");
		Handle_MoniTool_Option(const Handle_MoniTool_Option &aHandle);
		%feature("autodoc", "1");
		Handle_MoniTool_Option(const MoniTool_Option *anItem);
		%feature("autodoc", "1");
		Handle_MoniTool_Option & operator=(const Handle_MoniTool_Option &aHandle);
		%feature("autodoc", "1");
		Handle_MoniTool_Option & operator=(const MoniTool_Option *anItem);
		%feature("autodoc", "1");
		Handle_MoniTool_Option const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MoniTool_Option {
	MoniTool_Option* GetObject() {
	return (MoniTool_Option*)$self->Access();
	}
};
%extend Handle_MoniTool_Option {
	~Handle_MoniTool_Option() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_MoniTool_Option\n");}
	}
};


%nodefaultctor Handle_MoniTool_IndexedDataMapNodeOfIndexedDataMapOfShapeTransient;
class Handle_MoniTool_IndexedDataMapNodeOfIndexedDataMapOfShapeTransient : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_MoniTool_IndexedDataMapNodeOfIndexedDataMapOfShapeTransient();
		%feature("autodoc", "1");
		Handle_MoniTool_IndexedDataMapNodeOfIndexedDataMapOfShapeTransient(const Handle_MoniTool_IndexedDataMapNodeOfIndexedDataMapOfShapeTransient &aHandle);
		%feature("autodoc", "1");
		Handle_MoniTool_IndexedDataMapNodeOfIndexedDataMapOfShapeTransient(const MoniTool_IndexedDataMapNodeOfIndexedDataMapOfShapeTransient *anItem);
		%feature("autodoc", "1");
		Handle_MoniTool_IndexedDataMapNodeOfIndexedDataMapOfShapeTransient & operator=(const Handle_MoniTool_IndexedDataMapNodeOfIndexedDataMapOfShapeTransient &aHandle);
		%feature("autodoc", "1");
		Handle_MoniTool_IndexedDataMapNodeOfIndexedDataMapOfShapeTransient & operator=(const MoniTool_IndexedDataMapNodeOfIndexedDataMapOfShapeTransient *anItem);
		%feature("autodoc", "1");
		Handle_MoniTool_IndexedDataMapNodeOfIndexedDataMapOfShapeTransient const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MoniTool_IndexedDataMapNodeOfIndexedDataMapOfShapeTransient {
	MoniTool_IndexedDataMapNodeOfIndexedDataMapOfShapeTransient* GetObject() {
	return (MoniTool_IndexedDataMapNodeOfIndexedDataMapOfShapeTransient*)$self->Access();
	}
};
%extend Handle_MoniTool_IndexedDataMapNodeOfIndexedDataMapOfShapeTransient {
	~Handle_MoniTool_IndexedDataMapNodeOfIndexedDataMapOfShapeTransient() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_MoniTool_IndexedDataMapNodeOfIndexedDataMapOfShapeTransient\n");}
	}
};


%nodefaultctor Handle_MoniTool_SignShape;
class Handle_MoniTool_SignShape : public Handle_MoniTool_SignText {
	public:
		%feature("autodoc", "1");
		Handle_MoniTool_SignShape();
		%feature("autodoc", "1");
		Handle_MoniTool_SignShape(const Handle_MoniTool_SignShape &aHandle);
		%feature("autodoc", "1");
		Handle_MoniTool_SignShape(const MoniTool_SignShape *anItem);
		%feature("autodoc", "1");
		Handle_MoniTool_SignShape & operator=(const Handle_MoniTool_SignShape &aHandle);
		%feature("autodoc", "1");
		Handle_MoniTool_SignShape & operator=(const MoniTool_SignShape *anItem);
		%feature("autodoc", "1");
		Handle_MoniTool_SignShape const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MoniTool_SignShape {
	MoniTool_SignShape* GetObject() {
	return (MoniTool_SignShape*)$self->Access();
	}
};
%extend Handle_MoniTool_SignShape {
	~Handle_MoniTool_SignShape() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_MoniTool_SignShape\n");}
	}
};


%nodefaultctor Handle_MoniTool_HSequenceOfElement;
class Handle_MoniTool_HSequenceOfElement : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_MoniTool_HSequenceOfElement();
		%feature("autodoc", "1");
		Handle_MoniTool_HSequenceOfElement(const Handle_MoniTool_HSequenceOfElement &aHandle);
		%feature("autodoc", "1");
		Handle_MoniTool_HSequenceOfElement(const MoniTool_HSequenceOfElement *anItem);
		%feature("autodoc", "1");
		Handle_MoniTool_HSequenceOfElement & operator=(const Handle_MoniTool_HSequenceOfElement &aHandle);
		%feature("autodoc", "1");
		Handle_MoniTool_HSequenceOfElement & operator=(const MoniTool_HSequenceOfElement *anItem);
		%feature("autodoc", "1");
		Handle_MoniTool_HSequenceOfElement const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MoniTool_HSequenceOfElement {
	MoniTool_HSequenceOfElement* GetObject() {
	return (MoniTool_HSequenceOfElement*)$self->Access();
	}
};
%extend Handle_MoniTool_HSequenceOfElement {
	~Handle_MoniTool_HSequenceOfElement() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_MoniTool_HSequenceOfElement\n");}
	}
};


%nodefaultctor MoniTool_DataMapNodeOfDataMapOfShapeTransient;
class MoniTool_DataMapNodeOfDataMapOfShapeTransient : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		MoniTool_DataMapNodeOfDataMapOfShapeTransient(const TopoDS_Shape &K, const Handle_Standard_Transient &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		Handle_Standard_Transient & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MoniTool_DataMapNodeOfDataMapOfShapeTransient {
	Handle_MoniTool_DataMapNodeOfDataMapOfShapeTransient GetHandle() {
	return *(Handle_MoniTool_DataMapNodeOfDataMapOfShapeTransient*) &$self;
	}
};
%extend MoniTool_DataMapNodeOfDataMapOfShapeTransient {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend MoniTool_DataMapNodeOfDataMapOfShapeTransient {
	~MoniTool_DataMapNodeOfDataMapOfShapeTransient() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of MoniTool_DataMapNodeOfDataMapOfShapeTransient\n");}
	}
};


%nodefaultctor MoniTool_HSequenceOfElement;
class MoniTool_HSequenceOfElement : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		MoniTool_HSequenceOfElement();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const Handle_MoniTool_Element &anItem);
		%feature("autodoc", "1");
		void Append(const Handle_MoniTool_HSequenceOfElement &aSequence);
		%feature("autodoc", "1");
		void Prepend(const Handle_MoniTool_Element &anItem);
		%feature("autodoc", "1");
		void Prepend(const Handle_MoniTool_HSequenceOfElement &aSequence);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_MoniTool_Element &anItem);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_MoniTool_HSequenceOfElement &aSequence);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_MoniTool_Element &anItem);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_MoniTool_HSequenceOfElement &aSequence);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer anIndex, const Standard_Integer anOtherIndex);
		%feature("autodoc", "1");
		Handle_MoniTool_HSequenceOfElement Split(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer anIndex, const Handle_MoniTool_Element &anItem);
		%feature("autodoc", "1");
		const Handle_MoniTool_Element & Value(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		Handle_MoniTool_Element & ChangeValue(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer fromIndex, const Standard_Integer toIndex);
		%feature("autodoc", "1");
		const MoniTool_SequenceOfElement & Sequence() const;
		%feature("autodoc", "1");
		MoniTool_SequenceOfElement & ChangeSequence();
		%feature("autodoc", "1");
		Handle_MoniTool_HSequenceOfElement ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MoniTool_HSequenceOfElement {
	Handle_MoniTool_HSequenceOfElement GetHandle() {
	return *(Handle_MoniTool_HSequenceOfElement*) &$self;
	}
};
%extend MoniTool_HSequenceOfElement {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend MoniTool_HSequenceOfElement {
	~MoniTool_HSequenceOfElement() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of MoniTool_HSequenceOfElement\n");}
	}
};


%nodefaultctor MoniTool_ElemHasher;
class MoniTool_ElemHasher {
	public:
		%feature("autodoc", "1");
		MoniTool_ElemHasher();
		%feature("autodoc", "1");
		Standard_Integer HashCode(const Handle_MoniTool_Element &K, const Standard_Integer Upper);
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const Handle_MoniTool_Element &K1, const Handle_MoniTool_Element &K2);

};
%extend MoniTool_ElemHasher {
	~MoniTool_ElemHasher() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of MoniTool_ElemHasher\n");}
	}
};


%nodefaultctor MoniTool_Timer;
class MoniTool_Timer : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		MoniTool_Timer();
		%feature("autodoc", "1");
		const OSD_Timer & Timer() const;
		%feature("autodoc", "1");
		OSD_Timer & Timer();
		%feature("autodoc", "1");
		void Start();
		%feature("autodoc", "1");
		void Stop();
		%feature("autodoc", "1");
		void Reset();
		%feature("autodoc", "1");
		Standard_Integer Count() const;
		%feature("autodoc", "1");
		Standard_Integer IsRunning() const;
		%feature("autodoc", "1");
		Standard_Real CPU();
		%feature("autodoc", "1");
		Standard_Real Amend() const;
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		Handle_MoniTool_Timer Timer(const char * name);
		%feature("autodoc", "1");
		void Start(const char * name);
		%feature("autodoc", "1");
		void Stop(const char * name);
		%feature("autodoc", "1");
		MoniTool_DataMapOfTimer & Dictionary();
		%feature("autodoc", "1");
		void ClearTimers();
		%feature("autodoc", "1");
		%extend{
			std::string DumpTimersToString() {
			std::stringstream s;
			self->DumpTimers(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		void ComputeAmendments();
		%feature("autodoc", "1");
		void GetAmendments(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MoniTool_Timer {
	Handle_MoniTool_Timer GetHandle() {
	return *(Handle_MoniTool_Timer*) &$self;
	}
};
%extend MoniTool_Timer {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend MoniTool_Timer {
	~MoniTool_Timer() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of MoniTool_Timer\n");}
	}
};


%nodefaultctor MoniTool_SequenceNodeOfSequenceOfElement;
class MoniTool_SequenceNodeOfSequenceOfElement : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		MoniTool_SequenceNodeOfSequenceOfElement(const Handle_MoniTool_Element &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_MoniTool_Element & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MoniTool_SequenceNodeOfSequenceOfElement {
	Handle_MoniTool_SequenceNodeOfSequenceOfElement GetHandle() {
	return *(Handle_MoniTool_SequenceNodeOfSequenceOfElement*) &$self;
	}
};
%extend MoniTool_SequenceNodeOfSequenceOfElement {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend MoniTool_SequenceNodeOfSequenceOfElement {
	~MoniTool_SequenceNodeOfSequenceOfElement() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of MoniTool_SequenceNodeOfSequenceOfElement\n");}
	}
};


%nodefaultctor MoniTool_Profile;
class MoniTool_Profile : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		MoniTool_Profile();
		%feature("autodoc", "1");
		void AddOption(const Handle_MoniTool_Option &option, const char * name="");
		%feature("autodoc", "1");
		Handle_MoniTool_Option Option(const char * name) const;
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfAsciiString OptionList() const;
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfAsciiString TypedValueList() const;
		%feature("autodoc", "1");
		void NewConf(const char * confname);
		%feature("autodoc", "1");
		void AddConf(const char * confname);
		%feature("autodoc", "1");
		Standard_Boolean HasConf(const char * confname) const;
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfAsciiString ConfList() const;
		%feature("autodoc", "1");
		Standard_Boolean ClearConf(const char * confname);
		%feature("autodoc", "1");
		Standard_Boolean AddFromOtherConf(const char * confname, const char * otherconf);
		%feature("autodoc", "1");
		Standard_Boolean SetFromCurrent(const char * confname);
		%feature("autodoc", "1");
		Standard_Boolean AddSwitch(const char * confname, const char * optname, const char * casename="");
		%feature("autodoc", "1");
		Standard_Boolean RemoveSwitch(const char * confname, const char * optname);
		%feature("autodoc", "1");
		void SwitchList(const char * confname, Handle_TColStd_HSequenceOfAsciiString & optlist, Handle_TColStd_HSequenceOfAsciiString & caselist) const;
		%feature("autodoc", "1");
		Standard_Boolean SetCurrent(const char * confname);
		%feature("autodoc", "1");
		void RecordCurrent();
		%feature("autodoc", "1");
		const TCollection_AsciiString & Current() const;
		%feature("autodoc", "1");
		TCollection_AsciiString CaseName(const char * optname, const Standard_Boolean proper=0) const;
		%feature("autodoc", "1");
		Handle_Standard_Transient CaseValue(const char * optname) const;
		%feature("autodoc", "1");
		Standard_Boolean Value(const char * optname, Handle_Standard_Transient & val) const;
		%feature("autodoc", "1");
		void SetTypedValues(const Standard_Boolean proper=0, const char * name="") const;
		%feature("autodoc", "1");
		void SetFast(const char * confname="");
		%feature("autodoc", "1");
		void ClearFast();
		%feature("autodoc", "1");
		Standard_Boolean FastValue(const char * optname, Handle_Standard_Transient & val) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MoniTool_Profile {
	Handle_MoniTool_Profile GetHandle() {
	return *(Handle_MoniTool_Profile*) &$self;
	}
};
%extend MoniTool_Profile {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend MoniTool_Profile {
	~MoniTool_Profile() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of MoniTool_Profile\n");}
	}
};


%nodefaultctor MoniTool_DataMapOfShapeTransient;
class MoniTool_DataMapOfShapeTransient : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		MoniTool_DataMapOfShapeTransient(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		MoniTool_DataMapOfShapeTransient & Assign(const MoniTool_DataMapOfShapeTransient &Other);
		%feature("autodoc", "1");
		MoniTool_DataMapOfShapeTransient & operator=(const MoniTool_DataMapOfShapeTransient &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TopoDS_Shape &K, const Handle_Standard_Transient &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TopoDS_Shape &K);
		%feature("autodoc", "1");
		const Handle_Standard_Transient & Find(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		const Handle_Standard_Transient & operator()(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		Handle_Standard_Transient & ChangeFind(const TopoDS_Shape &K);
		%feature("autodoc", "1");
		Handle_Standard_Transient & operator()(const TopoDS_Shape &K);

};
%extend MoniTool_DataMapOfShapeTransient {
	~MoniTool_DataMapOfShapeTransient() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of MoniTool_DataMapOfShapeTransient\n");}
	}
};


%nodefaultctor MoniTool_TimerSentry;
class MoniTool_TimerSentry {
	public:
		%feature("autodoc", "1");
		MoniTool_TimerSentry(const char * cname);
		%feature("autodoc", "1");
		MoniTool_TimerSentry(const Handle_MoniTool_Timer &timer);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Handle_MoniTool_Timer Timer() const;
		%feature("autodoc", "1");
		void Stop();

};
%extend MoniTool_TimerSentry {
	~MoniTool_TimerSentry() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of MoniTool_TimerSentry\n");}
	}
};


%nodefaultctor MoniTool_IntVal;
class MoniTool_IntVal : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		MoniTool_IntVal(const Standard_Integer val=0);
		%feature("autodoc", "1");
		Standard_Integer Value() const;
		%feature("autodoc", "1");
		Standard_Integer & CValue();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MoniTool_IntVal {
	Handle_MoniTool_IntVal GetHandle() {
	return *(Handle_MoniTool_IntVal*) &$self;
	}
};
%extend MoniTool_IntVal {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend MoniTool_IntVal {
	~MoniTool_IntVal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of MoniTool_IntVal\n");}
	}
};


%nodefaultctor MoniTool_RealVal;
class MoniTool_RealVal : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		MoniTool_RealVal(const Standard_Real val=0.0);
		%feature("autodoc", "1");
		Standard_Real Value() const;
		%feature("autodoc", "1");
		Standard_Real & CValue();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MoniTool_RealVal {
	Handle_MoniTool_RealVal GetHandle() {
	return *(Handle_MoniTool_RealVal*) &$self;
	}
};
%extend MoniTool_RealVal {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend MoniTool_RealVal {
	~MoniTool_RealVal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of MoniTool_RealVal\n");}
	}
};


%nodefaultctor MoniTool_DataMapIteratorOfDataMapOfShapeTransient;
class MoniTool_DataMapIteratorOfDataMapOfShapeTransient : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		MoniTool_DataMapIteratorOfDataMapOfShapeTransient();
		%feature("autodoc", "1");
		MoniTool_DataMapIteratorOfDataMapOfShapeTransient(const MoniTool_DataMapOfShapeTransient &aMap);
		%feature("autodoc", "1");
		void Initialize(const MoniTool_DataMapOfShapeTransient &aMap);
		%feature("autodoc", "1");
		const TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		const Handle_Standard_Transient & Value() const;

};
%extend MoniTool_DataMapIteratorOfDataMapOfShapeTransient {
	~MoniTool_DataMapIteratorOfDataMapOfShapeTransient() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of MoniTool_DataMapIteratorOfDataMapOfShapeTransient\n");}
	}
};


%nodefaultctor MoniTool_Element;
class MoniTool_Element : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Standard_Integer GetHashCode() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Equates(const Handle_MoniTool_Element &other) const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type ValueType() const;
		%feature("autodoc", "1");
		virtual		Standard_CString ValueTypeName() const;
		%feature("autodoc", "1");
		const MoniTool_AttrList & ListAttr() const;
		%feature("autodoc", "1");
		MoniTool_AttrList & ChangeAttr();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MoniTool_Element {
	Handle_MoniTool_Element GetHandle() {
	return *(Handle_MoniTool_Element*) &$self;
	}
};
%extend MoniTool_Element {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend MoniTool_Element {
	~MoniTool_Element() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of MoniTool_Element\n");}
	}
};


%nodefaultctor MoniTool_IndexedDataMapNodeOfIndexedDataMapOfShapeTransient;
class MoniTool_IndexedDataMapNodeOfIndexedDataMapOfShapeTransient : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		MoniTool_IndexedDataMapNodeOfIndexedDataMapOfShapeTransient(const TopoDS_Shape &K1, const Standard_Integer K2, const Handle_Standard_Transient &I, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
		%feature("autodoc", "1");
		TopoDS_Shape & Key1() const;
		%feature("autodoc", "1");
		Standard_Integer & Key2() const;
		%feature("autodoc", "1");
		TCollection_MapNodePtr & Next2() const;
		%feature("autodoc", "1");
		Handle_Standard_Transient & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MoniTool_IndexedDataMapNodeOfIndexedDataMapOfShapeTransient {
	Handle_MoniTool_IndexedDataMapNodeOfIndexedDataMapOfShapeTransient GetHandle() {
	return *(Handle_MoniTool_IndexedDataMapNodeOfIndexedDataMapOfShapeTransient*) &$self;
	}
};
%extend MoniTool_IndexedDataMapNodeOfIndexedDataMapOfShapeTransient {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend MoniTool_IndexedDataMapNodeOfIndexedDataMapOfShapeTransient {
	~MoniTool_IndexedDataMapNodeOfIndexedDataMapOfShapeTransient() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of MoniTool_IndexedDataMapNodeOfIndexedDataMapOfShapeTransient\n");}
	}
};


%nodefaultctor MoniTool_CaseData;
class MoniTool_CaseData : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		MoniTool_CaseData(const char * caseid="", const char * name="");
		%feature("autodoc", "1");
		void SetCaseId(const char * caseid);
		%feature("autodoc", "1");
		void SetName(const char * name);
		%feature("autodoc", "1");
		Standard_CString CaseId() const;
		%feature("autodoc", "1");
		Standard_CString Name() const;
		%feature("autodoc", "1");
		Standard_Boolean IsCheck() const;
		%feature("autodoc", "1");
		Standard_Boolean IsWarning() const;
		%feature("autodoc", "1");
		Standard_Boolean IsFail() const;
		%feature("autodoc", "1");
		void ResetCheck();
		%feature("autodoc", "1");
		void SetWarning();
		%feature("autodoc", "1");
		void SetFail();
		%feature("autodoc", "1");
		void SetChange();
		%feature("autodoc", "1");
		void SetReplace(const Standard_Integer num);
		%feature("autodoc", "1");
		void AddData(const Handle_Standard_Transient &val, const Standard_Integer kind, const char * name="");
		%feature("autodoc", "1");
		void AddRaised(const char * name="");
		%feature("autodoc", "1");
		void AddShape(const TopoDS_Shape &sh, const char * name="");
		%feature("autodoc", "1");
		void AddXYZ(const gp_XYZ &aXYZ, const char * name="");
		%feature("autodoc", "1");
		void AddXY(const gp_XY &aXY, const char * name="");
		%feature("autodoc", "1");
		void AddReal(const Standard_Real val, const char * name="");
		%feature("autodoc", "1");
		void AddReals(const Standard_Real v1, const Standard_Real v2, const char * name="");
		%feature("autodoc", "1");
		void AddCPU(const Standard_Real lastCPU, const Standard_Real curCPU=0, const char * name="");
		%feature("autodoc", "1");
		Standard_Real GetCPU() const;
		%feature("autodoc", "1");
		Standard_Boolean LargeCPU(const Standard_Real maxCPU, const Standard_Real lastCPU, const Standard_Real curCPU=0) const;
		%feature("autodoc", "1");
		void AddGeom(const Handle_Standard_Transient &geom, const char * name="");
		%feature("autodoc", "1");
		void AddEntity(const Handle_Standard_Transient &ent, const char * name="");
		%feature("autodoc", "1");
		void AddText(const char * text, const char * name="");
		%feature("autodoc", "1");
		void AddInteger(const Standard_Integer val, const char * name="");
		%feature("autodoc", "1");
		void AddAny(const Handle_Standard_Transient &val, const char * name="");
		%feature("autodoc", "1");
		void RemoveData(const Standard_Integer num);
		%feature("autodoc", "1");
		Standard_Integer NbData() const;
		%feature("autodoc", "1");
		Handle_Standard_Transient Data(const Standard_Integer nd) const;
		%feature("autodoc", "1");
		Standard_Boolean GetData(const Standard_Integer nd, const Handle_Standard_Type &type, Handle_Standard_Transient & val) const;
		%feature("autodoc", "1");
		Standard_Integer Kind(const Standard_Integer nd) const;
		%feature("autodoc", "1");
		const TCollection_AsciiString & Name(const Standard_Integer nd) const;
		%feature("autodoc", "1");
		Standard_Integer NameNum(const char * name) const;
		%feature("autodoc", "1");
		TopoDS_Shape Shape(const Standard_Integer nd) const;
		%feature("autodoc", "1");
		Standard_Boolean XYZ(const Standard_Integer nd, gp_XYZ & val) const;
		%feature("autodoc", "1");
		Standard_Boolean XY(const Standard_Integer nd, gp_XY & val) const;
		%feature("autodoc", "1");
		Standard_Boolean Reals(const Standard_Integer nd, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Boolean Real(const Standard_Integer nd, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Boolean Integer(const Standard_Integer nd, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		void SetDefWarning(const char * acode);
		%feature("autodoc", "1");
		void SetDefFail(const char * acode);
		%feature("autodoc", "1");
		Standard_Integer DefCheck(const char * acode);
		%feature("autodoc", "1");
		void SetDefMsg(const char * casecode, const char * mesdef);
		%feature("autodoc", "1");
		char * DefMsg(const char * casecode);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MoniTool_CaseData {
	Handle_MoniTool_CaseData GetHandle() {
	return *(Handle_MoniTool_CaseData*) &$self;
	}
};
%extend MoniTool_CaseData {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend MoniTool_CaseData {
	~MoniTool_CaseData() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of MoniTool_CaseData\n");}
	}
};


%nodefaultctor MoniTool_DataInfo;
class MoniTool_DataInfo {
	public:
		%feature("autodoc", "1");
		MoniTool_DataInfo();
		%feature("autodoc", "1");
		Handle_Standard_Type Type(const Handle_Standard_Transient &ent);
		%feature("autodoc", "1");
		char * TypeName(const Handle_Standard_Transient &ent);

};
%extend MoniTool_DataInfo {
	~MoniTool_DataInfo() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of MoniTool_DataInfo\n");}
	}
};


%nodefaultctor MoniTool_MTHasher;
class MoniTool_MTHasher {
	public:
		%feature("autodoc", "1");
		MoniTool_MTHasher();
		%feature("autodoc", "1");
		Standard_Integer HashCode(const char * Str, const Standard_Integer Upper);
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const char * Str1, const char * Str2);

};
%extend MoniTool_MTHasher {
	~MoniTool_MTHasher() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of MoniTool_MTHasher\n");}
	}
};


%nodefaultctor MoniTool_TransientElem;
class MoniTool_TransientElem : public MoniTool_Element {
	public:
		%feature("autodoc", "1");
		MoniTool_TransientElem(const Handle_Standard_Transient &akey);
		%feature("autodoc", "1");
		const Handle_Standard_Transient & Value() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Equates(const Handle_MoniTool_Element &other) const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Type ValueType() const;
		%feature("autodoc", "1");
		virtual		Standard_CString ValueTypeName() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MoniTool_TransientElem {
	Handle_MoniTool_TransientElem GetHandle() {
	return *(Handle_MoniTool_TransientElem*) &$self;
	}
};
%extend MoniTool_TransientElem {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend MoniTool_TransientElem {
	~MoniTool_TransientElem() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of MoniTool_TransientElem\n");}
	}
};


%nodefaultctor MoniTool_TypedValue;
class MoniTool_TypedValue : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		MoniTool_TypedValue(const char * name, const MoniTool_ValueType type=MoniTool_ValueText, const char * init="");
		%feature("autodoc", "1");
		MoniTool_TypedValue(const Handle_MoniTool_TypedValue &other);
		%feature("autodoc", "1");
		Standard_CString Name() const;
		%feature("autodoc", "1");
		MoniTool_ValueType ValueType() const;
		%feature("autodoc", "1");
		TCollection_AsciiString Definition() const;
		%feature("autodoc", "1");
		void SetDefinition(const char * deftext);
		%feature("autodoc", "1");
		virtual		void Print(const Handle_Message_Messenger &S) const;
		%feature("autodoc", "1");
		void PrintValue(const Handle_Message_Messenger &S) const;
		%feature("autodoc", "1");
		Standard_Boolean AddDef(const char * initext);
		%feature("autodoc", "1");
		void SetLabel(const char * label);
		%feature("autodoc", "1");
		Standard_CString Label() const;
		%feature("autodoc", "1");
		void SetMaxLength(const Standard_Integer max);
		%feature("autodoc", "1");
		Standard_Integer MaxLength() const;
		%feature("autodoc", "1");
		void SetIntegerLimit(const Standard_Boolean max, const Standard_Integer val);
		%feature("autodoc", "1");
		Standard_Boolean IntegerLimit(const Standard_Boolean max, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		void SetRealLimit(const Standard_Boolean max, const Standard_Real val);
		%feature("autodoc", "1");
		Standard_Boolean RealLimit(const Standard_Boolean max, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		void SetUnitDef(const char * def);
		%feature("autodoc", "1");
		Standard_CString UnitDef() const;
		%feature("autodoc", "1");
		void StartEnum(const Standard_Integer start=0, const Standard_Boolean match=1);
		%feature("autodoc", "1");
		void AddEnum(const char * v1="", const char * v2="", const char * v3="", const char * v4="", const char * v5="", const char * v6="", const char * v7="", const char * v8="", const char * v9="", const char * v10="");
		%feature("autodoc", "1");
		void AddEnumValue(const char * val, const Standard_Integer num);
		%feature("autodoc", "1");
		Standard_Boolean EnumDef(Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Boolean & match) const;
		%feature("autodoc", "1");
		char * EnumVal(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer EnumCase(const char * val) const;
		%feature("autodoc", "1");
		void SetObjectType(const Handle_Standard_Type &typ);
		%feature("autodoc", "1");
		Handle_Standard_Type ObjectType() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean HasInterpret() const;
		%feature("autodoc", "1");
		Standard_CString SatisfiesName() const;
		%feature("autodoc", "1");
		Standard_Boolean IsSetValue() const;
		%feature("autodoc", "1");
		Standard_CString CStringValue() const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString HStringValue() const;
		%feature("autodoc", "1");
		virtual		Handle_TCollection_HAsciiString Interpret(const Handle_TCollection_HAsciiString &hval, const Standard_Boolean native) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Satisfies(const Handle_TCollection_HAsciiString &hval) const;
		%feature("autodoc", "1");
		void ClearValue();
		%feature("autodoc", "1");
		virtual		Standard_Boolean SetCStringValue(const char * val);
		%feature("autodoc", "1");
		virtual		Standard_Boolean SetHStringValue(const Handle_TCollection_HAsciiString &hval);
		%feature("autodoc", "1");
		Standard_Integer IntegerValue() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean SetIntegerValue(const Standard_Integer ival);
		%feature("autodoc", "1");
		Standard_Real RealValue() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean SetRealValue(const Standard_Real rval);
		%feature("autodoc", "1");
		Handle_Standard_Transient ObjectValue() const;
		%feature("autodoc", "1");
		void GetObjectValue(Handle_Standard_Transient & val) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean SetObjectValue(const Handle_Standard_Transient &obj);
		%feature("autodoc", "1");
		Standard_CString ObjectTypeName() const;
		%feature("autodoc", "1");
		Standard_Boolean AddLib(const Handle_MoniTool_TypedValue &tv, const char * def="");
		%feature("autodoc", "1");
		Handle_MoniTool_TypedValue Lib(const char * def);
		%feature("autodoc", "1");
		Handle_MoniTool_TypedValue FromLib(const char * def);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfAsciiString LibList();
		%feature("autodoc", "1");
		Handle_MoniTool_TypedValue StaticValue(const char * name);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MoniTool_TypedValue {
	Handle_MoniTool_TypedValue GetHandle() {
	return *(Handle_MoniTool_TypedValue*) &$self;
	}
};
%extend MoniTool_TypedValue {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend MoniTool_TypedValue {
	~MoniTool_TypedValue() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of MoniTool_TypedValue\n");}
	}
};


%nodefaultctor MoniTool_SignText;
class MoniTool_SignText : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		virtual		Standard_CString Name() const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString TextAlone(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString Text(const Handle_Standard_Transient &ent, const Handle_Standard_Transient &context) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MoniTool_SignText {
	Handle_MoniTool_SignText GetHandle() {
	return *(Handle_MoniTool_SignText*) &$self;
	}
};
%extend MoniTool_SignText {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend MoniTool_SignText {
	~MoniTool_SignText() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of MoniTool_SignText\n");}
	}
};


%nodefaultctor MoniTool_SignShape;
class MoniTool_SignShape : public MoniTool_SignText {
	public:
		%feature("autodoc", "1");
		MoniTool_SignShape();

};
%extend MoniTool_SignShape {
	Handle_MoniTool_SignShape GetHandle() {
	return *(Handle_MoniTool_SignShape*) &$self;
	}
};
%extend MoniTool_SignShape {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend MoniTool_SignShape {
	~MoniTool_SignShape() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of MoniTool_SignShape\n");}
	}
};


%nodefaultctor MoniTool_DataMapNodeOfDataMapOfTimer;
class MoniTool_DataMapNodeOfDataMapOfTimer : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		MoniTool_DataMapNodeOfDataMapOfTimer(const char * &K, const Handle_MoniTool_Timer &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Standard_CString & Key() const;
		%feature("autodoc", "1");
		Handle_MoniTool_Timer & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MoniTool_DataMapNodeOfDataMapOfTimer {
	Handle_MoniTool_DataMapNodeOfDataMapOfTimer GetHandle() {
	return *(Handle_MoniTool_DataMapNodeOfDataMapOfTimer*) &$self;
	}
};
%extend MoniTool_DataMapNodeOfDataMapOfTimer {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend MoniTool_DataMapNodeOfDataMapOfTimer {
	~MoniTool_DataMapNodeOfDataMapOfTimer() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of MoniTool_DataMapNodeOfDataMapOfTimer\n");}
	}
};


%nodefaultctor MoniTool_OptValue;
class MoniTool_OptValue {
	public:
		%feature("autodoc", "1");
		MoniTool_OptValue(const char * opt="");
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void SetValue(const Handle_MoniTool_Profile &prof, const char * opt, const Standard_Boolean fast=1);
		%feature("autodoc", "1");
		virtual		Handle_MoniTool_Profile Prof() const;
		%feature("autodoc", "1");
		void Load(const Standard_Boolean fast=1);
		%feature("autodoc", "1");
		Standard_Boolean IsLoaded() const;
		%feature("autodoc", "1");
		void Value(Handle_Standard_Transient & val) const;
		%feature("autodoc", "1");
		virtual		void Delete();

};
%extend MoniTool_OptValue {
	~MoniTool_OptValue() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of MoniTool_OptValue\n");}
	}
};


%nodefaultctor MoniTool_Stat;
class MoniTool_Stat {
	public:
		%feature("autodoc", "1");
		MoniTool_Stat(const char * title="");
		%feature("autodoc", "1");
		MoniTool_Stat(const MoniTool_Stat &other);
		%feature("autodoc", "1");
		MoniTool_Stat & Current();
		%feature("autodoc", "1");
		Standard_Integer Open(const Standard_Integer nb=100);
		%feature("autodoc", "1");
		void OpenMore(const Standard_Integer id, const Standard_Integer nb);
		%feature("autodoc", "1");
		void Add(const Standard_Integer nb=1);
		%feature("autodoc", "1");
		void AddSub(const Standard_Integer nb=1);
		%feature("autodoc", "1");
		void AddEnd();
		%feature("autodoc", "1");
		void Close(const Standard_Integer id);
		%feature("autodoc", "1");
		Standard_Integer Level() const;
		%feature("autodoc", "1");
		Standard_Real Percent(const Standard_Integer fromlev=0) const;

};
%extend MoniTool_Stat {
	~MoniTool_Stat() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of MoniTool_Stat\n");}
	}
};


%nodefaultctor MoniTool_IndexedDataMapOfShapeTransient;
class MoniTool_IndexedDataMapOfShapeTransient : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		MoniTool_IndexedDataMapOfShapeTransient(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		MoniTool_IndexedDataMapOfShapeTransient & Assign(const MoniTool_IndexedDataMapOfShapeTransient &Other);
		%feature("autodoc", "1");
		MoniTool_IndexedDataMapOfShapeTransient & operator=(const MoniTool_IndexedDataMapOfShapeTransient &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer Add(const TopoDS_Shape &K, const Handle_Standard_Transient &I);
		%feature("autodoc", "1");
		void Substitute(const Standard_Integer I, const TopoDS_Shape &K, const Handle_Standard_Transient &T);
		%feature("autodoc", "1");
		void RemoveLast();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		const TopoDS_Shape & FindKey(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const Handle_Standard_Transient & FindFromIndex(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const Handle_Standard_Transient & operator()(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Handle_Standard_Transient & ChangeFromIndex(const Standard_Integer I);
		%feature("autodoc", "1");
		Handle_Standard_Transient & operator()(const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_Integer FindIndex(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		const Handle_Standard_Transient & FindFromKey(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		Handle_Standard_Transient & ChangeFromKey(const TopoDS_Shape &K);

};
%extend MoniTool_IndexedDataMapOfShapeTransient {
	~MoniTool_IndexedDataMapOfShapeTransient() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of MoniTool_IndexedDataMapOfShapeTransient\n");}
	}
};


%nodefaultctor MoniTool_AttrList;
class MoniTool_AttrList {
	public:
		%feature("autodoc", "1");
		MoniTool_AttrList();
		%feature("autodoc", "1");
		MoniTool_AttrList(const MoniTool_AttrList &other);
		%feature("autodoc", "1");
		void SetAttribute(const char * name, const Handle_Standard_Transient &val);
		%feature("autodoc", "1");
		Standard_Boolean RemoveAttribute(const char * name);
		%feature("autodoc", "1");
		Standard_Boolean GetAttribute(const char * name, const Handle_Standard_Type &type, Handle_Standard_Transient & val) const;
		%feature("autodoc", "1");
		Handle_Standard_Transient Attribute(const char * name) const;
		%feature("autodoc", "1");
		MoniTool_ValueType AttributeType(const char * name) const;
		%feature("autodoc", "1");
		void SetIntegerAttribute(const char * name, const Standard_Integer val);
		%feature("autodoc", "1");
		Standard_Boolean GetIntegerAttribute(const char * name, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		Standard_Integer IntegerAttribute(const char * name) const;
		%feature("autodoc", "1");
		void SetRealAttribute(const char * name, const Standard_Real val);
		%feature("autodoc", "1");
		Standard_Boolean GetRealAttribute(const char * name, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Real RealAttribute(const char * name) const;
		%feature("autodoc", "1");
		void SetStringAttribute(const char * name, const char * val);
		%feature("autodoc", "1");
		char * StringAttribute(const char * name) const;
		%feature("autodoc", "1");
		Handle_Dico_DictionaryOfTransient AttrList() const;
		%feature("autodoc", "1");
		void SameAttributes(const MoniTool_AttrList &other);
		%feature("autodoc", "1");
		void GetAttributes(const MoniTool_AttrList &other, const char * fromname="", const Standard_Boolean copied=1);

};
%extend MoniTool_AttrList {
	~MoniTool_AttrList() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of MoniTool_AttrList\n");}
	}
};


%nodefaultctor MoniTool_SequenceOfElement;
class MoniTool_SequenceOfElement : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		MoniTool_SequenceOfElement();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const MoniTool_SequenceOfElement & Assign(const MoniTool_SequenceOfElement &Other);
		%feature("autodoc", "1");
		const MoniTool_SequenceOfElement & operator=(const MoniTool_SequenceOfElement &Other);
		%feature("autodoc", "1");
		void Append(const Handle_MoniTool_Element &T);
		%feature("autodoc", "1");
		void Append(MoniTool_SequenceOfElement & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_MoniTool_Element &T);
		%feature("autodoc", "1");
		void Prepend(MoniTool_SequenceOfElement & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_MoniTool_Element &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, MoniTool_SequenceOfElement & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_MoniTool_Element &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, MoniTool_SequenceOfElement & S);
		%feature("autodoc", "1");
		const Handle_MoniTool_Element & First() const;
		%feature("autodoc", "1");
		const Handle_MoniTool_Element & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, MoniTool_SequenceOfElement & S);
		%feature("autodoc", "1");
		const Handle_MoniTool_Element & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_MoniTool_Element & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_MoniTool_Element &I);
		%feature("autodoc", "1");
		Handle_MoniTool_Element & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_MoniTool_Element & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%extend MoniTool_SequenceOfElement {
	~MoniTool_SequenceOfElement() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of MoniTool_SequenceOfElement\n");}
	}
};


%nodefaultctor MoniTool_DataMapOfTimer;
class MoniTool_DataMapOfTimer : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		MoniTool_DataMapOfTimer(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		MoniTool_DataMapOfTimer & Assign(const MoniTool_DataMapOfTimer &Other);
		%feature("autodoc", "1");
		MoniTool_DataMapOfTimer & operator=(const MoniTool_DataMapOfTimer &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const char * &K, const Handle_MoniTool_Timer &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const char * &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const char * &K);
		%feature("autodoc", "1");
		const Handle_MoniTool_Timer & Find(const char * &K) const;
		%feature("autodoc", "1");
		const Handle_MoniTool_Timer & operator()(const char * &K) const;
		%feature("autodoc", "1");
		Handle_MoniTool_Timer & ChangeFind(const char * &K);
		%feature("autodoc", "1");
		Handle_MoniTool_Timer & operator()(const char * &K);

};
%extend MoniTool_DataMapOfTimer {
	~MoniTool_DataMapOfTimer() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of MoniTool_DataMapOfTimer\n");}
	}
};


%nodefaultctor MoniTool_Option;
class MoniTool_Option : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		MoniTool_Option(const Handle_Standard_Type &atype, const char * aname);
		%feature("autodoc", "1");
		MoniTool_Option(const Handle_MoniTool_TypedValue &aval, const char * aname="");
		%feature("autodoc", "1");
		MoniTool_Option(const Handle_MoniTool_Option &other, const char * aname="");
		%feature("autodoc", "1");
		Standard_Boolean Add(const char * name, const Handle_Standard_Transient &val);
		%feature("autodoc", "1");
		Standard_Boolean AddBasic(const char * name, const char * val="");
		%feature("autodoc", "1");
		void Duplicate();
		%feature("autodoc", "1");
		const TCollection_AsciiString & Name() const;
		%feature("autodoc", "1");
		Handle_Standard_Type Type() const;
		%feature("autodoc", "1");
		Handle_MoniTool_TypedValue TypedValue() const;
		%feature("autodoc", "1");
		Standard_Boolean Item(const char * name, Handle_Standard_Transient & val) const;
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfAsciiString ItemList() const;
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfAsciiString Aliases(const char * name, const Standard_Boolean exact=1) const;
		%feature("autodoc", "1");
		Standard_Boolean Switch(const char * name);
		%feature("autodoc", "1");
		const TCollection_AsciiString & CaseName() const;
		%feature("autodoc", "1");
		Handle_Standard_Transient CaseValue() const;
		%feature("autodoc", "1");
		void Value(Handle_Standard_Transient & val) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MoniTool_Option {
	Handle_MoniTool_Option GetHandle() {
	return *(Handle_MoniTool_Option*) &$self;
	}
};
%extend MoniTool_Option {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend MoniTool_Option {
	~MoniTool_Option() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of MoniTool_Option\n");}
	}
};


%nodefaultctor MoniTool_DataMapIteratorOfDataMapOfTimer;
class MoniTool_DataMapIteratorOfDataMapOfTimer : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		MoniTool_DataMapIteratorOfDataMapOfTimer();
		%feature("autodoc", "1");
		MoniTool_DataMapIteratorOfDataMapOfTimer(const MoniTool_DataMapOfTimer &aMap);
		%feature("autodoc", "1");
		void Initialize(const MoniTool_DataMapOfTimer &aMap);
		%feature("autodoc", "1");
		const Standard_CString & Key() const;
		%feature("autodoc", "1");
		const Handle_MoniTool_Timer & Value() const;

};
%extend MoniTool_DataMapIteratorOfDataMapOfTimer {
	~MoniTool_DataMapIteratorOfDataMapOfTimer() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of MoniTool_DataMapIteratorOfDataMapOfTimer\n");}
	}
};
