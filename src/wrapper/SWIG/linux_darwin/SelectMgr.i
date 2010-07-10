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
%module SelectMgr
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%pythoncode {
import GarbageCollector
};

%include SelectMgr_dependencies.i


%include SelectMgr_headers.i

typedef SelectMgr_SelectableObject * SelectMgr_SOPtr;
typedef NCollection_BaseCollection<SelectMgr_SequenceOfOwner> SelectMgr_CollectionOfSequenceOfOwner;
typedef NCollection_DataMap<Handle_SelectMgr_SelectableObject, SelectMgr_SequenceOfOwner> SelectMgr_DataMapOfObjectOwners;

enum SelectMgr_TypeOfUpdate {
	SelectMgr_TOU_Full,
	SelectMgr_TOU_Partial,
	SelectMgr_TOU_None,
	};

enum SelectMgr_StateOfSelection {
	SelectMgr_SOS_Activated,
	SelectMgr_SOS_Deactivated,
	SelectMgr_SOS_Sleeping,
	SelectMgr_SOS_Any,
	SelectMgr_SOS_Unknown,
	};



%nodefaultctor Handle_SelectMgr_SequenceNodeOfSequenceOfSelection;
class Handle_SelectMgr_SequenceNodeOfSequenceOfSelection : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_SelectMgr_SequenceNodeOfSequenceOfSelection();
		%feature("autodoc", "1");
		Handle_SelectMgr_SequenceNodeOfSequenceOfSelection(const SelectMgr_SequenceNodeOfSequenceOfSelection *aHandle);
		%feature("autodoc", "1");
		Handle_SelectMgr_SequenceNodeOfSequenceOfSelection(const SelectMgr_SequenceNodeOfSequenceOfSelection *anItem);
		%feature("autodoc", "1");
		Handle_SelectMgr_SequenceNodeOfSequenceOfSelection & operator=(const SelectMgr_SequenceNodeOfSequenceOfSelection *aHandle);
		%feature("autodoc", "1");
		Handle_SelectMgr_SequenceNodeOfSequenceOfSelection & operator=(const SelectMgr_SequenceNodeOfSequenceOfSelection *anItem);
		%feature("autodoc", "1");
		Handle_SelectMgr_SequenceNodeOfSequenceOfSelection const DownCast(const Standard_Transient *AnObject);

};
%extend Handle_SelectMgr_SequenceNodeOfSequenceOfSelection {
	SelectMgr_SequenceNodeOfSequenceOfSelection* GetObject() {
	return (SelectMgr_SequenceNodeOfSequenceOfSelection*)$self->Access();
	}
};
%feature("shadow") Handle_SelectMgr_SequenceNodeOfSequenceOfSelection::~Handle_SelectMgr_SequenceNodeOfSequenceOfSelection %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_SelectMgr_SequenceNodeOfSequenceOfSelection {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_SelectMgr_ViewerSelector;
class Handle_SelectMgr_ViewerSelector : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_SelectMgr_ViewerSelector();
		%feature("autodoc", "1");
		Handle_SelectMgr_ViewerSelector(const SelectMgr_ViewerSelector *aHandle);
		%feature("autodoc", "1");
		Handle_SelectMgr_ViewerSelector(const SelectMgr_ViewerSelector *anItem);
		%feature("autodoc", "1");
		Handle_SelectMgr_ViewerSelector & operator=(const SelectMgr_ViewerSelector *aHandle);
		%feature("autodoc", "1");
		Handle_SelectMgr_ViewerSelector & operator=(const SelectMgr_ViewerSelector *anItem);
		%feature("autodoc", "1");
		Handle_SelectMgr_ViewerSelector const DownCast(const Standard_Transient *AnObject);

};
%extend Handle_SelectMgr_ViewerSelector {
	SelectMgr_ViewerSelector* GetObject() {
	return (SelectMgr_ViewerSelector*)$self->Access();
	}
};
%feature("shadow") Handle_SelectMgr_ViewerSelector::~Handle_SelectMgr_ViewerSelector %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_SelectMgr_ViewerSelector {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_SelectMgr_EntityOwner;
class Handle_SelectMgr_EntityOwner : public Handle_SelectBasics_EntityOwner {
	public:
		%feature("autodoc", "1");
		Handle_SelectMgr_EntityOwner();
		%feature("autodoc", "1");
		Handle_SelectMgr_EntityOwner(const SelectMgr_EntityOwner *aHandle);
		%feature("autodoc", "1");
		Handle_SelectMgr_EntityOwner(const SelectMgr_EntityOwner *anItem);
		%feature("autodoc", "1");
		Handle_SelectMgr_EntityOwner & operator=(const SelectMgr_EntityOwner *aHandle);
		%feature("autodoc", "1");
		Handle_SelectMgr_EntityOwner & operator=(const SelectMgr_EntityOwner *anItem);
		%feature("autodoc", "1");
		Handle_SelectMgr_EntityOwner const DownCast(const Standard_Transient *AnObject);

};
%extend Handle_SelectMgr_EntityOwner {
	SelectMgr_EntityOwner* GetObject() {
	return (SelectMgr_EntityOwner*)$self->Access();
	}
};
%feature("shadow") Handle_SelectMgr_EntityOwner::~Handle_SelectMgr_EntityOwner %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_SelectMgr_EntityOwner {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_SelectMgr_DataMapNodeOfDataMapOfObjectSelectors;
class Handle_SelectMgr_DataMapNodeOfDataMapOfObjectSelectors : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_SelectMgr_DataMapNodeOfDataMapOfObjectSelectors();
		%feature("autodoc", "1");
		Handle_SelectMgr_DataMapNodeOfDataMapOfObjectSelectors(const SelectMgr_DataMapNodeOfDataMapOfObjectSelectors *aHandle);
		%feature("autodoc", "1");
		Handle_SelectMgr_DataMapNodeOfDataMapOfObjectSelectors(const SelectMgr_DataMapNodeOfDataMapOfObjectSelectors *anItem);
		%feature("autodoc", "1");
		Handle_SelectMgr_DataMapNodeOfDataMapOfObjectSelectors & operator=(const SelectMgr_DataMapNodeOfDataMapOfObjectSelectors *aHandle);
		%feature("autodoc", "1");
		Handle_SelectMgr_DataMapNodeOfDataMapOfObjectSelectors & operator=(const SelectMgr_DataMapNodeOfDataMapOfObjectSelectors *anItem);
		%feature("autodoc", "1");
		Handle_SelectMgr_DataMapNodeOfDataMapOfObjectSelectors const DownCast(const Standard_Transient *AnObject);

};
%extend Handle_SelectMgr_DataMapNodeOfDataMapOfObjectSelectors {
	SelectMgr_DataMapNodeOfDataMapOfObjectSelectors* GetObject() {
	return (SelectMgr_DataMapNodeOfDataMapOfObjectSelectors*)$self->Access();
	}
};
%feature("shadow") Handle_SelectMgr_DataMapNodeOfDataMapOfObjectSelectors::~Handle_SelectMgr_DataMapNodeOfDataMapOfObjectSelectors %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_SelectMgr_DataMapNodeOfDataMapOfObjectSelectors {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_SelectMgr_SelectableObject;
class Handle_SelectMgr_SelectableObject : public Handle_PrsMgr_PresentableObject {
	public:
		%feature("autodoc", "1");
		Handle_SelectMgr_SelectableObject();
		%feature("autodoc", "1");
		Handle_SelectMgr_SelectableObject(const SelectMgr_SelectableObject *aHandle);
		%feature("autodoc", "1");
		Handle_SelectMgr_SelectableObject(const SelectMgr_SelectableObject *anItem);
		%feature("autodoc", "1");
		Handle_SelectMgr_SelectableObject & operator=(const SelectMgr_SelectableObject *aHandle);
		%feature("autodoc", "1");
		Handle_SelectMgr_SelectableObject & operator=(const SelectMgr_SelectableObject *anItem);
		%feature("autodoc", "1");
		Handle_SelectMgr_SelectableObject const DownCast(const Standard_Transient *AnObject);

};
%extend Handle_SelectMgr_SelectableObject {
	SelectMgr_SelectableObject* GetObject() {
	return (SelectMgr_SelectableObject*)$self->Access();
	}
};
%feature("shadow") Handle_SelectMgr_SelectableObject::~Handle_SelectMgr_SelectableObject %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_SelectMgr_SelectableObject {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_SelectMgr_Selection;
class Handle_SelectMgr_Selection : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_SelectMgr_Selection();
		%feature("autodoc", "1");
		Handle_SelectMgr_Selection(const SelectMgr_Selection *aHandle);
		%feature("autodoc", "1");
		Handle_SelectMgr_Selection(const SelectMgr_Selection *anItem);
		%feature("autodoc", "1");
		Handle_SelectMgr_Selection & operator=(const SelectMgr_Selection *aHandle);
		%feature("autodoc", "1");
		Handle_SelectMgr_Selection & operator=(const SelectMgr_Selection *anItem);
		%feature("autodoc", "1");
		Handle_SelectMgr_Selection const DownCast(const Standard_Transient *AnObject);

};
%extend Handle_SelectMgr_Selection {
	SelectMgr_Selection* GetObject() {
	return (SelectMgr_Selection*)$self->Access();
	}
};
%feature("shadow") Handle_SelectMgr_Selection::~Handle_SelectMgr_Selection %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_SelectMgr_Selection {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_SelectMgr_Filter;
class Handle_SelectMgr_Filter : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_SelectMgr_Filter();
		%feature("autodoc", "1");
		Handle_SelectMgr_Filter(const SelectMgr_Filter *aHandle);
		%feature("autodoc", "1");
		Handle_SelectMgr_Filter(const SelectMgr_Filter *anItem);
		%feature("autodoc", "1");
		Handle_SelectMgr_Filter & operator=(const SelectMgr_Filter *aHandle);
		%feature("autodoc", "1");
		Handle_SelectMgr_Filter & operator=(const SelectMgr_Filter *anItem);
		%feature("autodoc", "1");
		Handle_SelectMgr_Filter const DownCast(const Standard_Transient *AnObject);

};
%extend Handle_SelectMgr_Filter {
	SelectMgr_Filter* GetObject() {
	return (SelectMgr_Filter*)$self->Access();
	}
};
%feature("shadow") Handle_SelectMgr_Filter::~Handle_SelectMgr_Filter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_SelectMgr_Filter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_SelectMgr_CompositionFilter;
class Handle_SelectMgr_CompositionFilter : public Handle_SelectMgr_Filter {
	public:
		%feature("autodoc", "1");
		Handle_SelectMgr_CompositionFilter();
		%feature("autodoc", "1");
		Handle_SelectMgr_CompositionFilter(const SelectMgr_CompositionFilter *aHandle);
		%feature("autodoc", "1");
		Handle_SelectMgr_CompositionFilter(const SelectMgr_CompositionFilter *anItem);
		%feature("autodoc", "1");
		Handle_SelectMgr_CompositionFilter & operator=(const SelectMgr_CompositionFilter *aHandle);
		%feature("autodoc", "1");
		Handle_SelectMgr_CompositionFilter & operator=(const SelectMgr_CompositionFilter *anItem);
		%feature("autodoc", "1");
		Handle_SelectMgr_CompositionFilter const DownCast(const Standard_Transient *AnObject);

};
%extend Handle_SelectMgr_CompositionFilter {
	SelectMgr_CompositionFilter* GetObject() {
	return (SelectMgr_CompositionFilter*)$self->Access();
	}
};
%feature("shadow") Handle_SelectMgr_CompositionFilter::~Handle_SelectMgr_CompositionFilter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_SelectMgr_CompositionFilter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_SelectMgr_OrFilter;
class Handle_SelectMgr_OrFilter : public Handle_SelectMgr_CompositionFilter {
	public:
		%feature("autodoc", "1");
		Handle_SelectMgr_OrFilter();
		%feature("autodoc", "1");
		Handle_SelectMgr_OrFilter(const SelectMgr_OrFilter *aHandle);
		%feature("autodoc", "1");
		Handle_SelectMgr_OrFilter(const SelectMgr_OrFilter *anItem);
		%feature("autodoc", "1");
		Handle_SelectMgr_OrFilter & operator=(const SelectMgr_OrFilter *aHandle);
		%feature("autodoc", "1");
		Handle_SelectMgr_OrFilter & operator=(const SelectMgr_OrFilter *anItem);
		%feature("autodoc", "1");
		Handle_SelectMgr_OrFilter const DownCast(const Standard_Transient *AnObject);

};
%extend Handle_SelectMgr_OrFilter {
	SelectMgr_OrFilter* GetObject() {
	return (SelectMgr_OrFilter*)$self->Access();
	}
};
%feature("shadow") Handle_SelectMgr_OrFilter::~Handle_SelectMgr_OrFilter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_SelectMgr_OrFilter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_SelectMgr_DataMapNodeOfDataMapOfIntegerSensitive;
class Handle_SelectMgr_DataMapNodeOfDataMapOfIntegerSensitive : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_SelectMgr_DataMapNodeOfDataMapOfIntegerSensitive();
		%feature("autodoc", "1");
		Handle_SelectMgr_DataMapNodeOfDataMapOfIntegerSensitive(const SelectMgr_DataMapNodeOfDataMapOfIntegerSensitive *aHandle);
		%feature("autodoc", "1");
		Handle_SelectMgr_DataMapNodeOfDataMapOfIntegerSensitive(const SelectMgr_DataMapNodeOfDataMapOfIntegerSensitive *anItem);
		%feature("autodoc", "1");
		Handle_SelectMgr_DataMapNodeOfDataMapOfIntegerSensitive & operator=(const SelectMgr_DataMapNodeOfDataMapOfIntegerSensitive *aHandle);
		%feature("autodoc", "1");
		Handle_SelectMgr_DataMapNodeOfDataMapOfIntegerSensitive & operator=(const SelectMgr_DataMapNodeOfDataMapOfIntegerSensitive *anItem);
		%feature("autodoc", "1");
		Handle_SelectMgr_DataMapNodeOfDataMapOfIntegerSensitive const DownCast(const Standard_Transient *AnObject);

};
%extend Handle_SelectMgr_DataMapNodeOfDataMapOfIntegerSensitive {
	SelectMgr_DataMapNodeOfDataMapOfIntegerSensitive* GetObject() {
	return (SelectMgr_DataMapNodeOfDataMapOfIntegerSensitive*)$self->Access();
	}
};
%feature("shadow") Handle_SelectMgr_DataMapNodeOfDataMapOfIntegerSensitive::~Handle_SelectMgr_DataMapNodeOfDataMapOfIntegerSensitive %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_SelectMgr_DataMapNodeOfDataMapOfIntegerSensitive {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_SelectMgr_AndFilter;
class Handle_SelectMgr_AndFilter : public Handle_SelectMgr_CompositionFilter {
	public:
		%feature("autodoc", "1");
		Handle_SelectMgr_AndFilter();
		%feature("autodoc", "1");
		Handle_SelectMgr_AndFilter(const SelectMgr_AndFilter *aHandle);
		%feature("autodoc", "1");
		Handle_SelectMgr_AndFilter(const SelectMgr_AndFilter *anItem);
		%feature("autodoc", "1");
		Handle_SelectMgr_AndFilter & operator=(const SelectMgr_AndFilter *aHandle);
		%feature("autodoc", "1");
		Handle_SelectMgr_AndFilter & operator=(const SelectMgr_AndFilter *anItem);
		%feature("autodoc", "1");
		Handle_SelectMgr_AndFilter const DownCast(const Standard_Transient *AnObject);

};
%extend Handle_SelectMgr_AndFilter {
	SelectMgr_AndFilter* GetObject() {
	return (SelectMgr_AndFilter*)$self->Access();
	}
};
%feature("shadow") Handle_SelectMgr_AndFilter::~Handle_SelectMgr_AndFilter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_SelectMgr_AndFilter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_SelectMgr_IndexedMapNodeOfIndexedMapOfOwner;
class Handle_SelectMgr_IndexedMapNodeOfIndexedMapOfOwner : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_SelectMgr_IndexedMapNodeOfIndexedMapOfOwner();
		%feature("autodoc", "1");
		Handle_SelectMgr_IndexedMapNodeOfIndexedMapOfOwner(const SelectMgr_IndexedMapNodeOfIndexedMapOfOwner *aHandle);
		%feature("autodoc", "1");
		Handle_SelectMgr_IndexedMapNodeOfIndexedMapOfOwner(const SelectMgr_IndexedMapNodeOfIndexedMapOfOwner *anItem);
		%feature("autodoc", "1");
		Handle_SelectMgr_IndexedMapNodeOfIndexedMapOfOwner & operator=(const SelectMgr_IndexedMapNodeOfIndexedMapOfOwner *aHandle);
		%feature("autodoc", "1");
		Handle_SelectMgr_IndexedMapNodeOfIndexedMapOfOwner & operator=(const SelectMgr_IndexedMapNodeOfIndexedMapOfOwner *anItem);
		%feature("autodoc", "1");
		Handle_SelectMgr_IndexedMapNodeOfIndexedMapOfOwner const DownCast(const Standard_Transient *AnObject);

};
%extend Handle_SelectMgr_IndexedMapNodeOfIndexedMapOfOwner {
	SelectMgr_IndexedMapNodeOfIndexedMapOfOwner* GetObject() {
	return (SelectMgr_IndexedMapNodeOfIndexedMapOfOwner*)$self->Access();
	}
};
%feature("shadow") Handle_SelectMgr_IndexedMapNodeOfIndexedMapOfOwner::~Handle_SelectMgr_IndexedMapNodeOfIndexedMapOfOwner %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_SelectMgr_IndexedMapNodeOfIndexedMapOfOwner {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_SelectMgr_SequenceNodeOfSequenceOfOwner;
class Handle_SelectMgr_SequenceNodeOfSequenceOfOwner : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_SelectMgr_SequenceNodeOfSequenceOfOwner();
		%feature("autodoc", "1");
		Handle_SelectMgr_SequenceNodeOfSequenceOfOwner(const SelectMgr_SequenceNodeOfSequenceOfOwner *aHandle);
		%feature("autodoc", "1");
		Handle_SelectMgr_SequenceNodeOfSequenceOfOwner(const SelectMgr_SequenceNodeOfSequenceOfOwner *anItem);
		%feature("autodoc", "1");
		Handle_SelectMgr_SequenceNodeOfSequenceOfOwner & operator=(const SelectMgr_SequenceNodeOfSequenceOfOwner *aHandle);
		%feature("autodoc", "1");
		Handle_SelectMgr_SequenceNodeOfSequenceOfOwner & operator=(const SelectMgr_SequenceNodeOfSequenceOfOwner *anItem);
		%feature("autodoc", "1");
		Handle_SelectMgr_SequenceNodeOfSequenceOfOwner const DownCast(const Standard_Transient *AnObject);

};
%extend Handle_SelectMgr_SequenceNodeOfSequenceOfOwner {
	SelectMgr_SequenceNodeOfSequenceOfOwner* GetObject() {
	return (SelectMgr_SequenceNodeOfSequenceOfOwner*)$self->Access();
	}
};
%feature("shadow") Handle_SelectMgr_SequenceNodeOfSequenceOfOwner::~Handle_SelectMgr_SequenceNodeOfSequenceOfOwner %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_SelectMgr_SequenceNodeOfSequenceOfOwner {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_SelectMgr_SelectionManager;
class Handle_SelectMgr_SelectionManager : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_SelectMgr_SelectionManager();
		%feature("autodoc", "1");
		Handle_SelectMgr_SelectionManager(const SelectMgr_SelectionManager *aHandle);
		%feature("autodoc", "1");
		Handle_SelectMgr_SelectionManager(const SelectMgr_SelectionManager *anItem);
		%feature("autodoc", "1");
		Handle_SelectMgr_SelectionManager & operator=(const SelectMgr_SelectionManager *aHandle);
		%feature("autodoc", "1");
		Handle_SelectMgr_SelectionManager & operator=(const SelectMgr_SelectionManager *anItem);
		%feature("autodoc", "1");
		Handle_SelectMgr_SelectionManager const DownCast(const Standard_Transient *AnObject);

};
%extend Handle_SelectMgr_SelectionManager {
	SelectMgr_SelectionManager* GetObject() {
	return (SelectMgr_SelectionManager*)$self->Access();
	}
};
%feature("shadow") Handle_SelectMgr_SelectionManager::~Handle_SelectMgr_SelectionManager %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_SelectMgr_SelectionManager {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_SelectMgr_ListNodeOfListOfFilter;
class Handle_SelectMgr_ListNodeOfListOfFilter : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_SelectMgr_ListNodeOfListOfFilter();
		%feature("autodoc", "1");
		Handle_SelectMgr_ListNodeOfListOfFilter(const SelectMgr_ListNodeOfListOfFilter *aHandle);
		%feature("autodoc", "1");
		Handle_SelectMgr_ListNodeOfListOfFilter(const SelectMgr_ListNodeOfListOfFilter *anItem);
		%feature("autodoc", "1");
		Handle_SelectMgr_ListNodeOfListOfFilter & operator=(const SelectMgr_ListNodeOfListOfFilter *aHandle);
		%feature("autodoc", "1");
		Handle_SelectMgr_ListNodeOfListOfFilter & operator=(const SelectMgr_ListNodeOfListOfFilter *anItem);
		%feature("autodoc", "1");
		Handle_SelectMgr_ListNodeOfListOfFilter const DownCast(const Standard_Transient *AnObject);

};
%extend Handle_SelectMgr_ListNodeOfListOfFilter {
	SelectMgr_ListNodeOfListOfFilter* GetObject() {
	return (SelectMgr_ListNodeOfListOfFilter*)$self->Access();
	}
};
%feature("shadow") Handle_SelectMgr_ListNodeOfListOfFilter::~Handle_SelectMgr_ListNodeOfListOfFilter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_SelectMgr_ListNodeOfListOfFilter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_SelectMgr_SequenceNodeOfSequenceOfFilter;
class Handle_SelectMgr_SequenceNodeOfSequenceOfFilter : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_SelectMgr_SequenceNodeOfSequenceOfFilter();
		%feature("autodoc", "1");
		Handle_SelectMgr_SequenceNodeOfSequenceOfFilter(const SelectMgr_SequenceNodeOfSequenceOfFilter *aHandle);
		%feature("autodoc", "1");
		Handle_SelectMgr_SequenceNodeOfSequenceOfFilter(const SelectMgr_SequenceNodeOfSequenceOfFilter *anItem);
		%feature("autodoc", "1");
		Handle_SelectMgr_SequenceNodeOfSequenceOfFilter & operator=(const SelectMgr_SequenceNodeOfSequenceOfFilter *aHandle);
		%feature("autodoc", "1");
		Handle_SelectMgr_SequenceNodeOfSequenceOfFilter & operator=(const SelectMgr_SequenceNodeOfSequenceOfFilter *anItem);
		%feature("autodoc", "1");
		Handle_SelectMgr_SequenceNodeOfSequenceOfFilter const DownCast(const Standard_Transient *AnObject);

};
%extend Handle_SelectMgr_SequenceNodeOfSequenceOfFilter {
	SelectMgr_SequenceNodeOfSequenceOfFilter* GetObject() {
	return (SelectMgr_SequenceNodeOfSequenceOfFilter*)$self->Access();
	}
};
%feature("shadow") Handle_SelectMgr_SequenceNodeOfSequenceOfFilter::~Handle_SelectMgr_SequenceNodeOfSequenceOfFilter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_SelectMgr_SequenceNodeOfSequenceOfFilter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_SelectMgr_DataMapNodeOfDataMapOfSelectionActivation;
class Handle_SelectMgr_DataMapNodeOfDataMapOfSelectionActivation : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_SelectMgr_DataMapNodeOfDataMapOfSelectionActivation();
		%feature("autodoc", "1");
		Handle_SelectMgr_DataMapNodeOfDataMapOfSelectionActivation(const SelectMgr_DataMapNodeOfDataMapOfSelectionActivation *aHandle);
		%feature("autodoc", "1");
		Handle_SelectMgr_DataMapNodeOfDataMapOfSelectionActivation(const SelectMgr_DataMapNodeOfDataMapOfSelectionActivation *anItem);
		%feature("autodoc", "1");
		Handle_SelectMgr_DataMapNodeOfDataMapOfSelectionActivation & operator=(const SelectMgr_DataMapNodeOfDataMapOfSelectionActivation *aHandle);
		%feature("autodoc", "1");
		Handle_SelectMgr_DataMapNodeOfDataMapOfSelectionActivation & operator=(const SelectMgr_DataMapNodeOfDataMapOfSelectionActivation *anItem);
		%feature("autodoc", "1");
		Handle_SelectMgr_DataMapNodeOfDataMapOfSelectionActivation const DownCast(const Standard_Transient *AnObject);

};
%extend Handle_SelectMgr_DataMapNodeOfDataMapOfSelectionActivation {
	SelectMgr_DataMapNodeOfDataMapOfSelectionActivation* GetObject() {
	return (SelectMgr_DataMapNodeOfDataMapOfSelectionActivation*)$self->Access();
	}
};
%feature("shadow") Handle_SelectMgr_DataMapNodeOfDataMapOfSelectionActivation::~Handle_SelectMgr_DataMapNodeOfDataMapOfSelectionActivation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_SelectMgr_DataMapNodeOfDataMapOfSelectionActivation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_SelectMgr_SequenceNodeOfSequenceOfSelector;
class Handle_SelectMgr_SequenceNodeOfSequenceOfSelector : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_SelectMgr_SequenceNodeOfSequenceOfSelector();
		%feature("autodoc", "1");
		Handle_SelectMgr_SequenceNodeOfSequenceOfSelector(const SelectMgr_SequenceNodeOfSequenceOfSelector *aHandle);
		%feature("autodoc", "1");
		Handle_SelectMgr_SequenceNodeOfSequenceOfSelector(const SelectMgr_SequenceNodeOfSequenceOfSelector *anItem);
		%feature("autodoc", "1");
		Handle_SelectMgr_SequenceNodeOfSequenceOfSelector & operator=(const SelectMgr_SequenceNodeOfSequenceOfSelector *aHandle);
		%feature("autodoc", "1");
		Handle_SelectMgr_SequenceNodeOfSequenceOfSelector & operator=(const SelectMgr_SequenceNodeOfSequenceOfSelector *anItem);
		%feature("autodoc", "1");
		Handle_SelectMgr_SequenceNodeOfSequenceOfSelector const DownCast(const Standard_Transient *AnObject);

};
%extend Handle_SelectMgr_SequenceNodeOfSequenceOfSelector {
	SelectMgr_SequenceNodeOfSequenceOfSelector* GetObject() {
	return (SelectMgr_SequenceNodeOfSequenceOfSelector*)$self->Access();
	}
};
%feature("shadow") Handle_SelectMgr_SequenceNodeOfSequenceOfSelector::~Handle_SelectMgr_SequenceNodeOfSequenceOfSelector %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_SelectMgr_SequenceNodeOfSequenceOfSelector {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_SelectMgr_IndexedDataMapNodeOfIndexedDataMapOfOwnerCriterion;
class Handle_SelectMgr_IndexedDataMapNodeOfIndexedDataMapOfOwnerCriterion : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_SelectMgr_IndexedDataMapNodeOfIndexedDataMapOfOwnerCriterion();
		%feature("autodoc", "1");
		Handle_SelectMgr_IndexedDataMapNodeOfIndexedDataMapOfOwnerCriterion(const SelectMgr_IndexedDataMapNodeOfIndexedDataMapOfOwnerCriterion *aHandle);
		%feature("autodoc", "1");
		Handle_SelectMgr_IndexedDataMapNodeOfIndexedDataMapOfOwnerCriterion(const SelectMgr_IndexedDataMapNodeOfIndexedDataMapOfOwnerCriterion *anItem);
		%feature("autodoc", "1");
		Handle_SelectMgr_IndexedDataMapNodeOfIndexedDataMapOfOwnerCriterion & operator=(const SelectMgr_IndexedDataMapNodeOfIndexedDataMapOfOwnerCriterion *aHandle);
		%feature("autodoc", "1");
		Handle_SelectMgr_IndexedDataMapNodeOfIndexedDataMapOfOwnerCriterion & operator=(const SelectMgr_IndexedDataMapNodeOfIndexedDataMapOfOwnerCriterion *anItem);
		%feature("autodoc", "1");
		Handle_SelectMgr_IndexedDataMapNodeOfIndexedDataMapOfOwnerCriterion const DownCast(const Standard_Transient *AnObject);

};
%extend Handle_SelectMgr_IndexedDataMapNodeOfIndexedDataMapOfOwnerCriterion {
	SelectMgr_IndexedDataMapNodeOfIndexedDataMapOfOwnerCriterion* GetObject() {
	return (SelectMgr_IndexedDataMapNodeOfIndexedDataMapOfOwnerCriterion*)$self->Access();
	}
};
%feature("shadow") Handle_SelectMgr_IndexedDataMapNodeOfIndexedDataMapOfOwnerCriterion::~Handle_SelectMgr_IndexedDataMapNodeOfIndexedDataMapOfOwnerCriterion %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_SelectMgr_IndexedDataMapNodeOfIndexedDataMapOfOwnerCriterion {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SelectMgr_IndexedDataMapOfOwnerCriterion;
class SelectMgr_IndexedDataMapOfOwnerCriterion : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		SelectMgr_IndexedDataMapOfOwnerCriterion(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		SelectMgr_IndexedDataMapOfOwnerCriterion & Assign(const SelectMgr_IndexedDataMapOfOwnerCriterion &Other);
		%feature("autodoc", "1");
		SelectMgr_IndexedDataMapOfOwnerCriterion & operator=(const SelectMgr_IndexedDataMapOfOwnerCriterion &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer Add(const SelectBasics_EntityOwner *K, const SelectMgr_SortCriterion &I);
		%feature("autodoc", "1");
		void Substitute(const Standard_Integer I, const SelectBasics_EntityOwner *K, const SelectMgr_SortCriterion &T);
		%feature("autodoc", "1");
		void RemoveLast();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const SelectBasics_EntityOwner *K) const;
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
		Standard_Integer FindIndex(const SelectBasics_EntityOwner *K) const;
		%feature("autodoc", "1");
		const SelectMgr_SortCriterion & FindFromKey(const SelectBasics_EntityOwner *K) const;
		%feature("autodoc", "1");
		SelectMgr_SortCriterion & ChangeFromKey(const SelectBasics_EntityOwner *K);

};
%feature("shadow") SelectMgr_IndexedDataMapOfOwnerCriterion::~SelectMgr_IndexedDataMapOfOwnerCriterion %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SelectMgr_IndexedDataMapOfOwnerCriterion {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SelectMgr_ListIteratorOfListOfFilter;
class SelectMgr_ListIteratorOfListOfFilter {
	public:
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
%feature("shadow") SelectMgr_ListIteratorOfListOfFilter::~SelectMgr_ListIteratorOfListOfFilter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SelectMgr_ListIteratorOfListOfFilter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SelectMgr_Selection;
class SelectMgr_Selection : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		SelectMgr_Selection(const Standard_Integer IdMode=0);
		%feature("autodoc", "1");
		void Add(const SelectBasics_SensitiveEntity *aprimitive);
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
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") SelectMgr_Selection::~SelectMgr_Selection %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SelectMgr_Selection {
	void _kill_pointed() {
		delete $self;
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
		SelectMgr_DataMapOfObjectSelectors & operator=(const SelectMgr_DataMapOfObjectSelectors &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const SelectMgr_SelectableObject *K, const SelectMgr_SequenceOfSelector &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const SelectMgr_SelectableObject *K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const SelectMgr_SelectableObject *K);
		%feature("autodoc", "1");
		const SelectMgr_SequenceOfSelector & Find(const SelectMgr_SelectableObject *K) const;
		%feature("autodoc", "1");
		const SelectMgr_SequenceOfSelector & operator()(const SelectMgr_SelectableObject *K) const;
		%feature("autodoc", "1");
		SelectMgr_SequenceOfSelector & ChangeFind(const SelectMgr_SelectableObject *K);
		%feature("autodoc", "1");
		SelectMgr_SequenceOfSelector & operator()(const SelectMgr_SelectableObject *K);

};
%feature("shadow") SelectMgr_DataMapOfObjectSelectors::~SelectMgr_DataMapOfObjectSelectors %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SelectMgr_DataMapOfObjectSelectors {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SelectMgr_ListNodeOfListOfFilter;
class SelectMgr_ListNodeOfListOfFilter : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		SelectMgr_ListNodeOfListOfFilter(const SelectMgr_Filter *I, const TCollection_MapNodePtr &n);
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
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") SelectMgr_ListNodeOfListOfFilter::~SelectMgr_ListNodeOfListOfFilter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SelectMgr_ListNodeOfListOfFilter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SelectMgr_SelectionManager;
class SelectMgr_SelectionManager : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		SelectMgr_SelectionManager();
		%feature("autodoc", "1");
		void Add(const SelectMgr_ViewerSelector *aSelector);
		%feature("autodoc", "1");
		void Remove(const SelectMgr_ViewerSelector *aSelector);
		%feature("autodoc", "1");
		Standard_Boolean Contains(const SelectMgr_ViewerSelector *aSelector) const;
		%feature("autodoc", "1");
		Standard_Boolean Contains(const SelectMgr_SelectableObject *aSelectableObject) const;
		%feature("autodoc", "1");
		void Load(const SelectMgr_SelectableObject *anObject, const Standard_Integer aMode=-0x000000001);
		%feature("autodoc", "1");
		void Load(const SelectMgr_SelectableObject *anObject, const SelectMgr_ViewerSelector *aSelector, const Standard_Integer aMode=-0x000000001);
		%feature("autodoc", "1");
		void Remove(const SelectMgr_SelectableObject *anObject);
		%feature("autodoc", "1");
		void Remove(const SelectMgr_SelectableObject *anObject, const SelectMgr_ViewerSelector *aSelector);
		%feature("autodoc", "1");
		void Activate(const SelectMgr_SelectableObject *anObject, const Standard_Integer aMode=0, const Standard_Boolean AutomaticProj=1);
		%feature("autodoc", "1");
		void Activate(const SelectMgr_SelectableObject *anObject, const Standard_Integer aMode, const SelectMgr_ViewerSelector *aSelector, const Standard_Boolean AutomaticProj=1);
		%feature("autodoc", "1");
		void Deactivate(const SelectMgr_SelectableObject *anObject);
		%feature("autodoc", "1");
		void Deactivate(const SelectMgr_SelectableObject *anObject, const Standard_Integer aMode);
		%feature("autodoc", "1");
		void Deactivate(const SelectMgr_SelectableObject *anObject, const Standard_Integer aMode, const SelectMgr_ViewerSelector *aSelector);
		%feature("autodoc", "1");
		void Deactivate(const SelectMgr_SelectableObject *anObject, const SelectMgr_ViewerSelector *aSelector);
		%feature("autodoc", "1");
		void Sleep(const SelectMgr_ViewerSelector *aSelector);
		%feature("autodoc", "1");
		void Sleep(const SelectMgr_SelectableObject *anObject);
		%feature("autodoc", "1");
		void Sleep(const SelectMgr_SelectableObject *anObject, const SelectMgr_ViewerSelector *aSelector);
		%feature("autodoc", "1");
		void Awake(const SelectMgr_ViewerSelector *aSelector, const Standard_Boolean AutomaticProj=1);
		%feature("autodoc", "1");
		void Awake(const SelectMgr_SelectableObject *anObject, const Standard_Boolean AutomaticProj=1);
		%feature("autodoc", "1");
		void Awake(const SelectMgr_SelectableObject *anObject, const SelectMgr_ViewerSelector *aSelector, const Standard_Boolean AutomaticProj=1);
		%feature("autodoc", "1");
		Standard_Boolean IsActivated(const SelectMgr_SelectableObject *anObject) const;
		%feature("autodoc", "1");
		Standard_Boolean IsActivated(const SelectMgr_SelectableObject *anObject, const Standard_Integer aMode) const;
		%feature("autodoc", "1");
		Standard_Boolean IsActivated(const SelectMgr_SelectableObject *anObject, const SelectMgr_ViewerSelector *aSelector, const Standard_Integer aMode) const;
		%feature("autodoc", "1");
		void RecomputeSelection(const SelectMgr_SelectableObject *anIObj, const Standard_Boolean ForceUpdate=0, const Standard_Integer aMode=-0x000000001);
		%feature("autodoc", "1");
		void Update(const SelectMgr_SelectableObject *anObject, const Standard_Boolean ForceUpdate=1);
		%feature("autodoc", "1");
		void Update(const SelectMgr_SelectableObject *anObject, const SelectMgr_ViewerSelector *aSelector, const Standard_Boolean ForceUpdate=1);
		%feature("autodoc", "1");
		void SetUpdateMode(const SelectMgr_SelectableObject *anObject, const SelectMgr_TypeOfUpdate aType);
		%feature("autodoc", "1");
		void SetUpdateMode(const SelectMgr_SelectableObject *anObject, const Standard_Integer aSelMode, const SelectMgr_TypeOfUpdate aType);
		%feature("autodoc", "1");
		TCollection_AsciiString Status() const;
		%feature("autodoc", "1");
		TCollection_AsciiString Status(const SelectMgr_SelectableObject *anObject) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend SelectMgr_SelectionManager {
	Handle_SelectMgr_SelectionManager GetHandle() {
	return *(Handle_SelectMgr_SelectionManager*) &$self;
	}
};
%extend SelectMgr_SelectionManager {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") SelectMgr_SelectionManager::~SelectMgr_SelectionManager %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SelectMgr_SelectionManager {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SelectMgr_IndexedDataMapNodeOfIndexedDataMapOfOwnerCriterion;
class SelectMgr_IndexedDataMapNodeOfIndexedDataMapOfOwnerCriterion : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		SelectMgr_IndexedDataMapNodeOfIndexedDataMapOfOwnerCriterion(const SelectBasics_EntityOwner *K1, const Standard_Integer K2, const SelectMgr_SortCriterion &I, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
		%feature("autodoc", "1");
		Handle_SelectBasics_EntityOwner & Key1() const;
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetKey2() {
				return (Standard_Integer) $self->Key2();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetKey2(Standard_Integer value ) {
				$self->Key2()=value;
				}
		};
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
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") SelectMgr_IndexedDataMapNodeOfIndexedDataMapOfOwnerCriterion::~SelectMgr_IndexedDataMapNodeOfIndexedDataMapOfOwnerCriterion %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SelectMgr_IndexedDataMapNodeOfIndexedDataMapOfOwnerCriterion {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SelectMgr_DataMapNodeOfDataMapOfIntegerSensitive;
class SelectMgr_DataMapNodeOfDataMapOfIntegerSensitive : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		SelectMgr_DataMapNodeOfDataMapOfIntegerSensitive(const Standard_Integer &K, const SelectBasics_SensitiveEntity *I, const TCollection_MapNodePtr &n);
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetKey() {
				return (Standard_Integer) $self->Key();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetKey(Standard_Integer value ) {
				$self->Key()=value;
				}
		};
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
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") SelectMgr_DataMapNodeOfDataMapOfIntegerSensitive::~SelectMgr_DataMapNodeOfDataMapOfIntegerSensitive %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SelectMgr_DataMapNodeOfDataMapOfIntegerSensitive {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SelectMgr_IndexedMapNodeOfIndexedMapOfOwner;
class SelectMgr_IndexedMapNodeOfIndexedMapOfOwner : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		SelectMgr_IndexedMapNodeOfIndexedMapOfOwner(const SelectMgr_EntityOwner *K1, const Standard_Integer K2, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
		%feature("autodoc", "1");
		Handle_SelectMgr_EntityOwner & Key1() const;
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetKey2() {
				return (Standard_Integer) $self->Key2();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetKey2(Standard_Integer value ) {
				$self->Key2()=value;
				}
		};
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
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") SelectMgr_IndexedMapNodeOfIndexedMapOfOwner::~SelectMgr_IndexedMapNodeOfIndexedMapOfOwner %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SelectMgr_IndexedMapNodeOfIndexedMapOfOwner {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SelectMgr_ListOfFilter;
class SelectMgr_ListOfFilter {
	public:
		%feature("autodoc", "1");
		SelectMgr_ListOfFilter();
		%feature("autodoc", "1");
		void Assign(const SelectMgr_ListOfFilter &Other);
		%feature("autodoc", "1");
		void operator=(const SelectMgr_ListOfFilter &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const SelectMgr_Filter *I);
		%feature("autodoc", "1");
		void Prepend(const SelectMgr_Filter *I, SelectMgr_ListIteratorOfListOfFilter & theIt);
		%feature("autodoc", "1");
		void Prepend(SelectMgr_ListOfFilter & Other);
		%feature("autodoc", "1");
		void Append(const SelectMgr_Filter *I);
		%feature("autodoc", "1");
		void Append(const SelectMgr_Filter *I, SelectMgr_ListIteratorOfListOfFilter & theIt);
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
		void InsertBefore(const SelectMgr_Filter *I, SelectMgr_ListIteratorOfListOfFilter & It);
		%feature("autodoc", "1");
		void InsertBefore(SelectMgr_ListOfFilter & Other, SelectMgr_ListIteratorOfListOfFilter & It);
		%feature("autodoc", "1");
		void InsertAfter(const SelectMgr_Filter *I, SelectMgr_ListIteratorOfListOfFilter & It);
		%feature("autodoc", "1");
		void InsertAfter(SelectMgr_ListOfFilter & Other, SelectMgr_ListIteratorOfListOfFilter & It);

};
%feature("shadow") SelectMgr_ListOfFilter::~SelectMgr_ListOfFilter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SelectMgr_ListOfFilter {
	void _kill_pointed() {
		delete $self;
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
		const SelectMgr_SequenceOfSelection & Assign(const SelectMgr_SequenceOfSelection &Other);
		%feature("autodoc", "1");
		const SelectMgr_SequenceOfSelection & operator=(const SelectMgr_SequenceOfSelection &Other);
		%feature("autodoc", "1");
		void Append(const SelectMgr_Selection *T);
		%feature("autodoc", "1");
		void Append(SelectMgr_SequenceOfSelection & S);
		%feature("autodoc", "1");
		void Prepend(const SelectMgr_Selection *T);
		%feature("autodoc", "1");
		void Prepend(SelectMgr_SequenceOfSelection & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const SelectMgr_Selection *I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, SelectMgr_SequenceOfSelection & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const SelectMgr_Selection *T);
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
		void SetValue(const Standard_Integer Index, const SelectMgr_Selection *I);
		%feature("autodoc", "1");
		Handle_SelectMgr_Selection & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_SelectMgr_Selection & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") SelectMgr_SequenceOfSelection::~SelectMgr_SequenceOfSelection %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SelectMgr_SequenceOfSelection {
	void _kill_pointed() {
		delete $self;
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
		SelectMgr_IndexedMapOfOwner & operator=(const SelectMgr_IndexedMapOfOwner &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer Add(const SelectMgr_EntityOwner *K);
		%feature("autodoc", "1");
		void Substitute(const Standard_Integer I, const SelectMgr_EntityOwner *K);
		%feature("autodoc", "1");
		void RemoveLast();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const SelectMgr_EntityOwner *K) const;
		%feature("autodoc", "1");
		const Handle_SelectMgr_EntityOwner & FindKey(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const Handle_SelectMgr_EntityOwner & operator()(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Standard_Integer FindIndex(const SelectMgr_EntityOwner *K) const;

};
%feature("shadow") SelectMgr_IndexedMapOfOwner::~SelectMgr_IndexedMapOfOwner %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SelectMgr_IndexedMapOfOwner {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SelectMgr_SequenceNodeOfSequenceOfSelector;
class SelectMgr_SequenceNodeOfSequenceOfSelector : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		SelectMgr_SequenceNodeOfSequenceOfSelector(const SelectMgr_ViewerSelector *I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
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
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") SelectMgr_SequenceNodeOfSequenceOfSelector::~SelectMgr_SequenceNodeOfSequenceOfSelector %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SelectMgr_SequenceNodeOfSequenceOfSelector {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SelectMgr_Filter;
class SelectMgr_Filter : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsOk(const SelectMgr_EntityOwner *anObj) const;
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
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") SelectMgr_Filter::~SelectMgr_Filter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SelectMgr_Filter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SelectMgr_CompositionFilter;
class SelectMgr_CompositionFilter : public SelectMgr_Filter {
	public:
		%feature("autodoc", "1");
		void Add(const SelectMgr_Filter *afilter);
		%feature("autodoc", "1");
		void Remove(const SelectMgr_Filter *aFilter);
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Boolean IsIn(const SelectMgr_Filter *aFilter) const;
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
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") SelectMgr_CompositionFilter::~SelectMgr_CompositionFilter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SelectMgr_CompositionFilter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SelectMgr_OrFilter;
class SelectMgr_OrFilter : public SelectMgr_CompositionFilter {
	public:
		%feature("autodoc", "1");
		SelectMgr_OrFilter();
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsOk(const SelectMgr_EntityOwner *anobj) const;

};
%extend SelectMgr_OrFilter {
	Handle_SelectMgr_OrFilter GetHandle() {
	return *(Handle_SelectMgr_OrFilter*) &$self;
	}
};
%extend SelectMgr_OrFilter {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") SelectMgr_OrFilter::~SelectMgr_OrFilter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SelectMgr_OrFilter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SelectMgr_DataMapIteratorOfDataMapOfIntegerSensitive;
class SelectMgr_DataMapIteratorOfDataMapOfIntegerSensitive : public TCollection_BasicMapIterator {
	public:
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
%feature("shadow") SelectMgr_DataMapIteratorOfDataMapOfIntegerSensitive::~SelectMgr_DataMapIteratorOfDataMapOfIntegerSensitive %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SelectMgr_DataMapIteratorOfDataMapOfIntegerSensitive {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SelectMgr_DataMapNodeOfDataMapOfObjectSelectors;
class SelectMgr_DataMapNodeOfDataMapOfObjectSelectors : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		SelectMgr_DataMapNodeOfDataMapOfObjectSelectors(const SelectMgr_SelectableObject *K, const SelectMgr_SequenceOfSelector &I, const TCollection_MapNodePtr &n);
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
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") SelectMgr_DataMapNodeOfDataMapOfObjectSelectors::~SelectMgr_DataMapNodeOfDataMapOfObjectSelectors %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SelectMgr_DataMapNodeOfDataMapOfObjectSelectors {
	void _kill_pointed() {
		delete $self;
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
		const SelectMgr_SequenceOfFilter & Assign(const SelectMgr_SequenceOfFilter &Other);
		%feature("autodoc", "1");
		const SelectMgr_SequenceOfFilter & operator=(const SelectMgr_SequenceOfFilter &Other);
		%feature("autodoc", "1");
		void Append(const SelectMgr_Filter *T);
		%feature("autodoc", "1");
		void Append(SelectMgr_SequenceOfFilter & S);
		%feature("autodoc", "1");
		void Prepend(const SelectMgr_Filter *T);
		%feature("autodoc", "1");
		void Prepend(SelectMgr_SequenceOfFilter & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const SelectMgr_Filter *I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, SelectMgr_SequenceOfFilter & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const SelectMgr_Filter *T);
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
		void SetValue(const Standard_Integer Index, const SelectMgr_Filter *I);
		%feature("autodoc", "1");
		Handle_SelectMgr_Filter & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_SelectMgr_Filter & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") SelectMgr_SequenceOfFilter::~SelectMgr_SequenceOfFilter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SelectMgr_SequenceOfFilter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SelectMgr_DataMapIteratorOfDataMapOfSelectionActivation;
class SelectMgr_DataMapIteratorOfDataMapOfSelectionActivation : public TCollection_BasicMapIterator {
	public:
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
%feature("shadow") SelectMgr_DataMapIteratorOfDataMapOfSelectionActivation::~SelectMgr_DataMapIteratorOfDataMapOfSelectionActivation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SelectMgr_DataMapIteratorOfDataMapOfSelectionActivation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SelectMgr_DataMapNodeOfDataMapOfSelectionActivation;
class SelectMgr_DataMapNodeOfDataMapOfSelectionActivation : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		SelectMgr_DataMapNodeOfDataMapOfSelectionActivation(const SelectMgr_Selection *K, const Standard_Integer &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_SelectMgr_Selection & Key() const;
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetValue() {
				return (Standard_Integer) $self->Value();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetValue(Standard_Integer value ) {
				$self->Value()=value;
				}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend SelectMgr_DataMapNodeOfDataMapOfSelectionActivation {
	Handle_SelectMgr_DataMapNodeOfDataMapOfSelectionActivation GetHandle() {
	return *(Handle_SelectMgr_DataMapNodeOfDataMapOfSelectionActivation*) &$self;
	}
};
%extend SelectMgr_DataMapNodeOfDataMapOfSelectionActivation {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") SelectMgr_DataMapNodeOfDataMapOfSelectionActivation::~SelectMgr_DataMapNodeOfDataMapOfSelectionActivation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SelectMgr_DataMapNodeOfDataMapOfSelectionActivation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SelectMgr_SequenceNodeOfSequenceOfFilter;
class SelectMgr_SequenceNodeOfSequenceOfFilter : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		SelectMgr_SequenceNodeOfSequenceOfFilter(const SelectMgr_Filter *I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
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
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") SelectMgr_SequenceNodeOfSequenceOfFilter::~SelectMgr_SequenceNodeOfSequenceOfFilter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SelectMgr_SequenceNodeOfSequenceOfFilter {
	void _kill_pointed() {
		delete $self;
	}
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
		void AddSelection(const SelectMgr_Selection *aSelection, const Standard_Integer aMode);
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
		virtual		void HilightSelected(const PrsMgr_PresentationManager3d *PM, const SelectMgr_SequenceOfOwner &Seq);
		%feature("autodoc", "1");
		virtual		void ClearSelected();
		%feature("autodoc", "1");
		virtual		void HilightOwnerWithColor(const PrsMgr_PresentationManager3d *thePM, const Quantity_NameOfColor theColor, const SelectMgr_EntityOwner *theOwner);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsAutoHilight() const;
		%feature("autodoc", "1");
		virtual		void SetAutoHilight(const Standard_Boolean newAutoHilight);
		%feature("autodoc", "1");
		Handle_Prs3d_Presentation GetHilightPresentation(const PrsMgr_PresentationManager3d *TheMgr);
		%feature("autodoc", "1");
		Handle_Prs3d_Presentation GetSelectPresentation(const PrsMgr_PresentationManager3d *TheMgr);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend SelectMgr_SelectableObject {
	Handle_SelectMgr_SelectableObject GetHandle() {
	return *(Handle_SelectMgr_SelectableObject*) &$self;
	}
};
%extend SelectMgr_SelectableObject {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") SelectMgr_SelectableObject::~SelectMgr_SelectableObject %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SelectMgr_SelectableObject {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SelectMgr_SequenceNodeOfSequenceOfSelection;
class SelectMgr_SequenceNodeOfSequenceOfSelection : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		SelectMgr_SequenceNodeOfSequenceOfSelection(const SelectMgr_Selection *I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
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
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") SelectMgr_SequenceNodeOfSequenceOfSelection::~SelectMgr_SequenceNodeOfSequenceOfSelection %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SelectMgr_SequenceNodeOfSequenceOfSelection {
	void _kill_pointed() {
		delete $self;
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
		const SelectMgr_SequenceOfOwner & Assign(const SelectMgr_SequenceOfOwner &Other);
		%feature("autodoc", "1");
		const SelectMgr_SequenceOfOwner & operator=(const SelectMgr_SequenceOfOwner &Other);
		%feature("autodoc", "1");
		void Append(const SelectMgr_EntityOwner *T);
		%feature("autodoc", "1");
		void Append(SelectMgr_SequenceOfOwner & S);
		%feature("autodoc", "1");
		void Prepend(const SelectMgr_EntityOwner *T);
		%feature("autodoc", "1");
		void Prepend(SelectMgr_SequenceOfOwner & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const SelectMgr_EntityOwner *I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, SelectMgr_SequenceOfOwner & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const SelectMgr_EntityOwner *T);
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
		void SetValue(const Standard_Integer Index, const SelectMgr_EntityOwner *I);
		%feature("autodoc", "1");
		Handle_SelectMgr_EntityOwner & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_SelectMgr_EntityOwner & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") SelectMgr_SequenceOfOwner::~SelectMgr_SequenceOfOwner %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SelectMgr_SequenceOfOwner {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SelectMgr_DataMapOfSelectionActivation;
class SelectMgr_DataMapOfSelectionActivation : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		SelectMgr_DataMapOfSelectionActivation(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		SelectMgr_DataMapOfSelectionActivation & Assign(const SelectMgr_DataMapOfSelectionActivation &Other);
		%feature("autodoc", "1");
		SelectMgr_DataMapOfSelectionActivation & operator=(const SelectMgr_DataMapOfSelectionActivation &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const SelectMgr_Selection *K, const Standard_Integer &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const SelectMgr_Selection *K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const SelectMgr_Selection *K);
		%feature("autodoc", "1");
		const Standard_Integer & Find(const SelectMgr_Selection *K) const;
		%feature("autodoc", "1");
		const Standard_Integer & operator()(const SelectMgr_Selection *K) const;
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetChangeFind(const SelectMgr_Selection *K) {
				return (Standard_Integer) $self->ChangeFind(K);
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetChangeFind(Standard_Integer value ,const SelectMgr_Selection *K) {
				$self->ChangeFind(K)=value;
				}
		};
		%feature("autodoc", "1");
		Standard_Integer & operator()(const SelectMgr_Selection *K);

};
%feature("shadow") SelectMgr_DataMapOfSelectionActivation::~SelectMgr_DataMapOfSelectionActivation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SelectMgr_DataMapOfSelectionActivation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SelectMgr_SortCriterion;
class SelectMgr_SortCriterion {
	public:
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
		%feature("autodoc","Values() -> [Standard_Integer, Standard_Real, Standard_Real]");

		void Values(Standard_Integer &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
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
%feature("shadow") SelectMgr_SortCriterion::~SelectMgr_SortCriterion %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SelectMgr_SortCriterion {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SelectMgr_SequenceOfSelector;
class SelectMgr_SequenceOfSelector : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		SelectMgr_SequenceOfSelector();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const SelectMgr_SequenceOfSelector & Assign(const SelectMgr_SequenceOfSelector &Other);
		%feature("autodoc", "1");
		const SelectMgr_SequenceOfSelector & operator=(const SelectMgr_SequenceOfSelector &Other);
		%feature("autodoc", "1");
		void Append(const SelectMgr_ViewerSelector *T);
		%feature("autodoc", "1");
		void Append(SelectMgr_SequenceOfSelector & S);
		%feature("autodoc", "1");
		void Prepend(const SelectMgr_ViewerSelector *T);
		%feature("autodoc", "1");
		void Prepend(SelectMgr_SequenceOfSelector & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const SelectMgr_ViewerSelector *I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, SelectMgr_SequenceOfSelector & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const SelectMgr_ViewerSelector *T);
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
		void SetValue(const Standard_Integer Index, const SelectMgr_ViewerSelector *I);
		%feature("autodoc", "1");
		Handle_SelectMgr_ViewerSelector & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_SelectMgr_ViewerSelector & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") SelectMgr_SequenceOfSelector::~SelectMgr_SequenceOfSelector %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SelectMgr_SequenceOfSelector {
	void _kill_pointed() {
		delete $self;
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
		SelectMgr_DataMapOfIntegerSensitive & operator=(const SelectMgr_DataMapOfIntegerSensitive &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Standard_Integer &K, const SelectBasics_SensitiveEntity *I);
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
%feature("shadow") SelectMgr_DataMapOfIntegerSensitive::~SelectMgr_DataMapOfIntegerSensitive %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SelectMgr_DataMapOfIntegerSensitive {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SelectMgr_SequenceNodeOfSequenceOfOwner;
class SelectMgr_SequenceNodeOfSequenceOfOwner : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		SelectMgr_SequenceNodeOfSequenceOfOwner(const SelectMgr_EntityOwner *I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
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
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") SelectMgr_SequenceNodeOfSequenceOfOwner::~SelectMgr_SequenceNodeOfSequenceOfOwner %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SelectMgr_SequenceNodeOfSequenceOfOwner {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SelectMgr_DataMapIteratorOfDataMapOfObjectSelectors;
class SelectMgr_DataMapIteratorOfDataMapOfObjectSelectors : public TCollection_BasicMapIterator {
	public:
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
%feature("shadow") SelectMgr_DataMapIteratorOfDataMapOfObjectSelectors::~SelectMgr_DataMapIteratorOfDataMapOfObjectSelectors %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SelectMgr_DataMapIteratorOfDataMapOfObjectSelectors {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SelectMgr_CompareResults;
class SelectMgr_CompareResults : public TCollection_CompareOfInteger {
	public:
		%feature("autodoc", "1");
		SelectMgr_CompareResults(const SelectMgr_IndexedDataMapOfOwnerCriterion &aMapOfCriterion);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsLower(const Standard_Integer &Left, const Standard_Integer &Right) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsGreater(const Standard_Integer &Left, const Standard_Integer &Right) const;

};
%feature("shadow") SelectMgr_CompareResults::~SelectMgr_CompareResults %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SelectMgr_CompareResults {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SelectMgr_ViewerSelector;
class SelectMgr_ViewerSelector : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		virtual		void Convert(const SelectMgr_Selection *aSelection);
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
		%feature("autodoc","LastPosition() -> [Standard_Real, Standard_Real]");

		void LastPosition(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Boolean Contains(const SelectMgr_SelectableObject *aSelectableObject) const;
		%feature("autodoc", "1");
		Standard_Boolean Modes(const SelectMgr_SelectableObject *aSelectableObject, TColStd_ListOfInteger & ModeList, const SelectMgr_StateOfSelection WantedState=SelectMgr_SOS_Any) const;
		%feature("autodoc", "1");
		Standard_Boolean IsActive(const SelectMgr_SelectableObject *aSelectableObject, const Standard_Integer aMode) const;
		%feature("autodoc", "1");
		Standard_Boolean IsInside(const SelectMgr_SelectableObject *aSelectableObject, const Standard_Integer aMode) const;
		%feature("autodoc", "1");
		SelectMgr_StateOfSelection Status(const SelectMgr_Selection *aSelection) const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		TCollection_AsciiString Status(const SelectMgr_SelectableObject *aSelectableObject) const;
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
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") SelectMgr_ViewerSelector::~SelectMgr_ViewerSelector %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SelectMgr_ViewerSelector {
	void _kill_pointed() {
		delete $self;
	}
};
%extend SelectMgr_ViewerSelector {
	SelectMgr_ViewerSelector () {}
};


%nodefaultctor SelectMgr_AndFilter;
class SelectMgr_AndFilter : public SelectMgr_CompositionFilter {
	public:
		%feature("autodoc", "1");
		SelectMgr_AndFilter();
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsOk(const SelectMgr_EntityOwner *anobj) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend SelectMgr_AndFilter {
	Handle_SelectMgr_AndFilter GetHandle() {
	return *(Handle_SelectMgr_AndFilter*) &$self;
	}
};
%extend SelectMgr_AndFilter {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") SelectMgr_AndFilter::~SelectMgr_AndFilter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SelectMgr_AndFilter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor SelectMgr_EntityOwner;
class SelectMgr_EntityOwner : public SelectBasics_EntityOwner {
	public:
		%feature("autodoc", "1");
		SelectMgr_EntityOwner(const Standard_Integer aPriority=0);
		%feature("autodoc", "1");
		SelectMgr_EntityOwner(const SelectMgr_SelectableObject *aSO, const Standard_Integer aPriority=0);
		%feature("autodoc", "1");
		Standard_Boolean HasSelectable() const;
		%feature("autodoc", "1");
		Handle_SelectMgr_SelectableObject Selectable() const;
		%feature("autodoc", "1");
		void Set(const SelectMgr_SelectableObject *aSO);
		%feature("autodoc", "1");
		virtual		void Hilight();
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsHilighted(const PrsMgr_PresentationManager *aPM, const Standard_Integer aMode=0) const;
		%feature("autodoc", "1");
		virtual		void Hilight(const PrsMgr_PresentationManager *aPM, const Standard_Integer aMode=0);
		%feature("autodoc", "1");
		virtual		void HilightWithColor(const PrsMgr_PresentationManager3d *aPM, const Quantity_NameOfColor aColor, const Standard_Integer aMode=0);
		%feature("autodoc", "1");
		virtual		void Unhilight(const PrsMgr_PresentationManager *aPM, const Standard_Integer aMode=0);
		%feature("autodoc", "1");
		virtual		void Clear(const PrsMgr_PresentationManager *aPM, const Standard_Integer aMode=0);
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
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") SelectMgr_EntityOwner::~SelectMgr_EntityOwner %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend SelectMgr_EntityOwner {
	void _kill_pointed() {
		delete $self;
	}
};
