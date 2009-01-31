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
%module Dynamic

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


%include Dynamic_dependencies.i


%include Dynamic_headers.i


enum Dynamic_ModeEnum {
	Dynamic_IN,
	Dynamic_OUT,
	Dynamic_INOUT,
	Dynamic_INTERNAL,
	Dynamic_CONSTANT,
	};



%nodefaultctor Handle_Dynamic_DynamicInstance;
class Handle_Dynamic_DynamicInstance : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_Dynamic_DynamicInstance();
		%feature("autodoc", "1");
		Handle_Dynamic_DynamicInstance();
		%feature("autodoc", "1");
		Handle_Dynamic_DynamicInstance(const Handle_Dynamic_DynamicInstance &aHandle);
		%feature("autodoc", "1");
		Handle_Dynamic_DynamicInstance(const Dynamic_DynamicInstance *anItem);
		%feature("autodoc", "1");
		Handle_Dynamic_DynamicInstance const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Dynamic_DynamicInstance {
	Dynamic_DynamicInstance* GetObject() {
	return (Dynamic_DynamicInstance*)$self->Access();
	}
};

%nodefaultctor Handle_Dynamic_SequenceNodeOfSeqOfMethods;
class Handle_Dynamic_SequenceNodeOfSeqOfMethods : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		~Handle_Dynamic_SequenceNodeOfSeqOfMethods();
		%feature("autodoc", "1");
		Handle_Dynamic_SequenceNodeOfSeqOfMethods();
		%feature("autodoc", "1");
		Handle_Dynamic_SequenceNodeOfSeqOfMethods(const Handle_Dynamic_SequenceNodeOfSeqOfMethods &aHandle);
		%feature("autodoc", "1");
		Handle_Dynamic_SequenceNodeOfSeqOfMethods(const Dynamic_SequenceNodeOfSeqOfMethods *anItem);
		%feature("autodoc", "1");
		Handle_Dynamic_SequenceNodeOfSeqOfMethods const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Dynamic_SequenceNodeOfSeqOfMethods {
	Dynamic_SequenceNodeOfSeqOfMethods* GetObject() {
	return (Dynamic_SequenceNodeOfSeqOfMethods*)$self->Access();
	}
};

%nodefaultctor Handle_Dynamic_Variable;
class Handle_Dynamic_Variable : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_Dynamic_Variable();
		%feature("autodoc", "1");
		Handle_Dynamic_Variable();
		%feature("autodoc", "1");
		Handle_Dynamic_Variable(const Handle_Dynamic_Variable &aHandle);
		%feature("autodoc", "1");
		Handle_Dynamic_Variable(const Dynamic_Variable *anItem);
		%feature("autodoc", "1");
		Handle_Dynamic_Variable const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Dynamic_Variable {
	Dynamic_Variable* GetObject() {
	return (Dynamic_Variable*)$self->Access();
	}
};

%nodefaultctor Handle_Dynamic_VariableNode;
class Handle_Dynamic_VariableNode : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_Dynamic_VariableNode();
		%feature("autodoc", "1");
		Handle_Dynamic_VariableNode();
		%feature("autodoc", "1");
		Handle_Dynamic_VariableNode(const Handle_Dynamic_VariableNode &aHandle);
		%feature("autodoc", "1");
		Handle_Dynamic_VariableNode(const Dynamic_VariableNode *anItem);
		%feature("autodoc", "1");
		Handle_Dynamic_VariableNode const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Dynamic_VariableNode {
	Dynamic_VariableNode* GetObject() {
	return (Dynamic_VariableNode*)$self->Access();
	}
};

%nodefaultctor Handle_Dynamic_SequenceNodeOfSeqOfMethodDefinitions;
class Handle_Dynamic_SequenceNodeOfSeqOfMethodDefinitions : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		~Handle_Dynamic_SequenceNodeOfSeqOfMethodDefinitions();
		%feature("autodoc", "1");
		Handle_Dynamic_SequenceNodeOfSeqOfMethodDefinitions();
		%feature("autodoc", "1");
		Handle_Dynamic_SequenceNodeOfSeqOfMethodDefinitions(const Handle_Dynamic_SequenceNodeOfSeqOfMethodDefinitions &aHandle);
		%feature("autodoc", "1");
		Handle_Dynamic_SequenceNodeOfSeqOfMethodDefinitions(const Dynamic_SequenceNodeOfSeqOfMethodDefinitions *anItem);
		%feature("autodoc", "1");
		Handle_Dynamic_SequenceNodeOfSeqOfMethodDefinitions const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Dynamic_SequenceNodeOfSeqOfMethodDefinitions {
	Dynamic_SequenceNodeOfSeqOfMethodDefinitions* GetObject() {
	return (Dynamic_SequenceNodeOfSeqOfMethodDefinitions*)$self->Access();
	}
};

%nodefaultctor Handle_Dynamic_SequenceNodeOfSeqOfClasses;
class Handle_Dynamic_SequenceNodeOfSeqOfClasses : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		~Handle_Dynamic_SequenceNodeOfSeqOfClasses();
		%feature("autodoc", "1");
		Handle_Dynamic_SequenceNodeOfSeqOfClasses();
		%feature("autodoc", "1");
		Handle_Dynamic_SequenceNodeOfSeqOfClasses(const Handle_Dynamic_SequenceNodeOfSeqOfClasses &aHandle);
		%feature("autodoc", "1");
		Handle_Dynamic_SequenceNodeOfSeqOfClasses(const Dynamic_SequenceNodeOfSeqOfClasses *anItem);
		%feature("autodoc", "1");
		Handle_Dynamic_SequenceNodeOfSeqOfClasses const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Dynamic_SequenceNodeOfSeqOfClasses {
	Dynamic_SequenceNodeOfSeqOfClasses* GetObject() {
	return (Dynamic_SequenceNodeOfSeqOfClasses*)$self->Access();
	}
};

%nodefaultctor Handle_Dynamic_ParameterNode;
class Handle_Dynamic_ParameterNode : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_Dynamic_ParameterNode();
		%feature("autodoc", "1");
		Handle_Dynamic_ParameterNode();
		%feature("autodoc", "1");
		Handle_Dynamic_ParameterNode(const Handle_Dynamic_ParameterNode &aHandle);
		%feature("autodoc", "1");
		Handle_Dynamic_ParameterNode(const Dynamic_ParameterNode *anItem);
		%feature("autodoc", "1");
		Handle_Dynamic_ParameterNode const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Dynamic_ParameterNode {
	Dynamic_ParameterNode* GetObject() {
	return (Dynamic_ParameterNode*)$self->Access();
	}
};

%nodefaultctor Handle_Dynamic_FuzzyClass;
class Handle_Dynamic_FuzzyClass : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_Dynamic_FuzzyClass();
		%feature("autodoc", "1");
		Handle_Dynamic_FuzzyClass();
		%feature("autodoc", "1");
		Handle_Dynamic_FuzzyClass(const Handle_Dynamic_FuzzyClass &aHandle);
		%feature("autodoc", "1");
		Handle_Dynamic_FuzzyClass(const Dynamic_FuzzyClass *anItem);
		%feature("autodoc", "1");
		Handle_Dynamic_FuzzyClass const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Dynamic_FuzzyClass {
	Dynamic_FuzzyClass* GetObject() {
	return (Dynamic_FuzzyClass*)$self->Access();
	}
};

