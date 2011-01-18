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
%module EDL
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%pythoncode {
import GarbageCollector
};

%include EDL_dependencies.i


%include EDL_headers.i


enum EDL_ParameterMode {
	EDL_VARIABLE,
	EDL_STRING,
	};

enum EDL_Error {
	EDL_NORMAL,
	EDL_SYNTAXERROR,
	EDL_VARNOTFOUND,
	EDL_TEMPMULTIPLEDEFINED,
	EDL_TEMPLATENOTDEFINED,
	EDL_LIBRARYNOTFOUND,
	EDL_LIBNOTOPEN,
	EDL_FUNCTIONNOTFOUND,
	EDL_FILEOPENED,
	EDL_FILENOTOPENED,
	EDL_FILENOTFOUND,
	EDL_TOOMANYINCLUDELEVEL,
	};



%nodefaultctor Handle_EDL_Interpretor;
class Handle_EDL_Interpretor : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_EDL_Interpretor();
		%feature("autodoc", "1");
		Handle_EDL_Interpretor(const Handle_EDL_Interpretor &aHandle);
		%feature("autodoc", "1");
		Handle_EDL_Interpretor(const EDL_Interpretor *anItem);
		%feature("autodoc", "1");
		Handle_EDL_Interpretor & operator=(const Handle_EDL_Interpretor &aHandle);
		%feature("autodoc", "1");
		Handle_EDL_Interpretor & operator=(const EDL_Interpretor *anItem);
		%feature("autodoc", "1");
		Handle_EDL_Interpretor const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_EDL_Interpretor {
	EDL_Interpretor* GetObject() {
	return (EDL_Interpretor*)$self->Access();
	}
};
%feature("shadow") Handle_EDL_Interpretor::~Handle_EDL_Interpretor %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_EDL_Interpretor {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_EDL_SequenceNodeOfSequenceOfVariable;
class Handle_EDL_SequenceNodeOfSequenceOfVariable : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_EDL_SequenceNodeOfSequenceOfVariable();
		%feature("autodoc", "1");
		Handle_EDL_SequenceNodeOfSequenceOfVariable(const Handle_EDL_SequenceNodeOfSequenceOfVariable &aHandle);
		%feature("autodoc", "1");
		Handle_EDL_SequenceNodeOfSequenceOfVariable(const EDL_SequenceNodeOfSequenceOfVariable *anItem);
		%feature("autodoc", "1");
		Handle_EDL_SequenceNodeOfSequenceOfVariable & operator=(const Handle_EDL_SequenceNodeOfSequenceOfVariable &aHandle);
		%feature("autodoc", "1");
		Handle_EDL_SequenceNodeOfSequenceOfVariable & operator=(const EDL_SequenceNodeOfSequenceOfVariable *anItem);
		%feature("autodoc", "1");
		Handle_EDL_SequenceNodeOfSequenceOfVariable const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_EDL_SequenceNodeOfSequenceOfVariable {
	EDL_SequenceNodeOfSequenceOfVariable* GetObject() {
	return (EDL_SequenceNodeOfSequenceOfVariable*)$self->Access();
	}
};
%feature("shadow") Handle_EDL_SequenceNodeOfSequenceOfVariable::~Handle_EDL_SequenceNodeOfSequenceOfVariable %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_EDL_SequenceNodeOfSequenceOfVariable {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_EDL_DataMapNodeOfMapOfVariable;
class Handle_EDL_DataMapNodeOfMapOfVariable : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_EDL_DataMapNodeOfMapOfVariable();
		%feature("autodoc", "1");
		Handle_EDL_DataMapNodeOfMapOfVariable(const Handle_EDL_DataMapNodeOfMapOfVariable &aHandle);
		%feature("autodoc", "1");
		Handle_EDL_DataMapNodeOfMapOfVariable(const EDL_DataMapNodeOfMapOfVariable *anItem);
		%feature("autodoc", "1");
		Handle_EDL_DataMapNodeOfMapOfVariable & operator=(const Handle_EDL_DataMapNodeOfMapOfVariable &aHandle);
		%feature("autodoc", "1");
		Handle_EDL_DataMapNodeOfMapOfVariable & operator=(const EDL_DataMapNodeOfMapOfVariable *anItem);
		%feature("autodoc", "1");
		Handle_EDL_DataMapNodeOfMapOfVariable const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_EDL_DataMapNodeOfMapOfVariable {
	EDL_DataMapNodeOfMapOfVariable* GetObject() {
	return (EDL_DataMapNodeOfMapOfVariable*)$self->Access();
	}
};
%feature("shadow") Handle_EDL_DataMapNodeOfMapOfVariable::~Handle_EDL_DataMapNodeOfMapOfVariable %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_EDL_DataMapNodeOfMapOfVariable {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_EDL_DataMapNodeOfMapOfTemplate;
class Handle_EDL_DataMapNodeOfMapOfTemplate : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_EDL_DataMapNodeOfMapOfTemplate();
		%feature("autodoc", "1");
		Handle_EDL_DataMapNodeOfMapOfTemplate(const Handle_EDL_DataMapNodeOfMapOfTemplate &aHandle);
		%feature("autodoc", "1");
		Handle_EDL_DataMapNodeOfMapOfTemplate(const EDL_DataMapNodeOfMapOfTemplate *anItem);
		%feature("autodoc", "1");
		Handle_EDL_DataMapNodeOfMapOfTemplate & operator=(const Handle_EDL_DataMapNodeOfMapOfTemplate &aHandle);
		%feature("autodoc", "1");
		Handle_EDL_DataMapNodeOfMapOfTemplate & operator=(const EDL_DataMapNodeOfMapOfTemplate *anItem);
		%feature("autodoc", "1");
		Handle_EDL_DataMapNodeOfMapOfTemplate const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_EDL_DataMapNodeOfMapOfTemplate {
	EDL_DataMapNodeOfMapOfTemplate* GetObject() {
	return (EDL_DataMapNodeOfMapOfTemplate*)$self->Access();
	}
};
%feature("shadow") Handle_EDL_DataMapNodeOfMapOfTemplate::~Handle_EDL_DataMapNodeOfMapOfTemplate %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_EDL_DataMapNodeOfMapOfTemplate {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_EDL_StackNodeOfStackOfBoolean;
class Handle_EDL_StackNodeOfStackOfBoolean : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_EDL_StackNodeOfStackOfBoolean();
		%feature("autodoc", "1");
		Handle_EDL_StackNodeOfStackOfBoolean(const Handle_EDL_StackNodeOfStackOfBoolean &aHandle);
		%feature("autodoc", "1");
		Handle_EDL_StackNodeOfStackOfBoolean(const EDL_StackNodeOfStackOfBoolean *anItem);
		%feature("autodoc", "1");
		Handle_EDL_StackNodeOfStackOfBoolean & operator=(const Handle_EDL_StackNodeOfStackOfBoolean &aHandle);
		%feature("autodoc", "1");
		Handle_EDL_StackNodeOfStackOfBoolean & operator=(const EDL_StackNodeOfStackOfBoolean *anItem);
		%feature("autodoc", "1");
		Handle_EDL_StackNodeOfStackOfBoolean const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_EDL_StackNodeOfStackOfBoolean {
	EDL_StackNodeOfStackOfBoolean* GetObject() {
	return (EDL_StackNodeOfStackOfBoolean*)$self->Access();
	}
};
%feature("shadow") Handle_EDL_StackNodeOfStackOfBoolean::~Handle_EDL_StackNodeOfStackOfBoolean %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_EDL_StackNodeOfStackOfBoolean {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_EDL_API;
class Handle_EDL_API : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_EDL_API();
		%feature("autodoc", "1");
		Handle_EDL_API(const Handle_EDL_API &aHandle);
		%feature("autodoc", "1");
		Handle_EDL_API(const EDL_API *anItem);
		%feature("autodoc", "1");
		Handle_EDL_API & operator=(const Handle_EDL_API &aHandle);
		%feature("autodoc", "1");
		Handle_EDL_API & operator=(const EDL_API *anItem);
		%feature("autodoc", "1");
		Handle_EDL_API const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_EDL_API {
	EDL_API* GetObject() {
	return (EDL_API*)$self->Access();
	}
};
%feature("shadow") Handle_EDL_API::~Handle_EDL_API %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_EDL_API {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_EDL_HSequenceOfVariable;
class Handle_EDL_HSequenceOfVariable : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_EDL_HSequenceOfVariable();
		%feature("autodoc", "1");
		Handle_EDL_HSequenceOfVariable(const Handle_EDL_HSequenceOfVariable &aHandle);
		%feature("autodoc", "1");
		Handle_EDL_HSequenceOfVariable(const EDL_HSequenceOfVariable *anItem);
		%feature("autodoc", "1");
		Handle_EDL_HSequenceOfVariable & operator=(const Handle_EDL_HSequenceOfVariable &aHandle);
		%feature("autodoc", "1");
		Handle_EDL_HSequenceOfVariable & operator=(const EDL_HSequenceOfVariable *anItem);
		%feature("autodoc", "1");
		Handle_EDL_HSequenceOfVariable const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_EDL_HSequenceOfVariable {
	EDL_HSequenceOfVariable* GetObject() {
	return (EDL_HSequenceOfVariable*)$self->Access();
	}
};
%feature("shadow") Handle_EDL_HSequenceOfVariable::~Handle_EDL_HSequenceOfVariable %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_EDL_HSequenceOfVariable {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_EDL_DataMapNodeOfMapOfFile;
class Handle_EDL_DataMapNodeOfMapOfFile : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_EDL_DataMapNodeOfMapOfFile();
		%feature("autodoc", "1");
		Handle_EDL_DataMapNodeOfMapOfFile(const Handle_EDL_DataMapNodeOfMapOfFile &aHandle);
		%feature("autodoc", "1");
		Handle_EDL_DataMapNodeOfMapOfFile(const EDL_DataMapNodeOfMapOfFile *anItem);
		%feature("autodoc", "1");
		Handle_EDL_DataMapNodeOfMapOfFile & operator=(const Handle_EDL_DataMapNodeOfMapOfFile &aHandle);
		%feature("autodoc", "1");
		Handle_EDL_DataMapNodeOfMapOfFile & operator=(const EDL_DataMapNodeOfMapOfFile *anItem);
		%feature("autodoc", "1");
		Handle_EDL_DataMapNodeOfMapOfFile const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_EDL_DataMapNodeOfMapOfFile {
	EDL_DataMapNodeOfMapOfFile* GetObject() {
	return (EDL_DataMapNodeOfMapOfFile*)$self->Access();
	}
};
%feature("shadow") Handle_EDL_DataMapNodeOfMapOfFile::~Handle_EDL_DataMapNodeOfMapOfFile %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_EDL_DataMapNodeOfMapOfFile {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_EDL_DataMapNodeOfMapOfLibrary;
class Handle_EDL_DataMapNodeOfMapOfLibrary : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_EDL_DataMapNodeOfMapOfLibrary();
		%feature("autodoc", "1");
		Handle_EDL_DataMapNodeOfMapOfLibrary(const Handle_EDL_DataMapNodeOfMapOfLibrary &aHandle);
		%feature("autodoc", "1");
		Handle_EDL_DataMapNodeOfMapOfLibrary(const EDL_DataMapNodeOfMapOfLibrary *anItem);
		%feature("autodoc", "1");
		Handle_EDL_DataMapNodeOfMapOfLibrary & operator=(const Handle_EDL_DataMapNodeOfMapOfLibrary &aHandle);
		%feature("autodoc", "1");
		Handle_EDL_DataMapNodeOfMapOfLibrary & operator=(const EDL_DataMapNodeOfMapOfLibrary *anItem);
		%feature("autodoc", "1");
		Handle_EDL_DataMapNodeOfMapOfLibrary const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_EDL_DataMapNodeOfMapOfLibrary {
	EDL_DataMapNodeOfMapOfLibrary* GetObject() {
	return (EDL_DataMapNodeOfMapOfLibrary*)$self->Access();
	}
};
%feature("shadow") Handle_EDL_DataMapNodeOfMapOfLibrary::~Handle_EDL_DataMapNodeOfMapOfLibrary %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_EDL_DataMapNodeOfMapOfLibrary {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor EDL_API;
class EDL_API : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		EDL_API();
		%feature("autodoc", "1");
		EDL_Error Openlib(const char * aName) const;
		%feature("autodoc", "1");
		EDL_Error Call(const char * aLibName, const char * aFunction, const Handle_TColStd_HSequenceOfHAsciiString &anArgList) const;
		%feature("autodoc", "1");
		void Closelib(const char * aName) const;
		%feature("autodoc", "1");
		void AddTemplate(const char * aName, const Handle_TColStd_HSequenceOfHAsciiString &aDefinition, const Handle_TColStd_HSequenceOfHAsciiString &aVarList) const;
		%feature("autodoc", "1");
		void Apply(const char * aResult, const char * aName) const;
		%feature("autodoc", "1");
		void RemoveTemplate(const char * aName) const;
		%feature("autodoc", "1");
		EDL_Template & GetTemplate(const char * aName) const;
		%feature("autodoc", "1");
		void AddVariable(const char * aName, const char * aValue) const;
		%feature("autodoc", "1");
		void AddVariable(const char * aName, const Standard_Integer aValue) const;
		%feature("autodoc", "1");
		void AddVariable(const char * aName, const Standard_Real aValue) const;
		%feature("autodoc", "1");
		void AddVariable(const char * aName, const Standard_Character aValue) const;
		%feature("autodoc", "1");
		EDL_Variable & GetVariable(const char * aName) const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString GetVariableValue(const char * aName) const;
		%feature("autodoc", "1");
		void RemoveVariable(const char * aName) const;
		%feature("autodoc", "1");
		Standard_Boolean IsDefined(const char * aName) const;
		%feature("autodoc", "1");
		EDL_Error OpenFile(const char * aName, const char * aPath) const;
		%feature("autodoc", "1");
		void WriteFile(const char * aName, const char * aVar) const;
		%feature("autodoc", "1");
		void WriteFileConst(const char * aName, const char * aVar) const;
		%feature("autodoc", "1");
		void WriteFileConst(const char * aName, const Standard_Character aValue) const;
		%feature("autodoc", "1");
		void WriteFileConst(const char * aName, const Standard_Integer aValue) const;
		%feature("autodoc", "1");
		void WriteFileConst(const char * aName, const Standard_Real aValue) const;
		%feature("autodoc", "1");
		void CloseFile(const char * aName) const;
		%feature("autodoc", "1");
		void AddIncludeDirectory(const char * aDirectory) const;
		%feature("autodoc", "1");
		void RemoveIncludeDirectory(const char * aDirectory) const;
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfAsciiString GetIncludeDirectory() const;
		%feature("autodoc", "1");
		EDL_DataMapIteratorOfMapOfTemplate GetTemplateIterator() const;
		%feature("autodoc", "1");
		EDL_DataMapIteratorOfMapOfVariable GetVariableIterator() const;
		%feature("autodoc", "1");
		void ClearVariables() const;
		%feature("autodoc", "1");
		void ClearTemplates() const;
		%feature("autodoc", "1");
		void ClearIncludes() const;
		%feature("autodoc", "1");
		EDL_Error Execute(const char * aFileName) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend EDL_API {
	Handle_EDL_API GetHandle() {
	return *(Handle_EDL_API*) &$self;
	}
};
%extend EDL_API {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") EDL_API::~EDL_API %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend EDL_API {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor EDL_DataMapNodeOfMapOfFile;
class EDL_DataMapNodeOfMapOfFile : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		EDL_DataMapNodeOfMapOfFile(const TCollection_AsciiString &K, const EDL_File &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TCollection_AsciiString & Key() const;
		%feature("autodoc", "1");
		EDL_File & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend EDL_DataMapNodeOfMapOfFile {
	Handle_EDL_DataMapNodeOfMapOfFile GetHandle() {
	return *(Handle_EDL_DataMapNodeOfMapOfFile*) &$self;
	}
};
%extend EDL_DataMapNodeOfMapOfFile {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") EDL_DataMapNodeOfMapOfFile::~EDL_DataMapNodeOfMapOfFile %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend EDL_DataMapNodeOfMapOfFile {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor EDL_DataMapNodeOfMapOfLibrary;
class EDL_DataMapNodeOfMapOfLibrary : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		EDL_DataMapNodeOfMapOfLibrary(const TCollection_AsciiString &K, const EDL_Library &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TCollection_AsciiString & Key() const;
		%feature("autodoc", "1");
		EDL_Library & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend EDL_DataMapNodeOfMapOfLibrary {
	Handle_EDL_DataMapNodeOfMapOfLibrary GetHandle() {
	return *(Handle_EDL_DataMapNodeOfMapOfLibrary*) &$self;
	}
};
%extend EDL_DataMapNodeOfMapOfLibrary {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") EDL_DataMapNodeOfMapOfLibrary::~EDL_DataMapNodeOfMapOfLibrary %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend EDL_DataMapNodeOfMapOfLibrary {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor EDL_Interpretor;
class EDL_Interpretor : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		EDL_Interpretor();
		%feature("autodoc", "1");
		void ClearAll();
		%feature("autodoc", "1");
		void ClearSymbolTable();
		%feature("autodoc", "1");
		void ClearTemplateTable();
		%feature("autodoc", "1");
		void ClearVariableList();
		%feature("autodoc", "1");
		void ClearArgList();
		%feature("autodoc", "1");
		void ClearRetList();
		%feature("autodoc", "1");
		EDL_Error Parse(const char * aFile);
		%feature("autodoc", "1");
		EDL_Error AddIncludeDirectory(const char * aDirectory);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfAsciiString GetIncludeDirectory() const;
		%feature("autodoc", "1");
		EDL_Error AddFile(const char * aVariable, const char * aFilename);
		%feature("autodoc", "1");
		EDL_File & GetFile(const char * aVariable);
		%feature("autodoc", "1");
		void RemoveFile(const char * aVariable);
		%feature("autodoc", "1");
		EDL_Error AddVariable(const char * aVariable, const char * aValue);
		%feature("autodoc", "1");
		EDL_Variable & GetVariable(const char * aVariable);
		%feature("autodoc", "1");
		Standard_Boolean IsDefined(const char * aVariable) const;
		%feature("autodoc", "1");
		Standard_Boolean IsFile(const char * aVariable) const;
		%feature("autodoc", "1");
		void RemoveVariable(const char * aVariable);
		%feature("autodoc", "1");
		EDL_Error AddTemplate(const char * aTemplate);
		%feature("autodoc", "1");
		EDL_Error AddToTemplate(const char * aTemplate);
		%feature("autodoc", "1");
		EDL_Error ClearTemplate(const char * aTemplate);
		%feature("autodoc", "1");
		EDL_Template & GetTemplate(const char * aTemplate);
		%feature("autodoc", "1");
		void EvalTemplate(const char * aTemplate, const char * aResult);
		%feature("autodoc", "1");
		void RemoveTemplate(const char * aTemplate);
		%feature("autodoc", "1");
		EDL_Error AddLibrary(const char * aLibrary);
		%feature("autodoc", "1");
		EDL_Library & GetLibrary(const char * aLibrary);
		%feature("autodoc", "1");
		EDL_Error CallFunction(const char * aLibname, const char * aFunction, const char * aRetuenName);
		%feature("autodoc", "1");
		void RemoveLibrary(const char * aLibrary);
		%feature("autodoc", "1");
		void AddExecutionStatus(const Standard_Boolean aValue);
		%feature("autodoc", "1");
		Standard_Boolean GetExecutionStatus();
		%feature("autodoc", "1");
		Standard_Boolean RemoveExecutionStatus();
		%feature("autodoc", "1");
		void SetParameterType(const EDL_ParameterMode aMode);
		%feature("autodoc", "1");
		EDL_ParameterMode GetParameterType() const;
		%feature("autodoc", "1");
		void AddExpressionMember(const Standard_Boolean aValue);
		%feature("autodoc", "1");
		Standard_Boolean GetExpressionMember();
		%feature("autodoc", "1");
		void SetPrintList(const char * aValue);
		%feature("autodoc", "1");
		TCollection_AsciiString & GetPrintList();
		%feature("autodoc", "1");
		void SetCurrentTemplate(const char * aValue);
		%feature("autodoc", "1");
		TCollection_AsciiString & GetCurrentTemplate();
		%feature("autodoc", "1");
		void AddToVariableList(const char * aVariable);
		%feature("autodoc", "1");
		Handle_EDL_HSequenceOfVariable GetVariableList() const;
		%feature("autodoc", "1");
		void AddToArgList(const char * aVariable);
		%feature("autodoc", "1");
		void AddToArgList(const char * aVariable, const char * aValue);
		%feature("autodoc", "1");
		EDL_DataMapIteratorOfMapOfTemplate GetTemplateIterator() const;
		%feature("autodoc", "1");
		EDL_DataMapIteratorOfMapOfVariable GetVariableIterator() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend EDL_Interpretor {
	Handle_EDL_Interpretor GetHandle() {
	return *(Handle_EDL_Interpretor*) &$self;
	}
};
%extend EDL_Interpretor {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") EDL_Interpretor::~EDL_Interpretor %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend EDL_Interpretor {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor EDL_SequenceNodeOfSequenceOfVariable;
class EDL_SequenceNodeOfSequenceOfVariable : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		EDL_SequenceNodeOfSequenceOfVariable(const EDL_Variable &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		EDL_Variable & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend EDL_SequenceNodeOfSequenceOfVariable {
	Handle_EDL_SequenceNodeOfSequenceOfVariable GetHandle() {
	return *(Handle_EDL_SequenceNodeOfSequenceOfVariable*) &$self;
	}
};
%extend EDL_SequenceNodeOfSequenceOfVariable {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") EDL_SequenceNodeOfSequenceOfVariable::~EDL_SequenceNodeOfSequenceOfVariable %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend EDL_SequenceNodeOfSequenceOfVariable {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor EDL_StackOfBoolean;
class EDL_StackOfBoolean {
	public:
		%feature("autodoc", "1");
		EDL_StackOfBoolean();
		%feature("autodoc", "1");
		const EDL_StackOfBoolean & Assign(const EDL_StackOfBoolean &Other);
		%feature("autodoc", "1");
		const EDL_StackOfBoolean & operator=(const EDL_StackOfBoolean &Other);
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Depth() const;
		%feature("autodoc", "1");
		const Standard_Boolean & Top() const;
		%feature("autodoc", "1");
		void Push(const Standard_Boolean &I);
		%feature("autodoc", "1");
		void Pop();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc","1");
		%extend {
				Standard_Boolean GetChangeTop() {
				return (Standard_Boolean) $self->ChangeTop();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetChangeTop(Standard_Boolean value ) {
				$self->ChangeTop()=value;
				}
		};

};
%feature("shadow") EDL_StackOfBoolean::~EDL_StackOfBoolean %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend EDL_StackOfBoolean {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor EDL_DataMapNodeOfMapOfTemplate;
class EDL_DataMapNodeOfMapOfTemplate : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		EDL_DataMapNodeOfMapOfTemplate(const TCollection_AsciiString &K, const EDL_Template &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TCollection_AsciiString & Key() const;
		%feature("autodoc", "1");
		EDL_Template & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend EDL_DataMapNodeOfMapOfTemplate {
	Handle_EDL_DataMapNodeOfMapOfTemplate GetHandle() {
	return *(Handle_EDL_DataMapNodeOfMapOfTemplate*) &$self;
	}
};
%extend EDL_DataMapNodeOfMapOfTemplate {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") EDL_DataMapNodeOfMapOfTemplate::~EDL_DataMapNodeOfMapOfTemplate %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend EDL_DataMapNodeOfMapOfTemplate {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor EDL_Library;
class EDL_Library {
	public:
		%feature("autodoc", "1");
		EDL_Library();
		%feature("autodoc", "1");
		EDL_Library(const char * aName);
		%feature("autodoc", "1");
		void Assign(const EDL_Library &aLib);
		%feature("autodoc", "1");
		void operator=(const EDL_Library &aLib);
		%feature("autodoc", "1");
		void Destroy() const;
		%feature("autodoc", "1");
		char * GetName() const;
		%feature("autodoc", "1");
		char * GetStatus() const;
		%feature("autodoc", "1");
		void Close() const;
		%feature("autodoc", "1");
		Standard_Integer HashCode(const EDL_Library &aVar, const Standard_Integer Upper);
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const EDL_Library &alib1, const EDL_Library &alib2);

};
%feature("shadow") EDL_Library::~EDL_Library %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend EDL_Library {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor EDL_DataMapIteratorOfMapOfLibrary;
class EDL_DataMapIteratorOfMapOfLibrary : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		EDL_DataMapIteratorOfMapOfLibrary();
		%feature("autodoc", "1");
		EDL_DataMapIteratorOfMapOfLibrary(const EDL_MapOfLibrary &aMap);
		%feature("autodoc", "1");
		void Initialize(const EDL_MapOfLibrary &aMap);
		%feature("autodoc", "1");
		const TCollection_AsciiString & Key() const;
		%feature("autodoc", "1");
		const EDL_Library & Value() const;

};
%feature("shadow") EDL_DataMapIteratorOfMapOfLibrary::~EDL_DataMapIteratorOfMapOfLibrary %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend EDL_DataMapIteratorOfMapOfLibrary {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor EDL_Template;
class EDL_Template {
	public:
		%feature("autodoc", "1");
		EDL_Template();
		%feature("autodoc", "1");
		EDL_Template(const char * aName);
		%feature("autodoc", "1");
		EDL_Template(const EDL_Template &aTmp);
		%feature("autodoc", "1");
		void Assign(const EDL_Template &aTemplate);
		%feature("autodoc", "1");
		void operator=(const EDL_Template &aTemplate);
		%feature("autodoc", "1");
		void Destroy() const;
		%feature("autodoc", "1");
		char * GetName() const;
		%feature("autodoc", "1");
		char * GetLine(const Standard_Integer index) const;
		%feature("autodoc", "1");
		void SetLine(const Standard_Integer index, const char * aValue);
		%feature("autodoc", "1");
		void AddLine(const char * aValue);
		%feature("autodoc", "1");
		void ClearLines();
		%feature("autodoc", "1");
		void Eval(const Handle_EDL_HSequenceOfVariable &aVar);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfAsciiString GetEval() const;
		%feature("autodoc", "1");
		void VariableList(const Handle_TColStd_HSequenceOfHAsciiString &aVarList);
		%feature("autodoc", "1");
		void AddToVariableList(const Handle_TCollection_HAsciiString &aVarName);
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfHAsciiString GetVariableList() const;
		%feature("autodoc", "1");
		Standard_Integer HashCode(const EDL_Template &aVar, const Standard_Integer Upper);
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const EDL_Template &aTemp1, const EDL_Template &aTemp2);

};
%feature("shadow") EDL_Template::~EDL_Template %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend EDL_Template {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor EDL_StackNodeOfStackOfBoolean;
class EDL_StackNodeOfStackOfBoolean : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		EDL_StackNodeOfStackOfBoolean(const Standard_Boolean &I, const TCollection_MapNodePtr &n);
		%feature("autodoc","1");
		%extend {
				Standard_Boolean GetValue() {
				return (Standard_Boolean) $self->Value();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetValue(Standard_Boolean value ) {
				$self->Value()=value;
				}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend EDL_StackNodeOfStackOfBoolean {
	Handle_EDL_StackNodeOfStackOfBoolean GetHandle() {
	return *(Handle_EDL_StackNodeOfStackOfBoolean*) &$self;
	}
};
%extend EDL_StackNodeOfStackOfBoolean {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") EDL_StackNodeOfStackOfBoolean::~EDL_StackNodeOfStackOfBoolean %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend EDL_StackNodeOfStackOfBoolean {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor EDL_DataMapIteratorOfMapOfVariable;
class EDL_DataMapIteratorOfMapOfVariable : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		EDL_DataMapIteratorOfMapOfVariable();
		%feature("autodoc", "1");
		EDL_DataMapIteratorOfMapOfVariable(const EDL_MapOfVariable &aMap);
		%feature("autodoc", "1");
		void Initialize(const EDL_MapOfVariable &aMap);
		%feature("autodoc", "1");
		const TCollection_AsciiString & Key() const;
		%feature("autodoc", "1");
		const EDL_Variable & Value() const;

};
%feature("shadow") EDL_DataMapIteratorOfMapOfVariable::~EDL_DataMapIteratorOfMapOfVariable %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend EDL_DataMapIteratorOfMapOfVariable {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor EDL_DataMapIteratorOfMapOfTemplate;
class EDL_DataMapIteratorOfMapOfTemplate : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		EDL_DataMapIteratorOfMapOfTemplate();
		%feature("autodoc", "1");
		EDL_DataMapIteratorOfMapOfTemplate(const EDL_MapOfTemplate &aMap);
		%feature("autodoc", "1");
		void Initialize(const EDL_MapOfTemplate &aMap);
		%feature("autodoc", "1");
		const TCollection_AsciiString & Key() const;
		%feature("autodoc", "1");
		const EDL_Template & Value() const;

};
%feature("shadow") EDL_DataMapIteratorOfMapOfTemplate::~EDL_DataMapIteratorOfMapOfTemplate %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend EDL_DataMapIteratorOfMapOfTemplate {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor EDL;
class EDL {
	public:
		%feature("autodoc", "1");
		EDL();
		%feature("autodoc", "1");
		void PrintError(const EDL_Error anError, const char * anArg);

};
%feature("shadow") EDL::~EDL %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend EDL {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor EDL_HSequenceOfVariable;
class EDL_HSequenceOfVariable : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		EDL_HSequenceOfVariable();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const EDL_Variable &anItem);
		%feature("autodoc", "1");
		void Append(const Handle_EDL_HSequenceOfVariable &aSequence);
		%feature("autodoc", "1");
		void Prepend(const EDL_Variable &anItem);
		%feature("autodoc", "1");
		void Prepend(const Handle_EDL_HSequenceOfVariable &aSequence);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const EDL_Variable &anItem);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_EDL_HSequenceOfVariable &aSequence);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const EDL_Variable &anItem);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_EDL_HSequenceOfVariable &aSequence);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer anIndex, const Standard_Integer anOtherIndex);
		%feature("autodoc", "1");
		Handle_EDL_HSequenceOfVariable Split(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer anIndex, const EDL_Variable &anItem);
		%feature("autodoc", "1");
		const EDL_Variable & Value(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		EDL_Variable & ChangeValue(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer fromIndex, const Standard_Integer toIndex);
		%feature("autodoc", "1");
		const EDL_SequenceOfVariable & Sequence() const;
		%feature("autodoc", "1");
		EDL_SequenceOfVariable & ChangeSequence();
		%feature("autodoc", "1");
		Handle_EDL_HSequenceOfVariable ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend EDL_HSequenceOfVariable {
	Handle_EDL_HSequenceOfVariable GetHandle() {
	return *(Handle_EDL_HSequenceOfVariable*) &$self;
	}
};
%extend EDL_HSequenceOfVariable {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") EDL_HSequenceOfVariable::~EDL_HSequenceOfVariable %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend EDL_HSequenceOfVariable {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor EDL_SequenceOfVariable;
class EDL_SequenceOfVariable : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		EDL_SequenceOfVariable();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const EDL_SequenceOfVariable & Assign(const EDL_SequenceOfVariable &Other);
		%feature("autodoc", "1");
		const EDL_SequenceOfVariable & operator=(const EDL_SequenceOfVariable &Other);
		%feature("autodoc", "1");
		void Append(const EDL_Variable &T);
		%feature("autodoc", "1");
		void Append(EDL_SequenceOfVariable & S);
		%feature("autodoc", "1");
		void Prepend(const EDL_Variable &T);
		%feature("autodoc", "1");
		void Prepend(EDL_SequenceOfVariable & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const EDL_Variable &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, EDL_SequenceOfVariable & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const EDL_Variable &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, EDL_SequenceOfVariable & S);
		%feature("autodoc", "1");
		const EDL_Variable & First() const;
		%feature("autodoc", "1");
		const EDL_Variable & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, EDL_SequenceOfVariable & S);
		%feature("autodoc", "1");
		const EDL_Variable & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const EDL_Variable & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const EDL_Variable &I);
		%feature("autodoc", "1");
		EDL_Variable & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		EDL_Variable & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") EDL_SequenceOfVariable::~EDL_SequenceOfVariable %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend EDL_SequenceOfVariable {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor EDL_StackIteratorOfStackOfBoolean;
class EDL_StackIteratorOfStackOfBoolean {
	public:
		%feature("autodoc", "1");
		EDL_StackIteratorOfStackOfBoolean();
		%feature("autodoc", "1");
		EDL_StackIteratorOfStackOfBoolean(const EDL_StackOfBoolean &S);
		%feature("autodoc", "1");
		void Initialize(const EDL_StackOfBoolean &S);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		const Standard_Boolean & Value() const;

};
%feature("shadow") EDL_StackIteratorOfStackOfBoolean::~EDL_StackIteratorOfStackOfBoolean %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend EDL_StackIteratorOfStackOfBoolean {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor EDL_MapOfVariable;
class EDL_MapOfVariable : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		EDL_MapOfVariable(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		EDL_MapOfVariable & Assign(const EDL_MapOfVariable &Other);
		%feature("autodoc", "1");
		EDL_MapOfVariable & operator=(const EDL_MapOfVariable &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TCollection_AsciiString &K, const EDL_Variable &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TCollection_AsciiString &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TCollection_AsciiString &K);
		%feature("autodoc", "1");
		const EDL_Variable & Find(const TCollection_AsciiString &K) const;
		%feature("autodoc", "1");
		const EDL_Variable & operator()(const TCollection_AsciiString &K) const;
		%feature("autodoc", "1");
		EDL_Variable & ChangeFind(const TCollection_AsciiString &K);
		%feature("autodoc", "1");
		EDL_Variable & operator()(const TCollection_AsciiString &K);

};
%feature("shadow") EDL_MapOfVariable::~EDL_MapOfVariable %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend EDL_MapOfVariable {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor EDL_MapOfTemplate;
class EDL_MapOfTemplate : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		EDL_MapOfTemplate(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		EDL_MapOfTemplate & Assign(const EDL_MapOfTemplate &Other);
		%feature("autodoc", "1");
		EDL_MapOfTemplate & operator=(const EDL_MapOfTemplate &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TCollection_AsciiString &K, const EDL_Template &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TCollection_AsciiString &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TCollection_AsciiString &K);
		%feature("autodoc", "1");
		const EDL_Template & Find(const TCollection_AsciiString &K) const;
		%feature("autodoc", "1");
		const EDL_Template & operator()(const TCollection_AsciiString &K) const;
		%feature("autodoc", "1");
		EDL_Template & ChangeFind(const TCollection_AsciiString &K);
		%feature("autodoc", "1");
		EDL_Template & operator()(const TCollection_AsciiString &K);

};
%feature("shadow") EDL_MapOfTemplate::~EDL_MapOfTemplate %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend EDL_MapOfTemplate {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor EDL_DataMapIteratorOfMapOfFile;
class EDL_DataMapIteratorOfMapOfFile : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		EDL_DataMapIteratorOfMapOfFile();
		%feature("autodoc", "1");
		EDL_DataMapIteratorOfMapOfFile(const EDL_MapOfFile &aMap);
		%feature("autodoc", "1");
		void Initialize(const EDL_MapOfFile &aMap);
		%feature("autodoc", "1");
		const TCollection_AsciiString & Key() const;
		%feature("autodoc", "1");
		const EDL_File & Value() const;

};
%feature("shadow") EDL_DataMapIteratorOfMapOfFile::~EDL_DataMapIteratorOfMapOfFile %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend EDL_DataMapIteratorOfMapOfFile {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor EDL_MapOfFile;
class EDL_MapOfFile : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		EDL_MapOfFile(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		EDL_MapOfFile & Assign(const EDL_MapOfFile &Other);
		%feature("autodoc", "1");
		EDL_MapOfFile & operator=(const EDL_MapOfFile &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TCollection_AsciiString &K, const EDL_File &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TCollection_AsciiString &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TCollection_AsciiString &K);
		%feature("autodoc", "1");
		const EDL_File & Find(const TCollection_AsciiString &K) const;
		%feature("autodoc", "1");
		const EDL_File & operator()(const TCollection_AsciiString &K) const;
		%feature("autodoc", "1");
		EDL_File & ChangeFind(const TCollection_AsciiString &K);
		%feature("autodoc", "1");
		EDL_File & operator()(const TCollection_AsciiString &K);

};
%feature("shadow") EDL_MapOfFile::~EDL_MapOfFile %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend EDL_MapOfFile {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor EDL_File;
class EDL_File {
	public:
		%feature("autodoc", "1");
		EDL_File();
		%feature("autodoc", "1");
		EDL_File(const char * aName);
		%feature("autodoc", "1");
		void Assign(const EDL_File &aFile);
		%feature("autodoc", "1");
		void operator=(const EDL_File &aFile);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		char * GetName() const;
		%feature("autodoc", "1");
		Standard_Boolean Open();
		%feature("autodoc", "1");
		void Write(const char * aBuffer);
		%feature("autodoc", "1");
		char * Read() const;
		%feature("autodoc", "1");
		void Close();
		%feature("autodoc", "1");
		Standard_Address GetFile() const;

};
%feature("shadow") EDL_File::~EDL_File %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend EDL_File {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor EDL_Variable;
class EDL_Variable {
	public:
		%feature("autodoc", "1");
		EDL_Variable();
		%feature("autodoc", "1");
		EDL_Variable(const char * aName, const char * aValue);
		%feature("autodoc", "1");
		EDL_Variable(const EDL_Variable &aVar);
		%feature("autodoc", "1");
		void Assign(const EDL_Variable &aVar);
		%feature("autodoc", "1");
		void operator=(const EDL_Variable &aVar);
		%feature("autodoc", "1");
		void Destroy() const;
		%feature("autodoc", "1");
		char * GetName() const;
		%feature("autodoc", "1");
		char * GetValue() const;
		%feature("autodoc", "1");
		void SetValue(const char * aValue);
		%feature("autodoc", "1");
		Standard_Integer HashCode(const EDL_Variable &aVar, const Standard_Integer Upper);
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const EDL_Variable &aVar1, const EDL_Variable &aVar2);

};
%feature("shadow") EDL_Variable::~EDL_Variable %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend EDL_Variable {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor EDL_DataMapNodeOfMapOfVariable;
class EDL_DataMapNodeOfMapOfVariable : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		EDL_DataMapNodeOfMapOfVariable(const TCollection_AsciiString &K, const EDL_Variable &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TCollection_AsciiString & Key() const;
		%feature("autodoc", "1");
		EDL_Variable & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend EDL_DataMapNodeOfMapOfVariable {
	Handle_EDL_DataMapNodeOfMapOfVariable GetHandle() {
	return *(Handle_EDL_DataMapNodeOfMapOfVariable*) &$self;
	}
};
%extend EDL_DataMapNodeOfMapOfVariable {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") EDL_DataMapNodeOfMapOfVariable::~EDL_DataMapNodeOfMapOfVariable %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend EDL_DataMapNodeOfMapOfVariable {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor EDL_MapOfLibrary;
class EDL_MapOfLibrary : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		EDL_MapOfLibrary(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		EDL_MapOfLibrary & Assign(const EDL_MapOfLibrary &Other);
		%feature("autodoc", "1");
		EDL_MapOfLibrary & operator=(const EDL_MapOfLibrary &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TCollection_AsciiString &K, const EDL_Library &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TCollection_AsciiString &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TCollection_AsciiString &K);
		%feature("autodoc", "1");
		const EDL_Library & Find(const TCollection_AsciiString &K) const;
		%feature("autodoc", "1");
		const EDL_Library & operator()(const TCollection_AsciiString &K) const;
		%feature("autodoc", "1");
		EDL_Library & ChangeFind(const TCollection_AsciiString &K);
		%feature("autodoc", "1");
		EDL_Library & operator()(const TCollection_AsciiString &K);

};
%feature("shadow") EDL_MapOfLibrary::~EDL_MapOfLibrary %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend EDL_MapOfLibrary {
	void _kill_pointed() {
		delete $self;
	}
};
