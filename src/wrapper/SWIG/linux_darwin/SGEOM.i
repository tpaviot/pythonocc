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
%module SGEOM
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%pythoncode {
import GarbageCollector
};

%include SGEOM_dependencies.i


%include SGEOM_headers.i




%nodefaultctor Handle_GEOM_Application;
class Handle_GEOM_Application : public Handle_TDocStd_Application {
	public:
		%feature("autodoc", "1");
		Handle_GEOM_Application();
		%feature("autodoc", "1");
		Handle_GEOM_Application(const GEOM_Application *aHandle);
		%feature("autodoc", "1");
		Handle_GEOM_Application(const GEOM_Application *anItem);
		%feature("autodoc", "1");
		Handle_GEOM_Application & operator=(const GEOM_Application *aHandle);
		%feature("autodoc", "1");
		Handle_GEOM_Application & operator=(const GEOM_Application *anItem);
		%feature("autodoc", "1");
		Handle_GEOM_Application const DownCast(const Standard_Transient *AnObject);

};
%extend Handle_GEOM_Application {
	GEOM_Application* GetObject() {
	return (GEOM_Application*)$self->Access();
	}
};
%feature("shadow") Handle_GEOM_Application::~Handle_GEOM_Application %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GEOM_Application {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GEOM_Object;
class Handle_GEOM_Object : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_GEOM_Object();
		%feature("autodoc", "1");
		Handle_GEOM_Object(const GEOM_Object *aHandle);
		%feature("autodoc", "1");
		Handle_GEOM_Object(const GEOM_Object *anItem);
		%feature("autodoc", "1");
		Handle_GEOM_Object & operator=(const GEOM_Object *aHandle);
		%feature("autodoc", "1");
		Handle_GEOM_Object & operator=(const GEOM_Object *anItem);
		%feature("autodoc", "1");
		Handle_GEOM_Object const DownCast(const Standard_Transient *AnObject);

};
%extend Handle_GEOM_Object {
	GEOM_Object* GetObject() {
	return (GEOM_Object*)$self->Access();
	}
};
%feature("shadow") Handle_GEOM_Object::~Handle_GEOM_Object %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GEOM_Object {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GEOM_DataMapNodeOfDataMapOfAsciiStringTransient;
class Handle_GEOM_DataMapNodeOfDataMapOfAsciiStringTransient : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_GEOM_DataMapNodeOfDataMapOfAsciiStringTransient();
		%feature("autodoc", "1");
		Handle_GEOM_DataMapNodeOfDataMapOfAsciiStringTransient(const GEOM_DataMapNodeOfDataMapOfAsciiStringTransient *aHandle);
		%feature("autodoc", "1");
		Handle_GEOM_DataMapNodeOfDataMapOfAsciiStringTransient(const GEOM_DataMapNodeOfDataMapOfAsciiStringTransient *anItem);
		%feature("autodoc", "1");
		Handle_GEOM_DataMapNodeOfDataMapOfAsciiStringTransient & operator=(const GEOM_DataMapNodeOfDataMapOfAsciiStringTransient *aHandle);
		%feature("autodoc", "1");
		Handle_GEOM_DataMapNodeOfDataMapOfAsciiStringTransient & operator=(const GEOM_DataMapNodeOfDataMapOfAsciiStringTransient *anItem);
		%feature("autodoc", "1");
		Handle_GEOM_DataMapNodeOfDataMapOfAsciiStringTransient const DownCast(const Standard_Transient *AnObject);

};
%extend Handle_GEOM_DataMapNodeOfDataMapOfAsciiStringTransient {
	GEOM_DataMapNodeOfDataMapOfAsciiStringTransient* GetObject() {
	return (GEOM_DataMapNodeOfDataMapOfAsciiStringTransient*)$self->Access();
	}
};
%feature("shadow") Handle_GEOM_DataMapNodeOfDataMapOfAsciiStringTransient::~Handle_GEOM_DataMapNodeOfDataMapOfAsciiStringTransient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GEOM_DataMapNodeOfDataMapOfAsciiStringTransient {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GEOM_SubShapeDriver;
class Handle_GEOM_SubShapeDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOM_SubShapeDriver();
		%feature("autodoc", "1");
		Handle_GEOM_SubShapeDriver(const GEOM_SubShapeDriver *aHandle);
		%feature("autodoc", "1");
		Handle_GEOM_SubShapeDriver(const GEOM_SubShapeDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOM_SubShapeDriver & operator=(const GEOM_SubShapeDriver *aHandle);
		%feature("autodoc", "1");
		Handle_GEOM_SubShapeDriver & operator=(const GEOM_SubShapeDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOM_SubShapeDriver const DownCast(const Standard_Transient *AnObject);

};
%extend Handle_GEOM_SubShapeDriver {
	GEOM_SubShapeDriver* GetObject() {
	return (GEOM_SubShapeDriver*)$self->Access();
	}
};
%feature("shadow") Handle_GEOM_SubShapeDriver::~Handle_GEOM_SubShapeDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GEOM_SubShapeDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GEOM_Function;
class Handle_GEOM_Function : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_GEOM_Function();
		%feature("autodoc", "1");
		Handle_GEOM_Function(const GEOM_Function *aHandle);
		%feature("autodoc", "1");
		Handle_GEOM_Function(const GEOM_Function *anItem);
		%feature("autodoc", "1");
		Handle_GEOM_Function & operator=(const GEOM_Function *aHandle);
		%feature("autodoc", "1");
		Handle_GEOM_Function & operator=(const GEOM_Function *anItem);
		%feature("autodoc", "1");
		Handle_GEOM_Function const DownCast(const Standard_Transient *AnObject);

};
%extend Handle_GEOM_Function {
	GEOM_Function* GetObject() {
	return (GEOM_Function*)$self->Access();
	}
};
%feature("shadow") Handle_GEOM_Function::~Handle_GEOM_Function %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GEOM_Function {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOM_SubShapeDriver;
class GEOM_SubShapeDriver : public TFunction_Driver {
	public:
		%feature("autodoc", "1");
		GEOM_SubShapeDriver();
		%feature("autodoc", "1");
		virtual		Standard_Integer Execute(TFunction_Logbook & log) const;
		%feature("autodoc", "1");
		virtual		void Validate(TFunction_Logbook & arg0) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean MustExecute(const TFunction_Logbook &arg0) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Standard_Type *AType) const;

};
%extend GEOM_SubShapeDriver {
	Handle_GEOM_SubShapeDriver GetHandle() {
	return *(Handle_GEOM_SubShapeDriver*) &$self;
	}
};
%extend GEOM_SubShapeDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") GEOM_SubShapeDriver::~GEOM_SubShapeDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOM_SubShapeDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOM_Solver;
class GEOM_Solver {
	public:
		%feature("autodoc", "1");
		GEOM_Solver(GEOM_Engine* theEngine);
		%feature("autodoc", "1");
		bool Update(int , TDF_LabelSequence & theSeq);
		%feature("autodoc", "1");
		bool UpdateObject(Handle_GEOM_Object , TDF_LabelSequence & theSeq);
		%feature("autodoc", "1");
		bool ComputeObject(Handle_GEOM_Object );
		%feature("autodoc", "1");
		bool ComputeFunction(Handle_GEOM_Function );

};
%feature("shadow") GEOM_Solver::~GEOM_Solver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOM_Solver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOM_Parameter;
class GEOM_Parameter {
	public:
		%feature("autodoc", "1");
		GEOM_Parameter();
		%feature("autodoc", "1");
		GEOM_Parameter(TCollection_AsciiString );
		%feature("autodoc", "1");
		GEOM_Parameter(Standard_Real );
		%feature("autodoc", "1");
		Standard_Boolean IsString() const;
		%feature("autodoc", "1");
		Standard_Boolean IsDouble() const;
		%feature("autodoc", "1");
		Standard_Real GetDouble() const;
		%feature("autodoc", "1");
		TCollection_AsciiString GetString() const;
		%feature("autodoc", "1");
		void operator=(Standard_Real );
		%feature("autodoc", "1");
		void operator=(const TCollection_AsciiString &anAsciiString);

};
%feature("shadow") GEOM_Parameter::~GEOM_Parameter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOM_Parameter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOM_DataMapOfAsciiStringTransient;
class GEOM_DataMapOfAsciiStringTransient : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		GEOM_DataMapOfAsciiStringTransient(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		GEOM_DataMapOfAsciiStringTransient & Assign(const GEOM_DataMapOfAsciiStringTransient &Other);
		%feature("autodoc", "1");
		GEOM_DataMapOfAsciiStringTransient & operator=(const GEOM_DataMapOfAsciiStringTransient &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TCollection_AsciiString &K, const Standard_Transient *I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TCollection_AsciiString &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TCollection_AsciiString &K);
		%feature("autodoc", "1");
		const Handle_Standard_Transient & Find(const TCollection_AsciiString &K) const;
		%feature("autodoc", "1");
		const Handle_Standard_Transient & operator()(const TCollection_AsciiString &K) const;
		%feature("autodoc", "1");
		Handle_Standard_Transient & ChangeFind(const TCollection_AsciiString &K);
		%feature("autodoc", "1");
		Handle_Standard_Transient & operator()(const TCollection_AsciiString &K);

};
%feature("shadow") GEOM_DataMapOfAsciiStringTransient::~GEOM_DataMapOfAsciiStringTransient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOM_DataMapOfAsciiStringTransient {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOM_ISubShape;
class GEOM_ISubShape {
	public:
		%feature("autodoc", "1");
		GEOM_ISubShape(Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetMainShape(Handle_GEOM_Function );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetMainShape();
		%feature("autodoc", "1");
		void SetIndices(const TColStd_HArray1OfInteger *theIndices);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfInteger GetIndices();

};
%feature("shadow") GEOM_ISubShape::~GEOM_ISubShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOM_ISubShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOM_Engine;
class GEOM_Engine {
	public:
		%feature("autodoc", "1");
		GEOM_Engine();
		%feature("autodoc", "1");
		GEOM_Engine * GetEngine();
		%feature("autodoc", "1");
		bool IsDocumentExistant(int );
		%feature("autodoc", "1");
		Handle_TDocStd_Document GetDocument(int , bool =true);
		%feature("autodoc", "1");
		int GetDocID(Handle_TDocStd_Document );
		%feature("autodoc", "1");
		Handle_TDocStd_Application GetApplication();
		%feature("autodoc", "1");
		Handle_GEOM_Object GetObject(int , const char *theEntry, bool =true);
		%feature("autodoc", "1");
		Handle_GEOM_Object AddObject(int , int );
		%feature("autodoc", "1");
		bool RemoveObject(Handle_GEOM_Object );
		%feature("autodoc", "1");
		bool Save(int , char* theFileName);
		%feature("autodoc", "1");
		bool Load(int , char* theFileName);
		%feature("autodoc", "1");
		void Close(int );
		%feature("autodoc", "1");
		void SetUndoLimit(int );
		%feature("autodoc", "1");
		void Undo(int );
		%feature("autodoc", "1");
		void Redo(int );
		%feature("autodoc", "1");
		Handle_GEOM_Object AddSubShape(Handle_GEOM_Object , Handle_TColStd_HArray1OfInteger , bool =false);
		%feature("autodoc", "1");
		TCollection_AsciiString DumpPython(int , Resource_DataMapOfAsciiStringAsciiString & theObjectNames, TVariablesList , bool , bool & aValidScript);
		%feature("autodoc", "1");
		const char * GetDumpName(const char *theStudyEntry) const;
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfAsciiString GetAllDumpNames() const;
		%feature("autodoc", "1");
		double GetInterpreterEquationValue(int , const TCollection_AsciiString &theEquation);
		%feature("autodoc", "1");
		void SetInterpreterConstant(int , const TCollection_AsciiString &theConstant, double , const TCollection_AsciiString &theDescription, bool =true);
		%feature("autodoc", "1");
		void GetInterpreterConstantArray(int , Handle_TColStd_HArray1OfTransient & theArray, Handle_TColStd_HArray1OfAsciiString & theDescriptions);
		%feature("autodoc", "1");
		void SetInterpreterConstantArray(int , Handle_TColStd_HArray1OfTransient , Handle_TColStd_HArray1OfAsciiString , bool );
		%feature("autodoc", "1");
		TDF_Label GetUserDataLabel(int );
		%feature("autodoc", "1");
		int AddTexture(int , int , int , const TDataStd_HArray1OfByte *theTexture, const TCollection_AsciiString &theFileName="");
		%feature("autodoc", "1");
		Handle_TDataStd_HArray1OfByte GetTexture(int , int , int & theWidth, int & theHeight, TCollection_AsciiString & theFileName);
		%feature("autodoc", "1");
		std::list<int,std::allocator<int> > GetAllTextures(int );

};
%feature("shadow") GEOM_Engine::~GEOM_Engine %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOM_Engine {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOM_Application;
class GEOM_Application : public TDocStd_Application {
	public:
		%feature("autodoc", "1");
		GEOM_Application();
		%feature("autodoc", "1");
		virtual		void Formats(TColStd_SequenceOfExtendedString & Formats);
		%feature("autodoc", "1");
		virtual		char * ResourcesName();
		%feature("autodoc", "1");
		virtual		void OnOpenTransaction(const TDocStd_Document *theDoc);
		%feature("autodoc", "1");
		virtual		void OnCommitTransaction(const TDocStd_Document *theDoc);
		%feature("autodoc", "1");
		virtual		void OnAbortTransaction(const TDocStd_Document *theDoc);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Standard_Type *arg0) const;

};
%extend GEOM_Application {
	Handle_GEOM_Application GetHandle() {
	return *(Handle_GEOM_Application*) &$self;
	}
};
%extend GEOM_Application {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") GEOM_Application::~GEOM_Application %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOM_Application {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOM_Function;
class GEOM_Function : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Standard_Type *AType) const;
		%feature("autodoc", "1");
		const Standard_GUID & GetFunctionTreeID();
		%feature("autodoc", "1");
		const Standard_GUID & GetDependencyID();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetFunction(const TDF_Label &theEntry);
		%feature("autodoc", "1");
		GEOM_Function(const TDF_Label &theEntry, const Standard_GUID &theGUID, int );
		%feature("autodoc", "1");
		TDF_Label GetOwnerEntry();
		%feature("autodoc", "1");
		int GetDocumentID();
		%feature("autodoc", "1");
		TopoDS_Shape GetValue();
		%feature("autodoc", "1");
		void SetValue(TopoDS_Shape & theShape);
		%feature("autodoc", "1");
		TDF_Label & GetEntry();
		%feature("autodoc", "1");
		int GetType();
		%feature("autodoc", "1");
		Standard_GUID GetDriverGUID();
		%feature("autodoc", "1");
		TCollection_AsciiString GetDescription();
		%feature("autodoc", "1");
		void SetDescription(const TCollection_AsciiString &theDescription);
		%feature("autodoc", "1");
		TCollection_AsciiString GetScriptCommand();
		%feature("autodoc", "1");
		void SetScriptCommand(const TCollection_AsciiString &theCommand);
		%feature("autodoc", "1");
		void SetReal(int , double );
		%feature("autodoc", "1");
		void SetReal(int , const TCollection_AsciiString &theValue);
		%feature("autodoc", "1");
		double GetReal(int );
		%feature("autodoc", "1");
		void SetRealArray(int , const TColStd_HArray1OfReal *theArray);
		%feature("autodoc", "1");
		void SetRealArray(int , const TColStd_HArray1OfAsciiString *theArray);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal GetRealArray(int );
		%feature("autodoc", "1");
		void SetInteger(int , int );
		%feature("autodoc", "1");
		void SetInteger(int , const TCollection_AsciiString &theValue);
		%feature("autodoc", "1");
		int GetInteger(int );
		%feature("autodoc", "1");
		void SetIntegerArray(int , const TColStd_HArray1OfInteger *theArray);
		%feature("autodoc", "1");
		void SetIntegerArray(int , const TColStd_HArray1OfAsciiString *theArray);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfInteger GetIntegerArray(int );
		%feature("autodoc", "1");
		void SetReference(int , Handle_GEOM_Function );
		%feature("autodoc", "1");
		void SetString(int , const TCollection_AsciiString &theValue);
		%feature("autodoc", "1");
		TCollection_AsciiString GetString(int );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetReference(int );
		%feature("autodoc", "1");
		void SetStringArray(int , const TColStd_HArray1OfExtendedString *theArray);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfExtendedString GetStringArray(int );
		%feature("autodoc", "1");
		const Standard_GUID & GetReferencesTreeID();
		%feature("autodoc", "1");
		void SetReferenceList(int , const TColStd_HSequenceOfTransient *theRefList);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient GetReferenceList(int );
		%feature("autodoc", "1");
		bool IsDone();
		%feature("autodoc", "1");
		void GetDependency(TDF_LabelSequence & theSeq);
		%feature("autodoc", "1");
		TDF_Label GetHistoryEntry(const Standard_Boolean create=1);
		%feature("autodoc", "1");
		TDF_Label GetArgumentHistoryEntry(const TDF_Label &theArgumentRefEntry, const Standard_Boolean create=1);
		%feature("autodoc", "1");
		TCollection_AsciiString GetSingleValueAsString(int );
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfExtendedString GetArrayValueAsString(int );

};
%extend GEOM_Function {
	Handle_GEOM_Function GetHandle() {
	return *(Handle_GEOM_Function*) &$self;
	}
};
%extend GEOM_Function {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") GEOM_Function::~GEOM_Function %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOM_Function {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOM_DataMapNodeOfDataMapOfAsciiStringTransient;
class GEOM_DataMapNodeOfDataMapOfAsciiStringTransient : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		GEOM_DataMapNodeOfDataMapOfAsciiStringTransient(const TCollection_AsciiString &K, const Standard_Transient *I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TCollection_AsciiString & Key() const;
		%feature("autodoc", "1");
		Handle_Standard_Transient & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Standard_Type *arg0) const;

};
%extend GEOM_DataMapNodeOfDataMapOfAsciiStringTransient {
	Handle_GEOM_DataMapNodeOfDataMapOfAsciiStringTransient GetHandle() {
	return *(Handle_GEOM_DataMapNodeOfDataMapOfAsciiStringTransient*) &$self;
	}
};
%extend GEOM_DataMapNodeOfDataMapOfAsciiStringTransient {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") GEOM_DataMapNodeOfDataMapOfAsciiStringTransient::~GEOM_DataMapNodeOfDataMapOfAsciiStringTransient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOM_DataMapNodeOfDataMapOfAsciiStringTransient {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOM_Object;
class GEOM_Object : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Standard_Type *AType) const;
		%feature("autodoc", "1");
		GEOM_Object(TDF_Label & theEntry, int );
		%feature("autodoc", "1");
		Handle_GEOM_Object GetObject(TDF_Label & theLabel);
		%feature("autodoc", "1");
		Handle_GEOM_Object GetReferencedObject(TDF_Label & theLabel);
		%feature("autodoc", "1");
		const Standard_GUID & GetObjectID();
		%feature("autodoc", "1");
		const Standard_GUID & GetSubShapeID();
		%feature("autodoc", "1");
		Handle_TDataStd_TreeNode GetRootNode();
		%feature("autodoc", "1");
		TDF_Label GetEntry();
		%feature("autodoc", "1");
		int GetType();
		%feature("autodoc", "1");
		void SetType(int );
		%feature("autodoc", "1");
		int GetTic();
		%feature("autodoc", "1");
		void SetTic(int );
		%feature("autodoc", "1");
		void IncrementTic();
		%feature("autodoc", "1");
		int GetDocID();
		%feature("autodoc", "1");
		TopoDS_Shape GetValue();
		%feature("autodoc", "1");
		void SetName(const char *theName);
		%feature("autodoc", "1");
		const char * GetName();
		%feature("autodoc", "1");
		void SetColor(const Quantity_Color &theColor);
		%feature("autodoc", "1");
		Quantity_Color GetColor();
		%feature("autodoc", "1");
		void SetAutoColor(bool );
		%feature("autodoc", "1");
		bool GetAutoColor();
		%feature("autodoc", "1");
		void SetMarkerStd(const Aspect_TypeOfMarker theType, double );
		%feature("autodoc", "1");
		void SetMarkerTexture(int );
		%feature("autodoc", "1");
		Aspect_TypeOfMarker GetMarkerType();
		%feature("autodoc", "1");
		double GetMarkerSize();
		%feature("autodoc", "1");
		int GetMarkerTexture();
		%feature("autodoc", "1");
		void UnsetMarker();
		%feature("autodoc", "1");
		void SetAuxData(const char *theData);
		%feature("autodoc", "1");
		TCollection_AsciiString GetAuxData();
		%feature("autodoc", "1");
		void SetParameters(const TCollection_AsciiString &theParameters);
		%feature("autodoc", "1");
		TCollection_AsciiString GetParameters() const;
		%feature("autodoc", "1");
		bool IsMainShape();
		%feature("autodoc", "1");
		void SetIOR(TCollection_AsciiString & theIOR);
		%feature("autodoc", "1");
		TCollection_AsciiString GetIOR();
		%feature("autodoc", "1");
		Handle_GEOM_Function AddFunction(const Standard_GUID &theGUID, int );
		%feature("autodoc", "1");
		Standard_Boolean RemoveFunction(Handle_GEOM_Function );
		%feature("autodoc", "1");
		int GetNbFunctions();
		%feature("autodoc", "1");
		Handle_GEOM_Function GetFunction(int );
		%feature("autodoc", "1");
		Handle_GEOM_Function GetLastFunction();
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient GetAllDependency();
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfTransient GetLastDependency();
		%feature("autodoc", "1");
		Standard_Boolean IsDirty();
		%feature("autodoc", "1");
		void SetDirty(Standard_Boolean );
		%feature("autodoc", "1");
		TDF_Label GetFreeLabel();
		%feature("autodoc", "1");
		TDF_Label GetUserDataLabel();

};
%extend GEOM_Object {
	Handle_GEOM_Object GetHandle() {
	return *(Handle_GEOM_Object*) &$self;
	}
};
%extend GEOM_Object {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") GEOM_Object::~GEOM_Object %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOM_Object {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOM_DataMapIteratorOfDataMapOfAsciiStringTransient;
class GEOM_DataMapIteratorOfDataMapOfAsciiStringTransient : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		GEOM_DataMapIteratorOfDataMapOfAsciiStringTransient();
		%feature("autodoc", "1");
		GEOM_DataMapIteratorOfDataMapOfAsciiStringTransient(const GEOM_DataMapOfAsciiStringTransient &aMap);
		%feature("autodoc", "1");
		void Initialize(const GEOM_DataMapOfAsciiStringTransient &aMap);
		%feature("autodoc", "1");
		const TCollection_AsciiString & Key() const;
		%feature("autodoc", "1");
		const Handle_Standard_Transient & Value() const;

};
%feature("shadow") GEOM_DataMapIteratorOfDataMapOfAsciiStringTransient::~GEOM_DataMapIteratorOfDataMapOfAsciiStringTransient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOM_DataMapIteratorOfDataMapOfAsciiStringTransient {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GEOM_IOperations;
class GEOM_IOperations {
	public:
		%feature("autodoc", "1");
		GEOM_IOperations(GEOM_Engine* theEngine, int );
		%feature("autodoc", "1");
		void StartOperation();
		%feature("autodoc", "1");
		void OpenOperation();
		%feature("autodoc", "1");
		bool FinishOperation();
		%feature("autodoc", "1");
		void AbortOperation();
		%feature("autodoc", "1");
		bool IsDone();
		%feature("autodoc", "1");
		void SetNotDone();
		%feature("autodoc", "1");
		void SetErrorCode(const TCollection_AsciiString &theErrorCode);
		%feature("autodoc", "1");
		const char * GetErrorCode();
		%feature("autodoc", "1");
		GEOM_Engine * GetEngine();
		%feature("autodoc", "1");
		GEOM_Solver * GetSolver();
		%feature("autodoc", "1");
		int GetDocID();

};
%feature("shadow") GEOM_IOperations::~GEOM_IOperations %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GEOM_IOperations {
	void _kill_pointed() {
		delete $self;
	}
};
