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
%module STEPSelections

%include STEPSelections_renames.i

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


%include STEPSelections_dependencies.i


%include STEPSelections_headers.i




%nodefaultctor Handle_STEPSelections_SelectForTransfer;
class Handle_STEPSelections_SelectForTransfer : public Handle_XSControl_SelectForTransfer {
	public:
		%feature("autodoc", "1");
		Handle_STEPSelections_SelectForTransfer();
		%feature("autodoc", "1");
		Handle_STEPSelections_SelectForTransfer(const Handle_STEPSelections_SelectForTransfer &aHandle);
		%feature("autodoc", "1");
		Handle_STEPSelections_SelectForTransfer(const STEPSelections_SelectForTransfer *anItem);
		%feature("autodoc", "1");
		Handle_STEPSelections_SelectForTransfer & operator=(const Handle_STEPSelections_SelectForTransfer &aHandle);
		%feature("autodoc", "1");
		Handle_STEPSelections_SelectForTransfer & operator=(const STEPSelections_SelectForTransfer *anItem);
		%feature("autodoc", "1");
		Handle_STEPSelections_SelectForTransfer const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_STEPSelections_SelectForTransfer {
	STEPSelections_SelectForTransfer* GetObject() {
	return (STEPSelections_SelectForTransfer*)$self->Access();
	}
};
%extend Handle_STEPSelections_SelectForTransfer {
	~Handle_STEPSelections_SelectForTransfer() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_STEPSelections_SelectForTransfer\n");}
	}
};


%nodefaultctor Handle_STEPSelections_AssemblyLink;
class Handle_STEPSelections_AssemblyLink : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_STEPSelections_AssemblyLink();
		%feature("autodoc", "1");
		Handle_STEPSelections_AssemblyLink(const Handle_STEPSelections_AssemblyLink &aHandle);
		%feature("autodoc", "1");
		Handle_STEPSelections_AssemblyLink(const STEPSelections_AssemblyLink *anItem);
		%feature("autodoc", "1");
		Handle_STEPSelections_AssemblyLink & operator=(const Handle_STEPSelections_AssemblyLink &aHandle);
		%feature("autodoc", "1");
		Handle_STEPSelections_AssemblyLink & operator=(const STEPSelections_AssemblyLink *anItem);
		%feature("autodoc", "1");
		Handle_STEPSelections_AssemblyLink const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_STEPSelections_AssemblyLink {
	STEPSelections_AssemblyLink* GetObject() {
	return (STEPSelections_AssemblyLink*)$self->Access();
	}
};
%extend Handle_STEPSelections_AssemblyLink {
	~Handle_STEPSelections_AssemblyLink() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_STEPSelections_AssemblyLink\n");}
	}
};


%nodefaultctor Handle_STEPSelections_SelectGSCurves;
class Handle_STEPSelections_SelectGSCurves : public Handle_IFSelect_SelectExplore {
	public:
		%feature("autodoc", "1");
		Handle_STEPSelections_SelectGSCurves();
		%feature("autodoc", "1");
		Handle_STEPSelections_SelectGSCurves(const Handle_STEPSelections_SelectGSCurves &aHandle);
		%feature("autodoc", "1");
		Handle_STEPSelections_SelectGSCurves(const STEPSelections_SelectGSCurves *anItem);
		%feature("autodoc", "1");
		Handle_STEPSelections_SelectGSCurves & operator=(const Handle_STEPSelections_SelectGSCurves &aHandle);
		%feature("autodoc", "1");
		Handle_STEPSelections_SelectGSCurves & operator=(const STEPSelections_SelectGSCurves *anItem);
		%feature("autodoc", "1");
		Handle_STEPSelections_SelectGSCurves const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_STEPSelections_SelectGSCurves {
	STEPSelections_SelectGSCurves* GetObject() {
	return (STEPSelections_SelectGSCurves*)$self->Access();
	}
};
%extend Handle_STEPSelections_SelectGSCurves {
	~Handle_STEPSelections_SelectGSCurves() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_STEPSelections_SelectGSCurves\n");}
	}
};