%nodefaultctor Handle_Dynamic_FuzzyDefinition;
class Handle_Dynamic_FuzzyDefinition : public Handle_Dynamic_FuzzyClass {
	public:
		%feature("autodoc", "1");
		~Handle_Dynamic_FuzzyDefinition();
		%feature("autodoc", "1");
		Handle_Dynamic_FuzzyDefinition();
		%feature("autodoc", "1");
		Handle_Dynamic_FuzzyDefinition(const Handle_Dynamic_FuzzyDefinition &aHandle);
		%feature("autodoc", "1");
		Handle_Dynamic_FuzzyDefinition(const Dynamic_FuzzyDefinition *anItem);
		%feature("autodoc", "1");
		Handle_Dynamic_FuzzyDefinition const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Dynamic_FuzzyDefinition {
	Dynamic_FuzzyDefinition* GetObject() {
	return (Dynamic_FuzzyDefinition*)$self->Access();
	}
};

%nodefaultctor Handle_Dynamic_Method;
class Handle_Dynamic_Method : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_Dynamic_Method();
		%feature("autodoc", "1");
		Handle_Dynamic_Method();
		%feature("autodoc", "1");
		Handle_Dynamic_Method(const Handle_Dynamic_Method &aHandle);
		%feature("autodoc", "1");
		Handle_Dynamic_Method(const Dynamic_Method *anItem);
		%feature("autodoc", "1");
		Handle_Dynamic_Method const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Dynamic_Method {
	Dynamic_Method* GetObject() {
	return (Dynamic_Method*)$self->Access();
	}
};

%nodefaultctor Handle_Dynamic_Parameter;
class Handle_Dynamic_Parameter : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_Dynamic_Parameter();
		%feature("autodoc", "1");
		Handle_Dynamic_Parameter();
		%feature("autodoc", "1");
		Handle_Dynamic_Parameter(const Handle_Dynamic_Parameter &aHandle);
		%feature("autodoc", "1");
		Handle_Dynamic_Parameter(const Dynamic_Parameter *anItem);
		%feature("autodoc", "1");
		Handle_Dynamic_Parameter const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Dynamic_Parameter {
	Dynamic_Parameter* GetObject() {
	return (Dynamic_Parameter*)$self->Access();
	}
};

%nodefaultctor Handle_Dynamic_RealParameter;
class Handle_Dynamic_RealParameter : public Handle_Dynamic_Parameter {
	public:
		%feature("autodoc", "1");
		~Handle_Dynamic_RealParameter();
		%feature("autodoc", "1");
		Handle_Dynamic_RealParameter();
		%feature("autodoc", "1");
		Handle_Dynamic_RealParameter(const Handle_Dynamic_RealParameter &aHandle);
		%feature("autodoc", "1");
		Handle_Dynamic_RealParameter(const Dynamic_RealParameter *anItem);
		%feature("autodoc", "1");
		Handle_Dynamic_RealParameter const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Dynamic_RealParameter {
	Dynamic_RealParameter* GetObject() {
	return (Dynamic_RealParameter*)$self->Access();
	}
};

%nodefaultctor Handle_Dynamic_MethodDefinition;
class Handle_Dynamic_MethodDefinition : public Handle_Dynamic_Method {
	public:
		%feature("autodoc", "1");
		~Handle_Dynamic_MethodDefinition();
		%feature("autodoc", "1");
		Handle_Dynamic_MethodDefinition();
		%feature("autodoc", "1");
		Handle_Dynamic_MethodDefinition(const Handle_Dynamic_MethodDefinition &aHandle);
		%feature("autodoc", "1");
		Handle_Dynamic_MethodDefinition(const Dynamic_MethodDefinition *anItem);
		%feature("autodoc", "1");
		Handle_Dynamic_MethodDefinition const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Dynamic_MethodDefinition {
	Dynamic_MethodDefinition* GetObject() {
	return (Dynamic_MethodDefinition*)$self->Access();
	}
};

%nodefaultctor Handle_Dynamic_CompiledMethod;
class Handle_Dynamic_CompiledMethod : public Handle_Dynamic_MethodDefinition {
	public:
		%feature("autodoc", "1");
		~Handle_Dynamic_CompiledMethod();
		%feature("autodoc", "1");
		Handle_Dynamic_CompiledMethod();
		%feature("autodoc", "1");
		Handle_Dynamic_CompiledMethod(const Handle_Dynamic_CompiledMethod &aHandle);
		%feature("autodoc", "1");
		Handle_Dynamic_CompiledMethod(const Dynamic_CompiledMethod *anItem);
		%feature("autodoc", "1");
		Handle_Dynamic_CompiledMethod const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Dynamic_CompiledMethod {
	Dynamic_CompiledMethod* GetObject() {
	return (Dynamic_CompiledMethod*)$self->Access();
	}
};

%nodefaultctor Handle_Dynamic_InterpretedMethod;
class Handle_Dynamic_InterpretedMethod : public Handle_Dynamic_MethodDefinition {
	public:
		%feature("autodoc", "1");
		~Handle_Dynamic_InterpretedMethod();
		%feature("autodoc", "1");
		Handle_Dynamic_InterpretedMethod();
		%feature("autodoc", "1");
		Handle_Dynamic_InterpretedMethod(const Handle_Dynamic_InterpretedMethod &aHandle);
		%feature("autodoc", "1");
		Handle_Dynamic_InterpretedMethod(const Dynamic_InterpretedMethod *anItem);
		%feature("autodoc", "1");
		Handle_Dynamic_InterpretedMethod const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Dynamic_InterpretedMethod {
	Dynamic_InterpretedMethod* GetObject() {
	return (Dynamic_InterpretedMethod*)$self->Access();
	}
};

%nodefaultctor Handle_Dynamic_BooleanParameter;
class Handle_Dynamic_BooleanParameter : public Handle_Dynamic_Parameter {
	public:
		%feature("autodoc", "1");
		~Handle_Dynamic_BooleanParameter();
		%feature("autodoc", "1");
		Handle_Dynamic_BooleanParameter();
		%feature("autodoc", "1");
		Handle_Dynamic_BooleanParameter(const Handle_Dynamic_BooleanParameter &aHandle);
		%feature("autodoc", "1");
		Handle_Dynamic_BooleanParameter(const Dynamic_BooleanParameter *anItem);
		%feature("autodoc", "1");
		Handle_Dynamic_BooleanParameter const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Dynamic_BooleanParameter {
	Dynamic_BooleanParameter* GetObject() {
	return (Dynamic_BooleanParameter*)$self->Access();
	}
};

%nodefaultctor Handle_Dynamic_SequenceOfFuzzyDefinitions;
class Handle_Dynamic_SequenceOfFuzzyDefinitions : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_Dynamic_SequenceOfFuzzyDefinitions();
		%feature("autodoc", "1");
		Handle_Dynamic_SequenceOfFuzzyDefinitions();
		%feature("autodoc", "1");
		Handle_Dynamic_SequenceOfFuzzyDefinitions(const Handle_Dynamic_SequenceOfFuzzyDefinitions &aHandle);
		%feature("autodoc", "1");
		Handle_Dynamic_SequenceOfFuzzyDefinitions(const Dynamic_SequenceOfFuzzyDefinitions *anItem);
		%feature("autodoc", "1");
		Handle_Dynamic_SequenceOfFuzzyDefinitions const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Dynamic_SequenceOfFuzzyDefinitions {
	Dynamic_SequenceOfFuzzyDefinitions* GetObject() {
	return (Dynamic_SequenceOfFuzzyDefinitions*)$self->Access();
	}
};

%nodefaultctor Handle_Dynamic_AbstractVariableInstance;
class Handle_Dynamic_AbstractVariableInstance : public Handle_Dynamic_Variable {
	public:
		%feature("autodoc", "1");
		~Handle_Dynamic_AbstractVariableInstance();
		%feature("autodoc", "1");
		Handle_Dynamic_AbstractVariableInstance();
		%feature("autodoc", "1");
		Handle_Dynamic_AbstractVariableInstance(const Handle_Dynamic_AbstractVariableInstance &aHandle);
		%feature("autodoc", "1");
		Handle_Dynamic_AbstractVariableInstance(const Dynamic_AbstractVariableInstance *anItem);
		%feature("autodoc", "1");
		Handle_Dynamic_AbstractVariableInstance const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Dynamic_AbstractVariableInstance {
	Dynamic_AbstractVariableInstance* GetObject() {
	return (Dynamic_AbstractVariableInstance*)$self->Access();
	}
};

%nodefaultctor Handle_Dynamic_VariableInstance;
class Handle_Dynamic_VariableInstance : public Handle_Dynamic_AbstractVariableInstance {
	public:
		%feature("autodoc", "1");
		~Handle_Dynamic_VariableInstance();
		%feature("autodoc", "1");
		Handle_Dynamic_VariableInstance();
		%feature("autodoc", "1");
		Handle_Dynamic_VariableInstance(const Handle_Dynamic_VariableInstance &aHandle);
		%feature("autodoc", "1");
		Handle_Dynamic_VariableInstance(const Dynamic_VariableInstance *anItem);
		%feature("autodoc", "1");
		Handle_Dynamic_VariableInstance const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Dynamic_VariableInstance {
	Dynamic_VariableInstance* GetObject() {
	return (Dynamic_VariableInstance*)$self->Access();
	}
};

%nodefaultctor Handle_Dynamic_VariableGroup;
class Handle_Dynamic_VariableGroup : public Handle_Dynamic_Variable {
	public:
		%feature("autodoc", "1");
		~Handle_Dynamic_VariableGroup();
		%feature("autodoc", "1");
		Handle_Dynamic_VariableGroup();
		%feature("autodoc", "1");
		Handle_Dynamic_VariableGroup(const Handle_Dynamic_VariableGroup &aHandle);
		%feature("autodoc", "1");
		Handle_Dynamic_VariableGroup(const Dynamic_VariableGroup *anItem);
		%feature("autodoc", "1");
		Handle_Dynamic_VariableGroup const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Dynamic_VariableGroup {
	Dynamic_VariableGroup* GetObject() {
	return (Dynamic_VariableGroup*)$self->Access();
	}
};

%nodefaultctor Handle_Dynamic_IntegerParameter;
class Handle_Dynamic_IntegerParameter : public Handle_Dynamic_Parameter {
	public:
		%feature("autodoc", "1");
		~Handle_Dynamic_IntegerParameter();
		%feature("autodoc", "1");
		Handle_Dynamic_IntegerParameter();
		%feature("autodoc", "1");
		Handle_Dynamic_IntegerParameter(const Handle_Dynamic_IntegerParameter &aHandle);
		%feature("autodoc", "1");
		Handle_Dynamic_IntegerParameter(const Dynamic_IntegerParameter *anItem);
		%feature("autodoc", "1");
		Handle_Dynamic_IntegerParameter const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Dynamic_IntegerParameter {
	Dynamic_IntegerParameter* GetObject() {
	return (Dynamic_IntegerParameter*)$self->Access();
	}
};

%nodefaultctor Handle_Dynamic_CompositVariableInstance;
class Handle_Dynamic_CompositVariableInstance : public Handle_Dynamic_AbstractVariableInstance {
	public:
		%feature("autodoc", "1");
		~Handle_Dynamic_CompositVariableInstance();
		%feature("autodoc", "1");
		Handle_Dynamic_CompositVariableInstance();
		%feature("autodoc", "1");
		Handle_Dynamic_CompositVariableInstance(const Handle_Dynamic_CompositVariableInstance &aHandle);
		%feature("autodoc", "1");
		Handle_Dynamic_CompositVariableInstance(const Dynamic_CompositVariableInstance *anItem);
		%feature("autodoc", "1");
		Handle_Dynamic_CompositVariableInstance const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Dynamic_CompositVariableInstance {
	Dynamic_CompositVariableInstance* GetObject() {
	return (Dynamic_CompositVariableInstance*)$self->Access();
	}
};

%nodefaultctor Handle_Dynamic_SequenceOfClasses;
class Handle_Dynamic_SequenceOfClasses : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_Dynamic_SequenceOfClasses();
		%feature("autodoc", "1");
		Handle_Dynamic_SequenceOfClasses();
		%feature("autodoc", "1");
		Handle_Dynamic_SequenceOfClasses(const Handle_Dynamic_SequenceOfClasses &aHandle);
		%feature("autodoc", "1");
		Handle_Dynamic_SequenceOfClasses(const Dynamic_SequenceOfClasses *anItem);
		%feature("autodoc", "1");
		Handle_Dynamic_SequenceOfClasses const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Dynamic_SequenceOfClasses {
	Dynamic_SequenceOfClasses* GetObject() {
	return (Dynamic_SequenceOfClasses*)$self->Access();
	}
};

%nodefaultctor Handle_Dynamic_MethodDefinitionsDictionary;
class Handle_Dynamic_MethodDefinitionsDictionary : public Handle_Standard_Transient {
	public:
		%feature("autodoc", "1");
		~Handle_Dynamic_MethodDefinitionsDictionary();
		%feature("autodoc", "1");
		Handle_Dynamic_MethodDefinitionsDictionary();
		%feature("autodoc", "1");
		Handle_Dynamic_MethodDefinitionsDictionary(const Handle_Dynamic_MethodDefinitionsDictionary &aHandle);
		%feature("autodoc", "1");
		Handle_Dynamic_MethodDefinitionsDictionary(const Dynamic_MethodDefinitionsDictionary *anItem);
		%feature("autodoc", "1");
		Handle_Dynamic_MethodDefinitionsDictionary const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Dynamic_MethodDefinitionsDictionary {
	Dynamic_MethodDefinitionsDictionary* GetObject() {
	return (Dynamic_MethodDefinitionsDictionary*)$self->Access();
	}
};

%nodefaultctor Handle_Dynamic_SequenceOfMethodDefinitions;
class Handle_Dynamic_SequenceOfMethodDefinitions : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_Dynamic_SequenceOfMethodDefinitions();
		%feature("autodoc", "1");
		Handle_Dynamic_SequenceOfMethodDefinitions();
		%feature("autodoc", "1");
		Handle_Dynamic_SequenceOfMethodDefinitions(const Handle_Dynamic_SequenceOfMethodDefinitions &aHandle);
		%feature("autodoc", "1");
		Handle_Dynamic_SequenceOfMethodDefinitions(const Dynamic_SequenceOfMethodDefinitions *anItem);
		%feature("autodoc", "1");
		Handle_Dynamic_SequenceOfMethodDefinitions const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Dynamic_SequenceOfMethodDefinitions {
	Dynamic_SequenceOfMethodDefinitions* GetObject() {
	return (Dynamic_SequenceOfMethodDefinitions*)$self->Access();
	}
};

%nodefaultctor Handle_Dynamic_SequenceOfMethods;
class Handle_Dynamic_SequenceOfMethods : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_Dynamic_SequenceOfMethods();
		%feature("autodoc", "1");
		Handle_Dynamic_SequenceOfMethods();
		%feature("autodoc", "1");
		Handle_Dynamic_SequenceOfMethods(const Handle_Dynamic_SequenceOfMethods &aHandle);
		%feature("autodoc", "1");
		Handle_Dynamic_SequenceOfMethods(const Dynamic_SequenceOfMethods *anItem);
		%feature("autodoc", "1");
		Handle_Dynamic_SequenceOfMethods const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Dynamic_SequenceOfMethods {
	Dynamic_SequenceOfMethods* GetObject() {
	return (Dynamic_SequenceOfMethods*)$self->Access();
	}
};

%nodefaultctor Handle_Dynamic_SequenceNodeOfSeqOfFuzzyDefinitions;
class Handle_Dynamic_SequenceNodeOfSeqOfFuzzyDefinitions : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		~Handle_Dynamic_SequenceNodeOfSeqOfFuzzyDefinitions();
		%feature("autodoc", "1");
		Handle_Dynamic_SequenceNodeOfSeqOfFuzzyDefinitions();
		%feature("autodoc", "1");
		Handle_Dynamic_SequenceNodeOfSeqOfFuzzyDefinitions(const Handle_Dynamic_SequenceNodeOfSeqOfFuzzyDefinitions &aHandle);
		%feature("autodoc", "1");
		Handle_Dynamic_SequenceNodeOfSeqOfFuzzyDefinitions(const Dynamic_SequenceNodeOfSeqOfFuzzyDefinitions *anItem);
		%feature("autodoc", "1");
		Handle_Dynamic_SequenceNodeOfSeqOfFuzzyDefinitions const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Dynamic_SequenceNodeOfSeqOfFuzzyDefinitions {
	Dynamic_SequenceNodeOfSeqOfFuzzyDefinitions* GetObject() {
	return (Dynamic_SequenceNodeOfSeqOfFuzzyDefinitions*)$self->Access();
	}
};

%nodefaultctor Handle_Dynamic_InstanceParameter;
class Handle_Dynamic_InstanceParameter : public Handle_Dynamic_Parameter {
	public:
		%feature("autodoc", "1");
		~Handle_Dynamic_InstanceParameter();
		%feature("autodoc", "1");
		Handle_Dynamic_InstanceParameter();
		%feature("autodoc", "1");
		Handle_Dynamic_InstanceParameter(const Handle_Dynamic_InstanceParameter &aHandle);
		%feature("autodoc", "1");
		Handle_Dynamic_InstanceParameter(const Dynamic_InstanceParameter *anItem);
		%feature("autodoc", "1");
		Handle_Dynamic_InstanceParameter const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Dynamic_InstanceParameter {
	Dynamic_InstanceParameter* GetObject() {
	return (Dynamic_InstanceParameter*)$self->Access();
	}
};

%nodefaultctor Handle_Dynamic_DynamicClass;
class Handle_Dynamic_DynamicClass : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_Dynamic_DynamicClass();
		%feature("autodoc", "1");
		Handle_Dynamic_DynamicClass();
		%feature("autodoc", "1");
		Handle_Dynamic_DynamicClass(const Handle_Dynamic_DynamicClass &aHandle);
		%feature("autodoc", "1");
		Handle_Dynamic_DynamicClass(const Dynamic_DynamicClass *anItem);
		%feature("autodoc", "1");
		Handle_Dynamic_DynamicClass const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Dynamic_DynamicClass {
	Dynamic_DynamicClass* GetObject() {
	return (Dynamic_DynamicClass*)$self->Access();
	}
};

%nodefaultctor Handle_Dynamic_DynamicDerivedClass;
class Handle_Dynamic_DynamicDerivedClass : public Handle_Dynamic_DynamicClass {
	public:
		%feature("autodoc", "1");
		~Handle_Dynamic_DynamicDerivedClass();
		%feature("autodoc", "1");
		Handle_Dynamic_DynamicDerivedClass();
		%feature("autodoc", "1");
		Handle_Dynamic_DynamicDerivedClass(const Handle_Dynamic_DynamicDerivedClass &aHandle);
		%feature("autodoc", "1");
		Handle_Dynamic_DynamicDerivedClass(const Dynamic_DynamicDerivedClass *anItem);
		%feature("autodoc", "1");
		Handle_Dynamic_DynamicDerivedClass const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Dynamic_DynamicDerivedClass {
	Dynamic_DynamicDerivedClass* GetObject() {
	return (Dynamic_DynamicDerivedClass*)$self->Access();
	}
};

%nodefaultctor Handle_Dynamic_StringParameter;
class Handle_Dynamic_StringParameter : public Handle_Dynamic_Parameter {
	public:
		%feature("autodoc", "1");
		~Handle_Dynamic_StringParameter();
		%feature("autodoc", "1");
		Handle_Dynamic_StringParameter();
		%feature("autodoc", "1");
		Handle_Dynamic_StringParameter(const Handle_Dynamic_StringParameter &aHandle);
		%feature("autodoc", "1");
		Handle_Dynamic_StringParameter(const Dynamic_StringParameter *anItem);
		%feature("autodoc", "1");
		Handle_Dynamic_StringParameter const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Dynamic_StringParameter {
	Dynamic_StringParameter* GetObject() {
	return (Dynamic_StringParameter*)$self->Access();
	}
};

%nodefaultctor Handle_Dynamic_CompositMethod;
class Handle_Dynamic_CompositMethod : public Handle_Dynamic_MethodDefinition {
	public:
		%feature("autodoc", "1");
		~Handle_Dynamic_CompositMethod();
		%feature("autodoc", "1");
		Handle_Dynamic_CompositMethod();
		%feature("autodoc", "1");
		Handle_Dynamic_CompositMethod(const Handle_Dynamic_CompositMethod &aHandle);
		%feature("autodoc", "1");
		Handle_Dynamic_CompositMethod(const Dynamic_CompositMethod *anItem);
		%feature("autodoc", "1");
		Handle_Dynamic_CompositMethod const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Dynamic_CompositMethod {
	Dynamic_CompositMethod* GetObject() {
	return (Dynamic_CompositMethod*)$self->Access();
	}
};

%nodefaultctor Handle_Dynamic_ObjectParameter;
class Handle_Dynamic_ObjectParameter : public Handle_Dynamic_Parameter {
	public:
		%feature("autodoc", "1");
		~Handle_Dynamic_ObjectParameter();
		%feature("autodoc", "1");
		Handle_Dynamic_ObjectParameter();
		%feature("autodoc", "1");
		Handle_Dynamic_ObjectParameter(const Handle_Dynamic_ObjectParameter &aHandle);
		%feature("autodoc", "1");
		Handle_Dynamic_ObjectParameter(const Dynamic_ObjectParameter *anItem);
		%feature("autodoc", "1");
		Handle_Dynamic_ObjectParameter const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Dynamic_ObjectParameter {
	Dynamic_ObjectParameter* GetObject() {
	return (Dynamic_ObjectParameter*)$self->Access();
	}
};

%nodefaultctor Handle_Dynamic_FuzzyDefinitionsDictionary;
class Handle_Dynamic_FuzzyDefinitionsDictionary : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_Dynamic_FuzzyDefinitionsDictionary();
		%feature("autodoc", "1");
		Handle_Dynamic_FuzzyDefinitionsDictionary();
		%feature("autodoc", "1");
		Handle_Dynamic_FuzzyDefinitionsDictionary(const Handle_Dynamic_FuzzyDefinitionsDictionary &aHandle);
		%feature("autodoc", "1");
		Handle_Dynamic_FuzzyDefinitionsDictionary(const Dynamic_FuzzyDefinitionsDictionary *anItem);
		%feature("autodoc", "1");
		Handle_Dynamic_FuzzyDefinitionsDictionary const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Dynamic_FuzzyDefinitionsDictionary {
	Dynamic_FuzzyDefinitionsDictionary* GetObject() {
	return (Dynamic_FuzzyDefinitionsDictionary*)$self->Access();
	}
};

%nodefaultctor Dynamic_Method;
class Dynamic_Method : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString Type() const;
		%feature("autodoc", "1");
		Handle_Dynamic_VariableNode FirstVariableNode() const;
		%feature("autodoc", "1");
		Standard_Boolean Variable(const char * avariable) const;
		%feature("autodoc", "1");
		void Variable(const Handle_Dynamic_Variable &avariable);
		%feature("autodoc", "1");
		Standard_Boolean Value(const char * aname, Handle_Dynamic_Parameter & aparameter, Dynamic_ModeEnum & amode) const;
		%feature("autodoc", "1");
		Standard_Boolean Value(const char * aname, Handle_Dynamic_Variable & avariable) const;
		%feature("autodoc", "1");
		virtual		void Dump(Standard_OStream & astream) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Dynamic_Method {
	Handle_Dynamic_Method GetHandle() {
	return *(Handle_Dynamic_Method*) &$self;
	}
};

%nodefaultctor Dynamic_MethodDefinition;
class Dynamic_MethodDefinition : public Dynamic_Method {
	public:
		%feature("autodoc", "1");
		void AddVariable(const Handle_Dynamic_Parameter &aparameter, const Dynamic_ModeEnum amode, const Standard_Boolean agroup=0);
		%feature("autodoc", "1");
		virtual		~Dynamic_MethodDefinition();

};
%extend Dynamic_MethodDefinition {
	Handle_Dynamic_MethodDefinition GetHandle() {
	return *(Handle_Dynamic_MethodDefinition*) &$self;
	}
};

%nodefaultctor Dynamic_InterpretedMethod;
class Dynamic_InterpretedMethod : public Dynamic_MethodDefinition {
	public:
		%feature("autodoc", "1");
		Dynamic_InterpretedMethod(const char * aname, const char * afile);
		%feature("autodoc", "1");
		void Function(const char * afile);
		%feature("autodoc", "1");
		TCollection_AsciiString Function() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~Dynamic_InterpretedMethod();

};
%extend Dynamic_InterpretedMethod {
	Handle_Dynamic_InterpretedMethod GetHandle() {
	return *(Handle_Dynamic_InterpretedMethod*) &$self;
	}
};

%nodefaultctor Dynamic_DynamicClass;
class Dynamic_DynamicClass : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Dynamic_DynamicClass(const char * aname);
		%feature("autodoc", "1");
		void Parameter(const Handle_Dynamic_Parameter &aparameter);
		%feature("autodoc", "1");
		void CompiledMethod(const char * amethod, const char * anaddress);
		%feature("autodoc", "1");
		void InterpretedMethod(const char * amethod, const char * afile);
		%feature("autodoc", "1");
		virtual		Handle_Dynamic_Method Method(const char * amethod) const;
		%feature("autodoc", "1");
		virtual		Handle_Dynamic_DynamicInstance Instance() const;
		%feature("autodoc", "1");
		virtual		void Dump(Standard_OStream & astream) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~Dynamic_DynamicClass();

};
%extend Dynamic_DynamicClass {
	Handle_Dynamic_DynamicClass GetHandle() {
	return *(Handle_Dynamic_DynamicClass*) &$self;
	}
};

%nodefaultctor Dynamic_CompiledMethod;
class Dynamic_CompiledMethod : public Dynamic_MethodDefinition {
	public:
		%feature("autodoc", "1");
		Dynamic_CompiledMethod(const char * aname, const char * afunction);
		%feature("autodoc", "1");
		void Function(const char * afunction);
		%feature("autodoc", "1");
		TCollection_AsciiString Function() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~Dynamic_CompiledMethod();

};
%extend Dynamic_CompiledMethod {
	Handle_Dynamic_CompiledMethod GetHandle() {
	return *(Handle_Dynamic_CompiledMethod*) &$self;
	}
};

%nodefaultctor Dynamic_SequenceNodeOfSeqOfClasses;
class Dynamic_SequenceNodeOfSeqOfClasses : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Dynamic_SequenceNodeOfSeqOfClasses(const Handle_Dynamic_DynamicClass &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_Dynamic_DynamicClass & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~Dynamic_SequenceNodeOfSeqOfClasses();

};
%extend Dynamic_SequenceNodeOfSeqOfClasses {
	Handle_Dynamic_SequenceNodeOfSeqOfClasses GetHandle() {
	return *(Handle_Dynamic_SequenceNodeOfSeqOfClasses*) &$self;
	}
};

%nodefaultctor Dynamic_Parameter;
class Dynamic_Parameter : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TCollection_AsciiString Name() const;
		%feature("autodoc", "1");
		virtual		void Dump(Standard_OStream & astream) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~Dynamic_Parameter();

};
%extend Dynamic_Parameter {
	Handle_Dynamic_Parameter GetHandle() {
	return *(Handle_Dynamic_Parameter*) &$self;
	}
};

%nodefaultctor Dynamic_SeqOfMethods;
class Dynamic_SeqOfMethods : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		Dynamic_SeqOfMethods();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~Dynamic_SeqOfMethods();
		%feature("autodoc", "1");
		const Dynamic_SeqOfMethods & Assign(const Dynamic_SeqOfMethods &Other);
		%feature("autodoc", "1");
		void Append(const Handle_Dynamic_Method &T);
		%feature("autodoc", "1");
		void Append(Dynamic_SeqOfMethods & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_Dynamic_Method &T);
		%feature("autodoc", "1");
		void Prepend(Dynamic_SeqOfMethods & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_Dynamic_Method &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, Dynamic_SeqOfMethods & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_Dynamic_Method &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, Dynamic_SeqOfMethods & S);
		%feature("autodoc", "1");
		const Handle_Dynamic_Method & First() const;
		%feature("autodoc", "1");
		const Handle_Dynamic_Method & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, Dynamic_SeqOfMethods & S);
		%feature("autodoc", "1");
		const Handle_Dynamic_Method & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_Dynamic_Method & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_Dynamic_Method &I);
		%feature("autodoc", "1");
		Handle_Dynamic_Method & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_Dynamic_Method & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};

%nodefaultctor Dynamic_MethodDefinitionsDictionary;
class Dynamic_MethodDefinitionsDictionary : public Standard_Transient {
	public:
		%feature("autodoc", "1");
		void Creates(const char * afilename);
		%feature("autodoc", "1");
		Standard_Boolean Definition(const Handle_Dynamic_Method &adefinition);
		%feature("autodoc", "1");
		Handle_Dynamic_Parameter Switch(const char * aname, const char * atype, const char * avalue) const;
		%feature("autodoc", "1");
		Standard_Boolean Definition(const char * atype, Handle_Dynamic_Method & adefinition) const;
		%feature("autodoc", "1");
		Standard_Boolean UpToDate() const;
		%feature("autodoc", "1");
		Standard_Integer NumberOfDefinitions() const;
		%feature("autodoc", "1");
		Handle_Dynamic_Method Definition(const Standard_Integer anindex) const;
		%feature("autodoc", "1");
		void Dump(Standard_OStream & astream) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~Dynamic_MethodDefinitionsDictionary();

};
%extend Dynamic_MethodDefinitionsDictionary {
	Handle_Dynamic_MethodDefinitionsDictionary GetHandle() {
	return *(Handle_Dynamic_MethodDefinitionsDictionary*) &$self;
	}
};

%nodefaultctor Dynamic_VariableNode;
class Dynamic_VariableNode : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Dynamic_VariableNode();
		%feature("autodoc", "1");
		Dynamic_VariableNode(const Handle_Dynamic_Variable &anitem);
		%feature("autodoc", "1");
		void Object(const Handle_Dynamic_Variable &anitem);
		%feature("autodoc", "1");
		Handle_Dynamic_Variable Object() const;
		%feature("autodoc", "1");
		void Next(const Handle_Dynamic_VariableNode &anode);
		%feature("autodoc", "1");
		Handle_Dynamic_VariableNode Next() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~Dynamic_VariableNode();

};
%extend Dynamic_VariableNode {
	Handle_Dynamic_VariableNode GetHandle() {
	return *(Handle_Dynamic_VariableNode*) &$self;
	}
};

%nodefaultctor Dynamic_Variable;
class Dynamic_Variable : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Dynamic_Variable();
		%feature("autodoc", "1");
		void Parameter(const Handle_Dynamic_Parameter &aparameter);
		%feature("autodoc", "1");
		Handle_Dynamic_Parameter Parameter() const;
		%feature("autodoc", "1");
		void Mode(const Dynamic_ModeEnum amode);
		%feature("autodoc", "1");
		Dynamic_ModeEnum Mode() const;
		%feature("autodoc", "1");
		void Dump(Standard_OStream & astream) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~Dynamic_Variable();

};
%extend Dynamic_Variable {
	Handle_Dynamic_Variable GetHandle() {
	return *(Handle_Dynamic_Variable*) &$self;
	}
};

%nodefaultctor Dynamic_VariableGroup;
class Dynamic_VariableGroup : public Dynamic_Variable {
	public:
		%feature("autodoc", "1");
		Dynamic_VariableGroup();
		%feature("autodoc", "1");
		virtual		~Dynamic_VariableGroup();

};
%extend Dynamic_VariableGroup {
	Handle_Dynamic_VariableGroup GetHandle() {
	return *(Handle_Dynamic_VariableGroup*) &$self;
	}
};

%nodefaultctor Dynamic_SequenceOfMethods;
class Dynamic_SequenceOfMethods : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Dynamic_SequenceOfMethods();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const Handle_Dynamic_Method &anItem);
		%feature("autodoc", "1");
		void Append(const Handle_Dynamic_SequenceOfMethods &aSequence);
		%feature("autodoc", "1");
		void Prepend(const Handle_Dynamic_Method &anItem);
		%feature("autodoc", "1");
		void Prepend(const Handle_Dynamic_SequenceOfMethods &aSequence);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_Dynamic_Method &anItem);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_Dynamic_SequenceOfMethods &aSequence);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_Dynamic_Method &anItem);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_Dynamic_SequenceOfMethods &aSequence);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer anIndex, const Standard_Integer anOtherIndex);
		%feature("autodoc", "1");
		Handle_Dynamic_SequenceOfMethods Split(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer anIndex, const Handle_Dynamic_Method &anItem);
		%feature("autodoc", "1");
		const Handle_Dynamic_Method & Value(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		Handle_Dynamic_Method & ChangeValue(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer fromIndex, const Standard_Integer toIndex);
		%feature("autodoc", "1");
		const Dynamic_SeqOfMethods & Sequence() const;
		%feature("autodoc", "1");
		Dynamic_SeqOfMethods & ChangeSequence();
		%feature("autodoc", "1");
		Handle_Dynamic_SequenceOfMethods ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~Dynamic_SequenceOfMethods();

};
%extend Dynamic_SequenceOfMethods {
	Handle_Dynamic_SequenceOfMethods GetHandle() {
	return *(Handle_Dynamic_SequenceOfMethods*) &$self;
	}
};

%nodefaultctor Dynamic_RealParameter;
class Dynamic_RealParameter : public Dynamic_Parameter {
	public:
		%feature("autodoc", "1");
		Dynamic_RealParameter(const char * aparameter);
		%feature("autodoc", "1");
		Dynamic_RealParameter(const char * aparameter, const Standard_Real avalue);
		%feature("autodoc", "1");
		Standard_Real Value() const;
		%feature("autodoc", "1");
		void Value(const Standard_Real avalue);
		%feature("autodoc", "1");
		virtual		void Dump(Standard_OStream & astream) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~Dynamic_RealParameter();

};
%extend Dynamic_RealParameter {
	Handle_Dynamic_RealParameter GetHandle() {
	return *(Handle_Dynamic_RealParameter*) &$self;
	}
};

%nodefaultctor Dynamic_SequenceNodeOfSeqOfMethods;
class Dynamic_SequenceNodeOfSeqOfMethods : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Dynamic_SequenceNodeOfSeqOfMethods(const Handle_Dynamic_Method &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_Dynamic_Method & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~Dynamic_SequenceNodeOfSeqOfMethods();

};
%extend Dynamic_SequenceNodeOfSeqOfMethods {
	Handle_Dynamic_SequenceNodeOfSeqOfMethods GetHandle() {
	return *(Handle_Dynamic_SequenceNodeOfSeqOfMethods*) &$self;
	}
};

%nodefaultctor Dynamic_BooleanParameter;
class Dynamic_BooleanParameter : public Dynamic_Parameter {
	public:
		%feature("autodoc", "1");
		Dynamic_BooleanParameter(const char * aparameter);
		%feature("autodoc", "1");
		Dynamic_BooleanParameter(const char * aparameter, const Standard_Boolean avalue);
		%feature("autodoc", "1");
		Dynamic_BooleanParameter(const char * aparameter, const char * avalue);
		%feature("autodoc", "1");
		Standard_Boolean Value() const;
		%feature("autodoc", "1");
		void Value(const Standard_Boolean avalue);
		%feature("autodoc", "1");
		virtual		void Dump(Standard_OStream & astream) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~Dynamic_BooleanParameter();

};
%extend Dynamic_BooleanParameter {
	Handle_Dynamic_BooleanParameter GetHandle() {
	return *(Handle_Dynamic_BooleanParameter*) &$self;
	}
};

%nodefaultctor Dynamic_DynamicInstance;
class Dynamic_DynamicInstance : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Dynamic_DynamicInstance();
		%feature("autodoc", "1");
		void Parameter(const Handle_Dynamic_Parameter &aparameter);
		%feature("autodoc", "1");
		void Parameter(const Handle_Dynamic_DynamicInstance &aninstance) const;
		%feature("autodoc", "1");
		void Parameter(const char * aparameter, const Standard_Integer avalue) const;
		%feature("autodoc", "1");
		void Parameter(const char * aparameter, const Standard_Real avalue) const;
		%feature("autodoc", "1");
		void Parameter(const char * aparameter, const char * avalue) const;
		%feature("autodoc", "1");
		void Parameter(const char * aparameter, const Handle_Dynamic_DynamicInstance &avalue) const;
		%feature("autodoc", "1");
		Handle_Dynamic_Parameter Parameter(const char * aparameter) const;
		%feature("autodoc", "1");
		void Class(const Handle_Dynamic_DynamicClass &aclass);
		%feature("autodoc", "1");
		void Execute(const char * amethod) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~Dynamic_DynamicInstance();

};
%extend Dynamic_DynamicInstance {
	Handle_Dynamic_DynamicInstance GetHandle() {
	return *(Handle_Dynamic_DynamicInstance*) &$self;
	}
};

%nodefaultctor Dynamic_SeqOfClasses;
class Dynamic_SeqOfClasses : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		Dynamic_SeqOfClasses();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~Dynamic_SeqOfClasses();
		%feature("autodoc", "1");
		const Dynamic_SeqOfClasses & Assign(const Dynamic_SeqOfClasses &Other);
		%feature("autodoc", "1");
		void Append(const Handle_Dynamic_DynamicClass &T);
		%feature("autodoc", "1");
		void Append(Dynamic_SeqOfClasses & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_Dynamic_DynamicClass &T);
		%feature("autodoc", "1");
		void Prepend(Dynamic_SeqOfClasses & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_Dynamic_DynamicClass &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, Dynamic_SeqOfClasses & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_Dynamic_DynamicClass &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, Dynamic_SeqOfClasses & S);
		%feature("autodoc", "1");
		const Handle_Dynamic_DynamicClass & First() const;
		%feature("autodoc", "1");
		const Handle_Dynamic_DynamicClass & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, Dynamic_SeqOfClasses & S);
		%feature("autodoc", "1");
		const Handle_Dynamic_DynamicClass & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_Dynamic_DynamicClass & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_Dynamic_DynamicClass &I);
		%feature("autodoc", "1");
		Handle_Dynamic_DynamicClass & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_Dynamic_DynamicClass & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};

