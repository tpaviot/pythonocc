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
%module IGESAppli

%include IGESAppli_renames.i

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


%include IGESAppli_dependencies.i


%include IGESAppli_headers.i




%nodefaultctor Handle_IGESAppli_ReadWriteModule;
class Handle_IGESAppli_ReadWriteModule : public Handle_IGESData_ReadWriteModule {
	public:
		%feature("autodoc", "1");
		Handle_IGESAppli_ReadWriteModule();
		%feature("autodoc", "1");
		Handle_IGESAppli_ReadWriteModule(const Handle_IGESAppli_ReadWriteModule &aHandle);
		%feature("autodoc", "1");
		Handle_IGESAppli_ReadWriteModule(const IGESAppli_ReadWriteModule *anItem);
		%feature("autodoc", "1");
		Handle_IGESAppli_ReadWriteModule & operator=(const Handle_IGESAppli_ReadWriteModule &aHandle);
		%feature("autodoc", "1");
		Handle_IGESAppli_ReadWriteModule & operator=(const IGESAppli_ReadWriteModule *anItem);
		%feature("autodoc", "1");
		Handle_IGESAppli_ReadWriteModule const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESAppli_ReadWriteModule {
	IGESAppli_ReadWriteModule* GetObject() {
	return (IGESAppli_ReadWriteModule*)$self->Access();
	}
};
%extend Handle_IGESAppli_ReadWriteModule {
	~Handle_IGESAppli_ReadWriteModule() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_IGESAppli_ReadWriteModule\n");}
	}
};


%nodefaultctor Handle_IGESAppli_NodalConstraint;
class Handle_IGESAppli_NodalConstraint : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESAppli_NodalConstraint();
		%feature("autodoc", "1");
		Handle_IGESAppli_NodalConstraint(const Handle_IGESAppli_NodalConstraint &aHandle);
		%feature("autodoc", "1");
		Handle_IGESAppli_NodalConstraint(const IGESAppli_NodalConstraint *anItem);
		%feature("autodoc", "1");
		Handle_IGESAppli_NodalConstraint & operator=(const Handle_IGESAppli_NodalConstraint &aHandle);
		%feature("autodoc", "1");
		Handle_IGESAppli_NodalConstraint & operator=(const IGESAppli_NodalConstraint *anItem);
		%feature("autodoc", "1");
		Handle_IGESAppli_NodalConstraint const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESAppli_NodalConstraint {
	IGESAppli_NodalConstraint* GetObject() {
	return (IGESAppli_NodalConstraint*)$self->Access();
	}
};
%extend Handle_IGESAppli_NodalConstraint {
	~Handle_IGESAppli_NodalConstraint() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_IGESAppli_NodalConstraint\n");}
	}
};


%nodefaultctor Handle_IGESAppli_FiniteElement;
class Handle_IGESAppli_FiniteElement : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESAppli_FiniteElement();
		%feature("autodoc", "1");
		Handle_IGESAppli_FiniteElement(const Handle_IGESAppli_FiniteElement &aHandle);
		%feature("autodoc", "1");
		Handle_IGESAppli_FiniteElement(const IGESAppli_FiniteElement *anItem);
		%feature("autodoc", "1");
		Handle_IGESAppli_FiniteElement & operator=(const Handle_IGESAppli_FiniteElement &aHandle);
		%feature("autodoc", "1");
		Handle_IGESAppli_FiniteElement & operator=(const IGESAppli_FiniteElement *anItem);
		%feature("autodoc", "1");
		Handle_IGESAppli_FiniteElement const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESAppli_FiniteElement {
	IGESAppli_FiniteElement* GetObject() {
	return (IGESAppli_FiniteElement*)$self->Access();
	}
};
%extend Handle_IGESAppli_FiniteElement {
	~Handle_IGESAppli_FiniteElement() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_IGESAppli_FiniteElement\n");}
	}
};


%nodefaultctor Handle_IGESAppli_HArray1OfNode;
class Handle_IGESAppli_HArray1OfNode : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_IGESAppli_HArray1OfNode();
		%feature("autodoc", "1");
		Handle_IGESAppli_HArray1OfNode(const Handle_IGESAppli_HArray1OfNode &aHandle);
		%feature("autodoc", "1");
		Handle_IGESAppli_HArray1OfNode(const IGESAppli_HArray1OfNode *anItem);
		%feature("autodoc", "1");
		Handle_IGESAppli_HArray1OfNode & operator=(const Handle_IGESAppli_HArray1OfNode &aHandle);
		%feature("autodoc", "1");
		Handle_IGESAppli_HArray1OfNode & operator=(const IGESAppli_HArray1OfNode *anItem);
		%feature("autodoc", "1");
		Handle_IGESAppli_HArray1OfNode const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESAppli_HArray1OfNode {
	IGESAppli_HArray1OfNode* GetObject() {
	return (IGESAppli_HArray1OfNode*)$self->Access();
	}
};
%extend Handle_IGESAppli_HArray1OfNode {
	~Handle_IGESAppli_HArray1OfNode() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_IGESAppli_HArray1OfNode\n");}
	}
};


%nodefaultctor Handle_IGESAppli_PinNumber;
class Handle_IGESAppli_PinNumber : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESAppli_PinNumber();
		%feature("autodoc", "1");
		Handle_IGESAppli_PinNumber(const Handle_IGESAppli_PinNumber &aHandle);
		%feature("autodoc", "1");
		Handle_IGESAppli_PinNumber(const IGESAppli_PinNumber *anItem);
		%feature("autodoc", "1");
		Handle_IGESAppli_PinNumber & operator=(const Handle_IGESAppli_PinNumber &aHandle);
		%feature("autodoc", "1");
		Handle_IGESAppli_PinNumber & operator=(const IGESAppli_PinNumber *anItem);
		%feature("autodoc", "1");
		Handle_IGESAppli_PinNumber const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESAppli_PinNumber {
	IGESAppli_PinNumber* GetObject() {
	return (IGESAppli_PinNumber*)$self->Access();
	}
};
%extend Handle_IGESAppli_PinNumber {
	~Handle_IGESAppli_PinNumber() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_IGESAppli_PinNumber\n");}
	}
};


%nodefaultctor Handle_IGESAppli_PWBArtworkStackup;
class Handle_IGESAppli_PWBArtworkStackup : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESAppli_PWBArtworkStackup();
		%feature("autodoc", "1");
		Handle_IGESAppli_PWBArtworkStackup(const Handle_IGESAppli_PWBArtworkStackup &aHandle);
		%feature("autodoc", "1");
		Handle_IGESAppli_PWBArtworkStackup(const IGESAppli_PWBArtworkStackup *anItem);
		%feature("autodoc", "1");
		Handle_IGESAppli_PWBArtworkStackup & operator=(const Handle_IGESAppli_PWBArtworkStackup &aHandle);
		%feature("autodoc", "1");
		Handle_IGESAppli_PWBArtworkStackup & operator=(const IGESAppli_PWBArtworkStackup *anItem);
		%feature("autodoc", "1");
		Handle_IGESAppli_PWBArtworkStackup const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESAppli_PWBArtworkStackup {
	IGESAppli_PWBArtworkStackup* GetObject() {
	return (IGESAppli_PWBArtworkStackup*)$self->Access();
	}
};
%extend Handle_IGESAppli_PWBArtworkStackup {
	~Handle_IGESAppli_PWBArtworkStackup() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_IGESAppli_PWBArtworkStackup\n");}
	}
};


%nodefaultctor Handle_IGESAppli_LevelToPWBLayerMap;
class Handle_IGESAppli_LevelToPWBLayerMap : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESAppli_LevelToPWBLayerMap();
		%feature("autodoc", "1");
		Handle_IGESAppli_LevelToPWBLayerMap(const Handle_IGESAppli_LevelToPWBLayerMap &aHandle);
		%feature("autodoc", "1");
		Handle_IGESAppli_LevelToPWBLayerMap(const IGESAppli_LevelToPWBLayerMap *anItem);
		%feature("autodoc", "1");
		Handle_IGESAppli_LevelToPWBLayerMap & operator=(const Handle_IGESAppli_LevelToPWBLayerMap &aHandle);
		%feature("autodoc", "1");
		Handle_IGESAppli_LevelToPWBLayerMap & operator=(const IGESAppli_LevelToPWBLayerMap *anItem);
		%feature("autodoc", "1");
		Handle_IGESAppli_LevelToPWBLayerMap const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESAppli_LevelToPWBLayerMap {
	IGESAppli_LevelToPWBLayerMap* GetObject() {
	return (IGESAppli_LevelToPWBLayerMap*)$self->Access();
	}
};
%extend Handle_IGESAppli_LevelToPWBLayerMap {
	~Handle_IGESAppli_LevelToPWBLayerMap() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_IGESAppli_LevelToPWBLayerMap\n");}
	}
};


%nodefaultctor Handle_IGESAppli_ReferenceDesignator;
class Handle_IGESAppli_ReferenceDesignator : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESAppli_ReferenceDesignator();
		%feature("autodoc", "1");
		Handle_IGESAppli_ReferenceDesignator(const Handle_IGESAppli_ReferenceDesignator &aHandle);
		%feature("autodoc", "1");
		Handle_IGESAppli_ReferenceDesignator(const IGESAppli_ReferenceDesignator *anItem);
		%feature("autodoc", "1");
		Handle_IGESAppli_ReferenceDesignator & operator=(const Handle_IGESAppli_ReferenceDesignator &aHandle);
		%feature("autodoc", "1");
		Handle_IGESAppli_ReferenceDesignator & operator=(const IGESAppli_ReferenceDesignator *anItem);
		%feature("autodoc", "1");
		Handle_IGESAppli_ReferenceDesignator const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESAppli_ReferenceDesignator {
	IGESAppli_ReferenceDesignator* GetObject() {
	return (IGESAppli_ReferenceDesignator*)$self->Access();
	}
};
%extend Handle_IGESAppli_ReferenceDesignator {
	~Handle_IGESAppli_ReferenceDesignator() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_IGESAppli_ReferenceDesignator\n");}
	}
};


