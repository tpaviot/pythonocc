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
%module EDL

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


%include EDL_dependencies.i


%include EDL_headers.i


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

enum EDL_ParameterMode {
	EDL_VARIABLE,
	EDL_STRING,
	};



%nodefaultctor Handle_EDL_Interpretor;
class Handle_EDL_Interpretor : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_EDL_Interpretor();
		%feature("autodoc", "1");
		Handle_EDL_Interpretor();
		%feature("autodoc", "1");
		Handle_EDL_Interpretor(const Handle_EDL_Interpretor &aHandle);
		%feature("autodoc", "1");
		Handle_EDL_Interpretor(const EDL_Interpretor *anItem);
		%feature("autodoc", "1");
		Handle_EDL_Interpretor const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_EDL_Interpretor {
	EDL_Interpretor* GetObject() {
	return (EDL_Interpretor*)$self->Access();
	}
};

%nodefaultctor Handle_EDL_SequenceNodeOfSequenceOfVariable;
class Handle_EDL_SequenceNodeOfSequenceOfVariable : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		~Handle_EDL_SequenceNodeOfSequenceOfVariable();
		%feature("autodoc", "1");
		Handle_EDL_SequenceNodeOfSequenceOfVariable();
		%feature("autodoc", "1");
		Handle_EDL_SequenceNodeOfSequenceOfVariable(const Handle_EDL_SequenceNodeOfSequenceOfVariable &aHandle);
		%feature("autodoc", "1");
		Handle_EDL_SequenceNodeOfSequenceOfVariable(const EDL_SequenceNodeOfSequenceOfVariable *anItem);
		%feature("autodoc", "1");
		Handle_EDL_SequenceNodeOfSequenceOfVariable const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_EDL_SequenceNodeOfSequenceOfVariable {
	EDL_SequenceNodeOfSequenceOfVariable* GetObject() {
	return (EDL_SequenceNodeOfSequenceOfVariable*)$self->Access();
	}
};

%nodefaultctor Handle_EDL_DataMapNodeOfMapOfVariable;
class Handle_EDL_DataMapNodeOfMapOfVariable : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_EDL_DataMapNodeOfMapOfVariable();
		%feature("autodoc", "1");
		Handle_EDL_DataMapNodeOfMapOfVariable();
		%feature("autodoc", "1");
		Handle_EDL_DataMapNodeOfMapOfVariable(const Handle_EDL_DataMapNodeOfMapOfVariable &aHandle);
		%feature("autodoc", "1");
		Handle_EDL_DataMapNodeOfMapOfVariable(const EDL_DataMapNodeOfMapOfVariable *anItem);
		%feature("autodoc", "1");
		Handle_EDL_DataMapNodeOfMapOfVariable const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_EDL_DataMapNodeOfMapOfVariable {
	EDL_DataMapNodeOfMapOfVariable* GetObject() {
	return (EDL_DataMapNodeOfMapOfVariable*)$self->Access();
	}
};

%nodefaultctor Handle_EDL_DataMapNodeOfMapOfTemplate;
class Handle_EDL_DataMapNodeOfMapOfTemplate : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_EDL_DataMapNodeOfMapOfTemplate();
		%feature("autodoc", "1");
		Handle_EDL_DataMapNodeOfMapOfTemplate();
		%feature("autodoc", "1");
		Handle_EDL_DataMapNodeOfMapOfTemplate(const Handle_EDL_DataMapNodeOfMapOfTemplate &aHandle);
		%feature("autodoc", "1");
		Handle_EDL_DataMapNodeOfMapOfTemplate(const EDL_DataMapNodeOfMapOfTemplate *anItem);
		%feature("autodoc", "1");
		Handle_EDL_DataMapNodeOfMapOfTemplate const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_EDL_DataMapNodeOfMapOfTemplate {
	EDL_DataMapNodeOfMapOfTemplate* GetObject() {
	return (EDL_DataMapNodeOfMapOfTemplate*)$self->Access();
	}
};

%nodefaultctor Handle_EDL_StackNodeOfStackOfBoolean;
class Handle_EDL_StackNodeOfStackOfBoolean : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_EDL_StackNodeOfStackOfBoolean();
		%feature("autodoc", "1");
		Handle_EDL_StackNodeOfStackOfBoolean();
		%feature("autodoc", "1");
		Handle_EDL_StackNodeOfStackOfBoolean(const Handle_EDL_StackNodeOfStackOfBoolean &aHandle);
		%feature("autodoc", "1");
		Handle_EDL_StackNodeOfStackOfBoolean(const EDL_StackNodeOfStackOfBoolean *anItem);
		%feature("autodoc", "1");
		Handle_EDL_StackNodeOfStackOfBoolean const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_EDL_StackNodeOfStackOfBoolean {
	EDL_StackNodeOfStackOfBoolean* GetObject() {
	return (EDL_StackNodeOfStackOfBoolean*)$self->Access();
	}
};

