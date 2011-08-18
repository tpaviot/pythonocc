/*

Copyright 2008-2011 Thomas Paviot (tpaviot@gmail.com)

This file is part of pythonOCC.

pythonOCC is free software: you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

pythonOCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public License
along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.

$Revision$
$Date$
$Author$
$HeaderURL$

*/


%{
#ifdef WNT
#pragma warning(disable : 4716)
#endif
%}

%module PrsMgr
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include PrsMgr_renames.i


%include PrsMgr_required_python_modules.i


%include PrsMgr_dependencies.i


%include PrsMgr_headers.i

typedef PrsMgr_Presentation3d * PrsMgr_Presentation3dPointer;
typedef PrsMgr_PresentableObject * PrsMgr_PresentableObjectPointer;

enum PrsMgr_KindOfPrs {
	PrsMgr_KOP_2D,
	PrsMgr_KOP_3D,
	};

enum PrsMgr_TypeOfPresentation3d {
	PrsMgr_TOP_AllView,
	PrsMgr_TOP_ProjectorDependant,
	};



%nodefaultctor Handle_PrsMgr_Prs;
class Handle_PrsMgr_Prs : public Handle_Prs3d_Presentation {
	public:
		%feature("autodoc", "1");
		Handle_PrsMgr_Prs();
		%feature("autodoc", "1");
		Handle_PrsMgr_Prs(const Handle_PrsMgr_Prs &aHandle);
		%feature("autodoc", "1");
		Handle_PrsMgr_Prs(const PrsMgr_Prs *anItem);
		%feature("autodoc", "1");
		Handle_PrsMgr_Prs & operator=(const Handle_PrsMgr_Prs &aHandle);
		%feature("autodoc", "1");
		Handle_PrsMgr_Prs & operator=(const PrsMgr_Prs *anItem);
		%feature("autodoc", "1");
		static		Handle_PrsMgr_Prs DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_PrsMgr_Prs {
	PrsMgr_Prs* GetObject() {
	return (PrsMgr_Prs*)$self->Access();
	}
};
%feature("shadow") Handle_PrsMgr_Prs::~Handle_PrsMgr_Prs %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PrsMgr_Prs {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PrsMgr_Presentation;
class Handle_PrsMgr_Presentation : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_PrsMgr_Presentation();
		%feature("autodoc", "1");
		Handle_PrsMgr_Presentation(const Handle_PrsMgr_Presentation &aHandle);
		%feature("autodoc", "1");
		Handle_PrsMgr_Presentation(const PrsMgr_Presentation *anItem);
		%feature("autodoc", "1");
		Handle_PrsMgr_Presentation & operator=(const Handle_PrsMgr_Presentation &aHandle);
		%feature("autodoc", "1");
		Handle_PrsMgr_Presentation & operator=(const PrsMgr_Presentation *anItem);
		%feature("autodoc", "1");
		static		Handle_PrsMgr_Presentation DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_PrsMgr_Presentation {
	PrsMgr_Presentation* GetObject() {
	return (PrsMgr_Presentation*)$self->Access();
	}
};
%feature("shadow") Handle_PrsMgr_Presentation::~Handle_PrsMgr_Presentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PrsMgr_Presentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PrsMgr_Presentation2d;
class Handle_PrsMgr_Presentation2d : public Handle_PrsMgr_Presentation {
	public:
		%feature("autodoc", "1");
		Handle_PrsMgr_Presentation2d();
		%feature("autodoc", "1");
		Handle_PrsMgr_Presentation2d(const Handle_PrsMgr_Presentation2d &aHandle);
		%feature("autodoc", "1");
		Handle_PrsMgr_Presentation2d(const PrsMgr_Presentation2d *anItem);
		%feature("autodoc", "1");
		Handle_PrsMgr_Presentation2d & operator=(const Handle_PrsMgr_Presentation2d &aHandle);
		%feature("autodoc", "1");
		Handle_PrsMgr_Presentation2d & operator=(const PrsMgr_Presentation2d *anItem);
		%feature("autodoc", "1");
		static		Handle_PrsMgr_Presentation2d DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_PrsMgr_Presentation2d {
	PrsMgr_Presentation2d* GetObject() {
	return (PrsMgr_Presentation2d*)$self->Access();
	}
};
%feature("shadow") Handle_PrsMgr_Presentation2d::~Handle_PrsMgr_Presentation2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PrsMgr_Presentation2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PrsMgr_Presentation3d;
class Handle_PrsMgr_Presentation3d : public Handle_PrsMgr_Presentation {
	public:
		%feature("autodoc", "1");
		Handle_PrsMgr_Presentation3d();
		%feature("autodoc", "1");
		Handle_PrsMgr_Presentation3d(const Handle_PrsMgr_Presentation3d &aHandle);
		%feature("autodoc", "1");
		Handle_PrsMgr_Presentation3d(const PrsMgr_Presentation3d *anItem);
		%feature("autodoc", "1");
		Handle_PrsMgr_Presentation3d & operator=(const Handle_PrsMgr_Presentation3d &aHandle);
		%feature("autodoc", "1");
		Handle_PrsMgr_Presentation3d & operator=(const PrsMgr_Presentation3d *anItem);
		%feature("autodoc", "1");
		static		Handle_PrsMgr_Presentation3d DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_PrsMgr_Presentation3d {
	PrsMgr_Presentation3d* GetObject() {
	return (PrsMgr_Presentation3d*)$self->Access();
	}
};
%feature("shadow") Handle_PrsMgr_Presentation3d::~Handle_PrsMgr_Presentation3d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PrsMgr_Presentation3d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PrsMgr_PresentableObject;
class Handle_PrsMgr_PresentableObject : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_PrsMgr_PresentableObject();
		%feature("autodoc", "1");
		Handle_PrsMgr_PresentableObject(const Handle_PrsMgr_PresentableObject &aHandle);
		%feature("autodoc", "1");
		Handle_PrsMgr_PresentableObject(const PrsMgr_PresentableObject *anItem);
		%feature("autodoc", "1");
		Handle_PrsMgr_PresentableObject & operator=(const Handle_PrsMgr_PresentableObject &aHandle);
		%feature("autodoc", "1");
		Handle_PrsMgr_PresentableObject & operator=(const PrsMgr_PresentableObject *anItem);
		%feature("autodoc", "1");
		static		Handle_PrsMgr_PresentableObject DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_PrsMgr_PresentableObject {
	PrsMgr_PresentableObject* GetObject() {
	return (PrsMgr_PresentableObject*)$self->Access();
	}
};
%feature("shadow") Handle_PrsMgr_PresentableObject::~Handle_PrsMgr_PresentableObject %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PrsMgr_PresentableObject {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PrsMgr_PresentationManager;
class Handle_PrsMgr_PresentationManager : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_PrsMgr_PresentationManager();
		%feature("autodoc", "1");
		Handle_PrsMgr_PresentationManager(const Handle_PrsMgr_PresentationManager &aHandle);
		%feature("autodoc", "1");
		Handle_PrsMgr_PresentationManager(const PrsMgr_PresentationManager *anItem);
		%feature("autodoc", "1");
		Handle_PrsMgr_PresentationManager & operator=(const Handle_PrsMgr_PresentationManager &aHandle);
		%feature("autodoc", "1");
		Handle_PrsMgr_PresentationManager & operator=(const PrsMgr_PresentationManager *anItem);
		%feature("autodoc", "1");
		static		Handle_PrsMgr_PresentationManager DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_PrsMgr_PresentationManager {
	PrsMgr_PresentationManager* GetObject() {
	return (PrsMgr_PresentationManager*)$self->Access();
	}
};
%feature("shadow") Handle_PrsMgr_PresentationManager::~Handle_PrsMgr_PresentationManager %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PrsMgr_PresentationManager {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PrsMgr_PresentationManager2d;
class Handle_PrsMgr_PresentationManager2d : public Handle_PrsMgr_PresentationManager {
	public:
		%feature("autodoc", "1");
		Handle_PrsMgr_PresentationManager2d();
		%feature("autodoc", "1");
		Handle_PrsMgr_PresentationManager2d(const Handle_PrsMgr_PresentationManager2d &aHandle);
		%feature("autodoc", "1");
		Handle_PrsMgr_PresentationManager2d(const PrsMgr_PresentationManager2d *anItem);
		%feature("autodoc", "1");
		Handle_PrsMgr_PresentationManager2d & operator=(const Handle_PrsMgr_PresentationManager2d &aHandle);
		%feature("autodoc", "1");
		Handle_PrsMgr_PresentationManager2d & operator=(const PrsMgr_PresentationManager2d *anItem);
		%feature("autodoc", "1");
		static		Handle_PrsMgr_PresentationManager2d DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_PrsMgr_PresentationManager2d {
	PrsMgr_PresentationManager2d* GetObject() {
	return (PrsMgr_PresentationManager2d*)$self->Access();
	}
};
%feature("shadow") Handle_PrsMgr_PresentationManager2d::~Handle_PrsMgr_PresentationManager2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PrsMgr_PresentationManager2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PrsMgr_PresentationManager3d;
class Handle_PrsMgr_PresentationManager3d : public Handle_PrsMgr_PresentationManager {
	public:
		%feature("autodoc", "1");
		Handle_PrsMgr_PresentationManager3d();
		%feature("autodoc", "1");
		Handle_PrsMgr_PresentationManager3d(const Handle_PrsMgr_PresentationManager3d &aHandle);
		%feature("autodoc", "1");
		Handle_PrsMgr_PresentationManager3d(const PrsMgr_PresentationManager3d *anItem);
		%feature("autodoc", "1");
		Handle_PrsMgr_PresentationManager3d & operator=(const Handle_PrsMgr_PresentationManager3d &aHandle);
		%feature("autodoc", "1");
		Handle_PrsMgr_PresentationManager3d & operator=(const PrsMgr_PresentationManager3d *anItem);
		%feature("autodoc", "1");
		static		Handle_PrsMgr_PresentationManager3d DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_PrsMgr_PresentationManager3d {
	PrsMgr_PresentationManager3d* GetObject() {
	return (PrsMgr_PresentationManager3d*)$self->Access();
	}
};
%feature("shadow") Handle_PrsMgr_PresentationManager3d::~Handle_PrsMgr_PresentationManager3d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PrsMgr_PresentationManager3d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PrsMgr_SequenceNodeOfPresentations;
class Handle_PrsMgr_SequenceNodeOfPresentations : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_PrsMgr_SequenceNodeOfPresentations();
		%feature("autodoc", "1");
		Handle_PrsMgr_SequenceNodeOfPresentations(const Handle_PrsMgr_SequenceNodeOfPresentations &aHandle);
		%feature("autodoc", "1");
		Handle_PrsMgr_SequenceNodeOfPresentations(const PrsMgr_SequenceNodeOfPresentations *anItem);
		%feature("autodoc", "1");
		Handle_PrsMgr_SequenceNodeOfPresentations & operator=(const Handle_PrsMgr_SequenceNodeOfPresentations &aHandle);
		%feature("autodoc", "1");
		Handle_PrsMgr_SequenceNodeOfPresentations & operator=(const PrsMgr_SequenceNodeOfPresentations *anItem);
		%feature("autodoc", "1");
		static		Handle_PrsMgr_SequenceNodeOfPresentations DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_PrsMgr_SequenceNodeOfPresentations {
	PrsMgr_SequenceNodeOfPresentations* GetObject() {
	return (PrsMgr_SequenceNodeOfPresentations*)$self->Access();
	}
};
%feature("shadow") Handle_PrsMgr_SequenceNodeOfPresentations::~Handle_PrsMgr_SequenceNodeOfPresentations %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PrsMgr_SequenceNodeOfPresentations {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PrsMgr_ModedPresentation;
class PrsMgr_ModedPresentation {
	public:
		%feature("autodoc", "1");
		PrsMgr_ModedPresentation();
		%feature("autodoc", "1");
		PrsMgr_ModedPresentation(const Handle_PrsMgr_Presentation &aPresentation, const Standard_Integer aMode);
		%feature("autodoc", "1");
		Handle_PrsMgr_Presentation Presentation() const;
		%feature("autodoc", "1");
		Standard_Integer Mode() const;

};
%feature("shadow") PrsMgr_ModedPresentation::~PrsMgr_ModedPresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PrsMgr_ModedPresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PrsMgr_Presentation;
class PrsMgr_Presentation : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		virtual		PrsMgr_KindOfPrs KindOfPresentation() const;
		%feature("autodoc", "1");
		virtual		void Destroy();
		%feature("autodoc", "1");
		const Handle_PrsMgr_PresentationManager & PresentationManager() const;
		%feature("autodoc", "1");
		void SetUpdateStatus(const Standard_Boolean TheUpdateStatus);
		%feature("autodoc", "1");
		Standard_Boolean MustBeUpdated() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PrsMgr_Presentation {
	Handle_PrsMgr_Presentation GetHandle() {
	return *(Handle_PrsMgr_Presentation*) &$self;
	}
};
%extend PrsMgr_Presentation {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") PrsMgr_Presentation::~PrsMgr_Presentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PrsMgr_Presentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PrsMgr_Presentations;
class PrsMgr_Presentations : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		PrsMgr_Presentations();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const PrsMgr_Presentations & Assign(const PrsMgr_Presentations &Other);
		%feature("autodoc", "1");
		const PrsMgr_Presentations & operator=(const PrsMgr_Presentations &Other);
		%feature("autodoc", "1");
		void Append(const PrsMgr_ModedPresentation &T);
		%feature("autodoc", "1");
		void Append(PrsMgr_Presentations & S);
		%feature("autodoc", "1");
		void Prepend(const PrsMgr_ModedPresentation &T);
		%feature("autodoc", "1");
		void Prepend(PrsMgr_Presentations & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const PrsMgr_ModedPresentation &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, PrsMgr_Presentations & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const PrsMgr_ModedPresentation &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, PrsMgr_Presentations & S);
		%feature("autodoc", "1");
		const PrsMgr_ModedPresentation & First() const;
		%feature("autodoc", "1");
		const PrsMgr_ModedPresentation & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, PrsMgr_Presentations & S);
		%feature("autodoc", "1");
		const PrsMgr_ModedPresentation & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const PrsMgr_ModedPresentation & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const PrsMgr_ModedPresentation &I);
		%feature("autodoc", "1");
		PrsMgr_ModedPresentation & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		PrsMgr_ModedPresentation & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") PrsMgr_Presentations::~PrsMgr_Presentations %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PrsMgr_Presentations {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PrsMgr_SequenceNodeOfPresentations;
class PrsMgr_SequenceNodeOfPresentations : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		PrsMgr_SequenceNodeOfPresentations(const PrsMgr_ModedPresentation &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		PrsMgr_ModedPresentation & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PrsMgr_SequenceNodeOfPresentations {
	Handle_PrsMgr_SequenceNodeOfPresentations GetHandle() {
	return *(Handle_PrsMgr_SequenceNodeOfPresentations*) &$self;
	}
};
%extend PrsMgr_SequenceNodeOfPresentations {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") PrsMgr_SequenceNodeOfPresentations::~PrsMgr_SequenceNodeOfPresentations %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PrsMgr_SequenceNodeOfPresentations {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PrsMgr_PresentableObject;
class PrsMgr_PresentableObject : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		PrsMgr_TypeOfPresentation3d TypeOfPresentation3d() const;
		%feature("autodoc", "1");
		virtual		void SetTransformPersistence(const Graphic3d_TransModeFlags &aFlag, const gp_Pnt APoint);
		%feature("autodoc", "1");
		void SetTransformPersistence(const Graphic3d_TransModeFlags &aFlag);
		%feature("autodoc", "1");
		Graphic3d_TransModeFlags GetTransformPersistenceMode() const;
		%feature("autodoc", "1");
		gp_Pnt GetTransformPersistencePoint() const;
		%feature("autodoc", "1");
		void SetTypeOfPresentation(const PrsMgr_TypeOfPresentation3d aType);
		%feature("autodoc", "1");
		void SetToUpdate(const Standard_Integer aMode);
		%feature("autodoc", "1");
		void SetToUpdate();
		%feature("autodoc", "1");
		void ToBeUpdated(TColStd_ListOfInteger & ListOfMode) const;
		%feature("autodoc", "1");
		virtual		void SetLocation(const TopLoc_Location &aLoc);
		%feature("autodoc", "1");
		Standard_Boolean HasLocation() const;
		%feature("autodoc", "1");
		const TopLoc_Location & Location() const;
		%feature("autodoc", "1");
		virtual		void ResetLocation();
		%feature("autodoc", "1");
		virtual		void UpdateLocation();
		%feature("autodoc", "1");
		virtual		void UpdateLocation(const Handle_Prs3d_Presentation &P);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PrsMgr_PresentableObject {
	Handle_PrsMgr_PresentableObject GetHandle() {
	return *(Handle_PrsMgr_PresentableObject*) &$self;
	}
};
%extend PrsMgr_PresentableObject {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") PrsMgr_PresentableObject::~PrsMgr_PresentableObject %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PrsMgr_PresentableObject {
	void _kill_pointed() {
		delete $self;
	}
};
%extend PrsMgr_PresentableObject {
	PrsMgr_PresentableObject () {}
};


%nodefaultctor PrsMgr_Presentation2d;
class PrsMgr_Presentation2d : public PrsMgr_Presentation {
	public:
		%feature("autodoc", "1");
		virtual		PrsMgr_KindOfPrs KindOfPresentation() const;
		%feature("autodoc", "1");
		virtual		void Destroy();
		%feature("autodoc", "1");
		virtual		void Clear();
		%feature("autodoc", "1");
		void SetOffset(const Standard_Integer anOffset);
		%feature("autodoc", "1");
		Standard_Integer Offset() const;
		%feature("autodoc", "1");
		Handle_Graphic2d_GraphicObject Presentation() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PrsMgr_Presentation2d {
	Handle_PrsMgr_Presentation2d GetHandle() {
	return *(Handle_PrsMgr_Presentation2d*) &$self;
	}
};
%extend PrsMgr_Presentation2d {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") PrsMgr_Presentation2d::~PrsMgr_Presentation2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PrsMgr_Presentation2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PrsMgr_Prs;
class PrsMgr_Prs : public Prs3d_Presentation {
	public:
		%feature("autodoc", "1");
		PrsMgr_Prs(const Handle_Graphic3d_StructureManager &aStructureManager, const PrsMgr_Presentation3dPointer &aPresentation, const PrsMgr_TypeOfPresentation3d aTypeOfPresentation3d);
		%feature("autodoc", "1");
		virtual		Handle_Graphic3d_Structure Compute(const Handle_Graphic3d_DataStructureManager &aProjector);
		%feature("autodoc", "1");
		virtual		Handle_Graphic3d_Structure Compute(const Handle_Graphic3d_DataStructureManager &aProjector, const TColStd_Array2OfReal &AMatrix);
		%feature("autodoc", "1");
		virtual		void Compute(const Handle_Graphic3d_DataStructureManager &aProjector, Handle_Graphic3d_Structure & ComputedStruct);
		%feature("autodoc", "1");
		virtual		void Compute(const Handle_Graphic3d_DataStructureManager &aProjector, const TColStd_Array2OfReal &AMatrix, Handle_Graphic3d_Structure & aStructure);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PrsMgr_Prs {
	Handle_PrsMgr_Prs GetHandle() {
	return *(Handle_PrsMgr_Prs*) &$self;
	}
};
%extend PrsMgr_Prs {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") PrsMgr_Prs::~PrsMgr_Prs %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PrsMgr_Prs {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PrsMgr_PresentationManager;
class PrsMgr_PresentationManager : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		virtual		Standard_Boolean Is3D() const;
		%feature("autodoc", "1");
		void Display(const Handle_PrsMgr_PresentableObject &aPresentableObject, const Standard_Integer aMode=0);
		%feature("autodoc", "1");
		void Erase(const Handle_PrsMgr_PresentableObject &aPresentableObject, const Standard_Integer aMode=0);
		%feature("autodoc", "1");
		virtual		void Clear(const Handle_PrsMgr_PresentableObject &aPresentableObject, const Standard_Integer aMode=0);
		%feature("autodoc", "1");
		void Highlight(const Handle_PrsMgr_PresentableObject &aPresentableObject, const Standard_Integer aMode=0);
		%feature("autodoc", "1");
		void Unhighlight(const Handle_PrsMgr_PresentableObject &aPresentableObject, const Standard_Integer aMode=0);
		%feature("autodoc", "1");
		void SetDisplayPriority(const Handle_PrsMgr_PresentableObject &aPresentableObject, const Standard_Integer amode, const Standard_Integer aNewPrior) const;
		%feature("autodoc", "1");
		Standard_Integer DisplayPriority(const Handle_PrsMgr_PresentableObject &aPresentableObject, const Standard_Integer amode) const;
		%feature("autodoc", "1");
		Standard_Boolean IsDisplayed(const Handle_PrsMgr_PresentableObject &aPresentableObject, const Standard_Integer aMode=0) const;
		%feature("autodoc", "1");
		Standard_Boolean IsHighlighted(const Handle_PrsMgr_PresentableObject &aPresentableObject, const Standard_Integer aMode=0) const;
		%feature("autodoc", "1");
		void Update(const Handle_PrsMgr_PresentableObject &aPresentableObject, const Standard_Integer aMode=0) const;
		%feature("autodoc", "1");
		virtual		void BeginDraw();
		%feature("autodoc", "1");
		void Add(const Handle_PrsMgr_PresentableObject &aPresentableObject, const Standard_Integer aMode=0);
		%feature("autodoc", "1");
		void Remove(const Handle_PrsMgr_PresentableObject &aPresentableObject, const Standard_Integer aMode=0);
		%feature("autodoc", "1");
		virtual		void EndDraw(const Handle_Viewer_View &aView, const Standard_Boolean DoubleBuffer=0);
		%feature("autodoc", "1");
		Standard_Boolean IsImmediateModeOn() const;
		%feature("autodoc", "1");
		Standard_Boolean HasPresentation(const Handle_PrsMgr_PresentableObject &aPresentableObject, const Standard_Integer aMode=0) const;
		%feature("autodoc", "1");
		Handle_PrsMgr_Presentation Presentation(const Handle_PrsMgr_PresentableObject &aPresentableObject, const Standard_Integer aMode=0) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PrsMgr_PresentationManager {
	Handle_PrsMgr_PresentationManager GetHandle() {
	return *(Handle_PrsMgr_PresentationManager*) &$self;
	}
};
%extend PrsMgr_PresentationManager {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") PrsMgr_PresentationManager::~PrsMgr_PresentationManager %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PrsMgr_PresentationManager {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PrsMgr_PresentationManager2d;
class PrsMgr_PresentationManager2d : public PrsMgr_PresentationManager {
	public:
		%feature("autodoc", "1");
		PrsMgr_PresentationManager2d(const Handle_Graphic2d_View &aStructureManager);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Is3D() const;
		%feature("autodoc", "1");
		void ColorHighlight(const Handle_PrsMgr_PresentableObject &aPresentableObject, const Standard_Integer anIndex, const Standard_Integer aMode=0);
		%feature("autodoc", "1");
		void EnablePlot(const Handle_PrsMgr_PresentableObject &aPresentableObject, const Standard_Integer aMode=0);
		%feature("autodoc", "1");
		void DisablePlot(const Handle_PrsMgr_PresentableObject &aPresentableObject, const Standard_Integer aMode=0);
		%feature("autodoc", "1");
		Standard_Boolean IsPlottable(const Handle_PrsMgr_PresentableObject &aPresentableObject, const Standard_Integer aMode=0) const;
		%feature("autodoc", "1");
		void SetOffset(const Handle_PrsMgr_PresentableObject &aPresentableObject, const Standard_Integer anOffset, const Standard_Integer aMode=0);
		%feature("autodoc", "1");
		Standard_Integer Offset(const Handle_PrsMgr_PresentableObject &aPresentableObject, const Standard_Integer aMode=0) const;
		%feature("autodoc", "1");
		void InitMinMax();
		%feature("autodoc", "1");
		void AddMinMax(const Handle_PrsMgr_PresentableObject &aPresentableObject, const Standard_Integer aMode=0);
		%feature("autodoc","MinMax() -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real]");

		void MinMax(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		void SetHighlightColor(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		Handle_Graphic2d_View StructureManager() const;
		%feature("autodoc", "1");
		virtual		void BeginDraw();
		%feature("autodoc", "1");
		void AddToImmediateList(const Handle_Graphic2d_GraphicObject &aGO);
		%feature("autodoc", "1");
		virtual		void EndDraw(const Handle_Viewer_View &aView, const Standard_Boolean DoubleBuffer=0);
		%feature("autodoc", "1");
		void Dump(const Handle_Graphic2d_Buffer &aBuffer, const Handle_PrsMgr_PresentableObject &aPresentableObject, const Standard_Integer aMode=0);
		%feature("autodoc", "1");
		Handle_PrsMgr_Presentation2d CastPresentation(const Handle_PrsMgr_PresentableObject &aPresentableObject, const Standard_Integer aMode=0) const;
		%feature("autodoc", "1");
		virtual		Handle_PrsMgr_Presentation newPresentation(const Handle_PrsMgr_PresentableObject &aPresentableObject);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PrsMgr_PresentationManager2d {
	Handle_PrsMgr_PresentationManager2d GetHandle() {
	return *(Handle_PrsMgr_PresentationManager2d*) &$self;
	}
};
%extend PrsMgr_PresentationManager2d {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") PrsMgr_PresentationManager2d::~PrsMgr_PresentationManager2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PrsMgr_PresentationManager2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PrsMgr_PresentationManager3d;
class PrsMgr_PresentationManager3d : public PrsMgr_PresentationManager {
	public:
		%feature("autodoc", "1");
		PrsMgr_PresentationManager3d(const Handle_Graphic3d_StructureManager &aStructureManager);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Is3D() const;
		%feature("autodoc", "1");
		void Color(const Handle_PrsMgr_PresentableObject &aPresentableObject, const Quantity_NameOfColor aColor=Quantity_NOC_YELLOW, const Standard_Integer aMode=0);
		%feature("autodoc", "1");
		void BoundBox(const Handle_PrsMgr_PresentableObject &aPresentableObject, const Standard_Integer aMode=0);
		%feature("autodoc", "1");
		virtual		void BeginDraw();
		%feature("autodoc", "1");
		void AddToImmediateList(const Handle_Prs3d_Presentation &aPrs);
		%feature("autodoc", "1");
		virtual		void EndDraw(const Handle_Viewer_View &aView, const Standard_Boolean DoubleBuffer=0);
		%feature("autodoc", "1");
		void Connect(const Handle_PrsMgr_PresentableObject &aPresentableObject, const Handle_PrsMgr_PresentableObject &anOtherObject, const Standard_Integer aMode=0, const Standard_Integer anOtherMode=0);
		%feature("autodoc", "1");
		void Transform(const Handle_PrsMgr_PresentableObject &aPresentableObject, const Handle_Geom_Transformation &aTransformation, const Standard_Integer aMode=0);
		%feature("autodoc", "1");
		void Place(const Handle_PrsMgr_PresentableObject &aPresentableObject, const Quantity_Length X, const Quantity_Length Y, const Quantity_Length Z, const Standard_Integer aMode=0);
		%feature("autodoc", "1");
		void Multiply(const Handle_PrsMgr_PresentableObject &aPresentableObject, const Handle_Geom_Transformation &aTransformation, const Standard_Integer aMode=0);
		%feature("autodoc", "1");
		void Move(const Handle_PrsMgr_PresentableObject &aPresentableObject, const Quantity_Length X, const Quantity_Length Y, const Quantity_Length Z, const Standard_Integer aMode=0);
		%feature("autodoc", "1");
		const Handle_Graphic3d_StructureManager & StructureManager() const;
		%feature("autodoc", "1");
		void SetShadingAspect(const Handle_PrsMgr_PresentableObject &aPresentableObject, const Quantity_NameOfColor aColor, const Graphic3d_NameOfMaterial aMaterial, const Standard_Integer aMode=0);
		%feature("autodoc", "1");
		void SetShadingAspect(const Handle_PrsMgr_PresentableObject &aPresentableObject, const Handle_Prs3d_ShadingAspect &aShadingAspect, const Standard_Integer aMode=0);
		%feature("autodoc", "1");
		Handle_PrsMgr_Presentation3d CastPresentation(const Handle_PrsMgr_PresentableObject &aPresentableObject, const Standard_Integer aMode=0) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PrsMgr_PresentationManager3d {
	Handle_PrsMgr_PresentationManager3d GetHandle() {
	return *(Handle_PrsMgr_PresentationManager3d*) &$self;
	}
};
%extend PrsMgr_PresentationManager3d {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") PrsMgr_PresentationManager3d::~PrsMgr_PresentationManager3d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PrsMgr_PresentationManager3d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PrsMgr_Presentation3d;
class PrsMgr_Presentation3d : public PrsMgr_Presentation {
	public:
		%feature("autodoc", "1");
		virtual		PrsMgr_KindOfPrs KindOfPresentation() const;
		%feature("autodoc", "1");
		virtual		void Destroy();
		%feature("autodoc", "1");
		Handle_Prs3d_Presentation Presentation() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PrsMgr_Presentation3d {
	Handle_PrsMgr_Presentation3d GetHandle() {
	return *(Handle_PrsMgr_Presentation3d*) &$self;
	}
};
%extend PrsMgr_Presentation3d {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") PrsMgr_Presentation3d::~PrsMgr_Presentation3d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PrsMgr_Presentation3d {
	void _kill_pointed() {
		delete $self;
	}
};