%nodefaultctor Dynamic_ParameterNode;
class Dynamic_ParameterNode : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Dynamic_ParameterNode();
		%feature("autodoc", "1");
		Dynamic_ParameterNode(const Handle_Dynamic_Parameter &anitem);
		%feature("autodoc", "1");
		void Object(const Handle_Dynamic_Parameter &anitem);
		%feature("autodoc", "1");
		Handle_Dynamic_Parameter Object() const;
		%feature("autodoc", "1");
		void Next(const Handle_Dynamic_ParameterNode &anode);
		%feature("autodoc", "1");
		Handle_Dynamic_ParameterNode Next() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~Dynamic_ParameterNode();

};
%extend Dynamic_ParameterNode {
	Handle_Dynamic_ParameterNode GetHandle() {
	return *(Handle_Dynamic_ParameterNode*) &$self;
	}
};

%nodefaultctor Dynamic_FuzzyClass;
class Dynamic_FuzzyClass : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString Type() const;
		%feature("autodoc", "1");
		Handle_Dynamic_ParameterNode FirstParameter() const;
		%feature("autodoc", "1");
		Standard_Boolean Parameter(const char * aparameter) const;
		%feature("autodoc", "1");
		void Parameter(const Handle_Dynamic_Parameter &aparameter);
		%feature("autodoc", "1");
		virtual		void Parameter(const char * aparameter, const Standard_Boolean avalue);
		%feature("autodoc", "1");
		virtual		void Parameter(const char * aparameter, const Standard_Integer avalue);
		%feature("autodoc", "1");
		virtual		void Parameter(const char * aparameter, const Standard_Real avalue);
		%feature("autodoc", "1");
		virtual		void Parameter(const char * aparameter, const char * astring);
		%feature("autodoc", "1");
		virtual		void Parameter(const char * aparameter, const Handle_Standard_Transient &anobject);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Value(const char * aparameter, Standard_Boolean & avalue) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Value(const char * aparameter, Standard_Integer & avalue) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Value(const char * aparameter, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Value(const char * aparameter, TCollection_AsciiString & avalue) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Value(const char * aparameter, Handle_Standard_Transient & avalue) const;
		%feature("autodoc", "1");
		virtual		void Dump(Standard_OStream & astream) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Dynamic_FuzzyClass {
	Handle_Dynamic_FuzzyClass GetHandle() {
	return *(Handle_Dynamic_FuzzyClass*) &$self;
	}
};

%nodefaultctor Dynamic_FuzzyDefinition;
class Dynamic_FuzzyDefinition : public Dynamic_FuzzyClass {
	public:
		%feature("autodoc", "1");
		Dynamic_FuzzyDefinition(const char * aname);
		%feature("autodoc", "1");
		virtual		~Dynamic_FuzzyDefinition();

};
%extend Dynamic_FuzzyDefinition {
	Handle_Dynamic_FuzzyDefinition GetHandle() {
	return *(Handle_Dynamic_FuzzyDefinition*) &$self;
	}
};

%nodefaultctor Dynamic_IntegerParameter;
class Dynamic_IntegerParameter : public Dynamic_Parameter {
	public:
		%feature("autodoc", "1");
		Dynamic_IntegerParameter(const char * aparameter);
		%feature("autodoc", "1");
		Dynamic_IntegerParameter(const char * aparameter, const Standard_Integer avalue);
		%feature("autodoc", "1");
		Standard_Integer Value() const;
		%feature("autodoc", "1");
		void Value(const Standard_Integer avalue);
		%feature("autodoc", "1");
		virtual		void Dump(Standard_OStream & astream) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~Dynamic_IntegerParameter();

};
%extend Dynamic_IntegerParameter {
	Handle_Dynamic_IntegerParameter GetHandle() {
	return *(Handle_Dynamic_IntegerParameter*) &$self;
	}
};

%nodefaultctor Dynamic_FuzzyDefinitionsDictionary;
class Dynamic_FuzzyDefinitionsDictionary : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		void Creates(const char * afilename);
		%feature("autodoc", "1");
		virtual		Handle_Dynamic_Parameter Switch(const char * aname, const char * atype, const char * avalue) const;
		%feature("autodoc", "1");
		Standard_Boolean Definition(const char * atype, Handle_Dynamic_FuzzyClass & adefinition) const;
		%feature("autodoc", "1");
		Standard_Boolean UpToDate() const;
		%feature("autodoc", "1");
		Standard_Integer NumberOfDefinitions() const;
		%feature("autodoc", "1");
		Handle_Dynamic_FuzzyClass Definition(const Standard_Integer anindex) const;
		%feature("autodoc", "1");
		void Dump(Standard_OStream & astream) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~Dynamic_FuzzyDefinitionsDictionary();

};
%extend Dynamic_FuzzyDefinitionsDictionary {
	Handle_Dynamic_FuzzyDefinitionsDictionary GetHandle() {
	return *(Handle_Dynamic_FuzzyDefinitionsDictionary*) &$self;
	}
};