%nodefaultctor Handle_EDL_API;
class Handle_EDL_API : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_EDL_API();
		%feature("autodoc", "1");
		Handle_EDL_API();
		%feature("autodoc", "1");
		Handle_EDL_API(const Handle_EDL_API &aHandle);
		%feature("autodoc", "1");
		Handle_EDL_API(const EDL_API *anItem);
		%feature("autodoc", "1");
		Handle_EDL_API const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_EDL_API {
	EDL_API* GetObject() {
	return (EDL_API*)$self->Access();
	}
};

%nodefaultctor Handle_EDL_HSequenceOfVariable;
class Handle_EDL_HSequenceOfVariable : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_EDL_HSequenceOfVariable();
		%feature("autodoc", "1");
		Handle_EDL_HSequenceOfVariable();
		%feature("autodoc", "1");
		Handle_EDL_HSequenceOfVariable(const Handle_EDL_HSequenceOfVariable &aHandle);
		%feature("autodoc", "1");
		Handle_EDL_HSequenceOfVariable(const EDL_HSequenceOfVariable *anItem);
		%feature("autodoc", "1");
		Handle_EDL_HSequenceOfVariable const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_EDL_HSequenceOfVariable {
	EDL_HSequenceOfVariable* GetObject() {
	return (EDL_HSequenceOfVariable*)$self->Access();
	}
};

%nodefaultctor Handle_EDL_DataMapNodeOfMapOfFile;
class Handle_EDL_DataMapNodeOfMapOfFile : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_EDL_DataMapNodeOfMapOfFile();
		%feature("autodoc", "1");
		Handle_EDL_DataMapNodeOfMapOfFile();
		%feature("autodoc", "1");
		Handle_EDL_DataMapNodeOfMapOfFile(const Handle_EDL_DataMapNodeOfMapOfFile &aHandle);
		%feature("autodoc", "1");
		Handle_EDL_DataMapNodeOfMapOfFile(const EDL_DataMapNodeOfMapOfFile *anItem);
		%feature("autodoc", "1");
		Handle_EDL_DataMapNodeOfMapOfFile const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_EDL_DataMapNodeOfMapOfFile {
	EDL_DataMapNodeOfMapOfFile* GetObject() {
	return (EDL_DataMapNodeOfMapOfFile*)$self->Access();
	}
};

