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
%module STEPSelections

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
		Handle_STEPSelections_SelectForTransfer const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_STEPSelections_SelectForTransfer {
	STEPSelections_SelectForTransfer* GetObject() {
	return (STEPSelections_SelectForTransfer*)$self->Access();
	}
};
%extend Handle_STEPSelections_SelectForTransfer {
	~Handle_STEPSelections_SelectForTransfer() {
	printf("Call custom destructor for instance of Handle_STEPSelections_SelectForTransfer\n");
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
		Handle_STEPSelections_AssemblyLink const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_STEPSelections_AssemblyLink {
	STEPSelections_AssemblyLink* GetObject() {
	return (STEPSelections_AssemblyLink*)$self->Access();
	}
};
%extend Handle_STEPSelections_AssemblyLink {
	~Handle_STEPSelections_AssemblyLink() {
	printf("Call custom destructor for instance of Handle_STEPSelections_AssemblyLink\n");
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
		Handle_STEPSelections_SelectGSCurves const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_STEPSelections_SelectGSCurves {
	STEPSelections_SelectGSCurves* GetObject() {
	return (STEPSelections_SelectGSCurves*)$self->Access();
	}
};
%extend Handle_STEPSelections_SelectGSCurves {
	~Handle_STEPSelections_SelectGSCurves() {
	printf("Call custom destructor for instance of Handle_STEPSelections_SelectGSCurves\n");
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
		Handle_STEPSelections_HSequenceOfAssemblyLink const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_STEPSelections_HSequenceOfAssemblyLink {
	STEPSelections_HSequenceOfAssemblyLink* GetObject() {
	return (STEPSelections_HSequenceOfAssemblyLink*)$self->Access();
	}
};
%extend Handle_STEPSelections_HSequenceOfAssemblyLink {
	~Handle_STEPSelections_HSequenceOfAssemblyLink() {
	printf("Call custom destructor for instance of Handle_STEPSelections_HSequenceOfAssemblyLink\n");
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
		Handle_STEPSelections_SequenceNodeOfSequenceOfAssemblyComponent const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_STEPSelections_SequenceNodeOfSequenceOfAssemblyComponent {
	STEPSelections_SequenceNodeOfSequenceOfAssemblyComponent* GetObject() {
	return (STEPSelections_SequenceNodeOfSequenceOfAssemblyComponent*)$self->Access();
	}
};
%extend Handle_STEPSelections_SequenceNodeOfSequenceOfAssemblyComponent {
	~Handle_STEPSelections_SequenceNodeOfSequenceOfAssemblyComponent() {
	printf("Call custom destructor for instance of Handle_STEPSelections_SequenceNodeOfSequenceOfAssemblyComponent\n");
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
		Handle_STEPSelections_SelectDerived const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_STEPSelections_SelectDerived {
	STEPSelections_SelectDerived* GetObject() {
	return (STEPSelections_SelectDerived*)$self->Access();
	}
};
%extend Handle_STEPSelections_SelectDerived {
	~Handle_STEPSelections_SelectDerived() {
	printf("Call custom destructor for instance of Handle_STEPSelections_SelectDerived\n");
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
		Handle_STEPSelections_SelectInstances const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_STEPSelections_SelectInstances {
	STEPSelections_SelectInstances* GetObject() {
	return (STEPSelections_SelectInstances*)$self->Access();
	}
};
%extend Handle_STEPSelections_SelectInstances {
	~Handle_STEPSelections_SelectInstances() {
	printf("Call custom destructor for instance of Handle_STEPSelections_SelectInstances\n");
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
		Handle_STEPSelections_SelectAssembly const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_STEPSelections_SelectAssembly {
	STEPSelections_SelectAssembly* GetObject() {
	return (STEPSelections_SelectAssembly*)$self->Access();
	}
};
%extend Handle_STEPSelections_SelectAssembly {
	~Handle_STEPSelections_SelectAssembly() {
	printf("Call custom destructor for instance of Handle_STEPSelections_SelectAssembly\n");
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
		Handle_STEPSelections_AssemblyComponent const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_STEPSelections_AssemblyComponent {
	STEPSelections_AssemblyComponent* GetObject() {
	return (STEPSelections_AssemblyComponent*)$self->Access();
	}
};
%extend Handle_STEPSelections_AssemblyComponent {
	~Handle_STEPSelections_AssemblyComponent() {
	printf("Call custom destructor for instance of Handle_STEPSelections_AssemblyComponent\n");
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
		Handle_STEPSelections_SelectFaces const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_STEPSelections_SelectFaces {
	STEPSelections_SelectFaces* GetObject() {
	return (STEPSelections_SelectFaces*)$self->Access();
	}
};
%extend Handle_STEPSelections_SelectFaces {
	~Handle_STEPSelections_SelectFaces() {
	printf("Call custom destructor for instance of Handle_STEPSelections_SelectFaces\n");
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
		Handle_STEPSelections_SequenceNodeOfSequenceOfAssemblyLink const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_STEPSelections_SequenceNodeOfSequenceOfAssemblyLink {
	STEPSelections_SequenceNodeOfSequenceOfAssemblyLink* GetObject() {
	return (STEPSelections_SequenceNodeOfSequenceOfAssemblyLink*)$self->Access();
	}
};
%extend Handle_STEPSelections_SequenceNodeOfSequenceOfAssemblyLink {
	~Handle_STEPSelections_SequenceNodeOfSequenceOfAssemblyLink() {
	printf("Call custom destructor for instance of Handle_STEPSelections_SequenceNodeOfSequenceOfAssemblyLink\n");
	}
};

%nodefaultctor STEPSelections_AssemblyExplorer;
class STEPSelections_AssemblyExplorer {
	public:
		%feature("autodoc", "1");
		~STEPSelections_AssemblyExplorer();
		%feature("autodoc", "1");
		STEPSelections_AssemblyExplorer(const Interface_Graph &G);
		%feature("autodoc", "1");
		void Init(const Interface_Graph &G);
		%feature("autodoc", "1");
		void Dump(Standard_OStream & os) const;
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
	~STEPSelections_AssemblyComponent() {
	printf("Call custom destructor for instance of STEPSelections_AssemblyComponent\n");
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
	~STEPSelections_HSequenceOfAssemblyLink() {
	printf("Call custom destructor for instance of STEPSelections_HSequenceOfAssemblyLink\n");
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
	~STEPSelections_SelectForTransfer() {
	printf("Call custom destructor for instance of STEPSelections_SelectForTransfer\n");
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
	~STEPSelections_SequenceNodeOfSequenceOfAssemblyComponent() {
	printf("Call custom destructor for instance of STEPSelections_SequenceNodeOfSequenceOfAssemblyComponent\n");
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
	~STEPSelections_SequenceNodeOfSequenceOfAssemblyLink() {
	printf("Call custom destructor for instance of STEPSelections_SequenceNodeOfSequenceOfAssemblyLink\n");
	}
};

%nodefaultctor STEPSelections_Counter;
class STEPSelections_Counter {
	public:
		%feature("autodoc", "1");
		~STEPSelections_Counter();
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
	~STEPSelections_SelectDerived() {
	printf("Call custom destructor for instance of STEPSelections_SelectDerived\n");
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
	~STEPSelections_SelectGSCurves() {
	printf("Call custom destructor for instance of STEPSelections_SelectGSCurves\n");
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
		~STEPSelections_SequenceOfAssemblyComponent();
		%feature("autodoc", "1");
		const STEPSelections_SequenceOfAssemblyComponent & Assign(const STEPSelections_SequenceOfAssemblyComponent &Other);
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

%nodefaultctor STEPSelections_SequenceOfAssemblyLink;
class STEPSelections_SequenceOfAssemblyLink : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		STEPSelections_SequenceOfAssemblyLink();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~STEPSelections_SequenceOfAssemblyLink();
		%feature("autodoc", "1");
		const STEPSelections_SequenceOfAssemblyLink & Assign(const STEPSelections_SequenceOfAssemblyLink &Other);
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
	~STEPSelections_SelectInstances() {
	printf("Call custom destructor for instance of STEPSelections_SelectInstances\n");
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
	~STEPSelections_SelectAssembly() {
	printf("Call custom destructor for instance of STEPSelections_SelectAssembly\n");
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
	~STEPSelections_AssemblyLink() {
	printf("Call custom destructor for instance of STEPSelections_AssemblyLink\n");
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
	~STEPSelections_SelectFaces() {
	printf("Call custom destructor for instance of STEPSelections_SelectFaces\n");
	}
};