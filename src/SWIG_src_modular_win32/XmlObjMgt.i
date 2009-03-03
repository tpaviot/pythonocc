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
%module XmlObjMgt

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


%include XmlObjMgt_dependencies.i


%include XmlObjMgt_headers.i

typedef LDOM_Document XmlObjMgt_Document;
typedef TColStd_IndexedMapOfTransient XmlObjMgt_SRelocationTable;
typedef LDOMString XmlObjMgt_DOMString;
typedef LDOM_Element XmlObjMgt_Element;



%nodefaultctor Handle_XmlObjMgt_DataMapNodeOfRRelocationTable;
class Handle_XmlObjMgt_DataMapNodeOfRRelocationTable : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_XmlObjMgt_DataMapNodeOfRRelocationTable();
		%feature("autodoc", "1");
		Handle_XmlObjMgt_DataMapNodeOfRRelocationTable();
		%feature("autodoc", "1");
		Handle_XmlObjMgt_DataMapNodeOfRRelocationTable(const Handle_XmlObjMgt_DataMapNodeOfRRelocationTable &aHandle);
		%feature("autodoc", "1");
		Handle_XmlObjMgt_DataMapNodeOfRRelocationTable(const XmlObjMgt_DataMapNodeOfRRelocationTable *anItem);
		%feature("autodoc", "1");
		Handle_XmlObjMgt_DataMapNodeOfRRelocationTable const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlObjMgt_DataMapNodeOfRRelocationTable {
	XmlObjMgt_DataMapNodeOfRRelocationTable* GetObject() {
	return (XmlObjMgt_DataMapNodeOfRRelocationTable*)$self->Access();
	}
};

%nodefaultctor XmlObjMgt_DataMapIteratorOfRRelocationTable;
class XmlObjMgt_DataMapIteratorOfRRelocationTable : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		~XmlObjMgt_DataMapIteratorOfRRelocationTable();
		%feature("autodoc", "1");
		XmlObjMgt_DataMapIteratorOfRRelocationTable();
		%feature("autodoc", "1");
		XmlObjMgt_DataMapIteratorOfRRelocationTable(const XmlObjMgt_RRelocationTable &aMap);
		%feature("autodoc", "1");
		void Initialize(const XmlObjMgt_RRelocationTable &aMap);
		%feature("autodoc", "1");
		const Standard_Integer & Key() const;
		%feature("autodoc", "1");
		const Handle_Standard_Transient & Value() const;

};

%nodefaultctor XmlObjMgt;
class XmlObjMgt {
	public:
		%feature("autodoc", "1");
		~XmlObjMgt();
		%feature("autodoc", "1");
		XmlObjMgt();
		%feature("autodoc", "1");
		const XmlObjMgt_DOMString & IdString();
		%feature("autodoc", "1");
		Standard_Boolean SetExtendedString(XmlObjMgt_Element & theElement, const TCollection_ExtendedString &theString);
		%feature("autodoc", "1");
		Standard_Boolean GetExtendedString(const XmlObjMgt_Element &theElement, TCollection_ExtendedString & theString);
		%feature("autodoc", "1");
		XmlObjMgt_DOMString GetStringValue(const XmlObjMgt_Element &theElement);
		%feature("autodoc", "1");
		void SetStringValue(XmlObjMgt_Element & theElement, const XmlObjMgt_DOMString &theData, const Standard_Boolean isClearText=0);
		%feature("autodoc", "1");
		Standard_Boolean GetTagEntryString(const XmlObjMgt_DOMString &theTarget, TCollection_AsciiString & theTagEntry);
		%feature("autodoc", "1");
		void SetTagEntryString(XmlObjMgt_DOMString & theSource, const TCollection_AsciiString &theTagEntry);
		%feature("autodoc", "1");
		XmlObjMgt_Element FindChildElement(const XmlObjMgt_Element &theSource, const Standard_Integer theObjId);
		%feature("autodoc", "1");
		XmlObjMgt_Element FindChildByRef(const XmlObjMgt_Element &theSource, const XmlObjMgt_DOMString &theRefName);
		%feature("autodoc", "1");
		XmlObjMgt_Element FindChildByName(const XmlObjMgt_Element &theSource, const XmlObjMgt_DOMString &theName);
		%feature("autodoc", "1");
		Standard_Boolean GetReal(char * & theString, Standard_Real &OutValue);
		%feature("autodoc", "1");
		Standard_Boolean GetReal(const XmlObjMgt_DOMString &theString, Standard_Real &OutValue);

};