%nodefaultctor Handle_IGESAppli_ElementResults;
class Handle_IGESAppli_ElementResults : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESAppli_ElementResults();
		%feature("autodoc", "1");
		Handle_IGESAppli_ElementResults(const Handle_IGESAppli_ElementResults &aHandle);
		%feature("autodoc", "1");
		Handle_IGESAppli_ElementResults(const IGESAppli_ElementResults *anItem);
		%feature("autodoc", "1");
		Handle_IGESAppli_ElementResults & operator=(const Handle_IGESAppli_ElementResults &aHandle);
		%feature("autodoc", "1");
		Handle_IGESAppli_ElementResults & operator=(const IGESAppli_ElementResults *anItem);
		%feature("autodoc", "1");
		Handle_IGESAppli_ElementResults const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESAppli_ElementResults {
	IGESAppli_ElementResults* GetObject() {
	return (IGESAppli_ElementResults*)$self->Access();
	}
};
%extend Handle_IGESAppli_ElementResults {
	~Handle_IGESAppli_ElementResults() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_IGESAppli_ElementResults\n");}
	}
};


%nodefaultctor Handle_IGESAppli_NodalDisplAndRot;
class Handle_IGESAppli_NodalDisplAndRot : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESAppli_NodalDisplAndRot();
		%feature("autodoc", "1");
		Handle_IGESAppli_NodalDisplAndRot(const Handle_IGESAppli_NodalDisplAndRot &aHandle);
		%feature("autodoc", "1");
		Handle_IGESAppli_NodalDisplAndRot(const IGESAppli_NodalDisplAndRot *anItem);
		%feature("autodoc", "1");
		Handle_IGESAppli_NodalDisplAndRot & operator=(const Handle_IGESAppli_NodalDisplAndRot &aHandle);
		%feature("autodoc", "1");
		Handle_IGESAppli_NodalDisplAndRot & operator=(const IGESAppli_NodalDisplAndRot *anItem);
		%feature("autodoc", "1");
		Handle_IGESAppli_NodalDisplAndRot const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESAppli_NodalDisplAndRot {
	IGESAppli_NodalDisplAndRot* GetObject() {
	return (IGESAppli_NodalDisplAndRot*)$self->Access();
	}
};
%extend Handle_IGESAppli_NodalDisplAndRot {
	~Handle_IGESAppli_NodalDisplAndRot() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_IGESAppli_NodalDisplAndRot\n");}
	}
};


%nodefaultctor Handle_IGESAppli_PWBDrilledHole;
class Handle_IGESAppli_PWBDrilledHole : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESAppli_PWBDrilledHole();
		%feature("autodoc", "1");
		Handle_IGESAppli_PWBDrilledHole(const Handle_IGESAppli_PWBDrilledHole &aHandle);
		%feature("autodoc", "1");
		Handle_IGESAppli_PWBDrilledHole(const IGESAppli_PWBDrilledHole *anItem);
		%feature("autodoc", "1");
		Handle_IGESAppli_PWBDrilledHole & operator=(const Handle_IGESAppli_PWBDrilledHole &aHandle);
		%feature("autodoc", "1");
		Handle_IGESAppli_PWBDrilledHole & operator=(const IGESAppli_PWBDrilledHole *anItem);
		%feature("autodoc", "1");
		Handle_IGESAppli_PWBDrilledHole const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESAppli_PWBDrilledHole {
	IGESAppli_PWBDrilledHole* GetObject() {
	return (IGESAppli_PWBDrilledHole*)$self->Access();
	}
};
%extend Handle_IGESAppli_PWBDrilledHole {
	~Handle_IGESAppli_PWBDrilledHole() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_IGESAppli_PWBDrilledHole\n");}
	}
};


%nodefaultctor Handle_IGESAppli_DrilledHole;
class Handle_IGESAppli_DrilledHole : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESAppli_DrilledHole();
		%feature("autodoc", "1");
		Handle_IGESAppli_DrilledHole(const Handle_IGESAppli_DrilledHole &aHandle);
		%feature("autodoc", "1");
		Handle_IGESAppli_DrilledHole(const IGESAppli_DrilledHole *anItem);
		%feature("autodoc", "1");
		Handle_IGESAppli_DrilledHole & operator=(const Handle_IGESAppli_DrilledHole &aHandle);
		%feature("autodoc", "1");
		Handle_IGESAppli_DrilledHole & operator=(const IGESAppli_DrilledHole *anItem);
		%feature("autodoc", "1");
		Handle_IGESAppli_DrilledHole const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESAppli_DrilledHole {
	IGESAppli_DrilledHole* GetObject() {
	return (IGESAppli_DrilledHole*)$self->Access();
	}
};
%extend Handle_IGESAppli_DrilledHole {
	~Handle_IGESAppli_DrilledHole() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_IGESAppli_DrilledHole\n");}
	}
};


%nodefaultctor Handle_IGESAppli_SpecificModule;
class Handle_IGESAppli_SpecificModule : public Handle_IGESData_SpecificModule {
	public:
		%feature("autodoc", "1");
		Handle_IGESAppli_SpecificModule();
		%feature("autodoc", "1");
		Handle_IGESAppli_SpecificModule(const Handle_IGESAppli_SpecificModule &aHandle);
		%feature("autodoc", "1");
		Handle_IGESAppli_SpecificModule(const IGESAppli_SpecificModule *anItem);
		%feature("autodoc", "1");
		Handle_IGESAppli_SpecificModule & operator=(const Handle_IGESAppli_SpecificModule &aHandle);
		%feature("autodoc", "1");
		Handle_IGESAppli_SpecificModule & operator=(const IGESAppli_SpecificModule *anItem);
		%feature("autodoc", "1");
		Handle_IGESAppli_SpecificModule const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESAppli_SpecificModule {
	IGESAppli_SpecificModule* GetObject() {
	return (IGESAppli_SpecificModule*)$self->Access();
	}
};
%extend Handle_IGESAppli_SpecificModule {
	~Handle_IGESAppli_SpecificModule() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_IGESAppli_SpecificModule\n");}
	}
};


%nodefaultctor Handle_IGESAppli_FlowLineSpec;
class Handle_IGESAppli_FlowLineSpec : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESAppli_FlowLineSpec();
		%feature("autodoc", "1");
		Handle_IGESAppli_FlowLineSpec(const Handle_IGESAppli_FlowLineSpec &aHandle);
		%feature("autodoc", "1");
		Handle_IGESAppli_FlowLineSpec(const IGESAppli_FlowLineSpec *anItem);
		%feature("autodoc", "1");
		Handle_IGESAppli_FlowLineSpec & operator=(const Handle_IGESAppli_FlowLineSpec &aHandle);
		%feature("autodoc", "1");
		Handle_IGESAppli_FlowLineSpec & operator=(const IGESAppli_FlowLineSpec *anItem);
		%feature("autodoc", "1");
		Handle_IGESAppli_FlowLineSpec const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESAppli_FlowLineSpec {
	IGESAppli_FlowLineSpec* GetObject() {
	return (IGESAppli_FlowLineSpec*)$self->Access();
	}
};
%extend Handle_IGESAppli_FlowLineSpec {
	~Handle_IGESAppli_FlowLineSpec() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_IGESAppli_FlowLineSpec\n");}
	}
};


%nodefaultctor Handle_IGESAppli_RegionRestriction;
class Handle_IGESAppli_RegionRestriction : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESAppli_RegionRestriction();
		%feature("autodoc", "1");
		Handle_IGESAppli_RegionRestriction(const Handle_IGESAppli_RegionRestriction &aHandle);
		%feature("autodoc", "1");
		Handle_IGESAppli_RegionRestriction(const IGESAppli_RegionRestriction *anItem);
		%feature("autodoc", "1");
		Handle_IGESAppli_RegionRestriction & operator=(const Handle_IGESAppli_RegionRestriction &aHandle);
		%feature("autodoc", "1");
		Handle_IGESAppli_RegionRestriction & operator=(const IGESAppli_RegionRestriction *anItem);
		%feature("autodoc", "1");
		Handle_IGESAppli_RegionRestriction const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESAppli_RegionRestriction {
	IGESAppli_RegionRestriction* GetObject() {
	return (IGESAppli_RegionRestriction*)$self->Access();
	}
};
%extend Handle_IGESAppli_RegionRestriction {
	~Handle_IGESAppli_RegionRestriction() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_IGESAppli_RegionRestriction\n");}
	}
};


%nodefaultctor Handle_IGESAppli_HArray1OfFlow;
class Handle_IGESAppli_HArray1OfFlow : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_IGESAppli_HArray1OfFlow();
		%feature("autodoc", "1");
		Handle_IGESAppli_HArray1OfFlow(const Handle_IGESAppli_HArray1OfFlow &aHandle);
		%feature("autodoc", "1");
		Handle_IGESAppli_HArray1OfFlow(const IGESAppli_HArray1OfFlow *anItem);
		%feature("autodoc", "1");
		Handle_IGESAppli_HArray1OfFlow & operator=(const Handle_IGESAppli_HArray1OfFlow &aHandle);
		%feature("autodoc", "1");
		Handle_IGESAppli_HArray1OfFlow & operator=(const IGESAppli_HArray1OfFlow *anItem);
		%feature("autodoc", "1");
		Handle_IGESAppli_HArray1OfFlow const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESAppli_HArray1OfFlow {
	IGESAppli_HArray1OfFlow* GetObject() {
	return (IGESAppli_HArray1OfFlow*)$self->Access();
	}
};
%extend Handle_IGESAppli_HArray1OfFlow {
	~Handle_IGESAppli_HArray1OfFlow() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_IGESAppli_HArray1OfFlow\n");}
	}
};