%nodefaultctor Dynamic_SeqOfMethodDefinitions;
class Dynamic_SeqOfMethodDefinitions : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		Dynamic_SeqOfMethodDefinitions();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~Dynamic_SeqOfMethodDefinitions();
		%feature("autodoc", "1");
		const Dynamic_SeqOfMethodDefinitions & Assign(const Dynamic_SeqOfMethodDefinitions &Other);
		%feature("autodoc", "1");
		void Append(const Handle_Dynamic_MethodDefinition &T);
		%feature("autodoc", "1");
		void Append(Dynamic_SeqOfMethodDefinitions & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_Dynamic_MethodDefinition &T);
		%feature("autodoc", "1");
		void Prepend(Dynamic_SeqOfMethodDefinitions & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_Dynamic_MethodDefinition &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, Dynamic_SeqOfMethodDefinitions & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_Dynamic_MethodDefinition &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, Dynamic_SeqOfMethodDefinitions & S);
		%feature("autodoc", "1");
		const Handle_Dynamic_MethodDefinition & First() const;
		%feature("autodoc", "1");
		const Handle_Dynamic_MethodDefinition & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, Dynamic_SeqOfMethodDefinitions & S);
		%feature("autodoc", "1");
		const Handle_Dynamic_MethodDefinition & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_Dynamic_MethodDefinition & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_Dynamic_MethodDefinition &I);
		%feature("autodoc", "1");
		Handle_Dynamic_MethodDefinition & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_Dynamic_MethodDefinition & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};