%nodefaultctor XmlObjMgt_DataMapNodeOfRRelocationTable;
class XmlObjMgt_DataMapNodeOfRRelocationTable : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		XmlObjMgt_DataMapNodeOfRRelocationTable(const Standard_Integer &K, const Handle_Standard_Transient &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Standard_Integer & Key() const;
		%feature("autodoc", "1");
		Handle_Standard_Transient & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~XmlObjMgt_DataMapNodeOfRRelocationTable();

};
%extend XmlObjMgt_DataMapNodeOfRRelocationTable {
	Handle_XmlObjMgt_DataMapNodeOfRRelocationTable GetHandle() {
	return *(Handle_XmlObjMgt_DataMapNodeOfRRelocationTable*) &$self;
	}
};

%nodefaultctor XmlObjMgt_GP;
class XmlObjMgt_GP {
	public:
		%feature("autodoc", "1");
		~XmlObjMgt_GP();
		%feature("autodoc", "1");
		XmlObjMgt_GP();
		%feature("autodoc", "1");
		XmlObjMgt_DOMString Translate(const gp_Trsf &aTrsf);
		%feature("autodoc", "1");
		XmlObjMgt_DOMString Translate(const gp_Mat &aMat);
		%feature("autodoc", "1");
		XmlObjMgt_DOMString Translate(const gp_XYZ &anXYZ);
		%feature("autodoc", "1");
		Standard_Boolean Translate(const XmlObjMgt_DOMString &aStr, gp_Trsf & T);
		%feature("autodoc", "1");
		Standard_Boolean Translate(const XmlObjMgt_DOMString &aStr, gp_Mat & T);
		%feature("autodoc", "1");
		Standard_Boolean Translate(const XmlObjMgt_DOMString &aStr, gp_XYZ & T);

};

%nodefaultctor XmlObjMgt_Persistent;
class XmlObjMgt_Persistent {
	public:
		%feature("autodoc", "1");
		~XmlObjMgt_Persistent();
		%feature("autodoc", "1");
		XmlObjMgt_Persistent();
		%feature("autodoc", "1");
		XmlObjMgt_Persistent(const XmlObjMgt_Element &theElement);
		%feature("autodoc", "1");
		XmlObjMgt_Persistent(const XmlObjMgt_Element &theElement, const XmlObjMgt_DOMString &theRef);
		%feature("autodoc", "1");
		void CreateElement(XmlObjMgt_Element & theParent, const XmlObjMgt_DOMString &theType, const Standard_Integer theID);
		%feature("autodoc", "1");
		void SetId(const Standard_Integer theId);
		%feature("autodoc", "1");
		const XmlObjMgt_Element & Element() const;
		%feature("autodoc", "1");
		XmlObjMgt_Element & Element();
		%feature("autodoc", "1");
		Standard_Integer Id() const;

};

%nodefaultctor XmlObjMgt_RRelocationTable;
class XmlObjMgt_RRelocationTable : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		XmlObjMgt_RRelocationTable(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		XmlObjMgt_RRelocationTable & Assign(const XmlObjMgt_RRelocationTable &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~XmlObjMgt_RRelocationTable();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Standard_Integer &K, const Handle_Standard_Transient &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Standard_Integer &K);
		%feature("autodoc", "1");
		const Handle_Standard_Transient & Find(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		const Handle_Standard_Transient & operator()(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Handle_Standard_Transient & ChangeFind(const Standard_Integer &K);
		%feature("autodoc", "1");
		Handle_Standard_Transient & operator()(const Standard_Integer &K);

};