%nodefaultctor Handle_IGESAppli_HArray1OfFiniteElement;
class Handle_IGESAppli_HArray1OfFiniteElement : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_IGESAppli_HArray1OfFiniteElement();
		%feature("autodoc", "1");
		Handle_IGESAppli_HArray1OfFiniteElement(const Handle_IGESAppli_HArray1OfFiniteElement &aHandle);
		%feature("autodoc", "1");
		Handle_IGESAppli_HArray1OfFiniteElement(const IGESAppli_HArray1OfFiniteElement *anItem);
		%feature("autodoc", "1");
		Handle_IGESAppli_HArray1OfFiniteElement & operator=(const Handle_IGESAppli_HArray1OfFiniteElement &aHandle);
		%feature("autodoc", "1");
		Handle_IGESAppli_HArray1OfFiniteElement & operator=(const IGESAppli_HArray1OfFiniteElement *anItem);
		%feature("autodoc", "1");
		Handle_IGESAppli_HArray1OfFiniteElement const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESAppli_HArray1OfFiniteElement {
	IGESAppli_HArray1OfFiniteElement* GetObject() {
	return (IGESAppli_HArray1OfFiniteElement*)$self->Access();
	}
};
%extend Handle_IGESAppli_HArray1OfFiniteElement {
	~Handle_IGESAppli_HArray1OfFiniteElement() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_IGESAppli_HArray1OfFiniteElement\n");}
	}
};


%nodefaultctor Handle_IGESAppli_Node;
class Handle_IGESAppli_Node : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESAppli_Node();
		%feature("autodoc", "1");
		Handle_IGESAppli_Node(const Handle_IGESAppli_Node &aHandle);
		%feature("autodoc", "1");
		Handle_IGESAppli_Node(const IGESAppli_Node *anItem);
		%feature("autodoc", "1");
		Handle_IGESAppli_Node & operator=(const Handle_IGESAppli_Node &aHandle);
		%feature("autodoc", "1");
		Handle_IGESAppli_Node & operator=(const IGESAppli_Node *anItem);
		%feature("autodoc", "1");
		Handle_IGESAppli_Node const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESAppli_Node {
	IGESAppli_Node* GetObject() {
	return (IGESAppli_Node*)$self->Access();
	}
};
%extend Handle_IGESAppli_Node {
	~Handle_IGESAppli_Node() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_IGESAppli_Node\n");}
	}
};


%nodefaultctor Handle_IGESAppli_Flow;
class Handle_IGESAppli_Flow : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESAppli_Flow();
		%feature("autodoc", "1");
		Handle_IGESAppli_Flow(const Handle_IGESAppli_Flow &aHandle);
		%feature("autodoc", "1");
		Handle_IGESAppli_Flow(const IGESAppli_Flow *anItem);
		%feature("autodoc", "1");
		Handle_IGESAppli_Flow & operator=(const Handle_IGESAppli_Flow &aHandle);
		%feature("autodoc", "1");
		Handle_IGESAppli_Flow & operator=(const IGESAppli_Flow *anItem);
		%feature("autodoc", "1");
		Handle_IGESAppli_Flow const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESAppli_Flow {
	IGESAppli_Flow* GetObject() {
	return (IGESAppli_Flow*)$self->Access();
	}
};
%extend Handle_IGESAppli_Flow {
	~Handle_IGESAppli_Flow() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_IGESAppli_Flow\n");}
	}
};


%nodefaultctor Handle_IGESAppli_LineWidening;
class Handle_IGESAppli_LineWidening : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESAppli_LineWidening();
		%feature("autodoc", "1");
		Handle_IGESAppli_LineWidening(const Handle_IGESAppli_LineWidening &aHandle);
		%feature("autodoc", "1");
		Handle_IGESAppli_LineWidening(const IGESAppli_LineWidening *anItem);
		%feature("autodoc", "1");
		Handle_IGESAppli_LineWidening & operator=(const Handle_IGESAppli_LineWidening &aHandle);
		%feature("autodoc", "1");
		Handle_IGESAppli_LineWidening & operator=(const IGESAppli_LineWidening *anItem);
		%feature("autodoc", "1");
		Handle_IGESAppli_LineWidening const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESAppli_LineWidening {
	IGESAppli_LineWidening* GetObject() {
	return (IGESAppli_LineWidening*)$self->Access();
	}
};
%extend Handle_IGESAppli_LineWidening {
	~Handle_IGESAppli_LineWidening() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_IGESAppli_LineWidening\n");}
	}
};


%nodefaultctor Handle_IGESAppli_PipingFlow;
class Handle_IGESAppli_PipingFlow : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESAppli_PipingFlow();
		%feature("autodoc", "1");
		Handle_IGESAppli_PipingFlow(const Handle_IGESAppli_PipingFlow &aHandle);
		%feature("autodoc", "1");
		Handle_IGESAppli_PipingFlow(const IGESAppli_PipingFlow *anItem);
		%feature("autodoc", "1");
		Handle_IGESAppli_PipingFlow & operator=(const Handle_IGESAppli_PipingFlow &aHandle);
		%feature("autodoc", "1");
		Handle_IGESAppli_PipingFlow & operator=(const IGESAppli_PipingFlow *anItem);
		%feature("autodoc", "1");
		Handle_IGESAppli_PipingFlow const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESAppli_PipingFlow {
	IGESAppli_PipingFlow* GetObject() {
	return (IGESAppli_PipingFlow*)$self->Access();
	}
};
%extend Handle_IGESAppli_PipingFlow {
	~Handle_IGESAppli_PipingFlow() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_IGESAppli_PipingFlow\n");}
	}
};


%nodefaultctor Handle_IGESAppli_Protocol;
class Handle_IGESAppli_Protocol : public Handle_IGESData_Protocol {
	public:
		%feature("autodoc", "1");
		Handle_IGESAppli_Protocol();
		%feature("autodoc", "1");
		Handle_IGESAppli_Protocol(const Handle_IGESAppli_Protocol &aHandle);
		%feature("autodoc", "1");
		Handle_IGESAppli_Protocol(const IGESAppli_Protocol *anItem);
		%feature("autodoc", "1");
		Handle_IGESAppli_Protocol & operator=(const Handle_IGESAppli_Protocol &aHandle);
		%feature("autodoc", "1");
		Handle_IGESAppli_Protocol & operator=(const IGESAppli_Protocol *anItem);
		%feature("autodoc", "1");
		Handle_IGESAppli_Protocol const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESAppli_Protocol {
	IGESAppli_Protocol* GetObject() {
	return (IGESAppli_Protocol*)$self->Access();
	}
};
%extend Handle_IGESAppli_Protocol {
	~Handle_IGESAppli_Protocol() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_IGESAppli_Protocol\n");}
	}
};


%nodefaultctor Handle_IGESAppli_GeneralModule;
class Handle_IGESAppli_GeneralModule : public Handle_IGESData_GeneralModule {
	public:
		%feature("autodoc", "1");
		Handle_IGESAppli_GeneralModule();
		%feature("autodoc", "1");
		Handle_IGESAppli_GeneralModule(const Handle_IGESAppli_GeneralModule &aHandle);
		%feature("autodoc", "1");
		Handle_IGESAppli_GeneralModule(const IGESAppli_GeneralModule *anItem);
		%feature("autodoc", "1");
		Handle_IGESAppli_GeneralModule & operator=(const Handle_IGESAppli_GeneralModule &aHandle);
		%feature("autodoc", "1");
		Handle_IGESAppli_GeneralModule & operator=(const IGESAppli_GeneralModule *anItem);
		%feature("autodoc", "1");
		Handle_IGESAppli_GeneralModule const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESAppli_GeneralModule {
	IGESAppli_GeneralModule* GetObject() {
	return (IGESAppli_GeneralModule*)$self->Access();
	}
};
%extend Handle_IGESAppli_GeneralModule {
	~Handle_IGESAppli_GeneralModule() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_IGESAppli_GeneralModule\n");}
	}
};


%nodefaultctor Handle_IGESAppli_NodalResults;
class Handle_IGESAppli_NodalResults : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESAppli_NodalResults();
		%feature("autodoc", "1");
		Handle_IGESAppli_NodalResults(const Handle_IGESAppli_NodalResults &aHandle);
		%feature("autodoc", "1");
		Handle_IGESAppli_NodalResults(const IGESAppli_NodalResults *anItem);
		%feature("autodoc", "1");
		Handle_IGESAppli_NodalResults & operator=(const Handle_IGESAppli_NodalResults &aHandle);
		%feature("autodoc", "1");
		Handle_IGESAppli_NodalResults & operator=(const IGESAppli_NodalResults *anItem);
		%feature("autodoc", "1");
		Handle_IGESAppli_NodalResults const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESAppli_NodalResults {
	IGESAppli_NodalResults* GetObject() {
	return (IGESAppli_NodalResults*)$self->Access();
	}
};
%extend Handle_IGESAppli_NodalResults {
	~Handle_IGESAppli_NodalResults() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_IGESAppli_NodalResults\n");}
	}
};


%nodefaultctor Handle_IGESAppli_PartNumber;
class Handle_IGESAppli_PartNumber : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESAppli_PartNumber();
		%feature("autodoc", "1");
		Handle_IGESAppli_PartNumber(const Handle_IGESAppli_PartNumber &aHandle);
		%feature("autodoc", "1");
		Handle_IGESAppli_PartNumber(const IGESAppli_PartNumber *anItem);
		%feature("autodoc", "1");
		Handle_IGESAppli_PartNumber & operator=(const Handle_IGESAppli_PartNumber &aHandle);
		%feature("autodoc", "1");
		Handle_IGESAppli_PartNumber & operator=(const IGESAppli_PartNumber *anItem);
		%feature("autodoc", "1");
		Handle_IGESAppli_PartNumber const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESAppli_PartNumber {
	IGESAppli_PartNumber* GetObject() {
	return (IGESAppli_PartNumber*)$self->Access();
	}
};
%extend Handle_IGESAppli_PartNumber {
	~Handle_IGESAppli_PartNumber() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_IGESAppli_PartNumber\n");}
	}
};