%nodefaultctor Dynamic_SequenceOfFuzzyDefinitions;
class Dynamic_SequenceOfFuzzyDefinitions : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Dynamic_SequenceOfFuzzyDefinitions();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const Handle_Dynamic_FuzzyDefinition &anItem);
		%feature("autodoc", "1");
		void Append(const Handle_Dynamic_SequenceOfFuzzyDefinitions &aSequence);
		%feature("autodoc", "1");
		void Prepend(const Handle_Dynamic_FuzzyDefinition &anItem);
		%feature("autodoc", "1");
		void Prepend(const Handle_Dynamic_SequenceOfFuzzyDefinitions &aSequence);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_Dynamic_FuzzyDefinition &anItem);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_Dynamic_SequenceOfFuzzyDefinitions &aSequence);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_Dynamic_FuzzyDefinition &anItem);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_Dynamic_SequenceOfFuzzyDefinitions &aSequence);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer anIndex, const Standard_Integer anOtherIndex);
		%feature("autodoc", "1");
		Handle_Dynamic_SequenceOfFuzzyDefinitions Split(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer anIndex, const Handle_Dynamic_FuzzyDefinition &anItem);
		%feature("autodoc", "1");
		const Handle_Dynamic_FuzzyDefinition & Value(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		Handle_Dynamic_FuzzyDefinition & ChangeValue(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer fromIndex, const Standard_Integer toIndex);
		%feature("autodoc", "1");
		const Dynamic_SeqOfFuzzyDefinitions & Sequence() const;
		%feature("autodoc", "1");
		Dynamic_SeqOfFuzzyDefinitions & ChangeSequence();
		%feature("autodoc", "1");
		Handle_Dynamic_SequenceOfFuzzyDefinitions ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~Dynamic_SequenceOfFuzzyDefinitions();

};
%extend Dynamic_SequenceOfFuzzyDefinitions {
	Handle_Dynamic_SequenceOfFuzzyDefinitions GetHandle() {
	return *(Handle_Dynamic_SequenceOfFuzzyDefinitions*) &$self;
	}
};