%nodefaultctor Handle_STEPSelections_HSequenceOfAssemblyLink;
class Handle_STEPSelections_HSequenceOfAssemblyLink : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_STEPSelections_HSequenceOfAssemblyLink();
		%feature("autodoc", "1");
		Handle_STEPSelections_HSequenceOfAssemblyLink(const Handle_STEPSelections_HSequenceOfAssemblyLink &aHandle);
		%feature("autodoc", "1");
		Handle_STEPSelections_HSequenceOfAssemblyLink(const STEPSelections_HSequenceOfAssemblyLink *anItem);
		%feature("autodoc", "1");
		Handle_STEPSelections_HSequenceOfAssemblyLink & operator=(const Handle_STEPSelections_HSequenceOfAssemblyLink &aHandle);
		%feature("autodoc", "1");
		Handle_STEPSelections_HSequenceOfAssemblyLink & operator=(const STEPSelections_HSequenceOfAssemblyLink *anItem);
		%feature("autodoc", "1");
		Handle_STEPSelections_HSequenceOfAssemblyLink const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_STEPSelections_HSequenceOfAssemblyLink {
	STEPSelections_HSequenceOfAssemblyLink* GetObject() {
	return (STEPSelections_HSequenceOfAssemblyLink*)$self->Access();
	}
};
%extend Handle_STEPSelections_HSequenceOfAssemblyLink {
	~Handle_STEPSelections_HSequenceOfAssemblyLink() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_STEPSelections_HSequenceOfAssemblyLink\n");}
	}
};


%nodefaultctor Handle_STEPSelections_SequenceNodeOfSequenceOfAssemblyComponent;
class Handle_STEPSelections_SequenceNodeOfSequenceOfAssemblyComponent : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_STEPSelections_SequenceNodeOfSequenceOfAssemblyComponent();
		%feature("autodoc", "1");
		Handle_STEPSelections_SequenceNodeOfSequenceOfAssemblyComponent(const Handle_STEPSelections_SequenceNodeOfSequenceOfAssemblyComponent &aHandle);
		%feature("autodoc", "1");
		Handle_STEPSelections_SequenceNodeOfSequenceOfAssemblyComponent(const STEPSelections_SequenceNodeOfSequenceOfAssemblyComponent *anItem);
		%feature("autodoc", "1");
		Handle_STEPSelections_SequenceNodeOfSequenceOfAssemblyComponent & operator=(const Handle_STEPSelections_SequenceNodeOfSequenceOfAssemblyComponent &aHandle);
		%feature("autodoc", "1");
		Handle_STEPSelections_SequenceNodeOfSequenceOfAssemblyComponent & operator=(const STEPSelections_SequenceNodeOfSequenceOfAssemblyComponent *anItem);
		%feature("autodoc", "1");
		Handle_STEPSelections_SequenceNodeOfSequenceOfAssemblyComponent const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_STEPSelections_SequenceNodeOfSequenceOfAssemblyComponent {
	STEPSelections_SequenceNodeOfSequenceOfAssemblyComponent* GetObject() {
	return (STEPSelections_SequenceNodeOfSequenceOfAssemblyComponent*)$self->Access();
	}
};
%extend Handle_STEPSelections_SequenceNodeOfSequenceOfAssemblyComponent {
	~Handle_STEPSelections_SequenceNodeOfSequenceOfAssemblyComponent() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_STEPSelections_SequenceNodeOfSequenceOfAssemblyComponent\n");}
	}
};


%nodefaultctor Handle_STEPSelections_SelectDerived;
class Handle_STEPSelections_SelectDerived : public Handle_StepSelect_StepType {
	public:
		%feature("autodoc", "1");
		Handle_STEPSelections_SelectDerived();
		%feature("autodoc", "1");
		Handle_STEPSelections_SelectDerived(const Handle_STEPSelections_SelectDerived &aHandle);
		%feature("autodoc", "1");
		Handle_STEPSelections_SelectDerived(const STEPSelections_SelectDerived *anItem);
		%feature("autodoc", "1");
		Handle_STEPSelections_SelectDerived & operator=(const Handle_STEPSelections_SelectDerived &aHandle);
		%feature("autodoc", "1");
		Handle_STEPSelections_SelectDerived & operator=(const STEPSelections_SelectDerived *anItem);
		%feature("autodoc", "1");
		Handle_STEPSelections_SelectDerived const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_STEPSelections_SelectDerived {
	STEPSelections_SelectDerived* GetObject() {
	return (STEPSelections_SelectDerived*)$self->Access();
	}
};
%extend Handle_STEPSelections_SelectDerived {
	~Handle_STEPSelections_SelectDerived() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_STEPSelections_SelectDerived\n");}
	}
};


