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

%include SGEOM_renames.i
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include SGEOM_dependencies.i


%include SGEOM_headers.i




%nodefaultctor Handle_GEOM_SubShapeDriver;
class Handle_GEOM_SubShapeDriver : public Handle_TFunction_Driver {
	public:
		%feature("autodoc", "1");
		Handle_GEOM_SubShapeDriver();
		%feature("autodoc", "1");
		Handle_GEOM_SubShapeDriver(const Handle_GEOM_SubShapeDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOM_SubShapeDriver(const GEOM_SubShapeDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOM_SubShapeDriver & operator=(const Handle_GEOM_SubShapeDriver &aHandle);
		%feature("autodoc", "1");
		Handle_GEOM_SubShapeDriver & operator=(const GEOM_SubShapeDriver *anItem);
		%feature("autodoc", "1");
		Handle_GEOM_SubShapeDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOM_SubShapeDriver {
	GEOM_SubShapeDriver* GetObject() {
	return (GEOM_SubShapeDriver*)$self->Access();
	}
};
%extend Handle_GEOM_SubShapeDriver {
	~Handle_GEOM_SubShapeDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_GEOM_SubShapeDriver\n");}
	}
};


%nodefaultctor Handle_GEOM_Object;
class Handle_GEOM_Object : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_GEOM_Object();
		%feature("autodoc", "1");
		Handle_GEOM_Object(const Handle_GEOM_Object &aHandle);
		%feature("autodoc", "1");
		Handle_GEOM_Object(const GEOM_Object *anItem);
		%feature("autodoc", "1");
		Handle_GEOM_Object & operator=(const Handle_GEOM_Object &aHandle);
		%feature("autodoc", "1");
		Handle_GEOM_Object & operator=(const GEOM_Object *anItem);
		%feature("autodoc", "1");
		Handle_GEOM_Object const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOM_Object {
	GEOM_Object* GetObject() {
	return (GEOM_Object*)$self->Access();
	}
};
%extend Handle_GEOM_Object {
	~Handle_GEOM_Object() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_GEOM_Object\n");}
	}
};


%nodefaultctor Handle_GEOM_Application;
class Handle_GEOM_Application : public Handle_TDocStd_Application {
	public:
		%feature("autodoc", "1");
		Handle_GEOM_Application();
		%feature("autodoc", "1");
		Handle_GEOM_Application(const Handle_GEOM_Application &aHandle);
		%feature("autodoc", "1");
		Handle_GEOM_Application(const GEOM_Application *anItem);
		%feature("autodoc", "1");
		Handle_GEOM_Application & operator=(const Handle_GEOM_Application &aHandle);
		%feature("autodoc", "1");
		Handle_GEOM_Application & operator=(const GEOM_Application *anItem);
		%feature("autodoc", "1");
		Handle_GEOM_Application const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOM_Application {
	GEOM_Application* GetObject() {
	return (GEOM_Application*)$self->Access();
	}
};
%extend Handle_GEOM_Application {
	~Handle_GEOM_Application() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_GEOM_Application\n");}
	}
};


%nodefaultctor Handle_GEOM_DataMapNodeOfDataMapOfAsciiStringTransient;
class Handle_GEOM_DataMapNodeOfDataMapOfAsciiStringTransient : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_GEOM_DataMapNodeOfDataMapOfAsciiStringTransient();
		%feature("autodoc", "1");
		Handle_GEOM_DataMapNodeOfDataMapOfAsciiStringTransient(const Handle_GEOM_DataMapNodeOfDataMapOfAsciiStringTransient &aHandle);
		%feature("autodoc", "1");
		Handle_GEOM_DataMapNodeOfDataMapOfAsciiStringTransient(const GEOM_DataMapNodeOfDataMapOfAsciiStringTransient *anItem);
		%feature("autodoc", "1");
		Handle_GEOM_DataMapNodeOfDataMapOfAsciiStringTransient & operator=(const Handle_GEOM_DataMapNodeOfDataMapOfAsciiStringTransient &aHandle);
		%feature("autodoc", "1");
		Handle_GEOM_DataMapNodeOfDataMapOfAsciiStringTransient & operator=(const GEOM_DataMapNodeOfDataMapOfAsciiStringTransient *anItem);
		%feature("autodoc", "1");
		Handle_GEOM_DataMapNodeOfDataMapOfAsciiStringTransient const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOM_DataMapNodeOfDataMapOfAsciiStringTransient {
	GEOM_DataMapNodeOfDataMapOfAsciiStringTransient* GetObject() {
	return (GEOM_DataMapNodeOfDataMapOfAsciiStringTransient*)$self->Access();
	}
};
%extend Handle_GEOM_DataMapNodeOfDataMapOfAsciiStringTransient {
	~Handle_GEOM_DataMapNodeOfDataMapOfAsciiStringTransient() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_GEOM_DataMapNodeOfDataMapOfAsciiStringTransient\n");}
	}
};


