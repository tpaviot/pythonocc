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
%module SelectMgr

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


%include SelectMgr_dependencies.i


%include SelectMgr_headers.i

typedef NCollection_BaseCollection<SelectMgr_SequenceOfOwner> SelectMgr_CollectionOfSequenceOfOwner;
typedef SelectMgr_SelectableObject * SelectMgr_SOPtr;
typedef NCollection_DataMap<Handle_SelectMgr_SelectableObject, SelectMgr_SequenceOfOwner> SelectMgr_DataMapOfObjectOwners;

enum SelectMgr_StateOfSelection {
	SelectMgr_SOS_Activated,
	SelectMgr_SOS_Deactivated,
	SelectMgr_SOS_Sleeping,
	SelectMgr_SOS_Any,
	SelectMgr_SOS_Unknown,
	};

enum SelectMgr_TypeOfUpdate {
	SelectMgr_TOU_Full,
	SelectMgr_TOU_Partial,
	SelectMgr_TOU_None,
	};



%nodefaultctor Handle_SelectMgr_Filter;
class Handle_SelectMgr_Filter : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_SelectMgr_Filter();
		%feature("autodoc", "1");
		Handle_SelectMgr_Filter(const Handle_SelectMgr_Filter &aHandle);
		%feature("autodoc", "1");
		Handle_SelectMgr_Filter(const SelectMgr_Filter *anItem);
		%feature("autodoc", "1");
		Handle_SelectMgr_Filter const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_SelectMgr_Filter {
	SelectMgr_Filter* GetObject() {
	return (SelectMgr_Filter*)$self->Access();
	}
};
%extend Handle_SelectMgr_Filter {
	~Handle_SelectMgr_Filter() {
	printf("Call custom destructor for instance of Handle_SelectMgr_Filter\n");
	}
};