%nodefaultctor Dynamic_ObjectParameter;
class Dynamic_ObjectParameter : public Dynamic_Parameter {
	public:
		%feature("autodoc", "1");
		Dynamic_ObjectParameter(const char * aparameter);
		%feature("autodoc", "1");
		Dynamic_ObjectParameter(const char * aparameter, const Handle_Standard_Transient &anobject);
		%feature("autodoc", "1");
		Handle_Standard_Transient Value() const;
		%feature("autodoc", "1");
		void Value(const Handle_Standard_Transient &anobject);
		%feature("autodoc", "1");
		virtual		void Dump(Standard_OStream & astream) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~Dynamic_ObjectParameter();

};
%extend Dynamic_ObjectParameter {
	Handle_Dynamic_ObjectParameter GetHandle() {
	return *(Handle_Dynamic_ObjectParameter*) &$self;
	}
};

%nodefaultctor Dynamic_AbstractVariableInstance;
class Dynamic_AbstractVariableInstance : public Dynamic_Variable {
	public:
		%feature("autodoc", "1");
		virtual		void Variable(const Handle_Dynamic_Variable &avariable);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Dynamic_AbstractVariableInstance {
	Handle_Dynamic_AbstractVariableInstance GetHandle() {
	return *(Handle_Dynamic_AbstractVariableInstance*) &$self;
	}
};

%nodefaultctor Dynamic_SequenceOfMethodDefinitions;
class Dynamic_SequenceOfMethodDefinitions : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Dynamic_SequenceOfMethodDefinitions();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const Handle_Dynamic_MethodDefinition &anItem);
		%feature("autodoc", "1");
		void Append(const Handle_Dynamic_SequenceOfMethodDefinitions &aSequence);
		%feature("autodoc", "1");
		void Prepend(const Handle_Dynamic_MethodDefinition &anItem);
		%feature("autodoc", "1");
		void Prepend(const Handle_Dynamic_SequenceOfMethodDefinitions &aSequence);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_Dynamic_MethodDefinition &anItem);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_Dynamic_SequenceOfMethodDefinitions &aSequence);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_Dynamic_MethodDefinition &anItem);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_Dynamic_SequenceOfMethodDefinitions &aSequence);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer anIndex, const Standard_Integer anOtherIndex);
		%feature("autodoc", "1");
		Handle_Dynamic_SequenceOfMethodDefinitions Split(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer anIndex, const Handle_Dynamic_MethodDefinition &anItem);
		%feature("autodoc", "1");
		const Handle_Dynamic_MethodDefinition & Value(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		Handle_Dynamic_MethodDefinition & ChangeValue(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer fromIndex, const Standard_Integer toIndex);
		%feature("autodoc", "1");
		const Dynamic_SeqOfMethodDefinitions & Sequence() const;
		%feature("autodoc", "1");
		Dynamic_SeqOfMethodDefinitions & ChangeSequence();
		%feature("autodoc", "1");
		Handle_Dynamic_SequenceOfMethodDefinitions ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~Dynamic_SequenceOfMethodDefinitions();

};
%extend Dynamic_SequenceOfMethodDefinitions {
	Handle_Dynamic_SequenceOfMethodDefinitions GetHandle() {
	return *(Handle_Dynamic_SequenceOfMethodDefinitions*) &$self;
	}
};