%nodefaultctor Handle_STEPSelections_SelectInstances;
class Handle_STEPSelections_SelectInstances : public Handle_IFSelect_SelectExplore {
	public:
		%feature("autodoc", "1");
		Handle_STEPSelections_SelectInstances();
		%feature("autodoc", "1");
		Handle_STEPSelections_SelectInstances(const Handle_STEPSelections_SelectInstances &aHandle);
		%feature("autodoc", "1");
		Handle_STEPSelections_SelectInstances(const STEPSelections_SelectInstances *anItem);
		%feature("autodoc", "1");
		Handle_STEPSelections_SelectInstances & operator=(const Handle_STEPSelections_SelectInstances &aHandle);
		%feature("autodoc", "1");
		Handle_STEPSelections_SelectInstances & operator=(const STEPSelections_SelectInstances *anItem);
		%feature("autodoc", "1");
		Handle_STEPSelections_SelectInstances const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_STEPSelections_SelectInstances {
	STEPSelections_SelectInstances* GetObject() {
	return (STEPSelections_SelectInstances*)$self->Access();
	}
};
%extend Handle_STEPSelections_SelectInstances {
	~Handle_STEPSelections_SelectInstances() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_STEPSelections_SelectInstances\n");}
	}
};


%nodefaultctor Handle_STEPSelections_SelectAssembly;
class Handle_STEPSelections_SelectAssembly : public Handle_IFSelect_SelectExplore {
	public:
		%feature("autodoc", "1");
		Handle_STEPSelections_SelectAssembly();
		%feature("autodoc", "1");
		Handle_STEPSelections_SelectAssembly(const Handle_STEPSelections_SelectAssembly &aHandle);
		%feature("autodoc", "1");
		Handle_STEPSelections_SelectAssembly(const STEPSelections_SelectAssembly *anItem);
		%feature("autodoc", "1");
		Handle_STEPSelections_SelectAssembly & operator=(const Handle_STEPSelections_SelectAssembly &aHandle);
		%feature("autodoc", "1");
		Handle_STEPSelections_SelectAssembly & operator=(const STEPSelections_SelectAssembly *anItem);
		%feature("autodoc", "1");
		Handle_STEPSelections_SelectAssembly const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_STEPSelections_SelectAssembly {
	STEPSelections_SelectAssembly* GetObject() {
	return (STEPSelections_SelectAssembly*)$self->Access();
	}
};
%extend Handle_STEPSelections_SelectAssembly {
	~Handle_STEPSelections_SelectAssembly() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_STEPSelections_SelectAssembly\n");}
	}
};


%nodefaultctor Handle_STEPSelections_AssemblyComponent;
class Handle_STEPSelections_AssemblyComponent : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_STEPSelections_AssemblyComponent();
		%feature("autodoc", "1");
		Handle_STEPSelections_AssemblyComponent(const Handle_STEPSelections_AssemblyComponent &aHandle);
		%feature("autodoc", "1");
		Handle_STEPSelections_AssemblyComponent(const STEPSelections_AssemblyComponent *anItem);
		%feature("autodoc", "1");
		Handle_STEPSelections_AssemblyComponent & operator=(const Handle_STEPSelections_AssemblyComponent &aHandle);
		%feature("autodoc", "1");
		Handle_STEPSelections_AssemblyComponent & operator=(const STEPSelections_AssemblyComponent *anItem);
		%feature("autodoc", "1");
		Handle_STEPSelections_AssemblyComponent const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_STEPSelections_AssemblyComponent {
	STEPSelections_AssemblyComponent* GetObject() {
	return (STEPSelections_AssemblyComponent*)$self->Access();
	}
};
%extend Handle_STEPSelections_AssemblyComponent {
	~Handle_STEPSelections_AssemblyComponent() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_STEPSelections_AssemblyComponent\n");}
	}
};