%nodefaultctor Handle_SelectMgr_CompositionFilter;
class Handle_SelectMgr_CompositionFilter : public Handle_SelectMgr_Filter {
	public:
		%feature("autodoc", "1");
		Handle_SelectMgr_CompositionFilter();
		%feature("autodoc", "1");
		Handle_SelectMgr_CompositionFilter(const Handle_SelectMgr_CompositionFilter &aHandle);
		%feature("autodoc", "1");
		Handle_SelectMgr_CompositionFilter(const SelectMgr_CompositionFilter *anItem);
		%feature("autodoc", "1");
		Handle_SelectMgr_CompositionFilter const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_SelectMgr_CompositionFilter {
	SelectMgr_CompositionFilter* GetObject() {
	return (SelectMgr_CompositionFilter*)$self->Access();
	}
};
%extend Handle_SelectMgr_CompositionFilter {
	~Handle_SelectMgr_CompositionFilter() {
	printf("Call custom destructor for instance of Handle_SelectMgr_CompositionFilter\n");
	}
};

%nodefaultctor Handle_SelectMgr_SelectionManager;
class Handle_SelectMgr_SelectionManager : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_SelectMgr_SelectionManager();
		%feature("autodoc", "1");
		Handle_SelectMgr_SelectionManager(const Handle_SelectMgr_SelectionManager &aHandle);
		%feature("autodoc", "1");
		Handle_SelectMgr_SelectionManager(const SelectMgr_SelectionManager *anItem);
		%feature("autodoc", "1");
		Handle_SelectMgr_SelectionManager const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_SelectMgr_SelectionManager {
	SelectMgr_SelectionManager* GetObject() {
	return (SelectMgr_SelectionManager*)$self->Access();
	}
};
%extend Handle_SelectMgr_SelectionManager {
	~Handle_SelectMgr_SelectionManager() {
	printf("Call custom destructor for instance of Handle_SelectMgr_SelectionManager\n");
	}
};

%nodefaultctor Handle_SelectMgr_EntityOwner;
class Handle_SelectMgr_EntityOwner : public Handle_SelectBasics_EntityOwner {
	public:
		%feature("autodoc", "1");
		Handle_SelectMgr_EntityOwner();
		%feature("autodoc", "1");
		Handle_SelectMgr_EntityOwner(const Handle_SelectMgr_EntityOwner &aHandle);
		%feature("autodoc", "1");
		Handle_SelectMgr_EntityOwner(const SelectMgr_EntityOwner *anItem);
		%feature("autodoc", "1");
		Handle_SelectMgr_EntityOwner const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_SelectMgr_EntityOwner {
	SelectMgr_EntityOwner* GetObject() {
	return (SelectMgr_EntityOwner*)$self->Access();
	}
};
%extend Handle_SelectMgr_EntityOwner {
	~Handle_SelectMgr_EntityOwner() {
	printf("Call custom destructor for instance of Handle_SelectMgr_EntityOwner\n");
	}
};

%nodefaultctor Handle_SelectMgr_SequenceNodeOfSequenceOfSelection;
class Handle_SelectMgr_SequenceNodeOfSequenceOfSelection : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_SelectMgr_SequenceNodeOfSequenceOfSelection();
		%feature("autodoc", "1");
		Handle_SelectMgr_SequenceNodeOfSequenceOfSelection(const Handle_SelectMgr_SequenceNodeOfSequenceOfSelection &aHandle);
		%feature("autodoc", "1");
		Handle_SelectMgr_SequenceNodeOfSequenceOfSelection(const SelectMgr_SequenceNodeOfSequenceOfSelection *anItem);
		%feature("autodoc", "1");
		Handle_SelectMgr_SequenceNodeOfSequenceOfSelection const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_SelectMgr_SequenceNodeOfSequenceOfSelection {
	SelectMgr_SequenceNodeOfSequenceOfSelection* GetObject() {
	return (SelectMgr_SequenceNodeOfSequenceOfSelection*)$self->Access();
	}
};
%extend Handle_SelectMgr_SequenceNodeOfSequenceOfSelection {
	~Handle_SelectMgr_SequenceNodeOfSequenceOfSelection() {
	printf("Call custom destructor for instance of Handle_SelectMgr_SequenceNodeOfSequenceOfSelection\n");
	}
};

%nodefaultctor Handle_SelectMgr_ViewerSelector;
class Handle_SelectMgr_ViewerSelector : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_SelectMgr_ViewerSelector();
		%feature("autodoc", "1");
		Handle_SelectMgr_ViewerSelector(const Handle_SelectMgr_ViewerSelector &aHandle);
		%feature("autodoc", "1");
		Handle_SelectMgr_ViewerSelector(const SelectMgr_ViewerSelector *anItem);
		%feature("autodoc", "1");
		Handle_SelectMgr_ViewerSelector const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_SelectMgr_ViewerSelector {
	SelectMgr_ViewerSelector* GetObject() {
	return (SelectMgr_ViewerSelector*)$self->Access();
	}
};
%extend Handle_SelectMgr_ViewerSelector {
	~Handle_SelectMgr_ViewerSelector() {
	printf("Call custom destructor for instance of Handle_SelectMgr_ViewerSelector\n");
	}
};

%nodefaultctor Handle_SelectMgr_DataMapNodeOfDataMapOfObjectSelectors;
class Handle_SelectMgr_DataMapNodeOfDataMapOfObjectSelectors : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_SelectMgr_DataMapNodeOfDataMapOfObjectSelectors();
		%feature("autodoc", "1");
		Handle_SelectMgr_DataMapNodeOfDataMapOfObjectSelectors(const Handle_SelectMgr_DataMapNodeOfDataMapOfObjectSelectors &aHandle);
		%feature("autodoc", "1");
		Handle_SelectMgr_DataMapNodeOfDataMapOfObjectSelectors(const SelectMgr_DataMapNodeOfDataMapOfObjectSelectors *anItem);
		%feature("autodoc", "1");
		Handle_SelectMgr_DataMapNodeOfDataMapOfObjectSelectors const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_SelectMgr_DataMapNodeOfDataMapOfObjectSelectors {
	SelectMgr_DataMapNodeOfDataMapOfObjectSelectors* GetObject() {
	return (SelectMgr_DataMapNodeOfDataMapOfObjectSelectors*)$self->Access();
	}
};
%extend Handle_SelectMgr_DataMapNodeOfDataMapOfObjectSelectors {
	~Handle_SelectMgr_DataMapNodeOfDataMapOfObjectSelectors() {
	printf("Call custom destructor for instance of Handle_SelectMgr_DataMapNodeOfDataMapOfObjectSelectors\n");
	}
};

%nodefaultctor Handle_SelectMgr_OrFilter;
class Handle_SelectMgr_OrFilter : public Handle_SelectMgr_CompositionFilter {
	public:
		%feature("autodoc", "1");
		Handle_SelectMgr_OrFilter();
		%feature("autodoc", "1");
		Handle_SelectMgr_OrFilter(const Handle_SelectMgr_OrFilter &aHandle);
		%feature("autodoc", "1");
		Handle_SelectMgr_OrFilter(const SelectMgr_OrFilter *anItem);
		%feature("autodoc", "1");
		Handle_SelectMgr_OrFilter const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_SelectMgr_OrFilter {
	SelectMgr_OrFilter* GetObject() {
	return (SelectMgr_OrFilter*)$self->Access();
	}
};
%extend Handle_SelectMgr_OrFilter {
	~Handle_SelectMgr_OrFilter() {
	printf("Call custom destructor for instance of Handle_SelectMgr_OrFilter\n");
	}
};

%nodefaultctor Handle_SelectMgr_SelectableObject;
class Handle_SelectMgr_SelectableObject : public Handle_PrsMgr_PresentableObject {
	public:
		%feature("autodoc", "1");
		Handle_SelectMgr_SelectableObject();
		%feature("autodoc", "1");
		Handle_SelectMgr_SelectableObject(const Handle_SelectMgr_SelectableObject &aHandle);
		%feature("autodoc", "1");
		Handle_SelectMgr_SelectableObject(const SelectMgr_SelectableObject *anItem);
		%feature("autodoc", "1");
		Handle_SelectMgr_SelectableObject const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_SelectMgr_SelectableObject {
	SelectMgr_SelectableObject* GetObject() {
	return (SelectMgr_SelectableObject*)$self->Access();
	}
};
%extend Handle_SelectMgr_SelectableObject {
	~Handle_SelectMgr_SelectableObject() {
	printf("Call custom destructor for instance of Handle_SelectMgr_SelectableObject\n");
	}
};

%nodefaultctor Handle_SelectMgr_AndFilter;
class Handle_SelectMgr_AndFilter : public Handle_SelectMgr_CompositionFilter {
	public:
		%feature("autodoc", "1");
		Handle_SelectMgr_AndFilter();
		%feature("autodoc", "1");
		Handle_SelectMgr_AndFilter(const Handle_SelectMgr_AndFilter &aHandle);
		%feature("autodoc", "1");
		Handle_SelectMgr_AndFilter(const SelectMgr_AndFilter *anItem);
		%feature("autodoc", "1");
		Handle_SelectMgr_AndFilter const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_SelectMgr_AndFilter {
	SelectMgr_AndFilter* GetObject() {
	return (SelectMgr_AndFilter*)$self->Access();
	}
};
%extend Handle_SelectMgr_AndFilter {
	~Handle_SelectMgr_AndFilter() {
	printf("Call custom destructor for instance of Handle_SelectMgr_AndFilter\n");
	}
};

%nodefaultctor Handle_SelectMgr_SequenceNodeOfSequenceOfFilter;
class Handle_SelectMgr_SequenceNodeOfSequenceOfFilter : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_SelectMgr_SequenceNodeOfSequenceOfFilter();
		%feature("autodoc", "1");
		Handle_SelectMgr_SequenceNodeOfSequenceOfFilter(const Handle_SelectMgr_SequenceNodeOfSequenceOfFilter &aHandle);
		%feature("autodoc", "1");
		Handle_SelectMgr_SequenceNodeOfSequenceOfFilter(const SelectMgr_SequenceNodeOfSequenceOfFilter *anItem);
		%feature("autodoc", "1");
		Handle_SelectMgr_SequenceNodeOfSequenceOfFilter const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_SelectMgr_SequenceNodeOfSequenceOfFilter {
	SelectMgr_SequenceNodeOfSequenceOfFilter* GetObject() {
	return (SelectMgr_SequenceNodeOfSequenceOfFilter*)$self->Access();
	}
};
%extend Handle_SelectMgr_SequenceNodeOfSequenceOfFilter {
	~Handle_SelectMgr_SequenceNodeOfSequenceOfFilter() {
	printf("Call custom destructor for instance of Handle_SelectMgr_SequenceNodeOfSequenceOfFilter\n");
	}
};

%nodefaultctor Handle_SelectMgr_IndexedMapNodeOfIndexedMapOfOwner;
class Handle_SelectMgr_IndexedMapNodeOfIndexedMapOfOwner : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_SelectMgr_IndexedMapNodeOfIndexedMapOfOwner();
		%feature("autodoc", "1");
		Handle_SelectMgr_IndexedMapNodeOfIndexedMapOfOwner(const Handle_SelectMgr_IndexedMapNodeOfIndexedMapOfOwner &aHandle);
		%feature("autodoc", "1");
		Handle_SelectMgr_IndexedMapNodeOfIndexedMapOfOwner(const SelectMgr_IndexedMapNodeOfIndexedMapOfOwner *anItem);
		%feature("autodoc", "1");
		Handle_SelectMgr_IndexedMapNodeOfIndexedMapOfOwner const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_SelectMgr_IndexedMapNodeOfIndexedMapOfOwner {
	SelectMgr_IndexedMapNodeOfIndexedMapOfOwner* GetObject() {
	return (SelectMgr_IndexedMapNodeOfIndexedMapOfOwner*)$self->Access();
	}
};
%extend Handle_SelectMgr_IndexedMapNodeOfIndexedMapOfOwner {
	~Handle_SelectMgr_IndexedMapNodeOfIndexedMapOfOwner() {
	printf("Call custom destructor for instance of Handle_SelectMgr_IndexedMapNodeOfIndexedMapOfOwner\n");
	}
};

%nodefaultctor Handle_SelectMgr_DataMapNodeOfDataMapOfIntegerSensitive;
class Handle_SelectMgr_DataMapNodeOfDataMapOfIntegerSensitive : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_SelectMgr_DataMapNodeOfDataMapOfIntegerSensitive();
		%feature("autodoc", "1");
		Handle_SelectMgr_DataMapNodeOfDataMapOfIntegerSensitive(const Handle_SelectMgr_DataMapNodeOfDataMapOfIntegerSensitive &aHandle);
		%feature("autodoc", "1");
		Handle_SelectMgr_DataMapNodeOfDataMapOfIntegerSensitive(const SelectMgr_DataMapNodeOfDataMapOfIntegerSensitive *anItem);
		%feature("autodoc", "1");
		Handle_SelectMgr_DataMapNodeOfDataMapOfIntegerSensitive const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_SelectMgr_DataMapNodeOfDataMapOfIntegerSensitive {
	SelectMgr_DataMapNodeOfDataMapOfIntegerSensitive* GetObject() {
	return (SelectMgr_DataMapNodeOfDataMapOfIntegerSensitive*)$self->Access();
	}
};
%extend Handle_SelectMgr_DataMapNodeOfDataMapOfIntegerSensitive {
	~Handle_SelectMgr_DataMapNodeOfDataMapOfIntegerSensitive() {
	printf("Call custom destructor for instance of Handle_SelectMgr_DataMapNodeOfDataMapOfIntegerSensitive\n");
	}
};

%nodefaultctor Handle_SelectMgr_SequenceNodeOfSequenceOfOwner;
class Handle_SelectMgr_SequenceNodeOfSequenceOfOwner : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_SelectMgr_SequenceNodeOfSequenceOfOwner();
		%feature("autodoc", "1");
		Handle_SelectMgr_SequenceNodeOfSequenceOfOwner(const Handle_SelectMgr_SequenceNodeOfSequenceOfOwner &aHandle);
		%feature("autodoc", "1");
		Handle_SelectMgr_SequenceNodeOfSequenceOfOwner(const SelectMgr_SequenceNodeOfSequenceOfOwner *anItem);
		%feature("autodoc", "1");
		Handle_SelectMgr_SequenceNodeOfSequenceOfOwner const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_SelectMgr_SequenceNodeOfSequenceOfOwner {
	SelectMgr_SequenceNodeOfSequenceOfOwner* GetObject() {
	return (SelectMgr_SequenceNodeOfSequenceOfOwner*)$self->Access();
	}
};
%extend Handle_SelectMgr_SequenceNodeOfSequenceOfOwner {
	~Handle_SelectMgr_SequenceNodeOfSequenceOfOwner() {
	printf("Call custom destructor for instance of Handle_SelectMgr_SequenceNodeOfSequenceOfOwner\n");
	}
};

%nodefaultctor Handle_SelectMgr_ListNodeOfListOfFilter;
class Handle_SelectMgr_ListNodeOfListOfFilter : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_SelectMgr_ListNodeOfListOfFilter();
		%feature("autodoc", "1");
		Handle_SelectMgr_ListNodeOfListOfFilter(const Handle_SelectMgr_ListNodeOfListOfFilter &aHandle);
		%feature("autodoc", "1");
		Handle_SelectMgr_ListNodeOfListOfFilter(const SelectMgr_ListNodeOfListOfFilter *anItem);
		%feature("autodoc", "1");
		Handle_SelectMgr_ListNodeOfListOfFilter const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_SelectMgr_ListNodeOfListOfFilter {
	SelectMgr_ListNodeOfListOfFilter* GetObject() {
	return (SelectMgr_ListNodeOfListOfFilter*)$self->Access();
	}
};
%extend Handle_SelectMgr_ListNodeOfListOfFilter {
	~Handle_SelectMgr_ListNodeOfListOfFilter() {
	printf("Call custom destructor for instance of Handle_SelectMgr_ListNodeOfListOfFilter\n");
	}
};

%nodefaultctor Handle_SelectMgr_DataMapNodeOfDataMapOfSelectionActivation;
class Handle_SelectMgr_DataMapNodeOfDataMapOfSelectionActivation : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_SelectMgr_DataMapNodeOfDataMapOfSelectionActivation();
		%feature("autodoc", "1");
		Handle_SelectMgr_DataMapNodeOfDataMapOfSelectionActivation(const Handle_SelectMgr_DataMapNodeOfDataMapOfSelectionActivation &aHandle);
		%feature("autodoc", "1");
		Handle_SelectMgr_DataMapNodeOfDataMapOfSelectionActivation(const SelectMgr_DataMapNodeOfDataMapOfSelectionActivation *anItem);
		%feature("autodoc", "1");
		Handle_SelectMgr_DataMapNodeOfDataMapOfSelectionActivation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_SelectMgr_DataMapNodeOfDataMapOfSelectionActivation {
	SelectMgr_DataMapNodeOfDataMapOfSelectionActivation* GetObject() {
	return (SelectMgr_DataMapNodeOfDataMapOfSelectionActivation*)$self->Access();
	}
};
%extend Handle_SelectMgr_DataMapNodeOfDataMapOfSelectionActivation {
	~Handle_SelectMgr_DataMapNodeOfDataMapOfSelectionActivation() {
	printf("Call custom destructor for instance of Handle_SelectMgr_DataMapNodeOfDataMapOfSelectionActivation\n");
	}
};

%nodefaultctor Handle_SelectMgr_Selection;
class Handle_SelectMgr_Selection : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_SelectMgr_Selection();
		%feature("autodoc", "1");
		Handle_SelectMgr_Selection(const Handle_SelectMgr_Selection &aHandle);
		%feature("autodoc", "1");
		Handle_SelectMgr_Selection(const SelectMgr_Selection *anItem);
		%feature("autodoc", "1");
		Handle_SelectMgr_Selection const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_SelectMgr_Selection {
	SelectMgr_Selection* GetObject() {
	return (SelectMgr_Selection*)$self->Access();
	}
};
%extend Handle_SelectMgr_Selection {
	~Handle_SelectMgr_Selection() {
	printf("Call custom destructor for instance of Handle_SelectMgr_Selection\n");
	}
};

%nodefaultctor Handle_SelectMgr_SequenceNodeOfSequenceOfSelector;
class Handle_SelectMgr_SequenceNodeOfSequenceOfSelector : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_SelectMgr_SequenceNodeOfSequenceOfSelector();
		%feature("autodoc", "1");
		Handle_SelectMgr_SequenceNodeOfSequenceOfSelector(const Handle_SelectMgr_SequenceNodeOfSequenceOfSelector &aHandle);
		%feature("autodoc", "1");
		Handle_SelectMgr_SequenceNodeOfSequenceOfSelector(const SelectMgr_SequenceNodeOfSequenceOfSelector *anItem);
		%feature("autodoc", "1");
		Handle_SelectMgr_SequenceNodeOfSequenceOfSelector const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_SelectMgr_SequenceNodeOfSequenceOfSelector {
	SelectMgr_SequenceNodeOfSequenceOfSelector* GetObject() {
	return (SelectMgr_SequenceNodeOfSequenceOfSelector*)$self->Access();
	}
};
%extend Handle_SelectMgr_SequenceNodeOfSequenceOfSelector {
	~Handle_SelectMgr_SequenceNodeOfSequenceOfSelector() {
	printf("Call custom destructor for instance of Handle_SelectMgr_SequenceNodeOfSequenceOfSelector\n");
	}
};

%nodefaultctor Handle_SelectMgr_IndexedDataMapNodeOfIndexedDataMapOfOwnerCriterion;
class Handle_SelectMgr_IndexedDataMapNodeOfIndexedDataMapOfOwnerCriterion : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_SelectMgr_IndexedDataMapNodeOfIndexedDataMapOfOwnerCriterion();
		%feature("autodoc", "1");
		Handle_SelectMgr_IndexedDataMapNodeOfIndexedDataMapOfOwnerCriterion(const Handle_SelectMgr_IndexedDataMapNodeOfIndexedDataMapOfOwnerCriterion &aHandle);
		%feature("autodoc", "1");
		Handle_SelectMgr_IndexedDataMapNodeOfIndexedDataMapOfOwnerCriterion(const SelectMgr_IndexedDataMapNodeOfIndexedDataMapOfOwnerCriterion *anItem);
		%feature("autodoc", "1");
		Handle_SelectMgr_IndexedDataMapNodeOfIndexedDataMapOfOwnerCriterion const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_SelectMgr_IndexedDataMapNodeOfIndexedDataMapOfOwnerCriterion {
	SelectMgr_IndexedDataMapNodeOfIndexedDataMapOfOwnerCriterion* GetObject() {
	return (SelectMgr_IndexedDataMapNodeOfIndexedDataMapOfOwnerCriterion*)$self->Access();
	}
};
%extend Handle_SelectMgr_IndexedDataMapNodeOfIndexedDataMapOfOwnerCriterion {
	~Handle_SelectMgr_IndexedDataMapNodeOfIndexedDataMapOfOwnerCriterion() {
	printf("Call custom destructor for instance of Handle_SelectMgr_IndexedDataMapNodeOfIndexedDataMapOfOwnerCriterion\n");
	}
};

%nodefaultctor SelectMgr_DataMapIteratorOfDataMapOfIntegerSensitive;
class SelectMgr_DataMapIteratorOfDataMapOfIntegerSensitive : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		~SelectMgr_DataMapIteratorOfDataMapOfIntegerSensitive();
		%feature("autodoc", "1");
		SelectMgr_DataMapIteratorOfDataMapOfIntegerSensitive();
		%feature("autodoc", "1");
		SelectMgr_DataMapIteratorOfDataMapOfIntegerSensitive(const SelectMgr_DataMapOfIntegerSensitive &aMap);
		%feature("autodoc", "1");
		void Initialize(const SelectMgr_DataMapOfIntegerSensitive &aMap);
		%feature("autodoc", "1");
		const Standard_Integer & Key() const;
		%feature("autodoc", "1");
		const Handle_SelectBasics_SensitiveEntity & Value() const;

};

%nodefaultctor SelectMgr_ListNodeOfListOfFilter;
class SelectMgr_ListNodeOfListOfFilter : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		SelectMgr_ListNodeOfListOfFilter(const Handle_SelectMgr_Filter &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_SelectMgr_Filter & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend SelectMgr_ListNodeOfListOfFilter {
	Handle_SelectMgr_ListNodeOfListOfFilter GetHandle() {
	return *(Handle_SelectMgr_ListNodeOfListOfFilter*) &$self;
	}
};
%extend SelectMgr_ListNodeOfListOfFilter {
	~SelectMgr_ListNodeOfListOfFilter() {
	printf("Call custom destructor for instance of SelectMgr_ListNodeOfListOfFilter\n");
	}
};

%nodefaultctor SelectMgr_Filter;
class SelectMgr_Filter : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsOk(const Handle_SelectMgr_EntityOwner &anObj) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean ActsOn(const TopAbs_ShapeEnum aStandardMode) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend SelectMgr_Filter {
	Handle_SelectMgr_Filter GetHandle() {
	return *(Handle_SelectMgr_Filter*) &$self;
	}
};
%extend SelectMgr_Filter {
	~SelectMgr_Filter() {
	printf("Call custom destructor for instance of SelectMgr_Filter\n");
	}
};

%nodefaultctor SelectMgr_CompositionFilter;
class SelectMgr_CompositionFilter : public SelectMgr_Filter {
	public:
		%feature("autodoc", "1");
		void Add(const Handle_SelectMgr_Filter &afilter);
		%feature("autodoc", "1");
		void Remove(const Handle_SelectMgr_Filter &aFilter);
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Boolean IsIn(const Handle_SelectMgr_Filter &aFilter) const;
		%feature("autodoc", "1");
		const SelectMgr_ListOfFilter & StoredFilters() const;
		%feature("autodoc", "1");
		void Clear();

};
%extend SelectMgr_CompositionFilter {
	Handle_SelectMgr_CompositionFilter GetHandle() {
	return *(Handle_SelectMgr_CompositionFilter*) &$self;
	}
};
%extend SelectMgr_CompositionFilter {
	~SelectMgr_CompositionFilter() {
	printf("Call custom destructor for instance of SelectMgr_CompositionFilter\n");
	}
};

%nodefaultctor SelectMgr_AndFilter;
class SelectMgr_AndFilter : public SelectMgr_CompositionFilter {
	public:
		%feature("autodoc", "1");
		SelectMgr_AndFilter();
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsOk(const Handle_SelectMgr_EntityOwner &anobj) const;

};
%extend SelectMgr_AndFilter {
	Handle_SelectMgr_AndFilter GetHandle() {
	return *(Handle_SelectMgr_AndFilter*) &$self;
	}
};
%extend SelectMgr_AndFilter {
	~SelectMgr_AndFilter() {
	printf("Call custom destructor for instance of SelectMgr_AndFilter\n");
	}
};

%nodefaultctor SelectMgr_ListIteratorOfListOfFilter;
class SelectMgr_ListIteratorOfListOfFilter {
	public:
		%feature("autodoc", "1");
		~SelectMgr_ListIteratorOfListOfFilter();
		%feature("autodoc", "1");
		SelectMgr_ListIteratorOfListOfFilter();
		%feature("autodoc", "1");
		SelectMgr_ListIteratorOfListOfFilter(const SelectMgr_ListOfFilter &L);
		%feature("autodoc", "1");
		void Initialize(const SelectMgr_ListOfFilter &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		Handle_SelectMgr_Filter & Value() const;

};

%nodefaultctor SelectMgr_ListOfFilter;
class SelectMgr_ListOfFilter {
	public:
		%feature("autodoc", "1");
		SelectMgr_ListOfFilter();
		%feature("autodoc", "1");
		void Assign(const SelectMgr_ListOfFilter &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~SelectMgr_ListOfFilter();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const Handle_SelectMgr_Filter &I);
		%feature("autodoc", "1");
		void Prepend(const Handle_SelectMgr_Filter &I, SelectMgr_ListIteratorOfListOfFilter & theIt);
		%feature("autodoc", "1");
		void Prepend(SelectMgr_ListOfFilter & Other);
		%feature("autodoc", "1");
		void Append(const Handle_SelectMgr_Filter &I);
		%feature("autodoc", "1");
		void Append(const Handle_SelectMgr_Filter &I, SelectMgr_ListIteratorOfListOfFilter & theIt);
		%feature("autodoc", "1");
		void Append(SelectMgr_ListOfFilter & Other);
		%feature("autodoc", "1");
		Handle_SelectMgr_Filter & First() const;
		%feature("autodoc", "1");
		Handle_SelectMgr_Filter & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(SelectMgr_ListIteratorOfListOfFilter & It);
		%feature("autodoc", "1");
		void InsertBefore(const Handle_SelectMgr_Filter &I, SelectMgr_ListIteratorOfListOfFilter & It);
		%feature("autodoc", "1");
		void InsertBefore(SelectMgr_ListOfFilter & Other, SelectMgr_ListIteratorOfListOfFilter & It);
		%feature("autodoc", "1");
		void InsertAfter(const Handle_SelectMgr_Filter &I, SelectMgr_ListIteratorOfListOfFilter & It);
		%feature("autodoc", "1");
		void InsertAfter(SelectMgr_ListOfFilter & Other, SelectMgr_ListIteratorOfListOfFilter & It);

};

%nodefaultctor SelectMgr_EntityOwner;
class SelectMgr_EntityOwner : public SelectBasics_EntityOwner {
	public:
		%feature("autodoc", "1");
		SelectMgr_EntityOwner(const Standard_Integer aPriority=0);
		%feature("autodoc", "1");
		SelectMgr_EntityOwner(const Handle_SelectMgr_SelectableObject &aSO, const Standard_Integer aPriority=0);
		%feature("autodoc", "1");
		Standard_Boolean HasSelectable() const;
		%feature("autodoc", "1");
		Handle_SelectMgr_SelectableObject Selectable() const;
		%feature("autodoc", "1");
		void Set(const Handle_SelectMgr_SelectableObject &aSO);
		%feature("autodoc", "1");
		virtual		void Hilight();
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsHilighted(const Handle_PrsMgr_PresentationManager &aPM, const Standard_Integer aMode=0) const;
		%feature("autodoc", "1");
		virtual		void Hilight(const Handle_PrsMgr_PresentationManager &aPM, const Standard_Integer aMode=0);
		%feature("autodoc", "1");
		virtual		void HilightWithColor(const Handle_PrsMgr_PresentationManager3d &aPM, const Quantity_NameOfColor aColor, const Standard_Integer aMode=0);
		%feature("autodoc", "1");
		virtual		void Unhilight(const Handle_PrsMgr_PresentationManager &aPM, const Standard_Integer aMode=0);
		%feature("autodoc", "1");
		virtual		void Clear(const Handle_PrsMgr_PresentationManager &aPM, const Standard_Integer aMode=0);
		%feature("autodoc", "1");
		virtual		Standard_Boolean HasLocation() const;
		%feature("autodoc", "1");
		virtual		void SetLocation(const TopLoc_Location &aLoc);
		%feature("autodoc", "1");
		virtual		void ResetLocation();
		%feature("autodoc", "1");
		virtual		const TopLoc_Location & Location() const;
		%feature("autodoc", "1");
		void State(const Standard_Integer aStatus);
		%feature("autodoc", "1");
		Standard_Integer State() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsAutoHilight() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsForcedHilight() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend SelectMgr_EntityOwner {
	Handle_SelectMgr_EntityOwner GetHandle() {
	return *(Handle_SelectMgr_EntityOwner*) &$self;
	}
};
%extend SelectMgr_EntityOwner {
	~SelectMgr_EntityOwner() {
	printf("Call custom destructor for instance of SelectMgr_EntityOwner\n");
	}
};

%nodefaultctor SelectMgr_DataMapNodeOfDataMapOfIntegerSensitive;
class SelectMgr_DataMapNodeOfDataMapOfIntegerSensitive : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		SelectMgr_DataMapNodeOfDataMapOfIntegerSensitive(const Standard_Integer &K, const Handle_SelectBasics_SensitiveEntity &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Standard_Integer & Key() const;
		%feature("autodoc", "1");
		Handle_SelectBasics_SensitiveEntity & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend SelectMgr_DataMapNodeOfDataMapOfIntegerSensitive {
	Handle_SelectMgr_DataMapNodeOfDataMapOfIntegerSensitive GetHandle() {
	return *(Handle_SelectMgr_DataMapNodeOfDataMapOfIntegerSensitive*) &$self;
	}
};
%extend SelectMgr_DataMapNodeOfDataMapOfIntegerSensitive {
	~SelectMgr_DataMapNodeOfDataMapOfIntegerSensitive() {
	printf("Call custom destructor for instance of SelectMgr_DataMapNodeOfDataMapOfIntegerSensitive\n");
	}
};

%nodefaultctor SelectMgr_Selection;
class SelectMgr_Selection : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		SelectMgr_Selection(const Standard_Integer IdMode=0);
		%feature("autodoc", "1");
		void Add(const Handle_SelectBasics_SensitiveEntity &aprimitive);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Mode() const;
		%feature("autodoc", "1");
		void Init();
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		const Handle_SelectBasics_SensitiveEntity & Sensitive() const;
		%feature("autodoc", "1");
		SelectMgr_TypeOfUpdate UpdateStatus() const;
		%feature("autodoc", "1");
		void UpdateStatus(const SelectMgr_TypeOfUpdate TheStat);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend SelectMgr_Selection {
	Handle_SelectMgr_Selection GetHandle() {
	return *(Handle_SelectMgr_Selection*) &$self;
	}
};
%extend SelectMgr_Selection {
	~SelectMgr_Selection() {
	printf("Call custom destructor for instance of SelectMgr_Selection\n");
	}
};

%nodefaultctor SelectMgr_DataMapOfObjectSelectors;
class SelectMgr_DataMapOfObjectSelectors : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		SelectMgr_DataMapOfObjectSelectors(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		SelectMgr_DataMapOfObjectSelectors & Assign(const SelectMgr_DataMapOfObjectSelectors &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~SelectMgr_DataMapOfObjectSelectors();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Handle_SelectMgr_SelectableObject &K, const SelectMgr_SequenceOfSelector &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Handle_SelectMgr_SelectableObject &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Handle_SelectMgr_SelectableObject &K);
		%feature("autodoc", "1");
		const SelectMgr_SequenceOfSelector & Find(const Handle_SelectMgr_SelectableObject &K) const;
		%feature("autodoc", "1");
		const SelectMgr_SequenceOfSelector & operator()(const Handle_SelectMgr_SelectableObject &K) const;
		%feature("autodoc", "1");
		SelectMgr_SequenceOfSelector & ChangeFind(const Handle_SelectMgr_SelectableObject &K);
		%feature("autodoc", "1");
		SelectMgr_SequenceOfSelector & operator()(const Handle_SelectMgr_SelectableObject &K);

};

%nodefaultctor SelectMgr_SelectionManager;
class SelectMgr_SelectionManager : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		SelectMgr_SelectionManager();
		%feature("autodoc", "1");
		void Add(const Handle_SelectMgr_ViewerSelector &aSelector);
		%feature("autodoc", "1");
		void Remove(const Handle_SelectMgr_ViewerSelector &aSelector);
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Handle_SelectMgr_ViewerSelector &aSelector) const;
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Handle_SelectMgr_SelectableObject &aSelectableObject) const;
		%feature("autodoc", "1");
		void Load(const Handle_SelectMgr_SelectableObject &anObject, const Standard_Integer aMode=-0x000000001);
		%feature("autodoc", "1");
		void Load(const Handle_SelectMgr_SelectableObject &anObject, const Handle_SelectMgr_ViewerSelector &aSelector, const Standard_Integer aMode=-0x000000001);
		%feature("autodoc", "1");
		void Remove(const Handle_SelectMgr_SelectableObject &anObject);
		%feature("autodoc", "1");
		void Remove(const Handle_SelectMgr_SelectableObject &anObject, const Handle_SelectMgr_ViewerSelector &aSelector);
		%feature("autodoc", "1");
		void Activate(const Handle_SelectMgr_SelectableObject &anObject, const Standard_Integer aMode=0, const Standard_Boolean AutomaticProj=1);
		%feature("autodoc", "1");
		void Activate(const Handle_SelectMgr_SelectableObject &anObject, const Standard_Integer aMode, const Handle_SelectMgr_ViewerSelector &aSelector, const Standard_Boolean AutomaticProj=1);
		%feature("autodoc", "1");
		void Deactivate(const Handle_SelectMgr_SelectableObject &anObject);
		%feature("autodoc", "1");
		void Deactivate(const Handle_SelectMgr_SelectableObject &anObject, const Standard_Integer aMode);
		%feature("autodoc", "1");
		void Deactivate(const Handle_SelectMgr_SelectableObject &anObject, const Standard_Integer aMode, const Handle_SelectMgr_ViewerSelector &aSelector);
		%feature("autodoc", "1");
		void Deactivate(const Handle_SelectMgr_SelectableObject &anObject, const Handle_SelectMgr_ViewerSelector &aSelector);
		%feature("autodoc", "1");
		void Sleep(const Handle_SelectMgr_ViewerSelector &aSelector);
		%feature("autodoc", "1");
		void Sleep(const Handle_SelectMgr_SelectableObject &anObject);
		%feature("autodoc", "1");
		void Sleep(const Handle_SelectMgr_SelectableObject &anObject, const Handle_SelectMgr_ViewerSelector &aSelector);
		%feature("autodoc", "1");
		void Awake(const Handle_SelectMgr_ViewerSelector &aSelector, const Standard_Boolean AutomaticProj=1);
		%feature("autodoc", "1");
		void Awake(const Handle_SelectMgr_SelectableObject &anObject, const Standard_Boolean AutomaticProj=1);
		%feature("autodoc", "1");
		void Awake(const Handle_SelectMgr_SelectableObject &anObject, const Handle_SelectMgr_ViewerSelector &aSelector, const Standard_Boolean AutomaticProj=1);
		%feature("autodoc", "1");
		Standard_Boolean IsActivated(const Handle_SelectMgr_SelectableObject &anObject) const;
		%feature("autodoc", "1");
		Standard_Boolean IsActivated(const Handle_SelectMgr_SelectableObject &anObject, const Standard_Integer aMode) const;
		%feature("autodoc", "1");
		Standard_Boolean IsActivated(const Handle_SelectMgr_SelectableObject &anObject, const Handle_SelectMgr_ViewerSelector &aSelector, const Standard_Integer aMode) const;
		%feature("autodoc", "1");
		void RecomputeSelection(const Handle_SelectMgr_SelectableObject &anIObj, const Standard_Boolean ForceUpdate=0, const Standard_Integer aMode=-0x000000001);
		%feature("autodoc", "1");
		void Update(const Handle_SelectMgr_SelectableObject &anObject, const Standard_Boolean ForceUpdate=1);
		%feature("autodoc", "1");
		void Update(const Handle_SelectMgr_SelectableObject &anObject, const Handle_SelectMgr_ViewerSelector &aSelector, const Standard_Boolean ForceUpdate=1);
		%feature("autodoc", "1");
		void SetUpdateMode(const Handle_SelectMgr_SelectableObject &anObject, const SelectMgr_TypeOfUpdate aType);
		%feature("autodoc", "1");
		void SetUpdateMode(const Handle_SelectMgr_SelectableObject &anObject, const Standard_Integer aSelMode, const SelectMgr_TypeOfUpdate aType);
		%feature("autodoc", "1");
		TCollection_AsciiString Status() const;
		%feature("autodoc", "1");
		TCollection_AsciiString Status(const Handle_SelectMgr_SelectableObject &anObject) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend SelectMgr_SelectionManager {
	Handle_SelectMgr_SelectionManager GetHandle() {
	return *(Handle_SelectMgr_SelectionManager*) &$self;
	}
};
%extend SelectMgr_SelectionManager {
	~SelectMgr_SelectionManager() {
	printf("Call custom destructor for instance of SelectMgr_SelectionManager\n");
	}
};

%nodefaultctor SelectMgr_SequenceOfSelection;
class SelectMgr_SequenceOfSelection : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		SelectMgr_SequenceOfSelection();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~SelectMgr_SequenceOfSelection();
		%feature("autodoc", "1");
		const SelectMgr_SequenceOfSelection & Assign(const SelectMgr_SequenceOfSelection &Other);
		%feature("autodoc", "1");
		void Append(const Handle_SelectMgr_Selection &T);
		%feature("autodoc", "1");
		void Append(SelectMgr_SequenceOfSelection & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_SelectMgr_Selection &T);
		%feature("autodoc", "1");
		void Prepend(SelectMgr_SequenceOfSelection & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_SelectMgr_Selection &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, SelectMgr_SequenceOfSelection & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_SelectMgr_Selection &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, SelectMgr_SequenceOfSelection & S);
		%feature("autodoc", "1");
		const Handle_SelectMgr_Selection & First() const;
		%feature("autodoc", "1");
		const Handle_SelectMgr_Selection & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, SelectMgr_SequenceOfSelection & S);
		%feature("autodoc", "1");
		const Handle_SelectMgr_Selection & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_SelectMgr_Selection & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_SelectMgr_Selection &I);
		%feature("autodoc", "1");
		Handle_SelectMgr_Selection & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_SelectMgr_Selection & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};

%nodefaultctor SelectMgr_SequenceNodeOfSequenceOfSelector;
class SelectMgr_SequenceNodeOfSequenceOfSelector : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		SelectMgr_SequenceNodeOfSequenceOfSelector(const Handle_SelectMgr_ViewerSelector &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_SelectMgr_ViewerSelector & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend SelectMgr_SequenceNodeOfSequenceOfSelector {
	Handle_SelectMgr_SequenceNodeOfSequenceOfSelector GetHandle() {
	return *(Handle_SelectMgr_SequenceNodeOfSequenceOfSelector*) &$self;
	}
};
%extend SelectMgr_SequenceNodeOfSequenceOfSelector {
	~SelectMgr_SequenceNodeOfSequenceOfSelector() {
	printf("Call custom destructor for instance of SelectMgr_SequenceNodeOfSequenceOfSelector\n");
	}
};

%nodefaultctor SelectMgr_OrFilter;
class SelectMgr_OrFilter : public SelectMgr_CompositionFilter {
	public:
		%feature("autodoc", "1");
		SelectMgr_OrFilter();
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsOk(const Handle_SelectMgr_EntityOwner &anobj) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend SelectMgr_OrFilter {
	Handle_SelectMgr_OrFilter GetHandle() {
	return *(Handle_SelectMgr_OrFilter*) &$self;
	}
};
%extend SelectMgr_OrFilter {
	~SelectMgr_OrFilter() {
	printf("Call custom destructor for instance of SelectMgr_OrFilter\n");
	}
};

%nodefaultctor SelectMgr_IndexedMapOfOwner;
class SelectMgr_IndexedMapOfOwner : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		SelectMgr_IndexedMapOfOwner(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		SelectMgr_IndexedMapOfOwner & Assign(const SelectMgr_IndexedMapOfOwner &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~SelectMgr_IndexedMapOfOwner();
		%feature("autodoc", "1");
		Standard_Integer Add(const Handle_SelectMgr_EntityOwner &K);
		%feature("autodoc", "1");
		void Substitute(const Standard_Integer I, const Handle_SelectMgr_EntityOwner &K);
		%feature("autodoc", "1");
		void RemoveLast();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Handle_SelectMgr_EntityOwner &K) const;
		%feature("autodoc", "1");
		const Handle_SelectMgr_EntityOwner & FindKey(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const Handle_SelectMgr_EntityOwner & operator()(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Standard_Integer FindIndex(const Handle_SelectMgr_EntityOwner &K) const;

};

%nodefaultctor SelectMgr_DataMapNodeOfDataMapOfObjectSelectors;
class SelectMgr_DataMapNodeOfDataMapOfObjectSelectors : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		SelectMgr_DataMapNodeOfDataMapOfObjectSelectors(const Handle_SelectMgr_SelectableObject &K, const SelectMgr_SequenceOfSelector &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_SelectMgr_SelectableObject & Key() const;
		%feature("autodoc", "1");
		SelectMgr_SequenceOfSelector & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend SelectMgr_DataMapNodeOfDataMapOfObjectSelectors {
	Handle_SelectMgr_DataMapNodeOfDataMapOfObjectSelectors GetHandle() {
	return *(Handle_SelectMgr_DataMapNodeOfDataMapOfObjectSelectors*) &$self;
	}
};
%extend SelectMgr_DataMapNodeOfDataMapOfObjectSelectors {
	~SelectMgr_DataMapNodeOfDataMapOfObjectSelectors() {
	printf("Call custom destructor for instance of SelectMgr_DataMapNodeOfDataMapOfObjectSelectors\n");
	}
};

%nodefaultctor SelectMgr_SortCriterion;
class SelectMgr_SortCriterion {
	public:
		%feature("autodoc", "1");
		~SelectMgr_SortCriterion();
		%feature("autodoc", "1");
		SelectMgr_SortCriterion();
		%feature("autodoc", "1");
		SelectMgr_SortCriterion(const Standard_Integer aPriority, const Standard_Real aDepth, const Standard_Real aMinDist);
		%feature("autodoc", "1");
		void SetValues(const Standard_Integer Prior, const Standard_Real Depth, const Standard_Real Dist);
		%feature("autodoc", "1");
		void SetPriority(const Standard_Integer Prior);
		%feature("autodoc", "1");
		void SetDepth(const Standard_Real Depth);
		%feature("autodoc", "1");
		void SetMinDist(const Standard_Real Dist);
		%feature("autodoc", "1");
		void Values(Standard_Integer & Prior, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Integer Priority() const;
		%feature("autodoc", "1");
		Standard_Real Depth() const;
		%feature("autodoc", "1");
		Standard_Real MinDist() const;
		%feature("autodoc", "1");
		Standard_Boolean IsGreater(const SelectMgr_SortCriterion &anOtherCriterion) const;
		%feature("autodoc", "1");
		Standard_Boolean operator>(const SelectMgr_SortCriterion &anOtherCriterion) const;
		%feature("autodoc", "1");
		Standard_Boolean IsLower(const SelectMgr_SortCriterion &anOtherCriterion) const;
		%feature("autodoc", "1");
		Standard_Boolean operator<(const SelectMgr_SortCriterion &anOtherCriterion) const;

};

%nodefaultctor SelectMgr_DataMapIteratorOfDataMapOfSelectionActivation;
class SelectMgr_DataMapIteratorOfDataMapOfSelectionActivation : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		~SelectMgr_DataMapIteratorOfDataMapOfSelectionActivation();
		%feature("autodoc", "1");
		SelectMgr_DataMapIteratorOfDataMapOfSelectionActivation();
		%feature("autodoc", "1");
		SelectMgr_DataMapIteratorOfDataMapOfSelectionActivation(const SelectMgr_DataMapOfSelectionActivation &aMap);
		%feature("autodoc", "1");
		void Initialize(const SelectMgr_DataMapOfSelectionActivation &aMap);
		%feature("autodoc", "1");
		const Handle_SelectMgr_Selection & Key() const;
		%feature("autodoc", "1");
		const Standard_Integer & Value() const;

};

%nodefaultctor SelectMgr_ViewerSelector;
class SelectMgr_ViewerSelector : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		virtual		void Convert(const Handle_SelectMgr_Selection &aSelection);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void UpdateConversion();
		%feature("autodoc", "1");
		void SetSensitivity(const Standard_Real aTol);
		%feature("autodoc", "1");
		void SetClipping(const Standard_Real Xc, const Standard_Real Yc, const Standard_Real Height, const Standard_Real Width);
		%feature("autodoc", "1");
		void SetClipping(const Bnd_Box2d &aRectangle);
		%feature("autodoc", "1");
		void InitSelect(const Standard_Real Xr, const Standard_Real Yr);
		%feature("autodoc", "1");
		void InitSelect(const Bnd_Box2d &aRect);
		%feature("autodoc", "1");
		void InitSelect(const Standard_Real Xmin, const Standard_Real Ymin, const Standard_Real Xmax, const Standard_Real Ymax);
		%feature("autodoc", "1");
		void InitSelect(const TColgp_Array1OfPnt2d &Polyline);
		%feature("autodoc", "1");
		virtual		void SortResult();
		%feature("autodoc", "1");
		void Init();
		%feature("autodoc", "1");
		Standard_Boolean More();
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		Handle_SelectMgr_EntityOwner Picked() const;
		%feature("autodoc", "1");
		Handle_SelectMgr_EntityOwner OnePicked();
		%feature("autodoc", "1");
		Standard_Integer NbPicked() const;
		%feature("autodoc", "1");
		Handle_SelectMgr_EntityOwner Picked(const Standard_Integer aRank) const;
		%feature("autodoc", "1");
		Standard_Boolean HasStored();
		%feature("autodoc", "1");
		void LastPosition(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Handle_SelectMgr_SelectableObject &aSelectableObject) const;
		%feature("autodoc", "1");
		Standard_Boolean Modes(const Handle_SelectMgr_SelectableObject &aSelectableObject, TColStd_ListOfInteger & ModeList, const SelectMgr_StateOfSelection WantedState=SelectMgr_SOS_Any) const;
		%feature("autodoc", "1");
		Standard_Boolean IsActive(const Handle_SelectMgr_SelectableObject &aSelectableObject, const Standard_Integer aMode) const;
		%feature("autodoc", "1");
		Standard_Boolean IsInside(const Handle_SelectMgr_SelectableObject &aSelectableObject, const Standard_Integer aMode) const;
		%feature("autodoc", "1");
		SelectMgr_StateOfSelection Status(const Handle_SelectMgr_Selection &aSelection) const;
		%feature("autodoc", "1");
		void Dump(Standard_OStream & S) const;
		%feature("autodoc", "1");
		TCollection_AsciiString Status(const Handle_SelectMgr_SelectableObject &aSelectableObject) const;
		%feature("autodoc", "1");
		TCollection_AsciiString Status() const;
		%feature("autodoc", "1");
		void UpdateSort();
		%feature("autodoc", "1");
		Handle_SelectBasics_SensitiveEntity Primitive(const Standard_Integer Rank) const;
		%feature("autodoc", "1");
		const SelectMgr_DataMapOfIntegerSensitive & Primitives() const;
		%feature("autodoc", "1");
		void SetUpdateSortPossible(const Standard_Boolean possible);
		%feature("autodoc", "1");
		Standard_Boolean IsUpdateSortPossible() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend SelectMgr_ViewerSelector {
	Handle_SelectMgr_ViewerSelector GetHandle() {
	return *(Handle_SelectMgr_ViewerSelector*) &$self;
	}
};
%extend SelectMgr_ViewerSelector {
	~SelectMgr_ViewerSelector() {
	printf("Call custom destructor for instance of SelectMgr_ViewerSelector\n");
	}
};

%nodefaultctor SelectMgr_DataMapNodeOfDataMapOfSelectionActivation;
class SelectMgr_DataMapNodeOfDataMapOfSelectionActivation : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		SelectMgr_DataMapNodeOfDataMapOfSelectionActivation(const Handle_SelectMgr_Selection &K, const Standard_Integer &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_SelectMgr_Selection & Key() const;
		%feature("autodoc", "1");
		Standard_Integer & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend SelectMgr_DataMapNodeOfDataMapOfSelectionActivation {
	Handle_SelectMgr_DataMapNodeOfDataMapOfSelectionActivation GetHandle() {
	return *(Handle_SelectMgr_DataMapNodeOfDataMapOfSelectionActivation*) &$self;
	}
};
%extend SelectMgr_DataMapNodeOfDataMapOfSelectionActivation {
	~SelectMgr_DataMapNodeOfDataMapOfSelectionActivation() {
	printf("Call custom destructor for instance of SelectMgr_DataMapNodeOfDataMapOfSelectionActivation\n");
	}
};

%nodefaultctor SelectMgr_DataMapIteratorOfDataMapOfObjectSelectors;
class SelectMgr_DataMapIteratorOfDataMapOfObjectSelectors : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		~SelectMgr_DataMapIteratorOfDataMapOfObjectSelectors();
		%feature("autodoc", "1");
		SelectMgr_DataMapIteratorOfDataMapOfObjectSelectors();
		%feature("autodoc", "1");
		SelectMgr_DataMapIteratorOfDataMapOfObjectSelectors(const SelectMgr_DataMapOfObjectSelectors &aMap);
		%feature("autodoc", "1");
		void Initialize(const SelectMgr_DataMapOfObjectSelectors &aMap);
		%feature("autodoc", "1");
		const Handle_SelectMgr_SelectableObject & Key() const;
		%feature("autodoc", "1");
		const SelectMgr_SequenceOfSelector & Value() const;

};

%nodefaultctor SelectMgr_SequenceNodeOfSequenceOfFilter;
class SelectMgr_SequenceNodeOfSequenceOfFilter : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		SelectMgr_SequenceNodeOfSequenceOfFilter(const Handle_SelectMgr_Filter &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_SelectMgr_Filter & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend SelectMgr_SequenceNodeOfSequenceOfFilter {
	Handle_SelectMgr_SequenceNodeOfSequenceOfFilter GetHandle() {
	return *(Handle_SelectMgr_SequenceNodeOfSequenceOfFilter*) &$self;
	}
};
%extend SelectMgr_SequenceNodeOfSequenceOfFilter {
	~SelectMgr_SequenceNodeOfSequenceOfFilter() {
	printf("Call custom destructor for instance of SelectMgr_SequenceNodeOfSequenceOfFilter\n");
	}
};

%nodefaultctor SelectMgr_SequenceOfFilter;
class SelectMgr_SequenceOfFilter : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		SelectMgr_SequenceOfFilter();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~SelectMgr_SequenceOfFilter();
		%feature("autodoc", "1");
		const SelectMgr_SequenceOfFilter & Assign(const SelectMgr_SequenceOfFilter &Other);
		%feature("autodoc", "1");
		void Append(const Handle_SelectMgr_Filter &T);
		%feature("autodoc", "1");
		void Append(SelectMgr_SequenceOfFilter & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_SelectMgr_Filter &T);
		%feature("autodoc", "1");
		void Prepend(SelectMgr_SequenceOfFilter & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_SelectMgr_Filter &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, SelectMgr_SequenceOfFilter & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_SelectMgr_Filter &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, SelectMgr_SequenceOfFilter & S);
		%feature("autodoc", "1");
		const Handle_SelectMgr_Filter & First() const;
		%feature("autodoc", "1");
		const Handle_SelectMgr_Filter & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, SelectMgr_SequenceOfFilter & S);
		%feature("autodoc", "1");
		const Handle_SelectMgr_Filter & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_SelectMgr_Filter & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_SelectMgr_Filter &I);
		%feature("autodoc", "1");
		Handle_SelectMgr_Filter & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_SelectMgr_Filter & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};

%nodefaultctor SelectMgr_SelectableObject;
class SelectMgr_SelectableObject : public PrsMgr_PresentableObject {
	public:
		%feature("autodoc", "1");
		virtual		Standard_Integer NbPossibleSelection() const;
		%feature("autodoc", "1");
		void UpdateSelection();
		%feature("autodoc", "1");
		void UpdateSelection(const Standard_Integer aMode);
		%feature("autodoc", "1");
		void AddSelection(const Handle_SelectMgr_Selection &aSelection, const Standard_Integer aMode);
		%feature("autodoc", "1");
		void ClearSelections(const Standard_Boolean update=0);
		%feature("autodoc", "1");
		const Handle_SelectMgr_Selection & Selection(const Standard_Integer aMode) const;
		%feature("autodoc", "1");
		Standard_Boolean HasSelection(const Standard_Integer aMode) const;
		%feature("autodoc", "1");
		void Init();
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		const Handle_SelectMgr_Selection & CurrentSelection() const;
		%feature("autodoc", "1");
		virtual		void ResetLocation();
		%feature("autodoc", "1");
		virtual		void UpdateLocation();
		%feature("autodoc", "1");
		virtual		void HilightSelected(const Handle_PrsMgr_PresentationManager3d &PM, const SelectMgr_SequenceOfOwner &Seq);
		%feature("autodoc", "1");
		virtual		void ClearSelected();
		%feature("autodoc", "1");
		virtual		void HilightOwnerWithColor(const Handle_PrsMgr_PresentationManager3d &thePM, const Quantity_NameOfColor theColor, const Handle_SelectMgr_EntityOwner &theOwner);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsAutoHilight() const;
		%feature("autodoc", "1");
		virtual		void SetAutoHilight(const Standard_Boolean newAutoHilight);
		%feature("autodoc", "1");
		Handle_Prs3d_Presentation GetHilightPresentation(const Handle_PrsMgr_PresentationManager3d &TheMgr);
		%feature("autodoc", "1");
		Handle_Prs3d_Presentation GetSelectPresentation(const Handle_PrsMgr_PresentationManager3d &TheMgr);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend SelectMgr_SelectableObject {
	Handle_SelectMgr_SelectableObject GetHandle() {
	return *(Handle_SelectMgr_SelectableObject*) &$self;
	}
};
%extend SelectMgr_SelectableObject {
	~SelectMgr_SelectableObject() {
	printf("Call custom destructor for instance of SelectMgr_SelectableObject\n");
	}
};

%nodefaultctor SelectMgr_SequenceNodeOfSequenceOfSelection;
class SelectMgr_SequenceNodeOfSequenceOfSelection : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		SelectMgr_SequenceNodeOfSequenceOfSelection(const Handle_SelectMgr_Selection &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_SelectMgr_Selection & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend SelectMgr_SequenceNodeOfSequenceOfSelection {
	Handle_SelectMgr_SequenceNodeOfSequenceOfSelection GetHandle() {
	return *(Handle_SelectMgr_SequenceNodeOfSequenceOfSelection*) &$self;
	}
};
%extend SelectMgr_SequenceNodeOfSequenceOfSelection {
	~SelectMgr_SequenceNodeOfSequenceOfSelection() {
	printf("Call custom destructor for instance of SelectMgr_SequenceNodeOfSequenceOfSelection\n");
	}
};

%nodefaultctor SelectMgr_SequenceOfOwner;
class SelectMgr_SequenceOfOwner : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		SelectMgr_SequenceOfOwner();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~SelectMgr_SequenceOfOwner();
		%feature("autodoc", "1");
		const SelectMgr_SequenceOfOwner & Assign(const SelectMgr_SequenceOfOwner &Other);
		%feature("autodoc", "1");
		void Append(const Handle_SelectMgr_EntityOwner &T);
		%feature("autodoc", "1");
		void Append(SelectMgr_SequenceOfOwner & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_SelectMgr_EntityOwner &T);
		%feature("autodoc", "1");
		void Prepend(SelectMgr_SequenceOfOwner & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_SelectMgr_EntityOwner &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, SelectMgr_SequenceOfOwner & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_SelectMgr_EntityOwner &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, SelectMgr_SequenceOfOwner & S);
		%feature("autodoc", "1");
		const Handle_SelectMgr_EntityOwner & First() const;
		%feature("autodoc", "1");
		const Handle_SelectMgr_EntityOwner & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, SelectMgr_SequenceOfOwner & S);
		%feature("autodoc", "1");
		const Handle_SelectMgr_EntityOwner & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_SelectMgr_EntityOwner & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_SelectMgr_EntityOwner &I);
		%feature("autodoc", "1");
		Handle_SelectMgr_EntityOwner & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_SelectMgr_EntityOwner & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};

%nodefaultctor SelectMgr_IndexedDataMapOfOwnerCriterion;
class SelectMgr_IndexedDataMapOfOwnerCriterion : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		SelectMgr_IndexedDataMapOfOwnerCriterion(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		SelectMgr_IndexedDataMapOfOwnerCriterion & Assign(const SelectMgr_IndexedDataMapOfOwnerCriterion &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~SelectMgr_IndexedDataMapOfOwnerCriterion();
		%feature("autodoc", "1");
		Standard_Integer Add(const Handle_SelectBasics_EntityOwner &K, const SelectMgr_SortCriterion &I);
		%feature("autodoc", "1");
		void Substitute(const Standard_Integer I, const Handle_SelectBasics_EntityOwner &K, const SelectMgr_SortCriterion &T);
		%feature("autodoc", "1");
		void RemoveLast();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Handle_SelectBasics_EntityOwner &K) const;
		%feature("autodoc", "1");
		const Handle_SelectBasics_EntityOwner & FindKey(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const SelectMgr_SortCriterion & FindFromIndex(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const SelectMgr_SortCriterion & operator()(const Standard_Integer I) const;
		%feature("autodoc", "1");
		SelectMgr_SortCriterion & ChangeFromIndex(const Standard_Integer I);
		%feature("autodoc", "1");
		SelectMgr_SortCriterion & operator()(const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_Integer FindIndex(const Handle_SelectBasics_EntityOwner &K) const;
		%feature("autodoc", "1");
		const SelectMgr_SortCriterion & FindFromKey(const Handle_SelectBasics_EntityOwner &K) const;
		%feature("autodoc", "1");
		SelectMgr_SortCriterion & ChangeFromKey(const Handle_SelectBasics_EntityOwner &K);

};

%nodefaultctor SelectMgr_SequenceOfSelector;
class SelectMgr_SequenceOfSelector : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		SelectMgr_SequenceOfSelector();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~SelectMgr_SequenceOfSelector();
		%feature("autodoc", "1");
		const SelectMgr_SequenceOfSelector & Assign(const SelectMgr_SequenceOfSelector &Other);
		%feature("autodoc", "1");
		void Append(const Handle_SelectMgr_ViewerSelector &T);
		%feature("autodoc", "1");
		void Append(SelectMgr_SequenceOfSelector & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_SelectMgr_ViewerSelector &T);
		%feature("autodoc", "1");
		void Prepend(SelectMgr_SequenceOfSelector & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_SelectMgr_ViewerSelector &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, SelectMgr_SequenceOfSelector & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_SelectMgr_ViewerSelector &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, SelectMgr_SequenceOfSelector & S);
		%feature("autodoc", "1");
		const Handle_SelectMgr_ViewerSelector & First() const;
		%feature("autodoc", "1");
		const Handle_SelectMgr_ViewerSelector & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, SelectMgr_SequenceOfSelector & S);
		%feature("autodoc", "1");
		const Handle_SelectMgr_ViewerSelector & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_SelectMgr_ViewerSelector & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_SelectMgr_ViewerSelector &I);
		%feature("autodoc", "1");
		Handle_SelectMgr_ViewerSelector & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_SelectMgr_ViewerSelector & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};

%nodefaultctor SelectMgr_DataMapOfSelectionActivation;
class SelectMgr_DataMapOfSelectionActivation : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		SelectMgr_DataMapOfSelectionActivation(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		SelectMgr_DataMapOfSelectionActivation & Assign(const SelectMgr_DataMapOfSelectionActivation &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~SelectMgr_DataMapOfSelectionActivation();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Handle_SelectMgr_Selection &K, const Standard_Integer &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Handle_SelectMgr_Selection &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Handle_SelectMgr_Selection &K);
		%feature("autodoc", "1");
		const Standard_Integer & Find(const Handle_SelectMgr_Selection &K) const;
		%feature("autodoc", "1");
		const Standard_Integer & operator()(const Handle_SelectMgr_Selection &K) const;
		%feature("autodoc", "1");
		Standard_Integer & ChangeFind(const Handle_SelectMgr_Selection &K);
		%feature("autodoc", "1");
		Standard_Integer & operator()(const Handle_SelectMgr_Selection &K);

};

%nodefaultctor SelectMgr_IndexedMapNodeOfIndexedMapOfOwner;
class SelectMgr_IndexedMapNodeOfIndexedMapOfOwner : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		SelectMgr_IndexedMapNodeOfIndexedMapOfOwner(const Handle_SelectMgr_EntityOwner &K1, const Standard_Integer K2, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
		%feature("autodoc", "1");
		Handle_SelectMgr_EntityOwner & Key1() const;
		%feature("autodoc", "1");
		Standard_Integer & Key2() const;
		%feature("autodoc", "1");
		TCollection_MapNodePtr & Next2() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend SelectMgr_IndexedMapNodeOfIndexedMapOfOwner {
	Handle_SelectMgr_IndexedMapNodeOfIndexedMapOfOwner GetHandle() {
	return *(Handle_SelectMgr_IndexedMapNodeOfIndexedMapOfOwner*) &$self;
	}
};
%extend SelectMgr_IndexedMapNodeOfIndexedMapOfOwner {
	~SelectMgr_IndexedMapNodeOfIndexedMapOfOwner() {
	printf("Call custom destructor for instance of SelectMgr_IndexedMapNodeOfIndexedMapOfOwner\n");
	}
};

%nodefaultctor SelectMgr_DataMapOfIntegerSensitive;
class SelectMgr_DataMapOfIntegerSensitive : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		SelectMgr_DataMapOfIntegerSensitive(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		SelectMgr_DataMapOfIntegerSensitive & Assign(const SelectMgr_DataMapOfIntegerSensitive &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~SelectMgr_DataMapOfIntegerSensitive();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Standard_Integer &K, const Handle_SelectBasics_SensitiveEntity &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Standard_Integer &K);
		%feature("autodoc", "1");
		const Handle_SelectBasics_SensitiveEntity & Find(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		const Handle_SelectBasics_SensitiveEntity & operator()(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Handle_SelectBasics_SensitiveEntity & ChangeFind(const Standard_Integer &K);
		%feature("autodoc", "1");
		Handle_SelectBasics_SensitiveEntity & operator()(const Standard_Integer &K);

};

%nodefaultctor SelectMgr_SequenceNodeOfSequenceOfOwner;
class SelectMgr_SequenceNodeOfSequenceOfOwner : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		SelectMgr_SequenceNodeOfSequenceOfOwner(const Handle_SelectMgr_EntityOwner &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_SelectMgr_EntityOwner & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend SelectMgr_SequenceNodeOfSequenceOfOwner {
	Handle_SelectMgr_SequenceNodeOfSequenceOfOwner GetHandle() {
	return *(Handle_SelectMgr_SequenceNodeOfSequenceOfOwner*) &$self;
	}
};
%extend SelectMgr_SequenceNodeOfSequenceOfOwner {
	~SelectMgr_SequenceNodeOfSequenceOfOwner() {
	printf("Call custom destructor for instance of SelectMgr_SequenceNodeOfSequenceOfOwner\n");
	}
};

%nodefaultctor SelectMgr_CompareResults;
class SelectMgr_CompareResults : public TCollection_CompareOfInteger {
	public:
		%feature("autodoc", "1");
		~SelectMgr_CompareResults();
		%feature("autodoc", "1");
		SelectMgr_CompareResults(const SelectMgr_IndexedDataMapOfOwnerCriterion &aMapOfCriterion);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsLower(const Standard_Integer &Left, const Standard_Integer &Right) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsGreater(const Standard_Integer &Left, const Standard_Integer &Right) const;

};

%nodefaultctor SelectMgr_IndexedDataMapNodeOfIndexedDataMapOfOwnerCriterion;
class SelectMgr_IndexedDataMapNodeOfIndexedDataMapOfOwnerCriterion : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		SelectMgr_IndexedDataMapNodeOfIndexedDataMapOfOwnerCriterion(const Handle_SelectBasics_EntityOwner &K1, const Standard_Integer K2, const SelectMgr_SortCriterion &I, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
		%feature("autodoc", "1");
		Handle_SelectBasics_EntityOwner & Key1() const;
		%feature("autodoc", "1");
		Standard_Integer & Key2() const;
		%feature("autodoc", "1");
		TCollection_MapNodePtr & Next2() const;
		%feature("autodoc", "1");
		SelectMgr_SortCriterion & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend SelectMgr_IndexedDataMapNodeOfIndexedDataMapOfOwnerCriterion {
	Handle_SelectMgr_IndexedDataMapNodeOfIndexedDataMapOfOwnerCriterion GetHandle() {
	return *(Handle_SelectMgr_IndexedDataMapNodeOfIndexedDataMapOfOwnerCriterion*) &$self;
	}
};
%extend SelectMgr_IndexedDataMapNodeOfIndexedDataMapOfOwnerCriterion {
	~SelectMgr_IndexedDataMapNodeOfIndexedDataMapOfOwnerCriterion() {
	printf("Call custom destructor for instance of SelectMgr_IndexedDataMapNodeOfIndexedDataMapOfOwnerCriterion\n");
	}
};