%nodefaultctor Dynamic_SequenceNodeOfSeqOfFuzzyDefinitions;
class Dynamic_SequenceNodeOfSeqOfFuzzyDefinitions : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Dynamic_SequenceNodeOfSeqOfFuzzyDefinitions(const Handle_Dynamic_FuzzyDefinition &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_Dynamic_FuzzyDefinition & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~Dynamic_SequenceNodeOfSeqOfFuzzyDefinitions();

};
%extend Dynamic_SequenceNodeOfSeqOfFuzzyDefinitions {
	Handle_Dynamic_SequenceNodeOfSeqOfFuzzyDefinitions GetHandle() {
	return *(Handle_Dynamic_SequenceNodeOfSeqOfFuzzyDefinitions*) &$self;
	}
};

%nodefaultctor Dynamic_SequenceNodeOfSeqOfMethodDefinitions;
class Dynamic_SequenceNodeOfSeqOfMethodDefinitions : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Dynamic_SequenceNodeOfSeqOfMethodDefinitions(const Handle_Dynamic_MethodDefinition &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_Dynamic_MethodDefinition & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~Dynamic_SequenceNodeOfSeqOfMethodDefinitions();

};
%extend Dynamic_SequenceNodeOfSeqOfMethodDefinitions {
	Handle_Dynamic_SequenceNodeOfSeqOfMethodDefinitions GetHandle() {
	return *(Handle_Dynamic_SequenceNodeOfSeqOfMethodDefinitions*) &$self;
	}
};