%nodefaultctor Handle_STEPSelections_SelectFaces;
class Handle_STEPSelections_SelectFaces : public Handle_IFSelect_SelectExplore {
	public:
		%feature("autodoc", "1");
		Handle_STEPSelections_SelectFaces();
		%feature("autodoc", "1");
		Handle_STEPSelections_SelectFaces(const Handle_STEPSelections_SelectFaces &aHandle);
		%feature("autodoc", "1");
		Handle_STEPSelections_SelectFaces(const STEPSelections_SelectFaces *anItem);
		%feature("autodoc", "1");
		Handle_STEPSelections_SelectFaces & operator=(const Handle_STEPSelections_SelectFaces &aHandle);
		%feature("autodoc", "1");
		Handle_STEPSelections_SelectFaces & operator=(const STEPSelections_SelectFaces *anItem);
		%feature("autodoc", "1");
		Handle_STEPSelections_SelectFaces const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_STEPSelections_SelectFaces {
	STEPSelections_SelectFaces* GetObject() {
	return (STEPSelections_SelectFaces*)$self->Access();
	}
};
%extend Handle_STEPSelections_SelectFaces {
	~Handle_STEPSelections_SelectFaces() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_STEPSelections_SelectFaces\n");}
	}
};


%nodefaultctor Handle_STEPSelections_SequenceNodeOfSequenceOfAssemblyLink;
class Handle_STEPSelections_SequenceNodeOfSequenceOfAssemblyLink : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_STEPSelections_SequenceNodeOfSequenceOfAssemblyLink();
		%feature("autodoc", "1");
		Handle_STEPSelections_SequenceNodeOfSequenceOfAssemblyLink(const Handle_STEPSelections_SequenceNodeOfSequenceOfAssemblyLink &aHandle);
		%feature("autodoc", "1");
		Handle_STEPSelections_SequenceNodeOfSequenceOfAssemblyLink(const STEPSelections_SequenceNodeOfSequenceOfAssemblyLink *anItem);
		%feature("autodoc", "1");
		Handle_STEPSelections_SequenceNodeOfSequenceOfAssemblyLink & operator=(const Handle_STEPSelections_SequenceNodeOfSequenceOfAssemblyLink &aHandle);
		%feature("autodoc", "1");
		Handle_STEPSelections_SequenceNodeOfSequenceOfAssemblyLink & operator=(const STEPSelections_SequenceNodeOfSequenceOfAssemblyLink *anItem);
		%feature("autodoc", "1");
		Handle_STEPSelections_SequenceNodeOfSequenceOfAssemblyLink const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_STEPSelections_SequenceNodeOfSequenceOfAssemblyLink {
	STEPSelections_SequenceNodeOfSequenceOfAssemblyLink* GetObject() {
	return (STEPSelections_SequenceNodeOfSequenceOfAssemblyLink*)$self->Access();
	}
};
%extend Handle_STEPSelections_SequenceNodeOfSequenceOfAssemblyLink {
	~Handle_STEPSelections_SequenceNodeOfSequenceOfAssemblyLink() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_STEPSelections_SequenceNodeOfSequenceOfAssemblyLink\n");}
	}
};


%nodefaultctor STEPSelections_AssemblyExplorer;
class STEPSelections_AssemblyExplorer {
	public:
		%feature("autodoc", "1");
		STEPSelections_AssemblyExplorer(const Interface_Graph &G);
		%feature("autodoc", "1");
		void Init(const Interface_Graph &G);
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		Handle_StepShape_ShapeDefinitionRepresentation FindSDRWithProduct(const Handle_StepBasic_ProductDefinition &product) const;
		%feature("autodoc", "1");
		void FillListWithGraph(const Handle_STEPSelections_AssemblyComponent &cmp);
		%feature("autodoc", "1");
		Handle_Standard_Transient FindItemWithNAUO(const Handle_StepRepr_NextAssemblyUsageOccurrence &nauo) const;
		%feature("autodoc", "1");
		Standard_Integer NbAssemblies() const;
		%feature("autodoc", "1");
		Handle_STEPSelections_AssemblyComponent Root(const Standard_Integer rank=1) const;

};
%extend STEPSelections_AssemblyExplorer {
	~STEPSelections_AssemblyExplorer() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of STEPSelections_AssemblyExplorer\n");}
	}
};


