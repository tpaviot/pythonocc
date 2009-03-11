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
%module DNaming

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


%include DNaming_dependencies.i


%include DNaming_headers.i




%nodefaultctor Handle_DNaming_DataMapNodeOfDataMapOfShapeOfName;
class Handle_DNaming_DataMapNodeOfDataMapOfShapeOfName : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_DNaming_DataMapNodeOfDataMapOfShapeOfName();
		%feature("autodoc", "1");
		Handle_DNaming_DataMapNodeOfDataMapOfShapeOfName(const Handle_DNaming_DataMapNodeOfDataMapOfShapeOfName &aHandle);
		%feature("autodoc", "1");
		Handle_DNaming_DataMapNodeOfDataMapOfShapeOfName(const DNaming_DataMapNodeOfDataMapOfShapeOfName *anItem);
		%feature("autodoc", "1");
		Handle_DNaming_DataMapNodeOfDataMapOfShapeOfName const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_DNaming_DataMapNodeOfDataMapOfShapeOfName {
	DNaming_DataMapNodeOfDataMapOfShapeOfName* GetObject() {
	return (DNaming_DataMapNodeOfDataMapOfShapeOfName*)$self->Access();
	}
};
%extend Handle_DNaming_DataMapNodeOfDataMapOfShapeOfName {
	~Handle_DNaming_DataMapNodeOfDataMapOfShapeOfName() {
	printf("Call custom destructor for instance of Handle_DNaming_DataMapNodeOfDataMapOfShapeOfName\n");
	}
};

%nodefaultctor DNaming;
class DNaming {
	public:
		%feature("autodoc", "1");
		~DNaming();
		%feature("autodoc", "1");
		DNaming();
		%feature("autodoc", "1");
		TopoDS_Shape CurrentShape(const char * ShapeEntry, const Handle_TDF_Data &Data);
		%feature("autodoc", "1");
		void GetShape(const char * ShapeEntry, const Handle_TDF_Data &Data, TopTools_ListOfShape & Shapes);
		%feature("autodoc", "1");
		TCollection_AsciiString GetEntry(const TopoDS_Shape &Shape, const Handle_TDF_Data &Data, Standard_Integer & Status);
		%feature("autodoc", "1");
		void LoadImportedShape(const TDF_Label &theResultLabel, const TopoDS_Shape &theShape);
		%feature("autodoc", "1");
		void LoadPrime(const TDF_Label &theResultLabel, const TopoDS_Shape &theShape);
		%feature("autodoc", "1");
		void AllCommands(Draw_Interpretor & DI);
		%feature("autodoc", "1");
		void BasicCommands(Draw_Interpretor & DI);
		%feature("autodoc", "1");
		void ToolsCommands(Draw_Interpretor & DI);
		%feature("autodoc", "1");
		void SelectionCommands(Draw_Interpretor & DI);

};

%nodefaultctor DNaming_DataMapIteratorOfDataMapOfShapeOfName;
class DNaming_DataMapIteratorOfDataMapOfShapeOfName : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		~DNaming_DataMapIteratorOfDataMapOfShapeOfName();
		%feature("autodoc", "1");
		DNaming_DataMapIteratorOfDataMapOfShapeOfName();
		%feature("autodoc", "1");
		DNaming_DataMapIteratorOfDataMapOfShapeOfName(const DNaming_DataMapOfShapeOfName &aMap);
		%feature("autodoc", "1");
		void Initialize(const DNaming_DataMapOfShapeOfName &aMap);
		%feature("autodoc", "1");
		const TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		const TCollection_AsciiString & Value() const;

};

%nodefaultctor DNaming_DataMapNodeOfDataMapOfShapeOfName;
class DNaming_DataMapNodeOfDataMapOfShapeOfName : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		DNaming_DataMapNodeOfDataMapOfShapeOfName(const TopoDS_Shape &K, const TCollection_AsciiString &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		TCollection_AsciiString & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend DNaming_DataMapNodeOfDataMapOfShapeOfName {
	Handle_DNaming_DataMapNodeOfDataMapOfShapeOfName GetHandle() {
	return *(Handle_DNaming_DataMapNodeOfDataMapOfShapeOfName*) &$self;
	}
};
%extend DNaming_DataMapNodeOfDataMapOfShapeOfName {
	~DNaming_DataMapNodeOfDataMapOfShapeOfName() {
	printf("Call custom destructor for instance of DNaming_DataMapNodeOfDataMapOfShapeOfName\n");
	}
};

%nodefaultctor DNaming_DataMapOfShapeOfName;
class DNaming_DataMapOfShapeOfName : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		DNaming_DataMapOfShapeOfName(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		DNaming_DataMapOfShapeOfName & Assign(const DNaming_DataMapOfShapeOfName &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~DNaming_DataMapOfShapeOfName();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TopoDS_Shape &K, const TCollection_AsciiString &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TopoDS_Shape &K);
		%feature("autodoc", "1");
		const TCollection_AsciiString & Find(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		const TCollection_AsciiString & operator()(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		TCollection_AsciiString & ChangeFind(const TopoDS_Shape &K);
		%feature("autodoc", "1");
		TCollection_AsciiString & operator()(const TopoDS_Shape &K);

};