%nodefaultctor Dynamic_VariableInstance;
class Dynamic_VariableInstance : public Dynamic_AbstractVariableInstance {
	public:
		%feature("autodoc", "1");
		Dynamic_VariableInstance();
		%feature("autodoc", "1");
		virtual		void Variable(const Handle_Dynamic_Variable &avariable);
		%feature("autodoc", "1");
		Handle_Dynamic_Variable Variable() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~Dynamic_VariableInstance();

};
%extend Dynamic_VariableInstance {
	Handle_Dynamic_VariableInstance GetHandle() {
	return *(Handle_Dynamic_VariableInstance*) &$self;
	}
};

%nodefaultctor Dynamic_CompositMethod;
class Dynamic_CompositMethod : public Dynamic_MethodDefinition {
	public:
		%feature("autodoc", "1");
		Dynamic_CompositMethod(const char * aname);
		%feature("autodoc", "1");
		void Method(const Handle_Dynamic_Method &amethod);
		%feature("autodoc", "1");
		Standard_Integer NumberOfMethods() const;
		%feature("autodoc", "1");
		Handle_Dynamic_Method Method(const Standard_Integer anindex) const;
		%feature("autodoc", "1");
		virtual		void Dump(Standard_OStream & astream) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~Dynamic_CompositMethod();

};
%extend Dynamic_CompositMethod {
	Handle_Dynamic_CompositMethod GetHandle() {
	return *(Handle_Dynamic_CompositMethod*) &$self;
	}
};

%nodefaultctor Dynamic_SequenceOfClasses;
class Dynamic_SequenceOfClasses : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Dynamic_SequenceOfClasses();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const Handle_Dynamic_DynamicClass &anItem);
		%feature("autodoc", "1");
		void Append(const Handle_Dynamic_SequenceOfClasses &aSequence);
		%feature("autodoc", "1");
		void Prepend(const Handle_Dynamic_DynamicClass &anItem);
		%feature("autodoc", "1");
		void Prepend(const Handle_Dynamic_SequenceOfClasses &aSequence);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_Dynamic_DynamicClass &anItem);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_Dynamic_SequenceOfClasses &aSequence);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_Dynamic_DynamicClass &anItem);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_Dynamic_SequenceOfClasses &aSequence);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer anIndex, const Standard_Integer anOtherIndex);
		%feature("autodoc", "1");
		Handle_Dynamic_SequenceOfClasses Split(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer anIndex, const Handle_Dynamic_DynamicClass &anItem);
		%feature("autodoc", "1");
		const Handle_Dynamic_DynamicClass & Value(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		Handle_Dynamic_DynamicClass & ChangeValue(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer fromIndex, const Standard_Integer toIndex);
		%feature("autodoc", "1");
		const Dynamic_SeqOfClasses & Sequence() const;
		%feature("autodoc", "1");
		Dynamic_SeqOfClasses & ChangeSequence();
		%feature("autodoc", "1");
		Handle_Dynamic_SequenceOfClasses ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~Dynamic_SequenceOfClasses();

};
%extend Dynamic_SequenceOfClasses {
	Handle_Dynamic_SequenceOfClasses GetHandle() {
	return *(Handle_Dynamic_SequenceOfClasses*) &$self;
	}
};

%nodefaultctor Dynamic;
class Dynamic {
	public:
		%feature("autodoc", "1");
		~Dynamic();
		%feature("autodoc", "1");
		Dynamic();
		%feature("autodoc", "1");
		Dynamic_ModeEnum Mode(const char * amode);

};

%nodefaultctor Dynamic_DynamicDerivedClass;
class Dynamic_DynamicDerivedClass : public Dynamic_DynamicClass {
	public:
		%feature("autodoc", "1");
		Dynamic_DynamicDerivedClass(const char * aname);
		%feature("autodoc", "1");
		void AddClass(const Handle_Dynamic_DynamicClass &aclass);
		%feature("autodoc", "1");
		virtual		Handle_Dynamic_Method Method(const char * amethod) const;
		%feature("autodoc", "1");
		virtual		Handle_Dynamic_DynamicInstance Instance() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~Dynamic_DynamicDerivedClass();

};
%extend Dynamic_DynamicDerivedClass {
	Handle_Dynamic_DynamicDerivedClass GetHandle() {
	return *(Handle_Dynamic_DynamicDerivedClass*) &$self;
	}
};

%nodefaultctor Dynamic_CompositVariableInstance;
class Dynamic_CompositVariableInstance : public Dynamic_AbstractVariableInstance {
	public:
		%feature("autodoc", "1");
		Dynamic_CompositVariableInstance();
		%feature("autodoc", "1");
		virtual		void Variable(const Handle_Dynamic_Variable &avariable);
		%feature("autodoc", "1");
		Handle_Dynamic_VariableNode FirstVariableNode() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~Dynamic_CompositVariableInstance();

};
%extend Dynamic_CompositVariableInstance {
	Handle_Dynamic_CompositVariableInstance GetHandle() {
	return *(Handle_Dynamic_CompositVariableInstance*) &$self;
	}
};

%nodefaultctor Dynamic_StringParameter;
class Dynamic_StringParameter : public Dynamic_Parameter {
	public:
		%feature("autodoc", "1");
		Dynamic_StringParameter(const char * aparameter);
		%feature("autodoc", "1");
		Dynamic_StringParameter(const char * aparameter, const char * astring);
		%feature("autodoc", "1");
		TCollection_AsciiString Value() const;
		%feature("autodoc", "1");
		void Value(const char * avalue);
		%feature("autodoc", "1");
		virtual		void Dump(Standard_OStream & astream) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~Dynamic_StringParameter();

};
%extend Dynamic_StringParameter {
	Handle_Dynamic_StringParameter GetHandle() {
	return *(Handle_Dynamic_StringParameter*) &$self;
	}
};

%nodefaultctor Dynamic_InstanceParameter;
class Dynamic_InstanceParameter : public Dynamic_Parameter {
	public:
		%feature("autodoc", "1");
		Dynamic_InstanceParameter(const char * aparameter);
		%feature("autodoc", "1");
		Dynamic_InstanceParameter(const char * aparameter, const Handle_Dynamic_DynamicInstance &avalue);
		%feature("autodoc", "1");
		Handle_Dynamic_DynamicInstance Value() const;
		%feature("autodoc", "1");
		void Value(const Handle_Dynamic_DynamicInstance &avalue);
		%feature("autodoc", "1");
		virtual		void Dump(Standard_OStream & astream) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~Dynamic_InstanceParameter();

};
%extend Dynamic_InstanceParameter {
	Handle_Dynamic_InstanceParameter GetHandle() {
	return *(Handle_Dynamic_InstanceParameter*) &$self;
	}
};

%nodefaultctor Dynamic_SeqOfFuzzyDefinitions;
class Dynamic_SeqOfFuzzyDefinitions : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		Dynamic_SeqOfFuzzyDefinitions();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~Dynamic_SeqOfFuzzyDefinitions();
		%feature("autodoc", "1");
		const Dynamic_SeqOfFuzzyDefinitions & Assign(const Dynamic_SeqOfFuzzyDefinitions &Other);
		%feature("autodoc", "1");
		void Append(const Handle_Dynamic_FuzzyDefinition &T);
		%feature("autodoc", "1");
		void Append(Dynamic_SeqOfFuzzyDefinitions & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_Dynamic_FuzzyDefinition &T);
		%feature("autodoc", "1");
		void Prepend(Dynamic_SeqOfFuzzyDefinitions & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_Dynamic_FuzzyDefinition &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, Dynamic_SeqOfFuzzyDefinitions & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_Dynamic_FuzzyDefinition &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, Dynamic_SeqOfFuzzyDefinitions & S);
		%feature("autodoc", "1");
		const Handle_Dynamic_FuzzyDefinition & First() const;
		%feature("autodoc", "1");
		const Handle_Dynamic_FuzzyDefinition & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, Dynamic_SeqOfFuzzyDefinitions & S);
		%feature("autodoc", "1");
		const Handle_Dynamic_FuzzyDefinition & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_Dynamic_FuzzyDefinition & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_Dynamic_FuzzyDefinition &I);
		%feature("autodoc", "1");
		Handle_Dynamic_FuzzyDefinition & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_Dynamic_FuzzyDefinition & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};