%nodefaultctor STEPSelections_AssemblyComponent;
class STEPSelections_AssemblyComponent : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		STEPSelections_AssemblyComponent();
		%feature("autodoc", "1");
		STEPSelections_AssemblyComponent(const Handle_StepShape_ShapeDefinitionRepresentation &sdr, const Handle_STEPSelections_HSequenceOfAssemblyLink &list);
		%feature("autodoc", "1");
		Handle_StepShape_ShapeDefinitionRepresentation GetSDR() const;
		%feature("autodoc", "1");
		Handle_STEPSelections_HSequenceOfAssemblyLink GetList() const;
		%feature("autodoc", "1");
		void SetSDR(const Handle_StepShape_ShapeDefinitionRepresentation &sdr);
		%feature("autodoc", "1");
		void SetList(const Handle_STEPSelections_HSequenceOfAssemblyLink &list);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend STEPSelections_AssemblyComponent {
	Handle_STEPSelections_AssemblyComponent GetHandle() {
	return *(Handle_STEPSelections_AssemblyComponent*) &$self;
	}
};
%extend STEPSelections_AssemblyComponent {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend STEPSelections_AssemblyComponent {
	~STEPSelections_AssemblyComponent() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of STEPSelections_AssemblyComponent\n");}
	}
};


%nodefaultctor STEPSelections_HSequenceOfAssemblyLink;
class STEPSelections_HSequenceOfAssemblyLink : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		STEPSelections_HSequenceOfAssemblyLink();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const Handle_STEPSelections_AssemblyLink &anItem);
		%feature("autodoc", "1");
		void Append(const Handle_STEPSelections_HSequenceOfAssemblyLink &aSequence);
		%feature("autodoc", "1");
		void Prepend(const Handle_STEPSelections_AssemblyLink &anItem);
		%feature("autodoc", "1");
		void Prepend(const Handle_STEPSelections_HSequenceOfAssemblyLink &aSequence);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_STEPSelections_AssemblyLink &anItem);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_STEPSelections_HSequenceOfAssemblyLink &aSequence);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_STEPSelections_AssemblyLink &anItem);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_STEPSelections_HSequenceOfAssemblyLink &aSequence);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer anIndex, const Standard_Integer anOtherIndex);
		%feature("autodoc", "1");
		Handle_STEPSelections_HSequenceOfAssemblyLink Split(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer anIndex, const Handle_STEPSelections_AssemblyLink &anItem);
		%feature("autodoc", "1");
		const Handle_STEPSelections_AssemblyLink & Value(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		Handle_STEPSelections_AssemblyLink & ChangeValue(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer fromIndex, const Standard_Integer toIndex);
		%feature("autodoc", "1");
		const STEPSelections_SequenceOfAssemblyLink & Sequence() const;
		%feature("autodoc", "1");
		STEPSelections_SequenceOfAssemblyLink & ChangeSequence();
		%feature("autodoc", "1");
		Handle_STEPSelections_HSequenceOfAssemblyLink ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend STEPSelections_HSequenceOfAssemblyLink {
	Handle_STEPSelections_HSequenceOfAssemblyLink GetHandle() {
	return *(Handle_STEPSelections_HSequenceOfAssemblyLink*) &$self;
	}
};
%extend STEPSelections_HSequenceOfAssemblyLink {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend STEPSelections_HSequenceOfAssemblyLink {
	~STEPSelections_HSequenceOfAssemblyLink() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of STEPSelections_HSequenceOfAssemblyLink\n");}
	}
};


%nodefaultctor STEPSelections_SelectForTransfer;
class STEPSelections_SelectForTransfer : public XSControl_SelectForTransfer {
	public:
		%feature("autodoc", "1");
		STEPSelections_SelectForTransfer();
		%feature("autodoc", "1");
		STEPSelections_SelectForTransfer(const Handle_XSControl_TransferReader &TR);
		%feature("autodoc", "1");
		virtual		Interface_EntityIterator RootResult(const Interface_Graph &G) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend STEPSelections_SelectForTransfer {
	Handle_STEPSelections_SelectForTransfer GetHandle() {
	return *(Handle_STEPSelections_SelectForTransfer*) &$self;
	}
};
%extend STEPSelections_SelectForTransfer {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend STEPSelections_SelectForTransfer {
	~STEPSelections_SelectForTransfer() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of STEPSelections_SelectForTransfer\n");}
	}
};


%nodefaultctor STEPSelections_SequenceNodeOfSequenceOfAssemblyComponent;
class STEPSelections_SequenceNodeOfSequenceOfAssemblyComponent : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		STEPSelections_SequenceNodeOfSequenceOfAssemblyComponent(const Handle_STEPSelections_AssemblyComponent &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_STEPSelections_AssemblyComponent & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend STEPSelections_SequenceNodeOfSequenceOfAssemblyComponent {
	Handle_STEPSelections_SequenceNodeOfSequenceOfAssemblyComponent GetHandle() {
	return *(Handle_STEPSelections_SequenceNodeOfSequenceOfAssemblyComponent*) &$self;
	}
};
%extend STEPSelections_SequenceNodeOfSequenceOfAssemblyComponent {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend STEPSelections_SequenceNodeOfSequenceOfAssemblyComponent {
	~STEPSelections_SequenceNodeOfSequenceOfAssemblyComponent() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of STEPSelections_SequenceNodeOfSequenceOfAssemblyComponent\n");}
	}
};


%nodefaultctor STEPSelections_SequenceNodeOfSequenceOfAssemblyLink;
class STEPSelections_SequenceNodeOfSequenceOfAssemblyLink : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		STEPSelections_SequenceNodeOfSequenceOfAssemblyLink(const Handle_STEPSelections_AssemblyLink &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_STEPSelections_AssemblyLink & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend STEPSelections_SequenceNodeOfSequenceOfAssemblyLink {
	Handle_STEPSelections_SequenceNodeOfSequenceOfAssemblyLink GetHandle() {
	return *(Handle_STEPSelections_SequenceNodeOfSequenceOfAssemblyLink*) &$self;
	}
};
%extend STEPSelections_SequenceNodeOfSequenceOfAssemblyLink {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend STEPSelections_SequenceNodeOfSequenceOfAssemblyLink {
	~STEPSelections_SequenceNodeOfSequenceOfAssemblyLink() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of STEPSelections_SequenceNodeOfSequenceOfAssemblyLink\n");}
	}
};


%nodefaultctor STEPSelections_Counter;
class STEPSelections_Counter {
	public:
		%feature("autodoc", "1");
		STEPSelections_Counter();
		%feature("autodoc", "1");
		void Count(const Interface_Graph &graph, const Handle_Standard_Transient &start);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer NbInstancesOfFaces() const;
		%feature("autodoc", "1");
		Standard_Integer NbInstancesOfShells() const;
		%feature("autodoc", "1");
		Standard_Integer NbInstancesOfSolids() const;
		%feature("autodoc", "1");
		Standard_Integer NbInstancesOfEdges() const;
		%feature("autodoc", "1");
		Standard_Integer NbInstancesOfWires() const;
		%feature("autodoc", "1");
		Standard_Integer NbSourceFaces() const;
		%feature("autodoc", "1");
		Standard_Integer NbSourceShells() const;
		%feature("autodoc", "1");
		Standard_Integer NbSourceSolids() const;
		%feature("autodoc", "1");
		Standard_Integer NbSourceEdges() const;
		%feature("autodoc", "1");
		Standard_Integer NbSourceWires() const;

};
%extend STEPSelections_Counter {
	~STEPSelections_Counter() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of STEPSelections_Counter\n");}
	}
};


%nodefaultctor STEPSelections_SelectDerived;
class STEPSelections_SelectDerived : public StepSelect_StepType {
	public:
		%feature("autodoc", "1");
		STEPSelections_SelectDerived();
		%feature("autodoc", "1");
		virtual		Standard_Boolean Matches(const Handle_Standard_Transient &ent, const Handle_Interface_InterfaceModel &model, const TCollection_AsciiString &text, const Standard_Boolean exact) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend STEPSelections_SelectDerived {
	Handle_STEPSelections_SelectDerived GetHandle() {
	return *(Handle_STEPSelections_SelectDerived*) &$self;
	}
};
%extend STEPSelections_SelectDerived {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend STEPSelections_SelectDerived {
	~STEPSelections_SelectDerived() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of STEPSelections_SelectDerived\n");}
	}
};


%nodefaultctor STEPSelections_SelectGSCurves;
class STEPSelections_SelectGSCurves : public IFSelect_SelectExplore {
	public:
		%feature("autodoc", "1");
		STEPSelections_SelectGSCurves();
		%feature("autodoc", "1");
		virtual		Standard_Boolean Explore(const Standard_Integer level, const Handle_Standard_Transient &ent, const Interface_Graph &G, Interface_EntityIterator & explored) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString ExploreLabel() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend STEPSelections_SelectGSCurves {
	Handle_STEPSelections_SelectGSCurves GetHandle() {
	return *(Handle_STEPSelections_SelectGSCurves*) &$self;
	}
};
%extend STEPSelections_SelectGSCurves {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend STEPSelections_SelectGSCurves {
	~STEPSelections_SelectGSCurves() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of STEPSelections_SelectGSCurves\n");}
	}
};


%nodefaultctor STEPSelections_SequenceOfAssemblyComponent;
class STEPSelections_SequenceOfAssemblyComponent : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		STEPSelections_SequenceOfAssemblyComponent();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const STEPSelections_SequenceOfAssemblyComponent & Assign(const STEPSelections_SequenceOfAssemblyComponent &Other);
		%feature("autodoc", "1");
		const STEPSelections_SequenceOfAssemblyComponent & operator=(const STEPSelections_SequenceOfAssemblyComponent &Other);
		%feature("autodoc", "1");
		void Append(const Handle_STEPSelections_AssemblyComponent &T);
		%feature("autodoc", "1");
		void Append(STEPSelections_SequenceOfAssemblyComponent & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_STEPSelections_AssemblyComponent &T);
		%feature("autodoc", "1");
		void Prepend(STEPSelections_SequenceOfAssemblyComponent & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_STEPSelections_AssemblyComponent &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, STEPSelections_SequenceOfAssemblyComponent & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_STEPSelections_AssemblyComponent &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, STEPSelections_SequenceOfAssemblyComponent & S);
		%feature("autodoc", "1");
		const Handle_STEPSelections_AssemblyComponent & First() const;
		%feature("autodoc", "1");
		const Handle_STEPSelections_AssemblyComponent & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, STEPSelections_SequenceOfAssemblyComponent & S);
		%feature("autodoc", "1");
		const Handle_STEPSelections_AssemblyComponent & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_STEPSelections_AssemblyComponent & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_STEPSelections_AssemblyComponent &I);
		%feature("autodoc", "1");
		Handle_STEPSelections_AssemblyComponent & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_STEPSelections_AssemblyComponent & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%extend STEPSelections_SequenceOfAssemblyComponent {
	~STEPSelections_SequenceOfAssemblyComponent() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of STEPSelections_SequenceOfAssemblyComponent\n");}
	}
};


%nodefaultctor STEPSelections_SequenceOfAssemblyLink;
class STEPSelections_SequenceOfAssemblyLink : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		STEPSelections_SequenceOfAssemblyLink();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const STEPSelections_SequenceOfAssemblyLink & Assign(const STEPSelections_SequenceOfAssemblyLink &Other);
		%feature("autodoc", "1");
		const STEPSelections_SequenceOfAssemblyLink & operator=(const STEPSelections_SequenceOfAssemblyLink &Other);
		%feature("autodoc", "1");
		void Append(const Handle_STEPSelections_AssemblyLink &T);
		%feature("autodoc", "1");
		void Append(STEPSelections_SequenceOfAssemblyLink & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_STEPSelections_AssemblyLink &T);
		%feature("autodoc", "1");
		void Prepend(STEPSelections_SequenceOfAssemblyLink & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_STEPSelections_AssemblyLink &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, STEPSelections_SequenceOfAssemblyLink & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_STEPSelections_AssemblyLink &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, STEPSelections_SequenceOfAssemblyLink & S);
		%feature("autodoc", "1");
		const Handle_STEPSelections_AssemblyLink & First() const;
		%feature("autodoc", "1");
		const Handle_STEPSelections_AssemblyLink & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, STEPSelections_SequenceOfAssemblyLink & S);
		%feature("autodoc", "1");
		const Handle_STEPSelections_AssemblyLink & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_STEPSelections_AssemblyLink & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_STEPSelections_AssemblyLink &I);
		%feature("autodoc", "1");
		Handle_STEPSelections_AssemblyLink & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_STEPSelections_AssemblyLink & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%extend STEPSelections_SequenceOfAssemblyLink {
	~STEPSelections_SequenceOfAssemblyLink() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of STEPSelections_SequenceOfAssemblyLink\n");}
	}
};