%nodefaultctor Handle_EDL_DataMapNodeOfMapOfLibrary;
class Handle_EDL_DataMapNodeOfMapOfLibrary : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_EDL_DataMapNodeOfMapOfLibrary();
		%feature("autodoc", "1");
		Handle_EDL_DataMapNodeOfMapOfLibrary();
		%feature("autodoc", "1");
		Handle_EDL_DataMapNodeOfMapOfLibrary(const Handle_EDL_DataMapNodeOfMapOfLibrary &aHandle);
		%feature("autodoc", "1");
		Handle_EDL_DataMapNodeOfMapOfLibrary(const EDL_DataMapNodeOfMapOfLibrary *anItem);
		%feature("autodoc", "1");
		Handle_EDL_DataMapNodeOfMapOfLibrary const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_EDL_DataMapNodeOfMapOfLibrary {
	EDL_DataMapNodeOfMapOfLibrary* GetObject() {
	return (EDL_DataMapNodeOfMapOfLibrary*)$self->Access();
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
		%feature("autodoc", "1");
		virtual		~EDL_API();

};
%extend EDL_API {
	Handle_EDL_API GetHandle() {
	return *(Handle_EDL_API*) &$self;
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
		%feature("autodoc", "1");
		virtual		~EDL_DataMapNodeOfMapOfFile();

};
%extend EDL_DataMapNodeOfMapOfFile {
	Handle_EDL_DataMapNodeOfMapOfFile GetHandle() {
	return *(Handle_EDL_DataMapNodeOfMapOfFile*) &$self;
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
		%feature("autodoc", "1");
		virtual		~EDL_DataMapNodeOfMapOfLibrary();

};
%extend EDL_DataMapNodeOfMapOfLibrary {
	Handle_EDL_DataMapNodeOfMapOfLibrary GetHandle() {
	return *(Handle_EDL_DataMapNodeOfMapOfLibrary*) &$self;
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
		virtual		~EDL_Interpretor();
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

%nodefaultctor EDL_SequenceNodeOfSequenceOfVariable;
class EDL_SequenceNodeOfSequenceOfVariable : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		EDL_SequenceNodeOfSequenceOfVariable(const EDL_Variable &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		EDL_Variable & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~EDL_SequenceNodeOfSequenceOfVariable();

};
%extend EDL_SequenceNodeOfSequenceOfVariable {
	Handle_EDL_SequenceNodeOfSequenceOfVariable GetHandle() {
	return *(Handle_EDL_SequenceNodeOfSequenceOfVariable*) &$self;
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
		%feature("autodoc", "1");
		~EDL_StackOfBoolean();
		%feature("autodoc", "1");
		Standard_Boolean & ChangeTop();

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
		%feature("autodoc", "1");
		virtual		~EDL_DataMapNodeOfMapOfTemplate();

};
%extend EDL_DataMapNodeOfMapOfTemplate {
	Handle_EDL_DataMapNodeOfMapOfTemplate GetHandle() {
	return *(Handle_EDL_DataMapNodeOfMapOfTemplate*) &$self;
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
		void Destroy() const;
		%feature("autodoc", "1");
		~EDL_Library();
		%feature("autodoc", "1");
		Standard_CString GetName() const;
		%feature("autodoc", "1");
		Standard_CString GetStatus() const;
		%feature("autodoc", "1");
		void Close() const;
		%feature("autodoc", "1");
		Standard_Integer HashCode(const EDL_Library &aVar, const Standard_Integer Upper);
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const EDL_Library &alib1, const EDL_Library &alib2);

};

%nodefaultctor EDL_DataMapIteratorOfMapOfLibrary;
class EDL_DataMapIteratorOfMapOfLibrary : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		~EDL_DataMapIteratorOfMapOfLibrary();
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
		void Destroy() const;
		%feature("autodoc", "1");
		~EDL_Template();
		%feature("autodoc", "1");
		Standard_CString GetName() const;
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

%nodefaultctor EDL_StackNodeOfStackOfBoolean;
class EDL_StackNodeOfStackOfBoolean : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		EDL_StackNodeOfStackOfBoolean(const Standard_Boolean &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Standard_Boolean & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~EDL_StackNodeOfStackOfBoolean();

};
%extend EDL_StackNodeOfStackOfBoolean {
	Handle_EDL_StackNodeOfStackOfBoolean GetHandle() {
	return *(Handle_EDL_StackNodeOfStackOfBoolean*) &$self;
	}
};

%nodefaultctor EDL_DataMapIteratorOfMapOfVariable;
class EDL_DataMapIteratorOfMapOfVariable : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		~EDL_DataMapIteratorOfMapOfVariable();
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

%nodefaultctor EDL_DataMapIteratorOfMapOfTemplate;
class EDL_DataMapIteratorOfMapOfTemplate : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		~EDL_DataMapIteratorOfMapOfTemplate();
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

%nodefaultctor EDL;
class EDL {
	public:
		%feature("autodoc", "1");
		~EDL();
		%feature("autodoc", "1");
		EDL();
		%feature("autodoc", "1");
		void PrintError(const EDL_Error anError, const char * anArg);

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
		%feature("autodoc", "1");
		virtual		~EDL_HSequenceOfVariable();

};
%extend EDL_HSequenceOfVariable {
	Handle_EDL_HSequenceOfVariable GetHandle() {
	return *(Handle_EDL_HSequenceOfVariable*) &$self;
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
		~EDL_SequenceOfVariable();
		%feature("autodoc", "1");
		const EDL_SequenceOfVariable & Assign(const EDL_SequenceOfVariable &Other);
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

%nodefaultctor EDL_StackIteratorOfStackOfBoolean;
class EDL_StackIteratorOfStackOfBoolean {
	public:
		%feature("autodoc", "1");
		~EDL_StackIteratorOfStackOfBoolean();
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

%nodefaultctor EDL_MapOfVariable;
class EDL_MapOfVariable : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		EDL_MapOfVariable(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		EDL_MapOfVariable & Assign(const EDL_MapOfVariable &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~EDL_MapOfVariable();
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

%nodefaultctor EDL_MapOfTemplate;
class EDL_MapOfTemplate : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		EDL_MapOfTemplate(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		EDL_MapOfTemplate & Assign(const EDL_MapOfTemplate &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~EDL_MapOfTemplate();
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

%nodefaultctor EDL_DataMapIteratorOfMapOfFile;
class EDL_DataMapIteratorOfMapOfFile : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		~EDL_DataMapIteratorOfMapOfFile();
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

%nodefaultctor EDL_MapOfFile;
class EDL_MapOfFile : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		EDL_MapOfFile(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		EDL_MapOfFile & Assign(const EDL_MapOfFile &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~EDL_MapOfFile();
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
		void Destroy();
		%feature("autodoc", "1");
		~EDL_File();
		%feature("autodoc", "1");
		Standard_CString GetName() const;
		%feature("autodoc", "1");
		Standard_Boolean Open();
		%feature("autodoc", "1");
		void Write(const char * aBuffer);
		%feature("autodoc", "1");
		Standard_CString Read() const;
		%feature("autodoc", "1");
		void Close();
		%feature("autodoc", "1");
		Standard_Address GetFile() const;

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
		void Destroy() const;
		%feature("autodoc", "1");
		~EDL_Variable();
		%feature("autodoc", "1");
		Standard_CString GetName() const;
		%feature("autodoc", "1");
		Standard_CString GetValue() const;
		%feature("autodoc", "1");
		void SetValue(const char * aValue);
		%feature("autodoc", "1");
		Standard_Integer HashCode(const EDL_Variable &aVar, const Standard_Integer Upper);
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const EDL_Variable &aVar1, const EDL_Variable &aVar2);

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
		%feature("autodoc", "1");
		virtual		~EDL_DataMapNodeOfMapOfVariable();

};
%extend EDL_DataMapNodeOfMapOfVariable {
	Handle_EDL_DataMapNodeOfMapOfVariable GetHandle() {
	return *(Handle_EDL_DataMapNodeOfMapOfVariable*) &$self;
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
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~EDL_MapOfLibrary();
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