%nodefaultctor Handle_IGESAppli_LevelFunction;
class Handle_IGESAppli_LevelFunction : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESAppli_LevelFunction();
		%feature("autodoc", "1");
		Handle_IGESAppli_LevelFunction(const Handle_IGESAppli_LevelFunction &aHandle);
		%feature("autodoc", "1");
		Handle_IGESAppli_LevelFunction(const IGESAppli_LevelFunction *anItem);
		%feature("autodoc", "1");
		Handle_IGESAppli_LevelFunction & operator=(const Handle_IGESAppli_LevelFunction &aHandle);
		%feature("autodoc", "1");
		Handle_IGESAppli_LevelFunction & operator=(const IGESAppli_LevelFunction *anItem);
		%feature("autodoc", "1");
		Handle_IGESAppli_LevelFunction const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESAppli_LevelFunction {
	IGESAppli_LevelFunction* GetObject() {
	return (IGESAppli_LevelFunction*)$self->Access();
	}
};
%extend Handle_IGESAppli_LevelFunction {
	~Handle_IGESAppli_LevelFunction() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_IGESAppli_LevelFunction\n");}
	}
};


%nodefaultctor IGESAppli_HArray1OfFiniteElement;
class IGESAppli_HArray1OfFiniteElement : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		IGESAppli_HArray1OfFiniteElement(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		IGESAppli_HArray1OfFiniteElement(const Standard_Integer Low, const Standard_Integer Up, const Handle_IGESAppli_FiniteElement &V);
		%feature("autodoc", "1");
		void Init(const Handle_IGESAppli_FiniteElement &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_IGESAppli_FiniteElement &Value);
		%feature("autodoc", "1");
		const Handle_IGESAppli_FiniteElement & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_IGESAppli_FiniteElement & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const IGESAppli_Array1OfFiniteElement & Array1() const;
		%feature("autodoc", "1");
		IGESAppli_Array1OfFiniteElement & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESAppli_HArray1OfFiniteElement {
	Handle_IGESAppli_HArray1OfFiniteElement GetHandle() {
	return *(Handle_IGESAppli_HArray1OfFiniteElement*) &$self;
	}
};
%extend IGESAppli_HArray1OfFiniteElement {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend IGESAppli_HArray1OfFiniteElement {
	~IGESAppli_HArray1OfFiniteElement() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of IGESAppli_HArray1OfFiniteElement\n");}
	}
};


%nodefaultctor IGESAppli_FiniteElement;
class IGESAppli_FiniteElement : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESAppli_FiniteElement();
		%feature("autodoc", "1");
		void Init(const Standard_Integer aType, const Handle_IGESAppli_HArray1OfNode &allNodes, const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		Standard_Integer Topology() const;
		%feature("autodoc", "1");
		Standard_Integer NbNodes() const;
		%feature("autodoc", "1");
		Handle_IGESAppli_Node Node(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Name() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESAppli_FiniteElement {
	Handle_IGESAppli_FiniteElement GetHandle() {
	return *(Handle_IGESAppli_FiniteElement*) &$self;
	}
};
%extend IGESAppli_FiniteElement {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend IGESAppli_FiniteElement {
	~IGESAppli_FiniteElement() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of IGESAppli_FiniteElement\n");}
	}
};


%nodefaultctor IGESAppli_Flow;
class IGESAppli_Flow : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESAppli_Flow();
		%feature("autodoc", "1");
		void Init(const Standard_Integer nbContextFlags, const Standard_Integer aFlowType, const Standard_Integer aFuncFlag, const Handle_IGESData_HArray1OfIGESEntity &allFlowAssocs, const Handle_IGESDraw_HArray1OfConnectPoint &allConnectPoints, const Handle_IGESData_HArray1OfIGESEntity &allJoins, const Handle_Interface_HArray1OfHAsciiString &allFlowNames, const Handle_IGESGraph_HArray1OfTextDisplayTemplate &allTextDisps, const Handle_IGESData_HArray1OfIGESEntity &allContFlowAssocs);
		%feature("autodoc", "1");
		Standard_Boolean OwnCorrect();
		%feature("autodoc", "1");
		Standard_Integer NbContextFlags() const;
		%feature("autodoc", "1");
		Standard_Integer NbFlowAssociativities() const;
		%feature("autodoc", "1");
		Standard_Integer NbConnectPoints() const;
		%feature("autodoc", "1");
		Standard_Integer NbJoins() const;
		%feature("autodoc", "1");
		Standard_Integer NbFlowNames() const;
		%feature("autodoc", "1");
		Standard_Integer NbTextDisplayTemplates() const;
		%feature("autodoc", "1");
		Standard_Integer NbContFlowAssociativities() const;
		%feature("autodoc", "1");
		Standard_Integer TypeOfFlow() const;
		%feature("autodoc", "1");
		Standard_Integer FunctionFlag() const;
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity FlowAssociativity(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_IGESDraw_ConnectPoint ConnectPoint(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity Join(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString FlowName(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_IGESGraph_TextDisplayTemplate TextDisplayTemplate(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity ContFlowAssociativity(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESAppli_Flow {
	Handle_IGESAppli_Flow GetHandle() {
	return *(Handle_IGESAppli_Flow*) &$self;
	}
};
%extend IGESAppli_Flow {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend IGESAppli_Flow {
	~IGESAppli_Flow() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of IGESAppli_Flow\n");}
	}
};


%nodefaultctor IGESAppli_NodalResults;
class IGESAppli_NodalResults : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESAppli_NodalResults();
		%feature("autodoc", "1");
		void Init(const Handle_IGESDimen_GeneralNote &aNote, const Standard_Integer aNumber, const Standard_Real aTime, const Handle_TColStd_HArray1OfInteger &allNodeIdentifiers, const Handle_IGESAppli_HArray1OfNode &allNodes, const Handle_TColStd_HArray2OfReal &allData);
		%feature("autodoc", "1");
		void SetFormNumber(const Standard_Integer form);
		%feature("autodoc", "1");
		Handle_IGESDimen_GeneralNote Note() const;
		%feature("autodoc", "1");
		Standard_Integer SubCaseNumber() const;
		%feature("autodoc", "1");
		Standard_Real Time() const;
		%feature("autodoc", "1");
		Standard_Integer NbData() const;
		%feature("autodoc", "1");
		Standard_Integer NbNodes() const;
		%feature("autodoc", "1");
		Standard_Integer NodeIdentifier(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_IGESAppli_Node Node(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Real Data(const Standard_Integer NodeNum, const Standard_Integer DataNum) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESAppli_NodalResults {
	Handle_IGESAppli_NodalResults GetHandle() {
	return *(Handle_IGESAppli_NodalResults*) &$self;
	}
};
%extend IGESAppli_NodalResults {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend IGESAppli_NodalResults {
	~IGESAppli_NodalResults() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of IGESAppli_NodalResults\n");}
	}
};


%nodefaultctor IGESAppli_FlowLineSpec;
class IGESAppli_FlowLineSpec : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESAppli_FlowLineSpec();
		%feature("autodoc", "1");
		void Init(const Handle_Interface_HArray1OfHAsciiString &allProperties);
		%feature("autodoc", "1");
		Standard_Integer NbPropertyValues() const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString FlowLineName() const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Modifier(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESAppli_FlowLineSpec {
	Handle_IGESAppli_FlowLineSpec GetHandle() {
	return *(Handle_IGESAppli_FlowLineSpec*) &$self;
	}
};
%extend IGESAppli_FlowLineSpec {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend IGESAppli_FlowLineSpec {
	~IGESAppli_FlowLineSpec() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of IGESAppli_FlowLineSpec\n");}
	}
};


%nodefaultctor IGESAppli_ToolNodalConstraint;
class IGESAppli_ToolNodalConstraint {
	public:
		%feature("autodoc", "1");
		IGESAppli_ToolNodalConstraint();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESAppli_NodalConstraint &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESAppli_NodalConstraint &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESAppli_NodalConstraint &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESAppli_NodalConstraint &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESAppli_NodalConstraint &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESAppli_NodalConstraint &entfrom, const Handle_IGESAppli_NodalConstraint &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESAppli_NodalConstraint &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%extend IGESAppli_ToolNodalConstraint {
	~IGESAppli_ToolNodalConstraint() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of IGESAppli_ToolNodalConstraint\n");}
	}
};


%nodefaultctor IGESAppli_LevelToPWBLayerMap;
class IGESAppli_LevelToPWBLayerMap : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESAppli_LevelToPWBLayerMap();
		%feature("autodoc", "1");
		void Init(const Standard_Integer nbPropVal, const Handle_TColStd_HArray1OfInteger &allExchLevels, const Handle_Interface_HArray1OfHAsciiString &allNativeLevels, const Handle_TColStd_HArray1OfInteger &allPhysLevels, const Handle_Interface_HArray1OfHAsciiString &allExchIdents);
		%feature("autodoc", "1");
		Standard_Integer NbPropertyValues() const;
		%feature("autodoc", "1");
		Standard_Integer NbLevelToLayerDefs() const;
		%feature("autodoc", "1");
		Standard_Integer ExchangeFileLevelNumber(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString NativeLevel(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Integer PhysicalLayerNumber(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString ExchangeFileLevelIdent(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESAppli_LevelToPWBLayerMap {
	Handle_IGESAppli_LevelToPWBLayerMap GetHandle() {
	return *(Handle_IGESAppli_LevelToPWBLayerMap*) &$self;
	}
};
%extend IGESAppli_LevelToPWBLayerMap {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend IGESAppli_LevelToPWBLayerMap {
	~IGESAppli_LevelToPWBLayerMap() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of IGESAppli_LevelToPWBLayerMap\n");}
	}
};


%nodefaultctor IGESAppli_Array1OfNode;
class IGESAppli_Array1OfNode {
	public:
		%feature("autodoc", "1");
		IGESAppli_Array1OfNode(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		IGESAppli_Array1OfNode(const Handle_IGESAppli_Node &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Handle_IGESAppli_Node &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const IGESAppli_Array1OfNode & Assign(const IGESAppli_Array1OfNode &Other);
		%feature("autodoc", "1");
		const IGESAppli_Array1OfNode & operator=(const IGESAppli_Array1OfNode &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_IGESAppli_Node &Value);
		%feature("autodoc", "1");
		const Handle_IGESAppli_Node & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_IGESAppli_Node & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_IGESAppli_Node & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_IGESAppli_Node & operator()(const Standard_Integer Index);

};
%extend IGESAppli_Array1OfNode {
	~IGESAppli_Array1OfNode() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of IGESAppli_Array1OfNode\n");}
	}
};


%nodefaultctor IGESAppli_ToolLevelToPWBLayerMap;
class IGESAppli_ToolLevelToPWBLayerMap {
	public:
		%feature("autodoc", "1");
		IGESAppli_ToolLevelToPWBLayerMap();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESAppli_LevelToPWBLayerMap &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESAppli_LevelToPWBLayerMap &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESAppli_LevelToPWBLayerMap &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESAppli_LevelToPWBLayerMap &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESAppli_LevelToPWBLayerMap &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESAppli_LevelToPWBLayerMap &entfrom, const Handle_IGESAppli_LevelToPWBLayerMap &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESAppli_LevelToPWBLayerMap &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%extend IGESAppli_ToolLevelToPWBLayerMap {
	~IGESAppli_ToolLevelToPWBLayerMap() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of IGESAppli_ToolLevelToPWBLayerMap\n");}
	}
};


%nodefaultctor IGESAppli_HArray1OfNode;
class IGESAppli_HArray1OfNode : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		IGESAppli_HArray1OfNode(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		IGESAppli_HArray1OfNode(const Standard_Integer Low, const Standard_Integer Up, const Handle_IGESAppli_Node &V);
		%feature("autodoc", "1");
		void Init(const Handle_IGESAppli_Node &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_IGESAppli_Node &Value);
		%feature("autodoc", "1");
		const Handle_IGESAppli_Node & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_IGESAppli_Node & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const IGESAppli_Array1OfNode & Array1() const;
		%feature("autodoc", "1");
		IGESAppli_Array1OfNode & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESAppli_HArray1OfNode {
	Handle_IGESAppli_HArray1OfNode GetHandle() {
	return *(Handle_IGESAppli_HArray1OfNode*) &$self;
	}
};
%extend IGESAppli_HArray1OfNode {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend IGESAppli_HArray1OfNode {
	~IGESAppli_HArray1OfNode() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of IGESAppli_HArray1OfNode\n");}
	}
};


%nodefaultctor IGESAppli;
class IGESAppli {
	public:
		%feature("autodoc", "1");
		IGESAppli();
		%feature("autodoc", "1");
		void Init();
		%feature("autodoc", "1");
		Handle_IGESAppli_Protocol Protocol();

};
%extend IGESAppli {
	~IGESAppli() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of IGESAppli\n");}
	}
};


%nodefaultctor IGESAppli_ToolFiniteElement;
class IGESAppli_ToolFiniteElement {
	public:
		%feature("autodoc", "1");
		IGESAppli_ToolFiniteElement();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESAppli_FiniteElement &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESAppli_FiniteElement &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESAppli_FiniteElement &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESAppli_FiniteElement &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESAppli_FiniteElement &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESAppli_FiniteElement &entfrom, const Handle_IGESAppli_FiniteElement &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESAppli_FiniteElement &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%extend IGESAppli_ToolFiniteElement {
	~IGESAppli_ToolFiniteElement() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of IGESAppli_ToolFiniteElement\n");}
	}
};


%nodefaultctor IGESAppli_ToolNodalDisplAndRot;
class IGESAppli_ToolNodalDisplAndRot {
	public:
		%feature("autodoc", "1");
		IGESAppli_ToolNodalDisplAndRot();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESAppli_NodalDisplAndRot &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESAppli_NodalDisplAndRot &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESAppli_NodalDisplAndRot &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESAppli_NodalDisplAndRot &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESAppli_NodalDisplAndRot &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESAppli_NodalDisplAndRot &entfrom, const Handle_IGESAppli_NodalDisplAndRot &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESAppli_NodalDisplAndRot &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%extend IGESAppli_ToolNodalDisplAndRot {
	~IGESAppli_ToolNodalDisplAndRot() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of IGESAppli_ToolNodalDisplAndRot\n");}
	}
};


%nodefaultctor IGESAppli_ToolReferenceDesignator;
class IGESAppli_ToolReferenceDesignator {
	public:
		%feature("autodoc", "1");
		IGESAppli_ToolReferenceDesignator();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESAppli_ReferenceDesignator &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESAppli_ReferenceDesignator &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESAppli_ReferenceDesignator &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		Standard_Boolean OwnCorrect(const Handle_IGESAppli_ReferenceDesignator &ent) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESAppli_ReferenceDesignator &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESAppli_ReferenceDesignator &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESAppli_ReferenceDesignator &entfrom, const Handle_IGESAppli_ReferenceDesignator &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESAppli_ReferenceDesignator &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%extend IGESAppli_ToolReferenceDesignator {
	~IGESAppli_ToolReferenceDesignator() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of IGESAppli_ToolReferenceDesignator\n");}
	}
};


%nodefaultctor IGESAppli_ElementResults;
class IGESAppli_ElementResults : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESAppli_ElementResults();
		%feature("autodoc", "1");
		void Init(const Handle_IGESDimen_GeneralNote &aNote, const Standard_Integer aSubCase, const Standard_Real aTime, const Standard_Integer nbResults, const Standard_Integer aResRepFlag, const Handle_TColStd_HArray1OfInteger &allElementIdents, const Handle_IGESAppli_HArray1OfFiniteElement &allFiniteElems, const Handle_TColStd_HArray1OfInteger &allTopTypes, const Handle_TColStd_HArray1OfInteger &nbLayers, const Handle_TColStd_HArray1OfInteger &allDataLayerFlags, const Handle_TColStd_HArray1OfInteger &allnbResDataLocs, const Handle_IGESBasic_HArray1OfHArray1OfInteger &allResDataLocs, const Handle_IGESBasic_HArray1OfHArray1OfReal &allResults);
		%feature("autodoc", "1");
		void SetFormNumber(const Standard_Integer form);
		%feature("autodoc", "1");
		Handle_IGESDimen_GeneralNote Note() const;
		%feature("autodoc", "1");
		Standard_Integer SubCaseNumber() const;
		%feature("autodoc", "1");
		Standard_Real Time() const;
		%feature("autodoc", "1");
		Standard_Integer NbResultValues() const;
		%feature("autodoc", "1");
		Standard_Integer ResultReportFlag() const;
		%feature("autodoc", "1");
		Standard_Integer NbElements() const;
		%feature("autodoc", "1");
		Standard_Integer ElementIdentifier(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_IGESAppli_FiniteElement Element(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Integer ElementTopologyType(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Integer NbLayers(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Integer DataLayerFlag(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Integer NbResultDataLocs(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Integer ResultDataLoc(const Standard_Integer NElem, const Standard_Integer NLoc) const;
		%feature("autodoc", "1");
		Standard_Integer NbResults(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Real ResultData(const Standard_Integer NElem, const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer ResultRank(const Standard_Integer NElem, const Standard_Integer NVal, const Standard_Integer NLay, const Standard_Integer NLoc) const;
		%feature("autodoc", "1");
		Standard_Real ResultData(const Standard_Integer NElem, const Standard_Integer NVal, const Standard_Integer NLay, const Standard_Integer NLoc) const;
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal ResultList(const Standard_Integer NElem) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESAppli_ElementResults {
	Handle_IGESAppli_ElementResults GetHandle() {
	return *(Handle_IGESAppli_ElementResults*) &$self;
	}
};
%extend IGESAppli_ElementResults {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend IGESAppli_ElementResults {
	~IGESAppli_ElementResults() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of IGESAppli_ElementResults\n");}
	}
};


%nodefaultctor IGESAppli_SpecificModule;
class IGESAppli_SpecificModule : public IGESData_SpecificModule {
	public:
		%feature("autodoc", "1");
		IGESAppli_SpecificModule();
		%feature("autodoc", "1");
		virtual		void OwnDump(const Standard_Integer CN, const Handle_IGESData_IGESEntity &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean OwnCorrect(const Standard_Integer CN, const Handle_IGESData_IGESEntity &ent) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESAppli_SpecificModule {
	Handle_IGESAppli_SpecificModule GetHandle() {
	return *(Handle_IGESAppli_SpecificModule*) &$self;
	}
};
%extend IGESAppli_SpecificModule {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend IGESAppli_SpecificModule {
	~IGESAppli_SpecificModule() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of IGESAppli_SpecificModule\n");}
	}
};


%nodefaultctor IGESAppli_ReferenceDesignator;
class IGESAppli_ReferenceDesignator : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESAppli_ReferenceDesignator();
		%feature("autodoc", "1");
		void Init(const Standard_Integer nbPropVal, const Handle_TCollection_HAsciiString &aText);
		%feature("autodoc", "1");
		Standard_Integer NbPropertyValues() const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString RefDesignatorText() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESAppli_ReferenceDesignator {
	Handle_IGESAppli_ReferenceDesignator GetHandle() {
	return *(Handle_IGESAppli_ReferenceDesignator*) &$self;
	}
};
%extend IGESAppli_ReferenceDesignator {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend IGESAppli_ReferenceDesignator {
	~IGESAppli_ReferenceDesignator() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of IGESAppli_ReferenceDesignator\n");}
	}
};


%nodefaultctor IGESAppli_ToolRegionRestriction;
class IGESAppli_ToolRegionRestriction {
	public:
		%feature("autodoc", "1");
		IGESAppli_ToolRegionRestriction();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESAppli_RegionRestriction &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESAppli_RegionRestriction &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESAppli_RegionRestriction &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		Standard_Boolean OwnCorrect(const Handle_IGESAppli_RegionRestriction &ent) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESAppli_RegionRestriction &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESAppli_RegionRestriction &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESAppli_RegionRestriction &entfrom, const Handle_IGESAppli_RegionRestriction &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESAppli_RegionRestriction &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%extend IGESAppli_ToolRegionRestriction {
	~IGESAppli_ToolRegionRestriction() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of IGESAppli_ToolRegionRestriction\n");}
	}
};


%nodefaultctor IGESAppli_DrilledHole;
class IGESAppli_DrilledHole : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESAppli_DrilledHole();
		%feature("autodoc", "1");
		void Init(const Standard_Integer nbPropVal, const Standard_Real aSize, const Standard_Real anotherSize, const Standard_Integer aPlating, const Standard_Integer aLayer, const Standard_Integer anotherLayer);
		%feature("autodoc", "1");
		Standard_Integer NbPropertyValues() const;
		%feature("autodoc", "1");
		Standard_Real DrillDiaSize() const;
		%feature("autodoc", "1");
		Standard_Real FinishDiaSize() const;
		%feature("autodoc", "1");
		Standard_Boolean IsPlating() const;
		%feature("autodoc", "1");
		Standard_Integer NbLowerLayer() const;
		%feature("autodoc", "1");
		Standard_Integer NbHigherLayer() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESAppli_DrilledHole {
	Handle_IGESAppli_DrilledHole GetHandle() {
	return *(Handle_IGESAppli_DrilledHole*) &$self;
	}
};
%extend IGESAppli_DrilledHole {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend IGESAppli_DrilledHole {
	~IGESAppli_DrilledHole() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of IGESAppli_DrilledHole\n");}
	}
};


%nodefaultctor IGESAppli_ToolNode;
class IGESAppli_ToolNode {
	public:
		%feature("autodoc", "1");
		IGESAppli_ToolNode();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESAppli_Node &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESAppli_Node &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESAppli_Node &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESAppli_Node &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESAppli_Node &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESAppli_Node &entfrom, const Handle_IGESAppli_Node &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESAppli_Node &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%extend IGESAppli_ToolNode {
	~IGESAppli_ToolNode() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of IGESAppli_ToolNode\n");}
	}
};


%nodefaultctor IGESAppli_LevelFunction;
class IGESAppli_LevelFunction : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESAppli_LevelFunction();
		%feature("autodoc", "1");
		void Init(const Standard_Integer nbPropVal, const Standard_Integer aCode, const Handle_TCollection_HAsciiString &aFuncDescrip);
		%feature("autodoc", "1");
		Standard_Integer NbPropertyValues() const;
		%feature("autodoc", "1");
		Standard_Integer FuncDescriptionCode() const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString FuncDescription() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESAppli_LevelFunction {
	Handle_IGESAppli_LevelFunction GetHandle() {
	return *(Handle_IGESAppli_LevelFunction*) &$self;
	}
};
%extend IGESAppli_LevelFunction {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend IGESAppli_LevelFunction {
	~IGESAppli_LevelFunction() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of IGESAppli_LevelFunction\n");}
	}
};


%nodefaultctor IGESAppli_RegionRestriction;
class IGESAppli_RegionRestriction : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESAppli_RegionRestriction();
		%feature("autodoc", "1");
		void Init(const Standard_Integer nbPropVal, const Standard_Integer aViasRest, const Standard_Integer aCompoRest, const Standard_Integer aCktRest);
		%feature("autodoc", "1");
		Standard_Integer NbPropertyValues() const;
		%feature("autodoc", "1");
		Standard_Integer ElectricalViasRestriction() const;
		%feature("autodoc", "1");
		Standard_Integer ElectricalComponentRestriction() const;
		%feature("autodoc", "1");
		Standard_Integer ElectricalCktRestriction() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESAppli_RegionRestriction {
	Handle_IGESAppli_RegionRestriction GetHandle() {
	return *(Handle_IGESAppli_RegionRestriction*) &$self;
	}
};
%extend IGESAppli_RegionRestriction {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend IGESAppli_RegionRestriction {
	~IGESAppli_RegionRestriction() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of IGESAppli_RegionRestriction\n");}
	}
};


%nodefaultctor IGESAppli_PipingFlow;
class IGESAppli_PipingFlow : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESAppli_PipingFlow();
		%feature("autodoc", "1");
		void Init(const Standard_Integer nbContextFlags, const Standard_Integer aFlowType, const Handle_IGESData_HArray1OfIGESEntity &allFlowAssocs, const Handle_IGESDraw_HArray1OfConnectPoint &allConnectPoints, const Handle_IGESData_HArray1OfIGESEntity &allJoins, const Handle_Interface_HArray1OfHAsciiString &allFlowNames, const Handle_IGESGraph_HArray1OfTextDisplayTemplate &allTextDisps, const Handle_IGESData_HArray1OfIGESEntity &allContFlowAssocs);
		%feature("autodoc", "1");
		Standard_Boolean OwnCorrect();
		%feature("autodoc", "1");
		Standard_Integer NbContextFlags() const;
		%feature("autodoc", "1");
		Standard_Integer NbFlowAssociativities() const;
		%feature("autodoc", "1");
		Standard_Integer NbConnectPoints() const;
		%feature("autodoc", "1");
		Standard_Integer NbJoins() const;
		%feature("autodoc", "1");
		Standard_Integer NbFlowNames() const;
		%feature("autodoc", "1");
		Standard_Integer NbTextDisplayTemplates() const;
		%feature("autodoc", "1");
		Standard_Integer NbContFlowAssociativities() const;
		%feature("autodoc", "1");
		Standard_Integer TypeOfFlow() const;
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity FlowAssociativity(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_IGESDraw_ConnectPoint ConnectPoint(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity Join(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString FlowName(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_IGESGraph_TextDisplayTemplate TextDisplayTemplate(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity ContFlowAssociativity(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESAppli_PipingFlow {
	Handle_IGESAppli_PipingFlow GetHandle() {
	return *(Handle_IGESAppli_PipingFlow*) &$self;
	}
};
%extend IGESAppli_PipingFlow {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend IGESAppli_PipingFlow {
	~IGESAppli_PipingFlow() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of IGESAppli_PipingFlow\n");}
	}
};


%nodefaultctor IGESAppli_Array1OfFiniteElement;
class IGESAppli_Array1OfFiniteElement {
	public:
		%feature("autodoc", "1");
		IGESAppli_Array1OfFiniteElement(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		IGESAppli_Array1OfFiniteElement(const Handle_IGESAppli_FiniteElement &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Handle_IGESAppli_FiniteElement &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const IGESAppli_Array1OfFiniteElement & Assign(const IGESAppli_Array1OfFiniteElement &Other);
		%feature("autodoc", "1");
		const IGESAppli_Array1OfFiniteElement & operator=(const IGESAppli_Array1OfFiniteElement &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_IGESAppli_FiniteElement &Value);
		%feature("autodoc", "1");
		const Handle_IGESAppli_FiniteElement & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_IGESAppli_FiniteElement & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_IGESAppli_FiniteElement & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_IGESAppli_FiniteElement & operator()(const Standard_Integer Index);

};
%extend IGESAppli_Array1OfFiniteElement {
	~IGESAppli_Array1OfFiniteElement() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of IGESAppli_Array1OfFiniteElement\n");}
	}
};


%nodefaultctor IGESAppli_ToolNodalResults;
class IGESAppli_ToolNodalResults {
	public:
		%feature("autodoc", "1");
		IGESAppli_ToolNodalResults();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESAppli_NodalResults &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESAppli_NodalResults &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESAppli_NodalResults &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESAppli_NodalResults &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESAppli_NodalResults &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESAppli_NodalResults &entfrom, const Handle_IGESAppli_NodalResults &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESAppli_NodalResults &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%extend IGESAppli_ToolNodalResults {
	~IGESAppli_ToolNodalResults() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of IGESAppli_ToolNodalResults\n");}
	}
};


%nodefaultctor IGESAppli_ToolFlowLineSpec;
class IGESAppli_ToolFlowLineSpec {
	public:
		%feature("autodoc", "1");
		IGESAppli_ToolFlowLineSpec();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESAppli_FlowLineSpec &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESAppli_FlowLineSpec &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESAppli_FlowLineSpec &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESAppli_FlowLineSpec &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESAppli_FlowLineSpec &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESAppli_FlowLineSpec &entfrom, const Handle_IGESAppli_FlowLineSpec &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESAppli_FlowLineSpec &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%extend IGESAppli_ToolFlowLineSpec {
	~IGESAppli_ToolFlowLineSpec() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of IGESAppli_ToolFlowLineSpec\n");}
	}
};


%nodefaultctor IGESAppli_ReadWriteModule;
class IGESAppli_ReadWriteModule : public IGESData_ReadWriteModule {
	public:
		%feature("autodoc", "1");
		IGESAppli_ReadWriteModule();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseIGES(const Standard_Integer typenum, const Standard_Integer formnum) const;
		%feature("autodoc", "1");
		virtual		void ReadOwnParams(const Standard_Integer CN, const Handle_IGESData_IGESEntity &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		virtual		void WriteOwnParams(const Standard_Integer CN, const Handle_IGESData_IGESEntity &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESAppli_ReadWriteModule {
	Handle_IGESAppli_ReadWriteModule GetHandle() {
	return *(Handle_IGESAppli_ReadWriteModule*) &$self;
	}
};
%extend IGESAppli_ReadWriteModule {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend IGESAppli_ReadWriteModule {
	~IGESAppli_ReadWriteModule() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of IGESAppli_ReadWriteModule\n");}
	}
};


%nodefaultctor IGESAppli_ToolDrilledHole;
class IGESAppli_ToolDrilledHole {
	public:
		%feature("autodoc", "1");
		IGESAppli_ToolDrilledHole();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESAppli_DrilledHole &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESAppli_DrilledHole &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESAppli_DrilledHole &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		Standard_Boolean OwnCorrect(const Handle_IGESAppli_DrilledHole &ent) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESAppli_DrilledHole &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESAppli_DrilledHole &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESAppli_DrilledHole &entfrom, const Handle_IGESAppli_DrilledHole &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESAppli_DrilledHole &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%extend IGESAppli_ToolDrilledHole {
	~IGESAppli_ToolDrilledHole() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of IGESAppli_ToolDrilledHole\n");}
	}
};


%nodefaultctor IGESAppli_NodalConstraint;
class IGESAppli_NodalConstraint : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESAppli_NodalConstraint();
		%feature("autodoc", "1");
		void Init(const Standard_Integer aType, const Handle_IGESAppli_Node &aNode, const Handle_IGESDefs_HArray1OfTabularData &allTabData);
		%feature("autodoc", "1");
		Standard_Integer NbCases() const;
		%feature("autodoc", "1");
		Standard_Integer Type() const;
		%feature("autodoc", "1");
		Handle_IGESAppli_Node NodeEntity() const;
		%feature("autodoc", "1");
		Handle_IGESDefs_TabularData TabularData(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESAppli_NodalConstraint {
	Handle_IGESAppli_NodalConstraint GetHandle() {
	return *(Handle_IGESAppli_NodalConstraint*) &$self;
	}
};
%extend IGESAppli_NodalConstraint {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend IGESAppli_NodalConstraint {
	~IGESAppli_NodalConstraint() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of IGESAppli_NodalConstraint\n");}
	}
};


%nodefaultctor IGESAppli_PWBArtworkStackup;
class IGESAppli_PWBArtworkStackup : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESAppli_PWBArtworkStackup();
		%feature("autodoc", "1");
		void Init(const Standard_Integer nbPropVal, const Handle_TCollection_HAsciiString &anArtIdent, const Handle_TColStd_HArray1OfInteger &allLevelNums);
		%feature("autodoc", "1");
		Standard_Integer NbPropertyValues() const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Identification() const;
		%feature("autodoc", "1");
		Standard_Integer NbLevelNumbers() const;
		%feature("autodoc", "1");
		Standard_Integer LevelNumber(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESAppli_PWBArtworkStackup {
	Handle_IGESAppli_PWBArtworkStackup GetHandle() {
	return *(Handle_IGESAppli_PWBArtworkStackup*) &$self;
	}
};
%extend IGESAppli_PWBArtworkStackup {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend IGESAppli_PWBArtworkStackup {
	~IGESAppli_PWBArtworkStackup() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of IGESAppli_PWBArtworkStackup\n");}
	}
};


%nodefaultctor IGESAppli_NodalDisplAndRot;
class IGESAppli_NodalDisplAndRot : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESAppli_NodalDisplAndRot();
		%feature("autodoc", "1");
		void Init(const Handle_IGESDimen_HArray1OfGeneralNote &allNotes, const Handle_TColStd_HArray1OfInteger &allIdentifiers, const Handle_IGESAppli_HArray1OfNode &allNodes, const Handle_IGESBasic_HArray1OfHArray1OfXYZ &allRotParams, const Handle_IGESBasic_HArray1OfHArray1OfXYZ &allTransParams);
		%feature("autodoc", "1");
		Standard_Integer NbCases() const;
		%feature("autodoc", "1");
		Standard_Integer NbNodes() const;
		%feature("autodoc", "1");
		Handle_IGESDimen_GeneralNote Note(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Integer NodeIdentifier(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_IGESAppli_Node Node(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		gp_XYZ TranslationParameter(const Standard_Integer NodeNum, const Standard_Integer CaseNum) const;
		%feature("autodoc", "1");
		gp_XYZ RotationalParameter(const Standard_Integer NodeNum, const Standard_Integer CaseNum) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESAppli_NodalDisplAndRot {
	Handle_IGESAppli_NodalDisplAndRot GetHandle() {
	return *(Handle_IGESAppli_NodalDisplAndRot*) &$self;
	}
};
%extend IGESAppli_NodalDisplAndRot {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend IGESAppli_NodalDisplAndRot {
	~IGESAppli_NodalDisplAndRot() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of IGESAppli_NodalDisplAndRot\n");}
	}
};


%nodefaultctor IGESAppli_ToolPWBArtworkStackup;
class IGESAppli_ToolPWBArtworkStackup {
	public:
		%feature("autodoc", "1");
		IGESAppli_ToolPWBArtworkStackup();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESAppli_PWBArtworkStackup &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESAppli_PWBArtworkStackup &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESAppli_PWBArtworkStackup &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESAppli_PWBArtworkStackup &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESAppli_PWBArtworkStackup &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESAppli_PWBArtworkStackup &entfrom, const Handle_IGESAppli_PWBArtworkStackup &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESAppli_PWBArtworkStackup &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%extend IGESAppli_ToolPWBArtworkStackup {
	~IGESAppli_ToolPWBArtworkStackup() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of IGESAppli_ToolPWBArtworkStackup\n");}
	}
};


%nodefaultctor IGESAppli_PinNumber;
class IGESAppli_PinNumber : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESAppli_PinNumber();
		%feature("autodoc", "1");
		void Init(const Standard_Integer nbPropVal, const Handle_TCollection_HAsciiString &aValue);
		%feature("autodoc", "1");
		Standard_Integer NbPropertyValues() const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString PinNumberVal() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESAppli_PinNumber {
	Handle_IGESAppli_PinNumber GetHandle() {
	return *(Handle_IGESAppli_PinNumber*) &$self;
	}
};
%extend IGESAppli_PinNumber {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend IGESAppli_PinNumber {
	~IGESAppli_PinNumber() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of IGESAppli_PinNumber\n");}
	}
};


%nodefaultctor IGESAppli_ToolElementResults;
class IGESAppli_ToolElementResults {
	public:
		%feature("autodoc", "1");
		IGESAppli_ToolElementResults();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESAppli_ElementResults &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESAppli_ElementResults &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESAppli_ElementResults &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESAppli_ElementResults &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESAppli_ElementResults &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESAppli_ElementResults &entfrom, const Handle_IGESAppli_ElementResults &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESAppli_ElementResults &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%extend IGESAppli_ToolElementResults {
	~IGESAppli_ToolElementResults() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of IGESAppli_ToolElementResults\n");}
	}
};


%nodefaultctor IGESAppli_Array1OfFlow;
class IGESAppli_Array1OfFlow {
	public:
		%feature("autodoc", "1");
		IGESAppli_Array1OfFlow(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		IGESAppli_Array1OfFlow(const Handle_IGESAppli_Flow &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Handle_IGESAppli_Flow &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const IGESAppli_Array1OfFlow & Assign(const IGESAppli_Array1OfFlow &Other);
		%feature("autodoc", "1");
		const IGESAppli_Array1OfFlow & operator=(const IGESAppli_Array1OfFlow &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_IGESAppli_Flow &Value);
		%feature("autodoc", "1");
		const Handle_IGESAppli_Flow & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_IGESAppli_Flow & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_IGESAppli_Flow & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_IGESAppli_Flow & operator()(const Standard_Integer Index);

};
%extend IGESAppli_Array1OfFlow {
	~IGESAppli_Array1OfFlow() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of IGESAppli_Array1OfFlow\n");}
	}
};


%nodefaultctor IGESAppli_HArray1OfFlow;
class IGESAppli_HArray1OfFlow : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		IGESAppli_HArray1OfFlow(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		IGESAppli_HArray1OfFlow(const Standard_Integer Low, const Standard_Integer Up, const Handle_IGESAppli_Flow &V);
		%feature("autodoc", "1");
		void Init(const Handle_IGESAppli_Flow &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_IGESAppli_Flow &Value);
		%feature("autodoc", "1");
		const Handle_IGESAppli_Flow & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_IGESAppli_Flow & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const IGESAppli_Array1OfFlow & Array1() const;
		%feature("autodoc", "1");
		IGESAppli_Array1OfFlow & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESAppli_HArray1OfFlow {
	Handle_IGESAppli_HArray1OfFlow GetHandle() {
	return *(Handle_IGESAppli_HArray1OfFlow*) &$self;
	}
};
%extend IGESAppli_HArray1OfFlow {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend IGESAppli_HArray1OfFlow {
	~IGESAppli_HArray1OfFlow() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of IGESAppli_HArray1OfFlow\n");}
	}
};


%nodefaultctor IGESAppli_LineWidening;
class IGESAppli_LineWidening : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESAppli_LineWidening();
		%feature("autodoc", "1");
		void Init(const Standard_Integer nbPropVal, const Standard_Real aWidth, const Standard_Integer aCornering, const Standard_Integer aExtnFlag, const Standard_Integer aJustifFlag, const Standard_Real aExtnVal);
		%feature("autodoc", "1");
		Standard_Integer NbPropertyValues() const;
		%feature("autodoc", "1");
		Standard_Real WidthOfMetalization() const;
		%feature("autodoc", "1");
		Standard_Integer CorneringCode() const;
		%feature("autodoc", "1");
		Standard_Integer ExtensionFlag() const;
		%feature("autodoc", "1");
		Standard_Integer JustificationFlag() const;
		%feature("autodoc", "1");
		Standard_Real ExtensionValue() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESAppli_LineWidening {
	Handle_IGESAppli_LineWidening GetHandle() {
	return *(Handle_IGESAppli_LineWidening*) &$self;
	}
};
%extend IGESAppli_LineWidening {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend IGESAppli_LineWidening {
	~IGESAppli_LineWidening() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of IGESAppli_LineWidening\n");}
	}
};


%nodefaultctor IGESAppli_ToolLevelFunction;
class IGESAppli_ToolLevelFunction {
	public:
		%feature("autodoc", "1");
		IGESAppli_ToolLevelFunction();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESAppli_LevelFunction &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESAppli_LevelFunction &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESAppli_LevelFunction &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		Standard_Boolean OwnCorrect(const Handle_IGESAppli_LevelFunction &ent) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESAppli_LevelFunction &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESAppli_LevelFunction &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESAppli_LevelFunction &entfrom, const Handle_IGESAppli_LevelFunction &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESAppli_LevelFunction &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%extend IGESAppli_ToolLevelFunction {
	~IGESAppli_ToolLevelFunction() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of IGESAppli_ToolLevelFunction\n");}
	}
};


%nodefaultctor IGESAppli_ToolPinNumber;
class IGESAppli_ToolPinNumber {
	public:
		%feature("autodoc", "1");
		IGESAppli_ToolPinNumber();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESAppli_PinNumber &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESAppli_PinNumber &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESAppli_PinNumber &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		Standard_Boolean OwnCorrect(const Handle_IGESAppli_PinNumber &ent) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESAppli_PinNumber &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESAppli_PinNumber &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESAppli_PinNumber &entfrom, const Handle_IGESAppli_PinNumber &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESAppli_PinNumber &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%extend IGESAppli_ToolPinNumber {
	~IGESAppli_ToolPinNumber() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of IGESAppli_ToolPinNumber\n");}
	}
};


%nodefaultctor IGESAppli_PWBDrilledHole;
class IGESAppli_PWBDrilledHole : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESAppli_PWBDrilledHole();
		%feature("autodoc", "1");
		void Init(const Standard_Integer nbPropVal, const Standard_Real aDrillDia, const Standard_Real aFinishDia, const Standard_Integer aCode);
		%feature("autodoc", "1");
		Standard_Integer NbPropertyValues() const;
		%feature("autodoc", "1");
		Standard_Real DrillDiameterSize() const;
		%feature("autodoc", "1");
		Standard_Real FinishDiameterSize() const;
		%feature("autodoc", "1");
		Standard_Integer FunctionCode() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESAppli_PWBDrilledHole {
	Handle_IGESAppli_PWBDrilledHole GetHandle() {
	return *(Handle_IGESAppli_PWBDrilledHole*) &$self;
	}
};
%extend IGESAppli_PWBDrilledHole {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend IGESAppli_PWBDrilledHole {
	~IGESAppli_PWBDrilledHole() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of IGESAppli_PWBDrilledHole\n");}
	}
};


%nodefaultctor IGESAppli_GeneralModule;
class IGESAppli_GeneralModule : public IGESData_GeneralModule {
	public:
		%feature("autodoc", "1");
		IGESAppli_GeneralModule();
		%feature("autodoc", "1");
		virtual		void OwnSharedCase(const Standard_Integer CN, const Handle_IGESData_IGESEntity &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		virtual		IGESData_DirChecker DirChecker(const Standard_Integer CN, const Handle_IGESData_IGESEntity &ent) const;
		%feature("autodoc", "1");
		virtual		void OwnCheckCase(const Standard_Integer CN, const Handle_IGESData_IGESEntity &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean NewVoid(const Standard_Integer CN, Handle_Standard_Transient & entto) const;
		%feature("autodoc", "1");
		virtual		void OwnCopyCase(const Standard_Integer CN, const Handle_IGESData_IGESEntity &entfrom, const Handle_IGESData_IGESEntity &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer CategoryNumber(const Standard_Integer CN, const Handle_Standard_Transient &ent, const Interface_ShareTool &shares) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESAppli_GeneralModule {
	Handle_IGESAppli_GeneralModule GetHandle() {
	return *(Handle_IGESAppli_GeneralModule*) &$self;
	}
};
%extend IGESAppli_GeneralModule {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend IGESAppli_GeneralModule {
	~IGESAppli_GeneralModule() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of IGESAppli_GeneralModule\n");}
	}
};


%nodefaultctor IGESAppli_ToolPWBDrilledHole;
class IGESAppli_ToolPWBDrilledHole {
	public:
		%feature("autodoc", "1");
		IGESAppli_ToolPWBDrilledHole();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESAppli_PWBDrilledHole &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESAppli_PWBDrilledHole &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESAppli_PWBDrilledHole &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		Standard_Boolean OwnCorrect(const Handle_IGESAppli_PWBDrilledHole &ent) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESAppli_PWBDrilledHole &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESAppli_PWBDrilledHole &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESAppli_PWBDrilledHole &entfrom, const Handle_IGESAppli_PWBDrilledHole &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESAppli_PWBDrilledHole &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%extend IGESAppli_ToolPWBDrilledHole {
	~IGESAppli_ToolPWBDrilledHole() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of IGESAppli_ToolPWBDrilledHole\n");}
	}
};


%nodefaultctor IGESAppli_ToolLineWidening;
class IGESAppli_ToolLineWidening {
	public:
		%feature("autodoc", "1");
		IGESAppli_ToolLineWidening();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESAppli_LineWidening &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESAppli_LineWidening &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESAppli_LineWidening &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		Standard_Boolean OwnCorrect(const Handle_IGESAppli_LineWidening &ent) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESAppli_LineWidening &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESAppli_LineWidening &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESAppli_LineWidening &entfrom, const Handle_IGESAppli_LineWidening &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESAppli_LineWidening &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%extend IGESAppli_ToolLineWidening {
	~IGESAppli_ToolLineWidening() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of IGESAppli_ToolLineWidening\n");}
	}
};


%nodefaultctor IGESAppli_ToolPipingFlow;
class IGESAppli_ToolPipingFlow {
	public:
		%feature("autodoc", "1");
		IGESAppli_ToolPipingFlow();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESAppli_PipingFlow &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESAppli_PipingFlow &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESAppli_PipingFlow &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		Standard_Boolean OwnCorrect(const Handle_IGESAppli_PipingFlow &ent) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESAppli_PipingFlow &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESAppli_PipingFlow &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESAppli_PipingFlow &entfrom, const Handle_IGESAppli_PipingFlow &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESAppli_PipingFlow &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%extend IGESAppli_ToolPipingFlow {
	~IGESAppli_ToolPipingFlow() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of IGESAppli_ToolPipingFlow\n");}
	}
};


%nodefaultctor IGESAppli_Node;
class IGESAppli_Node : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESAppli_Node();
		%feature("autodoc", "1");
		void Init(const gp_XYZ &aCoord, const Handle_IGESGeom_TransformationMatrix &aCoordSystem);
		%feature("autodoc", "1");
		gp_Pnt Coord() const;
		%feature("autodoc", "1");
		Handle_IGESData_TransfEntity System() const;
		%feature("autodoc", "1");
		Standard_Integer SystemType() const;
		%feature("autodoc", "1");
		gp_Pnt TransformedNodalCoord() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESAppli_Node {
	Handle_IGESAppli_Node GetHandle() {
	return *(Handle_IGESAppli_Node*) &$self;
	}
};
%extend IGESAppli_Node {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend IGESAppli_Node {
	~IGESAppli_Node() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of IGESAppli_Node\n");}
	}
};


%nodefaultctor IGESAppli_PartNumber;
class IGESAppli_PartNumber : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESAppli_PartNumber();
		%feature("autodoc", "1");
		void Init(const Standard_Integer nbPropVal, const Handle_TCollection_HAsciiString &aGenName, const Handle_TCollection_HAsciiString &aMilName, const Handle_TCollection_HAsciiString &aVendName, const Handle_TCollection_HAsciiString &anIntName);
		%feature("autodoc", "1");
		Standard_Integer NbPropertyValues() const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString GenericNumber() const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString MilitaryNumber() const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString VendorNumber() const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString InternalNumber() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESAppli_PartNumber {
	Handle_IGESAppli_PartNumber GetHandle() {
	return *(Handle_IGESAppli_PartNumber*) &$self;
	}
};
%extend IGESAppli_PartNumber {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend IGESAppli_PartNumber {
	~IGESAppli_PartNumber() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of IGESAppli_PartNumber\n");}
	}
};


%nodefaultctor IGESAppli_ToolFlow;
class IGESAppli_ToolFlow {
	public:
		%feature("autodoc", "1");
		IGESAppli_ToolFlow();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESAppli_Flow &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESAppli_Flow &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESAppli_Flow &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		Standard_Boolean OwnCorrect(const Handle_IGESAppli_Flow &ent) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESAppli_Flow &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESAppli_Flow &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESAppli_Flow &entfrom, const Handle_IGESAppli_Flow &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESAppli_Flow &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%extend IGESAppli_ToolFlow {
	~IGESAppli_ToolFlow() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of IGESAppli_ToolFlow\n");}
	}
};


%nodefaultctor IGESAppli_ToolPartNumber;
class IGESAppli_ToolPartNumber {
	public:
		%feature("autodoc", "1");
		IGESAppli_ToolPartNumber();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESAppli_PartNumber &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESAppli_PartNumber &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESAppli_PartNumber &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		Standard_Boolean OwnCorrect(const Handle_IGESAppli_PartNumber &ent) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESAppli_PartNumber &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESAppli_PartNumber &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESAppli_PartNumber &entfrom, const Handle_IGESAppli_PartNumber &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESAppli_PartNumber &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%extend IGESAppli_ToolPartNumber {
	~IGESAppli_ToolPartNumber() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of IGESAppli_ToolPartNumber\n");}
	}
};