%nodefaultctor STEPSelections_SelectInstances;
class STEPSelections_SelectInstances : public IFSelect_SelectExplore {
	public:
		%feature("autodoc", "1");
		STEPSelections_SelectInstances();
		%feature("autodoc", "1");
		virtual		Interface_EntityIterator RootResult(const Interface_Graph &G) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Explore(const Standard_Integer level, const Handle_Standard_Transient &ent, const Interface_Graph &G, Interface_EntityIterator & explored) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString ExploreLabel() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend STEPSelections_SelectInstances {
	Handle_STEPSelections_SelectInstances GetHandle() {
	return *(Handle_STEPSelections_SelectInstances*) &$self;
	}
};
%extend STEPSelections_SelectInstances {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend STEPSelections_SelectInstances {
	~STEPSelections_SelectInstances() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of STEPSelections_SelectInstances\n");}
	}
};


%nodefaultctor STEPSelections_SelectAssembly;
class STEPSelections_SelectAssembly : public IFSelect_SelectExplore {
	public:
		%feature("autodoc", "1");
		STEPSelections_SelectAssembly();
		%feature("autodoc", "1");
		virtual		Standard_Boolean Explore(const Standard_Integer level, const Handle_Standard_Transient &ent, const Interface_Graph &G, Interface_EntityIterator & explored) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString ExploreLabel() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend STEPSelections_SelectAssembly {
	Handle_STEPSelections_SelectAssembly GetHandle() {
	return *(Handle_STEPSelections_SelectAssembly*) &$self;
	}
};
%extend STEPSelections_SelectAssembly {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend STEPSelections_SelectAssembly {
	~STEPSelections_SelectAssembly() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of STEPSelections_SelectAssembly\n");}
	}
};


%nodefaultctor STEPSelections_AssemblyLink;
class STEPSelections_AssemblyLink : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		STEPSelections_AssemblyLink();
		%feature("autodoc", "1");
		STEPSelections_AssemblyLink(const Handle_StepRepr_NextAssemblyUsageOccurrence &nauo, const Handle_Standard_Transient &item, const Handle_STEPSelections_AssemblyComponent &part);
		%feature("autodoc", "1");
		Handle_StepRepr_NextAssemblyUsageOccurrence GetNAUO() const;
		%feature("autodoc", "1");
		Handle_Standard_Transient GetItem() const;
		%feature("autodoc", "1");
		Handle_STEPSelections_AssemblyComponent GetComponent() const;
		%feature("autodoc", "1");
		void SetNAUO(const Handle_StepRepr_NextAssemblyUsageOccurrence &nauo);
		%feature("autodoc", "1");
		void SetItem(const Handle_Standard_Transient &item);
		%feature("autodoc", "1");
		void SetComponent(const Handle_STEPSelections_AssemblyComponent &part);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend STEPSelections_AssemblyLink {
	Handle_STEPSelections_AssemblyLink GetHandle() {
	return *(Handle_STEPSelections_AssemblyLink*) &$self;
	}
};
%extend STEPSelections_AssemblyLink {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend STEPSelections_AssemblyLink {
	~STEPSelections_AssemblyLink() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of STEPSelections_AssemblyLink\n");}
	}
};


%nodefaultctor STEPSelections_SelectFaces;
class STEPSelections_SelectFaces : public IFSelect_SelectExplore {
	public:
		%feature("autodoc", "1");
		STEPSelections_SelectFaces();
		%feature("autodoc", "1");
		virtual		Standard_Boolean Explore(const Standard_Integer level, const Handle_Standard_Transient &ent, const Interface_Graph &G, Interface_EntityIterator & explored) const;
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString ExploreLabel() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend STEPSelections_SelectFaces {
	Handle_STEPSelections_SelectFaces GetHandle() {
	return *(Handle_STEPSelections_SelectFaces*) &$self;
	}
};
%extend STEPSelections_SelectFaces {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend STEPSelections_SelectFaces {
	~STEPSelections_SelectFaces() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of STEPSelections_SelectFaces\n");}
	}
};
