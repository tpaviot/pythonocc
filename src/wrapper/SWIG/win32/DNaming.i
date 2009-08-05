/*

Copyright 2008-2009 Thomas Paviot (tpaviot@gmail.com)

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
%module DNaming

%include DNaming_renames.i
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

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
		Handle_DNaming_DataMapNodeOfDataMapOfShapeOfName & operator=(const Handle_DNaming_DataMapNodeOfDataMapOfShapeOfName &aHandle);
		%feature("autodoc", "1");
		Handle_DNaming_DataMapNodeOfDataMapOfShapeOfName & operator=(const DNaming_DataMapNodeOfDataMapOfShapeOfName *anItem);
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
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_DNaming_DataMapNodeOfDataMapOfShapeOfName\n");}
	}
};


%nodefaultctor DNaming;
class DNaming {
	public:
		%feature("autodoc", "1");
		DNaming();
		%feature("autodoc", "1");
		TopoDS_Shape CurrentShape(const char * ShapeEntry, const Handle_TDF_Data &Data);
		%feature("autodoc", "1");
		void GetShape(const char * ShapeEntry, const Handle_TDF_Data &Data, TopTools_ListOfShape & Shapes);
		%feature("autodoc","GetEntry(const Shape, const Data)->Standard_Integer");
		TCollection_AsciiString GetEntry(const TopoDS_Shape &Shape, const Handle_TDF_Data &Data, Standard_Integer &OutValue);
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
%extend DNaming {
	~DNaming() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of DNaming\n");}
	}
};


%nodefaultctor DNaming_DataMapIteratorOfDataMapOfShapeOfName;
class DNaming_DataMapIteratorOfDataMapOfShapeOfName : public TCollection_BasicMapIterator {
	public:
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
%extend DNaming_DataMapIteratorOfDataMapOfShapeOfName {
	~DNaming_DataMapIteratorOfDataMapOfShapeOfName() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of DNaming_DataMapIteratorOfDataMapOfShapeOfName\n");}
	}
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
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend DNaming_DataMapNodeOfDataMapOfShapeOfName {
	~DNaming_DataMapNodeOfDataMapOfShapeOfName() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of DNaming_DataMapNodeOfDataMapOfShapeOfName\n");}
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
		DNaming_DataMapOfShapeOfName & operator=(const DNaming_DataMapOfShapeOfName &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
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
%extend DNaming_DataMapOfShapeOfName {
	~DNaming_DataMapOfShapeOfName() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of DNaming_DataMapOfShapeOfName\n");}
	}
};