%nodefaultctor Handle_GEOM_Function;
class Handle_GEOM_Function : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_GEOM_Function();
		%feature("autodoc", "1");
		Handle_GEOM_Function(const Handle_GEOM_Function &aHandle);
		%feature("autodoc", "1");
		Handle_GEOM_Function(const GEOM_Function *anItem);
		%feature("autodoc", "1");
		Handle_GEOM_Function & operator=(const Handle_GEOM_Function &aHandle);
		%feature("autodoc", "1");
		Handle_GEOM_Function & operator=(const GEOM_Function *anItem);
		%feature("autodoc", "1");
		Handle_GEOM_Function const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GEOM_Function {
	GEOM_Function* GetObject() {
	return (GEOM_Function*)$self->Access();
	}
};
%extend Handle_GEOM_Function {
	~Handle_GEOM_Function() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_GEOM_Function\n");}
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
		virtual		Standard_CString ResourcesName();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &arg0) const;

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
%extend GEOM_Application {
	~GEOM_Application() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOM_Application\n");}
	}
};


%nodefaultctor GEOM_DataMapNodeOfDataMapOfAsciiStringTransient;
class GEOM_DataMapNodeOfDataMapOfAsciiStringTransient : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		GEOM_DataMapNodeOfDataMapOfAsciiStringTransient(const TCollection_AsciiString &K, const Handle_Standard_Transient &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TCollection_AsciiString & Key() const;
		%feature("autodoc", "1");
		Handle_Standard_Transient & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &arg0) const;

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
%extend GEOM_DataMapNodeOfDataMapOfAsciiStringTransient {
	~GEOM_DataMapNodeOfDataMapOfAsciiStringTransient() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOM_DataMapNodeOfDataMapOfAsciiStringTransient\n");}
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
		Handle_TDocStd_Document GetDocument(int );
		%feature("autodoc", "1");
		int GetDocID(Handle_TDocStd_Document );
		%feature("autodoc", "1");
		Handle_TDocStd_Application GetApplication();
		%feature("autodoc", "1");
		Handle_GEOM_Object GetObject(int , const char *theEntry);
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
		bool GetInterpreterEquationValue(int , const TCollection_AsciiString &theEquation, double & theRefValue);
		%feature("autodoc", "1");
		void SetInterpreterConstant(int , const TCollection_AsciiString &theConstant, double );
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfTransient GetInterpreterConstantArray(int );
		%feature("autodoc", "1");
		void SetInterpreterConstantArray(int , Handle_TColStd_HArray1OfTransient , bool );
		%feature("autodoc", "1");
		TDF_Label GetUserDataLabel(int );

};
%extend GEOM_Engine {
	~GEOM_Engine() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOM_Engine\n");}
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
		void FinishOperation();
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
%extend GEOM_IOperations {
	~GEOM_IOperations() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOM_IOperations\n");}
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
		Standard_Boolean Bind(const TCollection_AsciiString &K, const Handle_Standard_Transient &I);
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
%extend GEOM_DataMapOfAsciiStringTransient {
	~GEOM_DataMapOfAsciiStringTransient() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOM_DataMapOfAsciiStringTransient\n");}
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
%extend GEOM_Parameter {
	~GEOM_Parameter() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOM_Parameter\n");}
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
%extend GEOM_Solver {
	~GEOM_Solver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOM_Solver\n");}
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
%extend GEOM_DataMapIteratorOfDataMapOfAsciiStringTransient {
	~GEOM_DataMapIteratorOfDataMapOfAsciiStringTransient() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOM_DataMapIteratorOfDataMapOfAsciiStringTransient\n");}
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
		void SetIndices(const Handle_TColStd_HArray1OfInteger &theIndices);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfInteger GetIndices();

};
%extend GEOM_ISubShape {
	~GEOM_ISubShape() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOM_ISubShape\n");}
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
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;

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
%extend GEOM_SubShapeDriver {
	~GEOM_SubShapeDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOM_SubShapeDriver\n");}
	}
};


%nodefaultctor GEOM_Function;
class GEOM_Function : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;
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
		void SetRealArray(int , const Handle_TColStd_HArray1OfReal &theArray);
		%feature("autodoc", "1");
		void SetRealArray(int , const Handle_TColStd_HArray1OfAsciiString &theArray);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal GetRealArray(int );
		%feature("autodoc", "1");
		void SetInteger(int , int );
		%feature("autodoc", "1");
		void SetInteger(int , const TCollection_AsciiString &theValue);
		%feature("autodoc", "1");
		int GetInteger(int );
		%feature("autodoc", "1");
		void SetIntegerArray(int , const Handle_TColStd_HArray1OfInteger &theArray);
		%feature("autodoc", "1");
		void SetIntegerArray(int , const Handle_TColStd_HArray1OfAsciiString &theArray);
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
		void SetStringArray(int , const Handle_TColStd_HArray1OfExtendedString &theArray);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfExtendedString GetStringArray(int );
		%feature("autodoc", "1");
		const Standard_GUID & GetReferencesTreeID();
		%feature("autodoc", "1");
		void SetReferenceList(int , const Handle_TColStd_HSequenceOfTransient &theRefList);
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
%extend GEOM_Function {
	~GEOM_Function() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOM_Function\n");}
	}
};


%nodefaultctor GEOM_Object;
class GEOM_Object : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		Standard_Boolean IsKind(const Handle_Standard_Type &AType) const;
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
%extend GEOM_Object {
	~GEOM_Object() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of GEOM_Object\n");}
	}
};
