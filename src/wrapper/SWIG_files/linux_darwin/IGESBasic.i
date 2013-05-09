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

%module IGESBasic
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include IGESBasic_renames.i


%include IGESBasic_required_python_modules.i


%include IGESBasic_dependencies.i


%include IGESBasic_headers.i




%nodefaultctor Handle_IGESBasic_Protocol;
class Handle_IGESBasic_Protocol : public Handle_IGESData_Protocol {
	public:
		%feature("autodoc", "1");
		Handle_IGESBasic_Protocol();
		%feature("autodoc", "1");
		Handle_IGESBasic_Protocol(const Handle_IGESBasic_Protocol &aHandle);
		%feature("autodoc", "1");
		Handle_IGESBasic_Protocol(const IGESBasic_Protocol *anItem);
		%feature("autodoc", "1");
		Handle_IGESBasic_Protocol & operator=(const Handle_IGESBasic_Protocol &aHandle);
		%feature("autodoc", "1");
		Handle_IGESBasic_Protocol & operator=(const IGESBasic_Protocol *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESBasic_Protocol DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESBasic_Protocol {
	IGESBasic_Protocol* GetObject() {
	return (IGESBasic_Protocol*)$self->Access();
	}
};
%feature("shadow") Handle_IGESBasic_Protocol::~Handle_IGESBasic_Protocol %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESBasic_Protocol {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESBasic_Group;
class Handle_IGESBasic_Group : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESBasic_Group();
		%feature("autodoc", "1");
		Handle_IGESBasic_Group(const Handle_IGESBasic_Group &aHandle);
		%feature("autodoc", "1");
		Handle_IGESBasic_Group(const IGESBasic_Group *anItem);
		%feature("autodoc", "1");
		Handle_IGESBasic_Group & operator=(const Handle_IGESBasic_Group &aHandle);
		%feature("autodoc", "1");
		Handle_IGESBasic_Group & operator=(const IGESBasic_Group *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESBasic_Group DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESBasic_Group {
	IGESBasic_Group* GetObject() {
	return (IGESBasic_Group*)$self->Access();
	}
};
%feature("shadow") Handle_IGESBasic_Group::~Handle_IGESBasic_Group %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESBasic_Group {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESBasic_ReadWriteModule;
class Handle_IGESBasic_ReadWriteModule : public Handle_IGESData_ReadWriteModule {
	public:
		%feature("autodoc", "1");
		Handle_IGESBasic_ReadWriteModule();
		%feature("autodoc", "1");
		Handle_IGESBasic_ReadWriteModule(const Handle_IGESBasic_ReadWriteModule &aHandle);
		%feature("autodoc", "1");
		Handle_IGESBasic_ReadWriteModule(const IGESBasic_ReadWriteModule *anItem);
		%feature("autodoc", "1");
		Handle_IGESBasic_ReadWriteModule & operator=(const Handle_IGESBasic_ReadWriteModule &aHandle);
		%feature("autodoc", "1");
		Handle_IGESBasic_ReadWriteModule & operator=(const IGESBasic_ReadWriteModule *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESBasic_ReadWriteModule DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESBasic_ReadWriteModule {
	IGESBasic_ReadWriteModule* GetObject() {
	return (IGESBasic_ReadWriteModule*)$self->Access();
	}
};
%feature("shadow") Handle_IGESBasic_ReadWriteModule::~Handle_IGESBasic_ReadWriteModule %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESBasic_ReadWriteModule {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESBasic_SingleParent;
class Handle_IGESBasic_SingleParent : public Handle_IGESData_SingleParentEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESBasic_SingleParent();
		%feature("autodoc", "1");
		Handle_IGESBasic_SingleParent(const Handle_IGESBasic_SingleParent &aHandle);
		%feature("autodoc", "1");
		Handle_IGESBasic_SingleParent(const IGESBasic_SingleParent *anItem);
		%feature("autodoc", "1");
		Handle_IGESBasic_SingleParent & operator=(const Handle_IGESBasic_SingleParent &aHandle);
		%feature("autodoc", "1");
		Handle_IGESBasic_SingleParent & operator=(const IGESBasic_SingleParent *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESBasic_SingleParent DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESBasic_SingleParent {
	IGESBasic_SingleParent* GetObject() {
	return (IGESBasic_SingleParent*)$self->Access();
	}
};
%feature("shadow") Handle_IGESBasic_SingleParent::~Handle_IGESBasic_SingleParent %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESBasic_SingleParent {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESBasic_ExternalRefLibName;
class Handle_IGESBasic_ExternalRefLibName : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESBasic_ExternalRefLibName();
		%feature("autodoc", "1");
		Handle_IGESBasic_ExternalRefLibName(const Handle_IGESBasic_ExternalRefLibName &aHandle);
		%feature("autodoc", "1");
		Handle_IGESBasic_ExternalRefLibName(const IGESBasic_ExternalRefLibName *anItem);
		%feature("autodoc", "1");
		Handle_IGESBasic_ExternalRefLibName & operator=(const Handle_IGESBasic_ExternalRefLibName &aHandle);
		%feature("autodoc", "1");
		Handle_IGESBasic_ExternalRefLibName & operator=(const IGESBasic_ExternalRefLibName *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESBasic_ExternalRefLibName DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESBasic_ExternalRefLibName {
	IGESBasic_ExternalRefLibName* GetObject() {
	return (IGESBasic_ExternalRefLibName*)$self->Access();
	}
};
%feature("shadow") Handle_IGESBasic_ExternalRefLibName::~Handle_IGESBasic_ExternalRefLibName %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESBasic_ExternalRefLibName {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESBasic_HArray1OfHArray1OfIGESEntity;
class Handle_IGESBasic_HArray1OfHArray1OfIGESEntity : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_IGESBasic_HArray1OfHArray1OfIGESEntity();
		%feature("autodoc", "1");
		Handle_IGESBasic_HArray1OfHArray1OfIGESEntity(const Handle_IGESBasic_HArray1OfHArray1OfIGESEntity &aHandle);
		%feature("autodoc", "1");
		Handle_IGESBasic_HArray1OfHArray1OfIGESEntity(const IGESBasic_HArray1OfHArray1OfIGESEntity *anItem);
		%feature("autodoc", "1");
		Handle_IGESBasic_HArray1OfHArray1OfIGESEntity & operator=(const Handle_IGESBasic_HArray1OfHArray1OfIGESEntity &aHandle);
		%feature("autodoc", "1");
		Handle_IGESBasic_HArray1OfHArray1OfIGESEntity & operator=(const IGESBasic_HArray1OfHArray1OfIGESEntity *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESBasic_HArray1OfHArray1OfIGESEntity DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESBasic_HArray1OfHArray1OfIGESEntity {
	IGESBasic_HArray1OfHArray1OfIGESEntity* GetObject() {
	return (IGESBasic_HArray1OfHArray1OfIGESEntity*)$self->Access();
	}
};
%feature("shadow") Handle_IGESBasic_HArray1OfHArray1OfIGESEntity::~Handle_IGESBasic_HArray1OfHArray1OfIGESEntity %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESBasic_HArray1OfHArray1OfIGESEntity {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESBasic_HArray1OfHArray1OfInteger;
class Handle_IGESBasic_HArray1OfHArray1OfInteger : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_IGESBasic_HArray1OfHArray1OfInteger();
		%feature("autodoc", "1");
		Handle_IGESBasic_HArray1OfHArray1OfInteger(const Handle_IGESBasic_HArray1OfHArray1OfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_IGESBasic_HArray1OfHArray1OfInteger(const IGESBasic_HArray1OfHArray1OfInteger *anItem);
		%feature("autodoc", "1");
		Handle_IGESBasic_HArray1OfHArray1OfInteger & operator=(const Handle_IGESBasic_HArray1OfHArray1OfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_IGESBasic_HArray1OfHArray1OfInteger & operator=(const IGESBasic_HArray1OfHArray1OfInteger *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESBasic_HArray1OfHArray1OfInteger DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESBasic_HArray1OfHArray1OfInteger {
	IGESBasic_HArray1OfHArray1OfInteger* GetObject() {
	return (IGESBasic_HArray1OfHArray1OfInteger*)$self->Access();
	}
};
%feature("shadow") Handle_IGESBasic_HArray1OfHArray1OfInteger::~Handle_IGESBasic_HArray1OfHArray1OfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESBasic_HArray1OfHArray1OfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESBasic_SingularSubfigure;
class Handle_IGESBasic_SingularSubfigure : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESBasic_SingularSubfigure();
		%feature("autodoc", "1");
		Handle_IGESBasic_SingularSubfigure(const Handle_IGESBasic_SingularSubfigure &aHandle);
		%feature("autodoc", "1");
		Handle_IGESBasic_SingularSubfigure(const IGESBasic_SingularSubfigure *anItem);
		%feature("autodoc", "1");
		Handle_IGESBasic_SingularSubfigure & operator=(const Handle_IGESBasic_SingularSubfigure &aHandle);
		%feature("autodoc", "1");
		Handle_IGESBasic_SingularSubfigure & operator=(const IGESBasic_SingularSubfigure *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESBasic_SingularSubfigure DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESBasic_SingularSubfigure {
	IGESBasic_SingularSubfigure* GetObject() {
	return (IGESBasic_SingularSubfigure*)$self->Access();
	}
};
%feature("shadow") Handle_IGESBasic_SingularSubfigure::~Handle_IGESBasic_SingularSubfigure %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESBasic_SingularSubfigure {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESBasic_HArray1OfHArray1OfXYZ;
class Handle_IGESBasic_HArray1OfHArray1OfXYZ : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_IGESBasic_HArray1OfHArray1OfXYZ();
		%feature("autodoc", "1");
		Handle_IGESBasic_HArray1OfHArray1OfXYZ(const Handle_IGESBasic_HArray1OfHArray1OfXYZ &aHandle);
		%feature("autodoc", "1");
		Handle_IGESBasic_HArray1OfHArray1OfXYZ(const IGESBasic_HArray1OfHArray1OfXYZ *anItem);
		%feature("autodoc", "1");
		Handle_IGESBasic_HArray1OfHArray1OfXYZ & operator=(const Handle_IGESBasic_HArray1OfHArray1OfXYZ &aHandle);
		%feature("autodoc", "1");
		Handle_IGESBasic_HArray1OfHArray1OfXYZ & operator=(const IGESBasic_HArray1OfHArray1OfXYZ *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESBasic_HArray1OfHArray1OfXYZ DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESBasic_HArray1OfHArray1OfXYZ {
	IGESBasic_HArray1OfHArray1OfXYZ* GetObject() {
	return (IGESBasic_HArray1OfHArray1OfXYZ*)$self->Access();
	}
};
%feature("shadow") Handle_IGESBasic_HArray1OfHArray1OfXYZ::~Handle_IGESBasic_HArray1OfHArray1OfXYZ %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESBasic_HArray1OfHArray1OfXYZ {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESBasic_ExternalRefFileName;
class Handle_IGESBasic_ExternalRefFileName : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESBasic_ExternalRefFileName();
		%feature("autodoc", "1");
		Handle_IGESBasic_ExternalRefFileName(const Handle_IGESBasic_ExternalRefFileName &aHandle);
		%feature("autodoc", "1");
		Handle_IGESBasic_ExternalRefFileName(const IGESBasic_ExternalRefFileName *anItem);
		%feature("autodoc", "1");
		Handle_IGESBasic_ExternalRefFileName & operator=(const Handle_IGESBasic_ExternalRefFileName &aHandle);
		%feature("autodoc", "1");
		Handle_IGESBasic_ExternalRefFileName & operator=(const IGESBasic_ExternalRefFileName *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESBasic_ExternalRefFileName DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESBasic_ExternalRefFileName {
	IGESBasic_ExternalRefFileName* GetObject() {
	return (IGESBasic_ExternalRefFileName*)$self->Access();
	}
};
%feature("shadow") Handle_IGESBasic_ExternalRefFileName::~Handle_IGESBasic_ExternalRefFileName %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESBasic_ExternalRefFileName {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESBasic_HArray2OfHArray1OfReal;
class Handle_IGESBasic_HArray2OfHArray1OfReal : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_IGESBasic_HArray2OfHArray1OfReal();
		%feature("autodoc", "1");
		Handle_IGESBasic_HArray2OfHArray1OfReal(const Handle_IGESBasic_HArray2OfHArray1OfReal &aHandle);
		%feature("autodoc", "1");
		Handle_IGESBasic_HArray2OfHArray1OfReal(const IGESBasic_HArray2OfHArray1OfReal *anItem);
		%feature("autodoc", "1");
		Handle_IGESBasic_HArray2OfHArray1OfReal & operator=(const Handle_IGESBasic_HArray2OfHArray1OfReal &aHandle);
		%feature("autodoc", "1");
		Handle_IGESBasic_HArray2OfHArray1OfReal & operator=(const IGESBasic_HArray2OfHArray1OfReal *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESBasic_HArray2OfHArray1OfReal DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESBasic_HArray2OfHArray1OfReal {
	IGESBasic_HArray2OfHArray1OfReal* GetObject() {
	return (IGESBasic_HArray2OfHArray1OfReal*)$self->Access();
	}
};
%feature("shadow") Handle_IGESBasic_HArray2OfHArray1OfReal::~Handle_IGESBasic_HArray2OfHArray1OfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESBasic_HArray2OfHArray1OfReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESBasic_Hierarchy;
class Handle_IGESBasic_Hierarchy : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESBasic_Hierarchy();
		%feature("autodoc", "1");
		Handle_IGESBasic_Hierarchy(const Handle_IGESBasic_Hierarchy &aHandle);
		%feature("autodoc", "1");
		Handle_IGESBasic_Hierarchy(const IGESBasic_Hierarchy *anItem);
		%feature("autodoc", "1");
		Handle_IGESBasic_Hierarchy & operator=(const Handle_IGESBasic_Hierarchy &aHandle);
		%feature("autodoc", "1");
		Handle_IGESBasic_Hierarchy & operator=(const IGESBasic_Hierarchy *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESBasic_Hierarchy DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESBasic_Hierarchy {
	IGESBasic_Hierarchy* GetObject() {
	return (IGESBasic_Hierarchy*)$self->Access();
	}
};
%feature("shadow") Handle_IGESBasic_Hierarchy::~Handle_IGESBasic_Hierarchy %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESBasic_Hierarchy {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESBasic_ExternalRefFileIndex;
class Handle_IGESBasic_ExternalRefFileIndex : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESBasic_ExternalRefFileIndex();
		%feature("autodoc", "1");
		Handle_IGESBasic_ExternalRefFileIndex(const Handle_IGESBasic_ExternalRefFileIndex &aHandle);
		%feature("autodoc", "1");
		Handle_IGESBasic_ExternalRefFileIndex(const IGESBasic_ExternalRefFileIndex *anItem);
		%feature("autodoc", "1");
		Handle_IGESBasic_ExternalRefFileIndex & operator=(const Handle_IGESBasic_ExternalRefFileIndex &aHandle);
		%feature("autodoc", "1");
		Handle_IGESBasic_ExternalRefFileIndex & operator=(const IGESBasic_ExternalRefFileIndex *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESBasic_ExternalRefFileIndex DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESBasic_ExternalRefFileIndex {
	IGESBasic_ExternalRefFileIndex* GetObject() {
	return (IGESBasic_ExternalRefFileIndex*)$self->Access();
	}
};
%feature("shadow") Handle_IGESBasic_ExternalRefFileIndex::~Handle_IGESBasic_ExternalRefFileIndex %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESBasic_ExternalRefFileIndex {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESBasic_HArray1OfHArray1OfXY;
class Handle_IGESBasic_HArray1OfHArray1OfXY : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_IGESBasic_HArray1OfHArray1OfXY();
		%feature("autodoc", "1");
		Handle_IGESBasic_HArray1OfHArray1OfXY(const Handle_IGESBasic_HArray1OfHArray1OfXY &aHandle);
		%feature("autodoc", "1");
		Handle_IGESBasic_HArray1OfHArray1OfXY(const IGESBasic_HArray1OfHArray1OfXY *anItem);
		%feature("autodoc", "1");
		Handle_IGESBasic_HArray1OfHArray1OfXY & operator=(const Handle_IGESBasic_HArray1OfHArray1OfXY &aHandle);
		%feature("autodoc", "1");
		Handle_IGESBasic_HArray1OfHArray1OfXY & operator=(const IGESBasic_HArray1OfHArray1OfXY *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESBasic_HArray1OfHArray1OfXY DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESBasic_HArray1OfHArray1OfXY {
	IGESBasic_HArray1OfHArray1OfXY* GetObject() {
	return (IGESBasic_HArray1OfHArray1OfXY*)$self->Access();
	}
};
%feature("shadow") Handle_IGESBasic_HArray1OfHArray1OfXY::~Handle_IGESBasic_HArray1OfHArray1OfXY %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESBasic_HArray1OfHArray1OfXY {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESBasic_Name;
class Handle_IGESBasic_Name : public Handle_IGESData_NameEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESBasic_Name();
		%feature("autodoc", "1");
		Handle_IGESBasic_Name(const Handle_IGESBasic_Name &aHandle);
		%feature("autodoc", "1");
		Handle_IGESBasic_Name(const IGESBasic_Name *anItem);
		%feature("autodoc", "1");
		Handle_IGESBasic_Name & operator=(const Handle_IGESBasic_Name &aHandle);
		%feature("autodoc", "1");
		Handle_IGESBasic_Name & operator=(const IGESBasic_Name *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESBasic_Name DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESBasic_Name {
	IGESBasic_Name* GetObject() {
	return (IGESBasic_Name*)$self->Access();
	}
};
%feature("shadow") Handle_IGESBasic_Name::~Handle_IGESBasic_Name %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESBasic_Name {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESBasic_OrderedGroup;
class Handle_IGESBasic_OrderedGroup : public Handle_IGESBasic_Group {
	public:
		%feature("autodoc", "1");
		Handle_IGESBasic_OrderedGroup();
		%feature("autodoc", "1");
		Handle_IGESBasic_OrderedGroup(const Handle_IGESBasic_OrderedGroup &aHandle);
		%feature("autodoc", "1");
		Handle_IGESBasic_OrderedGroup(const IGESBasic_OrderedGroup *anItem);
		%feature("autodoc", "1");
		Handle_IGESBasic_OrderedGroup & operator=(const Handle_IGESBasic_OrderedGroup &aHandle);
		%feature("autodoc", "1");
		Handle_IGESBasic_OrderedGroup & operator=(const IGESBasic_OrderedGroup *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESBasic_OrderedGroup DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESBasic_OrderedGroup {
	IGESBasic_OrderedGroup* GetObject() {
	return (IGESBasic_OrderedGroup*)$self->Access();
	}
};
%feature("shadow") Handle_IGESBasic_OrderedGroup::~Handle_IGESBasic_OrderedGroup %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESBasic_OrderedGroup {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESBasic_ExternalRefName;
class Handle_IGESBasic_ExternalRefName : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESBasic_ExternalRefName();
		%feature("autodoc", "1");
		Handle_IGESBasic_ExternalRefName(const Handle_IGESBasic_ExternalRefName &aHandle);
		%feature("autodoc", "1");
		Handle_IGESBasic_ExternalRefName(const IGESBasic_ExternalRefName *anItem);
		%feature("autodoc", "1");
		Handle_IGESBasic_ExternalRefName & operator=(const Handle_IGESBasic_ExternalRefName &aHandle);
		%feature("autodoc", "1");
		Handle_IGESBasic_ExternalRefName & operator=(const IGESBasic_ExternalRefName *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESBasic_ExternalRefName DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESBasic_ExternalRefName {
	IGESBasic_ExternalRefName* GetObject() {
	return (IGESBasic_ExternalRefName*)$self->Access();
	}
};
%feature("shadow") Handle_IGESBasic_ExternalRefName::~Handle_IGESBasic_ExternalRefName %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESBasic_ExternalRefName {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESBasic_SubfigureDef;
class Handle_IGESBasic_SubfigureDef : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESBasic_SubfigureDef();
		%feature("autodoc", "1");
		Handle_IGESBasic_SubfigureDef(const Handle_IGESBasic_SubfigureDef &aHandle);
		%feature("autodoc", "1");
		Handle_IGESBasic_SubfigureDef(const IGESBasic_SubfigureDef *anItem);
		%feature("autodoc", "1");
		Handle_IGESBasic_SubfigureDef & operator=(const Handle_IGESBasic_SubfigureDef &aHandle);
		%feature("autodoc", "1");
		Handle_IGESBasic_SubfigureDef & operator=(const IGESBasic_SubfigureDef *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESBasic_SubfigureDef DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESBasic_SubfigureDef {
	IGESBasic_SubfigureDef* GetObject() {
	return (IGESBasic_SubfigureDef*)$self->Access();
	}
};
%feature("shadow") Handle_IGESBasic_SubfigureDef::~Handle_IGESBasic_SubfigureDef %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESBasic_SubfigureDef {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESBasic_ExternalReferenceFile;
class Handle_IGESBasic_ExternalReferenceFile : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESBasic_ExternalReferenceFile();
		%feature("autodoc", "1");
		Handle_IGESBasic_ExternalReferenceFile(const Handle_IGESBasic_ExternalReferenceFile &aHandle);
		%feature("autodoc", "1");
		Handle_IGESBasic_ExternalReferenceFile(const IGESBasic_ExternalReferenceFile *anItem);
		%feature("autodoc", "1");
		Handle_IGESBasic_ExternalReferenceFile & operator=(const Handle_IGESBasic_ExternalReferenceFile &aHandle);
		%feature("autodoc", "1");
		Handle_IGESBasic_ExternalReferenceFile & operator=(const IGESBasic_ExternalReferenceFile *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESBasic_ExternalReferenceFile DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESBasic_ExternalReferenceFile {
	IGESBasic_ExternalReferenceFile* GetObject() {
	return (IGESBasic_ExternalReferenceFile*)$self->Access();
	}
};
%feature("shadow") Handle_IGESBasic_ExternalReferenceFile::~Handle_IGESBasic_ExternalReferenceFile %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESBasic_ExternalReferenceFile {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESBasic_HArray1OfHArray1OfReal;
class Handle_IGESBasic_HArray1OfHArray1OfReal : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_IGESBasic_HArray1OfHArray1OfReal();
		%feature("autodoc", "1");
		Handle_IGESBasic_HArray1OfHArray1OfReal(const Handle_IGESBasic_HArray1OfHArray1OfReal &aHandle);
		%feature("autodoc", "1");
		Handle_IGESBasic_HArray1OfHArray1OfReal(const IGESBasic_HArray1OfHArray1OfReal *anItem);
		%feature("autodoc", "1");
		Handle_IGESBasic_HArray1OfHArray1OfReal & operator=(const Handle_IGESBasic_HArray1OfHArray1OfReal &aHandle);
		%feature("autodoc", "1");
		Handle_IGESBasic_HArray1OfHArray1OfReal & operator=(const IGESBasic_HArray1OfHArray1OfReal *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESBasic_HArray1OfHArray1OfReal DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESBasic_HArray1OfHArray1OfReal {
	IGESBasic_HArray1OfHArray1OfReal* GetObject() {
	return (IGESBasic_HArray1OfHArray1OfReal*)$self->Access();
	}
};
%feature("shadow") Handle_IGESBasic_HArray1OfHArray1OfReal::~Handle_IGESBasic_HArray1OfHArray1OfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESBasic_HArray1OfHArray1OfReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESBasic_GroupWithoutBackP;
class Handle_IGESBasic_GroupWithoutBackP : public Handle_IGESBasic_Group {
	public:
		%feature("autodoc", "1");
		Handle_IGESBasic_GroupWithoutBackP();
		%feature("autodoc", "1");
		Handle_IGESBasic_GroupWithoutBackP(const Handle_IGESBasic_GroupWithoutBackP &aHandle);
		%feature("autodoc", "1");
		Handle_IGESBasic_GroupWithoutBackP(const IGESBasic_GroupWithoutBackP *anItem);
		%feature("autodoc", "1");
		Handle_IGESBasic_GroupWithoutBackP & operator=(const Handle_IGESBasic_GroupWithoutBackP &aHandle);
		%feature("autodoc", "1");
		Handle_IGESBasic_GroupWithoutBackP & operator=(const IGESBasic_GroupWithoutBackP *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESBasic_GroupWithoutBackP DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESBasic_GroupWithoutBackP {
	IGESBasic_GroupWithoutBackP* GetObject() {
	return (IGESBasic_GroupWithoutBackP*)$self->Access();
	}
};
%feature("shadow") Handle_IGESBasic_GroupWithoutBackP::~Handle_IGESBasic_GroupWithoutBackP %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESBasic_GroupWithoutBackP {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESBasic_AssocGroupType;
class Handle_IGESBasic_AssocGroupType : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESBasic_AssocGroupType();
		%feature("autodoc", "1");
		Handle_IGESBasic_AssocGroupType(const Handle_IGESBasic_AssocGroupType &aHandle);
		%feature("autodoc", "1");
		Handle_IGESBasic_AssocGroupType(const IGESBasic_AssocGroupType *anItem);
		%feature("autodoc", "1");
		Handle_IGESBasic_AssocGroupType & operator=(const Handle_IGESBasic_AssocGroupType &aHandle);
		%feature("autodoc", "1");
		Handle_IGESBasic_AssocGroupType & operator=(const IGESBasic_AssocGroupType *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESBasic_AssocGroupType DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESBasic_AssocGroupType {
	IGESBasic_AssocGroupType* GetObject() {
	return (IGESBasic_AssocGroupType*)$self->Access();
	}
};
%feature("shadow") Handle_IGESBasic_AssocGroupType::~Handle_IGESBasic_AssocGroupType %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESBasic_AssocGroupType {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESBasic_ExternalRefFile;
class Handle_IGESBasic_ExternalRefFile : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		Handle_IGESBasic_ExternalRefFile();
		%feature("autodoc", "1");
		Handle_IGESBasic_ExternalRefFile(const Handle_IGESBasic_ExternalRefFile &aHandle);
		%feature("autodoc", "1");
		Handle_IGESBasic_ExternalRefFile(const IGESBasic_ExternalRefFile *anItem);
		%feature("autodoc", "1");
		Handle_IGESBasic_ExternalRefFile & operator=(const Handle_IGESBasic_ExternalRefFile &aHandle);
		%feature("autodoc", "1");
		Handle_IGESBasic_ExternalRefFile & operator=(const IGESBasic_ExternalRefFile *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESBasic_ExternalRefFile DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESBasic_ExternalRefFile {
	IGESBasic_ExternalRefFile* GetObject() {
	return (IGESBasic_ExternalRefFile*)$self->Access();
	}
};
%feature("shadow") Handle_IGESBasic_ExternalRefFile::~Handle_IGESBasic_ExternalRefFile %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESBasic_ExternalRefFile {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESBasic_SpecificModule;
class Handle_IGESBasic_SpecificModule : public Handle_IGESData_SpecificModule {
	public:
		%feature("autodoc", "1");
		Handle_IGESBasic_SpecificModule();
		%feature("autodoc", "1");
		Handle_IGESBasic_SpecificModule(const Handle_IGESBasic_SpecificModule &aHandle);
		%feature("autodoc", "1");
		Handle_IGESBasic_SpecificModule(const IGESBasic_SpecificModule *anItem);
		%feature("autodoc", "1");
		Handle_IGESBasic_SpecificModule & operator=(const Handle_IGESBasic_SpecificModule &aHandle);
		%feature("autodoc", "1");
		Handle_IGESBasic_SpecificModule & operator=(const IGESBasic_SpecificModule *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESBasic_SpecificModule DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESBasic_SpecificModule {
	IGESBasic_SpecificModule* GetObject() {
	return (IGESBasic_SpecificModule*)$self->Access();
	}
};
%feature("shadow") Handle_IGESBasic_SpecificModule::~Handle_IGESBasic_SpecificModule %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESBasic_SpecificModule {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESBasic_HArray1OfLineFontEntity;
class Handle_IGESBasic_HArray1OfLineFontEntity : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_IGESBasic_HArray1OfLineFontEntity();
		%feature("autodoc", "1");
		Handle_IGESBasic_HArray1OfLineFontEntity(const Handle_IGESBasic_HArray1OfLineFontEntity &aHandle);
		%feature("autodoc", "1");
		Handle_IGESBasic_HArray1OfLineFontEntity(const IGESBasic_HArray1OfLineFontEntity *anItem);
		%feature("autodoc", "1");
		Handle_IGESBasic_HArray1OfLineFontEntity & operator=(const Handle_IGESBasic_HArray1OfLineFontEntity &aHandle);
		%feature("autodoc", "1");
		Handle_IGESBasic_HArray1OfLineFontEntity & operator=(const IGESBasic_HArray1OfLineFontEntity *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESBasic_HArray1OfLineFontEntity DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESBasic_HArray1OfLineFontEntity {
	IGESBasic_HArray1OfLineFontEntity* GetObject() {
	return (IGESBasic_HArray1OfLineFontEntity*)$self->Access();
	}
};
%feature("shadow") Handle_IGESBasic_HArray1OfLineFontEntity::~Handle_IGESBasic_HArray1OfLineFontEntity %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESBasic_HArray1OfLineFontEntity {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESBasic_OrderedGroupWithoutBackP;
class Handle_IGESBasic_OrderedGroupWithoutBackP : public Handle_IGESBasic_Group {
	public:
		%feature("autodoc", "1");
		Handle_IGESBasic_OrderedGroupWithoutBackP();
		%feature("autodoc", "1");
		Handle_IGESBasic_OrderedGroupWithoutBackP(const Handle_IGESBasic_OrderedGroupWithoutBackP &aHandle);
		%feature("autodoc", "1");
		Handle_IGESBasic_OrderedGroupWithoutBackP(const IGESBasic_OrderedGroupWithoutBackP *anItem);
		%feature("autodoc", "1");
		Handle_IGESBasic_OrderedGroupWithoutBackP & operator=(const Handle_IGESBasic_OrderedGroupWithoutBackP &aHandle);
		%feature("autodoc", "1");
		Handle_IGESBasic_OrderedGroupWithoutBackP & operator=(const IGESBasic_OrderedGroupWithoutBackP *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESBasic_OrderedGroupWithoutBackP DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESBasic_OrderedGroupWithoutBackP {
	IGESBasic_OrderedGroupWithoutBackP* GetObject() {
	return (IGESBasic_OrderedGroupWithoutBackP*)$self->Access();
	}
};
%feature("shadow") Handle_IGESBasic_OrderedGroupWithoutBackP::~Handle_IGESBasic_OrderedGroupWithoutBackP %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESBasic_OrderedGroupWithoutBackP {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_IGESBasic_GeneralModule;
class Handle_IGESBasic_GeneralModule : public Handle_IGESData_GeneralModule {
	public:
		%feature("autodoc", "1");
		Handle_IGESBasic_GeneralModule();
		%feature("autodoc", "1");
		Handle_IGESBasic_GeneralModule(const Handle_IGESBasic_GeneralModule &aHandle);
		%feature("autodoc", "1");
		Handle_IGESBasic_GeneralModule(const IGESBasic_GeneralModule *anItem);
		%feature("autodoc", "1");
		Handle_IGESBasic_GeneralModule & operator=(const Handle_IGESBasic_GeneralModule &aHandle);
		%feature("autodoc", "1");
		Handle_IGESBasic_GeneralModule & operator=(const IGESBasic_GeneralModule *anItem);
		%feature("autodoc", "1");
		static		Handle_IGESBasic_GeneralModule DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESBasic_GeneralModule {
	IGESBasic_GeneralModule* GetObject() {
	return (IGESBasic_GeneralModule*)$self->Access();
	}
};
%feature("shadow") Handle_IGESBasic_GeneralModule::~Handle_IGESBasic_GeneralModule %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_IGESBasic_GeneralModule {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESBasic_ToolAssocGroupType;
class IGESBasic_ToolAssocGroupType {
	public:
		%feature("autodoc", "1");
		IGESBasic_ToolAssocGroupType();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESBasic_AssocGroupType &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESBasic_AssocGroupType &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESBasic_AssocGroupType &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		Standard_Boolean OwnCorrect(const Handle_IGESBasic_AssocGroupType &ent) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESBasic_AssocGroupType &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESBasic_AssocGroupType &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESBasic_AssocGroupType &entfrom, const Handle_IGESBasic_AssocGroupType &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESBasic_AssocGroupType &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%feature("shadow") IGESBasic_ToolAssocGroupType::~IGESBasic_ToolAssocGroupType %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESBasic_ToolAssocGroupType {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESBasic_Group;
class IGESBasic_Group : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESBasic_Group();
		%feature("autodoc", "1");
		IGESBasic_Group(const Standard_Integer nb);
		%feature("autodoc", "1");
		void Init(const Handle_IGESData_HArray1OfIGESEntity &allEntities);
		%feature("autodoc", "1");
		void SetOrdered(const Standard_Boolean mode);
		%feature("autodoc", "1");
		void SetWithoutBackP(const Standard_Boolean mode);
		%feature("autodoc", "1");
		Standard_Boolean IsOrdered() const;
		%feature("autodoc", "1");
		Standard_Boolean IsWithoutBackP() const;
		%feature("autodoc", "1");
		void SetUser(const Standard_Integer type, const Standard_Integer form);
		%feature("autodoc", "1");
		void SetNb(const Standard_Integer nb);
		%feature("autodoc", "1");
		Standard_Integer NbEntities() const;
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity Entity(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_Standard_Transient Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_IGESData_IGESEntity &ent);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESBasic_Group {
	Handle_IGESBasic_Group GetHandle() {
	return *(Handle_IGESBasic_Group*) &$self;
	}
};
%extend IGESBasic_Group {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") IGESBasic_Group::~IGESBasic_Group %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESBasic_Group {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESBasic_OrderedGroup;
class IGESBasic_OrderedGroup : public IGESBasic_Group {
	public:
		%feature("autodoc", "1");
		IGESBasic_OrderedGroup();

};
%extend IGESBasic_OrderedGroup {
	Handle_IGESBasic_OrderedGroup GetHandle() {
	return *(Handle_IGESBasic_OrderedGroup*) &$self;
	}
};
%extend IGESBasic_OrderedGroup {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") IGESBasic_OrderedGroup::~IGESBasic_OrderedGroup %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESBasic_OrderedGroup {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESBasic_ToolSingleParent;
class IGESBasic_ToolSingleParent {
	public:
		%feature("autodoc", "1");
		IGESBasic_ToolSingleParent();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESBasic_SingleParent &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESBasic_SingleParent &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESBasic_SingleParent &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		Standard_Boolean OwnCorrect(const Handle_IGESBasic_SingleParent &ent) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESBasic_SingleParent &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESBasic_SingleParent &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESBasic_SingleParent &entfrom, const Handle_IGESBasic_SingleParent &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESBasic_SingleParent &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%feature("shadow") IGESBasic_ToolSingleParent::~IGESBasic_ToolSingleParent %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESBasic_ToolSingleParent {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESBasic_GeneralModule;
class IGESBasic_GeneralModule : public IGESData_GeneralModule {
	public:
		%feature("autodoc", "1");
		IGESBasic_GeneralModule();
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
%extend IGESBasic_GeneralModule {
	Handle_IGESBasic_GeneralModule GetHandle() {
	return *(Handle_IGESBasic_GeneralModule*) &$self;
	}
};
%extend IGESBasic_GeneralModule {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") IGESBasic_GeneralModule::~IGESBasic_GeneralModule %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESBasic_GeneralModule {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESBasic_ToolExternalRefFileIndex;
class IGESBasic_ToolExternalRefFileIndex {
	public:
		%feature("autodoc", "1");
		IGESBasic_ToolExternalRefFileIndex();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESBasic_ExternalRefFileIndex &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESBasic_ExternalRefFileIndex &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESBasic_ExternalRefFileIndex &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESBasic_ExternalRefFileIndex &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESBasic_ExternalRefFileIndex &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESBasic_ExternalRefFileIndex &entfrom, const Handle_IGESBasic_ExternalRefFileIndex &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESBasic_ExternalRefFileIndex &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%feature("shadow") IGESBasic_ToolExternalRefFileIndex::~IGESBasic_ToolExternalRefFileIndex %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESBasic_ToolExternalRefFileIndex {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESBasic_HArray2OfHArray1OfReal;
class IGESBasic_HArray2OfHArray1OfReal : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		IGESBasic_HArray2OfHArray1OfReal(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		IGESBasic_HArray2OfHArray1OfReal(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2, const Handle_TColStd_HArray1OfReal &V);
		%feature("autodoc", "1");
		void Init(const Handle_TColStd_HArray1OfReal &V);
		%feature("autodoc", "1");
		Standard_Integer ColLength() const;
		%feature("autodoc", "1");
		Standard_Integer RowLength() const;
		%feature("autodoc", "1");
		Standard_Integer LowerCol() const;
		%feature("autodoc", "1");
		Standard_Integer LowerRow() const;
		%feature("autodoc", "1");
		Standard_Integer UpperCol() const;
		%feature("autodoc", "1");
		Standard_Integer UpperRow() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const Handle_TColStd_HArray1OfReal &Value);
		%feature("autodoc", "1");
		const Handle_TColStd_HArray1OfReal & Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal & ChangeValue(const Standard_Integer Row, const Standard_Integer Col);
		%feature("autodoc", "1");
		const IGESBasic_Array2OfHArray1OfReal & Array2() const;
		%feature("autodoc", "1");
		IGESBasic_Array2OfHArray1OfReal & ChangeArray2();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESBasic_HArray2OfHArray1OfReal {
	Handle_IGESBasic_HArray2OfHArray1OfReal GetHandle() {
	return *(Handle_IGESBasic_HArray2OfHArray1OfReal*) &$self;
	}
};
%extend IGESBasic_HArray2OfHArray1OfReal {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") IGESBasic_HArray2OfHArray1OfReal::~IGESBasic_HArray2OfHArray1OfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESBasic_HArray2OfHArray1OfReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESBasic_ExternalRefName;
class IGESBasic_ExternalRefName : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESBasic_ExternalRefName();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &anExtName);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString ReferenceName() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESBasic_ExternalRefName {
	Handle_IGESBasic_ExternalRefName GetHandle() {
	return *(Handle_IGESBasic_ExternalRefName*) &$self;
	}
};
%extend IGESBasic_ExternalRefName {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") IGESBasic_ExternalRefName::~IGESBasic_ExternalRefName %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESBasic_ExternalRefName {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESBasic_Array2OfHArray1OfReal;
class IGESBasic_Array2OfHArray1OfReal {
	public:
		%feature("autodoc", "1");
		IGESBasic_Array2OfHArray1OfReal(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		IGESBasic_Array2OfHArray1OfReal(const Handle_TColStd_HArray1OfReal &Item, const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		void Init(const Handle_TColStd_HArray1OfReal &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		const IGESBasic_Array2OfHArray1OfReal & Assign(const IGESBasic_Array2OfHArray1OfReal &Other);
		%feature("autodoc", "1");
		const IGESBasic_Array2OfHArray1OfReal & operator=(const IGESBasic_Array2OfHArray1OfReal &Other);
		%feature("autodoc", "1");
		Standard_Integer ColLength() const;
		%feature("autodoc", "1");
		Standard_Integer RowLength() const;
		%feature("autodoc", "1");
		Standard_Integer LowerCol() const;
		%feature("autodoc", "1");
		Standard_Integer LowerRow() const;
		%feature("autodoc", "1");
		Standard_Integer UpperCol() const;
		%feature("autodoc", "1");
		Standard_Integer UpperRow() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const Handle_TColStd_HArray1OfReal &Value);
		%feature("autodoc", "1");
		const Handle_TColStd_HArray1OfReal & Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		const Handle_TColStd_HArray1OfReal & operator()(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal & ChangeValue(const Standard_Integer Row, const Standard_Integer Col);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal & operator()(const Standard_Integer Row, const Standard_Integer Col);

};
%feature("shadow") IGESBasic_Array2OfHArray1OfReal::~IGESBasic_Array2OfHArray1OfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESBasic_Array2OfHArray1OfReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESBasic_HArray1OfHArray1OfReal;
class IGESBasic_HArray1OfHArray1OfReal : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		IGESBasic_HArray1OfHArray1OfReal(const Standard_Integer low, const Standard_Integer up);
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer num, const Handle_TColStd_HArray1OfReal &val);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal Value(const Standard_Integer num) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESBasic_HArray1OfHArray1OfReal {
	Handle_IGESBasic_HArray1OfHArray1OfReal GetHandle() {
	return *(Handle_IGESBasic_HArray1OfHArray1OfReal*) &$self;
	}
};
%extend IGESBasic_HArray1OfHArray1OfReal {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") IGESBasic_HArray1OfHArray1OfReal::~IGESBasic_HArray1OfHArray1OfReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESBasic_HArray1OfHArray1OfReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESBasic_SpecificModule;
class IGESBasic_SpecificModule : public IGESData_SpecificModule {
	public:
		%feature("autodoc", "1");
		IGESBasic_SpecificModule();
		%feature("autodoc", "1");
		virtual		void OwnDump(const Standard_Integer CN, const Handle_IGESData_IGESEntity &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean OwnCorrect(const Standard_Integer CN, const Handle_IGESData_IGESEntity &ent) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESBasic_SpecificModule {
	Handle_IGESBasic_SpecificModule GetHandle() {
	return *(Handle_IGESBasic_SpecificModule*) &$self;
	}
};
%extend IGESBasic_SpecificModule {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") IGESBasic_SpecificModule::~IGESBasic_SpecificModule %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESBasic_SpecificModule {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESBasic_GroupWithoutBackP;
class IGESBasic_GroupWithoutBackP : public IGESBasic_Group {
	public:
		%feature("autodoc", "1");
		IGESBasic_GroupWithoutBackP();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESBasic_GroupWithoutBackP {
	Handle_IGESBasic_GroupWithoutBackP GetHandle() {
	return *(Handle_IGESBasic_GroupWithoutBackP*) &$self;
	}
};
%extend IGESBasic_GroupWithoutBackP {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") IGESBasic_GroupWithoutBackP::~IGESBasic_GroupWithoutBackP %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESBasic_GroupWithoutBackP {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESBasic_Name;
class IGESBasic_Name : public IGESData_NameEntity {
	public:
		%feature("autodoc", "1");
		IGESBasic_Name();
		%feature("autodoc", "1");
		void Init(const Standard_Integer nbPropVal, const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		Standard_Integer NbPropertyValues() const;
		%feature("autodoc", "1");
		virtual		Handle_TCollection_HAsciiString Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESBasic_Name {
	Handle_IGESBasic_Name GetHandle() {
	return *(Handle_IGESBasic_Name*) &$self;
	}
};
%extend IGESBasic_Name {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") IGESBasic_Name::~IGESBasic_Name %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESBasic_Name {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESBasic_ToolOrderedGroupWithoutBackP;
class IGESBasic_ToolOrderedGroupWithoutBackP {
	public:
		%feature("autodoc", "1");
		IGESBasic_ToolOrderedGroupWithoutBackP();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESBasic_OrderedGroupWithoutBackP &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESBasic_OrderedGroupWithoutBackP &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESBasic_OrderedGroupWithoutBackP &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		Standard_Boolean OwnCorrect(const Handle_IGESBasic_OrderedGroupWithoutBackP &ent) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESBasic_OrderedGroupWithoutBackP &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESBasic_OrderedGroupWithoutBackP &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESBasic_OrderedGroupWithoutBackP &entfrom, const Handle_IGESBasic_OrderedGroupWithoutBackP &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESBasic_OrderedGroupWithoutBackP &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%feature("shadow") IGESBasic_ToolOrderedGroupWithoutBackP::~IGESBasic_ToolOrderedGroupWithoutBackP %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESBasic_ToolOrderedGroupWithoutBackP {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESBasic;
class IGESBasic {
	public:
		%feature("autodoc", "1");
		IGESBasic();
		%feature("autodoc", "1");
		static		void Init();
		%feature("autodoc", "1");
		static		Handle_IGESBasic_Protocol Protocol();

};
%feature("shadow") IGESBasic::~IGESBasic %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESBasic {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESBasic_SubfigureDef;
class IGESBasic_SubfigureDef : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESBasic_SubfigureDef();
		%feature("autodoc", "1");
		void Init(const Standard_Integer aDepth, const Handle_TCollection_HAsciiString &aName, const Handle_IGESData_HArray1OfIGESEntity &allAssocEntities);
		%feature("autodoc", "1");
		Standard_Integer Depth() const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Name() const;
		%feature("autodoc", "1");
		Standard_Integer NbEntities() const;
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity AssociatedEntity(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_Standard_Transient Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESBasic_SubfigureDef {
	Handle_IGESBasic_SubfigureDef GetHandle() {
	return *(Handle_IGESBasic_SubfigureDef*) &$self;
	}
};
%extend IGESBasic_SubfigureDef {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") IGESBasic_SubfigureDef::~IGESBasic_SubfigureDef %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESBasic_SubfigureDef {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESBasic_ToolExternalRefName;
class IGESBasic_ToolExternalRefName {
	public:
		%feature("autodoc", "1");
		IGESBasic_ToolExternalRefName();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESBasic_ExternalRefName &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESBasic_ExternalRefName &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESBasic_ExternalRefName &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESBasic_ExternalRefName &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESBasic_ExternalRefName &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESBasic_ExternalRefName &entfrom, const Handle_IGESBasic_ExternalRefName &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESBasic_ExternalRefName &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%feature("shadow") IGESBasic_ToolExternalRefName::~IGESBasic_ToolExternalRefName %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESBasic_ToolExternalRefName {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESBasic_ToolGroupWithoutBackP;
class IGESBasic_ToolGroupWithoutBackP {
	public:
		%feature("autodoc", "1");
		IGESBasic_ToolGroupWithoutBackP();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESBasic_GroupWithoutBackP &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESBasic_GroupWithoutBackP &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESBasic_GroupWithoutBackP &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		Standard_Boolean OwnCorrect(const Handle_IGESBasic_GroupWithoutBackP &ent) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESBasic_GroupWithoutBackP &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESBasic_GroupWithoutBackP &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESBasic_GroupWithoutBackP &entfrom, const Handle_IGESBasic_GroupWithoutBackP &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESBasic_GroupWithoutBackP &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%feature("shadow") IGESBasic_ToolGroupWithoutBackP::~IGESBasic_ToolGroupWithoutBackP %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESBasic_ToolGroupWithoutBackP {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESBasic_AssocGroupType;
class IGESBasic_AssocGroupType : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESBasic_AssocGroupType();
		%feature("autodoc", "1");
		void Init(const Standard_Integer nbDataFields, const Standard_Integer aType, const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		Standard_Integer NbData() const;
		%feature("autodoc", "1");
		Standard_Integer AssocType() const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Name() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESBasic_AssocGroupType {
	Handle_IGESBasic_AssocGroupType GetHandle() {
	return *(Handle_IGESBasic_AssocGroupType*) &$self;
	}
};
%extend IGESBasic_AssocGroupType {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") IGESBasic_AssocGroupType::~IGESBasic_AssocGroupType %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESBasic_AssocGroupType {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESBasic_ToolOrderedGroup;
class IGESBasic_ToolOrderedGroup {
	public:
		%feature("autodoc", "1");
		IGESBasic_ToolOrderedGroup();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESBasic_OrderedGroup &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESBasic_OrderedGroup &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESBasic_OrderedGroup &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		Standard_Boolean OwnCorrect(const Handle_IGESBasic_OrderedGroup &ent) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESBasic_OrderedGroup &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESBasic_OrderedGroup &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESBasic_OrderedGroup &entfrom, const Handle_IGESBasic_OrderedGroup &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESBasic_OrderedGroup &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%feature("shadow") IGESBasic_ToolOrderedGroup::~IGESBasic_ToolOrderedGroup %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESBasic_ToolOrderedGroup {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESBasic_HArray1OfHArray1OfInteger;
class IGESBasic_HArray1OfHArray1OfInteger : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		IGESBasic_HArray1OfHArray1OfInteger(const Standard_Integer low, const Standard_Integer up);
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer num, const Handle_TColStd_HArray1OfInteger &val);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfInteger Value(const Standard_Integer num) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESBasic_HArray1OfHArray1OfInteger {
	Handle_IGESBasic_HArray1OfHArray1OfInteger GetHandle() {
	return *(Handle_IGESBasic_HArray1OfHArray1OfInteger*) &$self;
	}
};
%extend IGESBasic_HArray1OfHArray1OfInteger {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") IGESBasic_HArray1OfHArray1OfInteger::~IGESBasic_HArray1OfHArray1OfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESBasic_HArray1OfHArray1OfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESBasic_ToolGroup;
class IGESBasic_ToolGroup {
	public:
		%feature("autodoc", "1");
		IGESBasic_ToolGroup();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESBasic_Group &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESBasic_Group &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESBasic_Group &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		Standard_Boolean OwnCorrect(const Handle_IGESBasic_Group &ent) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESBasic_Group &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESBasic_Group &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESBasic_Group &entfrom, const Handle_IGESBasic_Group &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESBasic_Group &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%feature("shadow") IGESBasic_ToolGroup::~IGESBasic_ToolGroup %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESBasic_ToolGroup {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESBasic_SingularSubfigure;
class IGESBasic_SingularSubfigure : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESBasic_SingularSubfigure();
		%feature("autodoc", "1");
		void Init(const Handle_IGESBasic_SubfigureDef &aSubfigureDef, const gp_XYZ aTranslation, const Standard_Boolean hasScale, const Standard_Real aScale);
		%feature("autodoc", "1");
		Handle_IGESBasic_SubfigureDef Subfigure() const;
		%feature("autodoc", "1");
		gp_XYZ Translation() const;
		%feature("autodoc", "1");
		Standard_Real ScaleFactor() const;
		%feature("autodoc", "1");
		Standard_Boolean HasScaleFactor() const;
		%feature("autodoc", "1");
		gp_XYZ TransformedTranslation() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESBasic_SingularSubfigure {
	Handle_IGESBasic_SingularSubfigure GetHandle() {
	return *(Handle_IGESBasic_SingularSubfigure*) &$self;
	}
};
%extend IGESBasic_SingularSubfigure {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") IGESBasic_SingularSubfigure::~IGESBasic_SingularSubfigure %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESBasic_SingularSubfigure {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESBasic_Array1OfLineFontEntity;
class IGESBasic_Array1OfLineFontEntity {
	public:
		%feature("autodoc", "1");
		IGESBasic_Array1OfLineFontEntity(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		IGESBasic_Array1OfLineFontEntity(const Handle_IGESData_LineFontEntity &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Handle_IGESData_LineFontEntity &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const IGESBasic_Array1OfLineFontEntity & Assign(const IGESBasic_Array1OfLineFontEntity &Other);
		%feature("autodoc", "1");
		const IGESBasic_Array1OfLineFontEntity & operator=(const IGESBasic_Array1OfLineFontEntity &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_IGESData_LineFontEntity &Value);
		%feature("autodoc", "1");
		const Handle_IGESData_LineFontEntity & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_IGESData_LineFontEntity & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_IGESData_LineFontEntity & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_IGESData_LineFontEntity & operator()(const Standard_Integer Index);

};
%feature("shadow") IGESBasic_Array1OfLineFontEntity::~IGESBasic_Array1OfLineFontEntity %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESBasic_Array1OfLineFontEntity {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESBasic_ExternalRefFile;
class IGESBasic_ExternalRefFile : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESBasic_ExternalRefFile();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aFileIdent);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString FileId() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESBasic_ExternalRefFile {
	Handle_IGESBasic_ExternalRefFile GetHandle() {
	return *(Handle_IGESBasic_ExternalRefFile*) &$self;
	}
};
%extend IGESBasic_ExternalRefFile {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") IGESBasic_ExternalRefFile::~IGESBasic_ExternalRefFile %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESBasic_ExternalRefFile {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESBasic_ToolExternalRefLibName;
class IGESBasic_ToolExternalRefLibName {
	public:
		%feature("autodoc", "1");
		IGESBasic_ToolExternalRefLibName();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESBasic_ExternalRefLibName &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESBasic_ExternalRefLibName &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESBasic_ExternalRefLibName &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESBasic_ExternalRefLibName &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESBasic_ExternalRefLibName &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESBasic_ExternalRefLibName &entfrom, const Handle_IGESBasic_ExternalRefLibName &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESBasic_ExternalRefLibName &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%feature("shadow") IGESBasic_ToolExternalRefLibName::~IGESBasic_ToolExternalRefLibName %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESBasic_ToolExternalRefLibName {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESBasic_HArray1OfLineFontEntity;
class IGESBasic_HArray1OfLineFontEntity : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		IGESBasic_HArray1OfLineFontEntity(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		IGESBasic_HArray1OfLineFontEntity(const Standard_Integer Low, const Standard_Integer Up, const Handle_IGESData_LineFontEntity &V);
		%feature("autodoc", "1");
		void Init(const Handle_IGESData_LineFontEntity &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_IGESData_LineFontEntity &Value);
		%feature("autodoc", "1");
		const Handle_IGESData_LineFontEntity & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_IGESData_LineFontEntity & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const IGESBasic_Array1OfLineFontEntity & Array1() const;
		%feature("autodoc", "1");
		IGESBasic_Array1OfLineFontEntity & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESBasic_HArray1OfLineFontEntity {
	Handle_IGESBasic_HArray1OfLineFontEntity GetHandle() {
	return *(Handle_IGESBasic_HArray1OfLineFontEntity*) &$self;
	}
};
%extend IGESBasic_HArray1OfLineFontEntity {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") IGESBasic_HArray1OfLineFontEntity::~IGESBasic_HArray1OfLineFontEntity %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESBasic_HArray1OfLineFontEntity {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESBasic_ToolSubfigureDef;
class IGESBasic_ToolSubfigureDef {
	public:
		%feature("autodoc", "1");
		IGESBasic_ToolSubfigureDef();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESBasic_SubfigureDef &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESBasic_SubfigureDef &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESBasic_SubfigureDef &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESBasic_SubfigureDef &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESBasic_SubfigureDef &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESBasic_SubfigureDef &entfrom, const Handle_IGESBasic_SubfigureDef &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESBasic_SubfigureDef &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%feature("shadow") IGESBasic_ToolSubfigureDef::~IGESBasic_ToolSubfigureDef %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESBasic_ToolSubfigureDef {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESBasic_ExternalRefFileName;
class IGESBasic_ExternalRefFileName : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESBasic_ExternalRefFileName();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aFileIdent, const Handle_TCollection_HAsciiString &anExtName);
		%feature("autodoc", "1");
		void SetForEntity(const Standard_Boolean mode);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString FileId() const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString ReferenceName() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESBasic_ExternalRefFileName {
	Handle_IGESBasic_ExternalRefFileName GetHandle() {
	return *(Handle_IGESBasic_ExternalRefFileName*) &$self;
	}
};
%extend IGESBasic_ExternalRefFileName {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") IGESBasic_ExternalRefFileName::~IGESBasic_ExternalRefFileName %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESBasic_ExternalRefFileName {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESBasic_Hierarchy;
class IGESBasic_Hierarchy : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESBasic_Hierarchy();
		%feature("autodoc", "1");
		void Init(const Standard_Integer nbPropVal, const Standard_Integer aLineFont, const Standard_Integer aView, const Standard_Integer anEntityLevel, const Standard_Integer aBlankStatus, const Standard_Integer aLineWt, const Standard_Integer aColorNum);
		%feature("autodoc", "1");
		Standard_Integer NbPropertyValues() const;
		%feature("autodoc", "1");
		Standard_Integer NewLineFont() const;
		%feature("autodoc", "1");
		Standard_Integer NewView() const;
		%feature("autodoc", "1");
		Standard_Integer NewEntityLevel() const;
		%feature("autodoc", "1");
		Standard_Integer NewBlankStatus() const;
		%feature("autodoc", "1");
		Standard_Integer NewLineWeight() const;
		%feature("autodoc", "1");
		Standard_Integer NewColorNum() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESBasic_Hierarchy {
	Handle_IGESBasic_Hierarchy GetHandle() {
	return *(Handle_IGESBasic_Hierarchy*) &$self;
	}
};
%extend IGESBasic_Hierarchy {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") IGESBasic_Hierarchy::~IGESBasic_Hierarchy %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESBasic_Hierarchy {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESBasic_ExternalRefFileIndex;
class IGESBasic_ExternalRefFileIndex : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESBasic_ExternalRefFileIndex();
		%feature("autodoc", "1");
		void Init(const Handle_Interface_HArray1OfHAsciiString &aNameArray, const Handle_IGESData_HArray1OfIGESEntity &allEntities);
		%feature("autodoc", "1");
		Standard_Integer NbEntries() const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Name(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity Entity(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESBasic_ExternalRefFileIndex {
	Handle_IGESBasic_ExternalRefFileIndex GetHandle() {
	return *(Handle_IGESBasic_ExternalRefFileIndex*) &$self;
	}
};
%extend IGESBasic_ExternalRefFileIndex {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") IGESBasic_ExternalRefFileIndex::~IGESBasic_ExternalRefFileIndex %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESBasic_ExternalRefFileIndex {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESBasic_ExternalReferenceFile;
class IGESBasic_ExternalReferenceFile : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESBasic_ExternalReferenceFile();
		%feature("autodoc", "1");
		void Init(const Handle_Interface_HArray1OfHAsciiString &aNameArray);
		%feature("autodoc", "1");
		Standard_Integer NbListEntries() const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Name(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESBasic_ExternalReferenceFile {
	Handle_IGESBasic_ExternalReferenceFile GetHandle() {
	return *(Handle_IGESBasic_ExternalReferenceFile*) &$self;
	}
};
%extend IGESBasic_ExternalReferenceFile {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") IGESBasic_ExternalReferenceFile::~IGESBasic_ExternalReferenceFile %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESBasic_ExternalReferenceFile {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESBasic_ToolSingularSubfigure;
class IGESBasic_ToolSingularSubfigure {
	public:
		%feature("autodoc", "1");
		IGESBasic_ToolSingularSubfigure();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESBasic_SingularSubfigure &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESBasic_SingularSubfigure &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESBasic_SingularSubfigure &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESBasic_SingularSubfigure &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESBasic_SingularSubfigure &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESBasic_SingularSubfigure &entfrom, const Handle_IGESBasic_SingularSubfigure &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESBasic_SingularSubfigure &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%feature("shadow") IGESBasic_ToolSingularSubfigure::~IGESBasic_ToolSingularSubfigure %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESBasic_ToolSingularSubfigure {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESBasic_ToolHierarchy;
class IGESBasic_ToolHierarchy {
	public:
		%feature("autodoc", "1");
		IGESBasic_ToolHierarchy();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESBasic_Hierarchy &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESBasic_Hierarchy &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESBasic_Hierarchy &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		Standard_Boolean OwnCorrect(const Handle_IGESBasic_Hierarchy &ent) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESBasic_Hierarchy &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESBasic_Hierarchy &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESBasic_Hierarchy &entfrom, const Handle_IGESBasic_Hierarchy &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESBasic_Hierarchy &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%feature("shadow") IGESBasic_ToolHierarchy::~IGESBasic_ToolHierarchy %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESBasic_ToolHierarchy {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESBasic_SingleParent;
class IGESBasic_SingleParent : public IGESData_SingleParentEntity {
	public:
		%feature("autodoc", "1");
		IGESBasic_SingleParent();
		%feature("autodoc", "1");
		void Init(const Standard_Integer nbParentEntities, const Handle_IGESData_IGESEntity &aParentEntity, const Handle_IGESData_HArray1OfIGESEntity &allChildren);
		%feature("autodoc", "1");
		Standard_Integer NbParentEntities() const;
		%feature("autodoc", "1");
		virtual		Handle_IGESData_IGESEntity SingleParent() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbChildren() const;
		%feature("autodoc", "1");
		virtual		Handle_IGESData_IGESEntity Child(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESBasic_SingleParent {
	Handle_IGESBasic_SingleParent GetHandle() {
	return *(Handle_IGESBasic_SingleParent*) &$self;
	}
};
%extend IGESBasic_SingleParent {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") IGESBasic_SingleParent::~IGESBasic_SingleParent %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESBasic_SingleParent {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESBasic_ToolExternalRefFile;
class IGESBasic_ToolExternalRefFile {
	public:
		%feature("autodoc", "1");
		IGESBasic_ToolExternalRefFile();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESBasic_ExternalRefFile &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESBasic_ExternalRefFile &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESBasic_ExternalRefFile &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESBasic_ExternalRefFile &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESBasic_ExternalRefFile &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESBasic_ExternalRefFile &entfrom, const Handle_IGESBasic_ExternalRefFile &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESBasic_ExternalRefFile &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%feature("shadow") IGESBasic_ToolExternalRefFile::~IGESBasic_ToolExternalRefFile %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESBasic_ToolExternalRefFile {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESBasic_ToolExternalRefFileName;
class IGESBasic_ToolExternalRefFileName {
	public:
		%feature("autodoc", "1");
		IGESBasic_ToolExternalRefFileName();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESBasic_ExternalRefFileName &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESBasic_ExternalRefFileName &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESBasic_ExternalRefFileName &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESBasic_ExternalRefFileName &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESBasic_ExternalRefFileName &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESBasic_ExternalRefFileName &entfrom, const Handle_IGESBasic_ExternalRefFileName &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESBasic_ExternalRefFileName &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%feature("shadow") IGESBasic_ToolExternalRefFileName::~IGESBasic_ToolExternalRefFileName %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESBasic_ToolExternalRefFileName {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESBasic_ToolExternalReferenceFile;
class IGESBasic_ToolExternalReferenceFile {
	public:
		%feature("autodoc", "1");
		IGESBasic_ToolExternalReferenceFile();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESBasic_ExternalReferenceFile &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESBasic_ExternalReferenceFile &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESBasic_ExternalReferenceFile &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESBasic_ExternalReferenceFile &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESBasic_ExternalReferenceFile &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESBasic_ExternalReferenceFile &entfrom, const Handle_IGESBasic_ExternalReferenceFile &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESBasic_ExternalReferenceFile &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%feature("shadow") IGESBasic_ToolExternalReferenceFile::~IGESBasic_ToolExternalReferenceFile %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESBasic_ToolExternalReferenceFile {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESBasic_HArray1OfHArray1OfXYZ;
class IGESBasic_HArray1OfHArray1OfXYZ : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		IGESBasic_HArray1OfHArray1OfXYZ(const Standard_Integer low, const Standard_Integer up);
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer num, const Handle_TColgp_HArray1OfXYZ &val);
		%feature("autodoc", "1");
		Handle_TColgp_HArray1OfXYZ Value(const Standard_Integer num) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESBasic_HArray1OfHArray1OfXYZ {
	Handle_IGESBasic_HArray1OfHArray1OfXYZ GetHandle() {
	return *(Handle_IGESBasic_HArray1OfHArray1OfXYZ*) &$self;
	}
};
%extend IGESBasic_HArray1OfHArray1OfXYZ {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") IGESBasic_HArray1OfHArray1OfXYZ::~IGESBasic_HArray1OfHArray1OfXYZ %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESBasic_HArray1OfHArray1OfXYZ {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESBasic_OrderedGroupWithoutBackP;
class IGESBasic_OrderedGroupWithoutBackP : public IGESBasic_Group {
	public:
		%feature("autodoc", "1");
		IGESBasic_OrderedGroupWithoutBackP();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESBasic_OrderedGroupWithoutBackP {
	Handle_IGESBasic_OrderedGroupWithoutBackP GetHandle() {
	return *(Handle_IGESBasic_OrderedGroupWithoutBackP*) &$self;
	}
};
%extend IGESBasic_OrderedGroupWithoutBackP {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") IGESBasic_OrderedGroupWithoutBackP::~IGESBasic_OrderedGroupWithoutBackP %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESBasic_OrderedGroupWithoutBackP {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESBasic_HArray1OfHArray1OfIGESEntity;
class IGESBasic_HArray1OfHArray1OfIGESEntity : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		IGESBasic_HArray1OfHArray1OfIGESEntity(const Standard_Integer low, const Standard_Integer up);
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer num, const Handle_IGESData_HArray1OfIGESEntity &val);
		%feature("autodoc", "1");
		Handle_IGESData_HArray1OfIGESEntity Value(const Standard_Integer num) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESBasic_HArray1OfHArray1OfIGESEntity {
	Handle_IGESBasic_HArray1OfHArray1OfIGESEntity GetHandle() {
	return *(Handle_IGESBasic_HArray1OfHArray1OfIGESEntity*) &$self;
	}
};
%extend IGESBasic_HArray1OfHArray1OfIGESEntity {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") IGESBasic_HArray1OfHArray1OfIGESEntity::~IGESBasic_HArray1OfHArray1OfIGESEntity %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESBasic_HArray1OfHArray1OfIGESEntity {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESBasic_HArray1OfHArray1OfXY;
class IGESBasic_HArray1OfHArray1OfXY : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		IGESBasic_HArray1OfHArray1OfXY(const Standard_Integer low, const Standard_Integer up);
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer num, const Handle_TColgp_HArray1OfXY &val);
		%feature("autodoc", "1");
		Handle_TColgp_HArray1OfXY Value(const Standard_Integer num) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESBasic_HArray1OfHArray1OfXY {
	Handle_IGESBasic_HArray1OfHArray1OfXY GetHandle() {
	return *(Handle_IGESBasic_HArray1OfHArray1OfXY*) &$self;
	}
};
%extend IGESBasic_HArray1OfHArray1OfXY {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") IGESBasic_HArray1OfHArray1OfXY::~IGESBasic_HArray1OfHArray1OfXY %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESBasic_HArray1OfHArray1OfXY {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESBasic_ReadWriteModule;
class IGESBasic_ReadWriteModule : public IGESData_ReadWriteModule {
	public:
		%feature("autodoc", "1");
		IGESBasic_ReadWriteModule();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseIGES(const Standard_Integer typenum, const Standard_Integer formnum) const;
		%feature("autodoc", "1");
		virtual		void ReadOwnParams(const Standard_Integer CN, const Handle_IGESData_IGESEntity &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		virtual		void WriteOwnParams(const Standard_Integer CN, const Handle_IGESData_IGESEntity &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESBasic_ReadWriteModule {
	Handle_IGESBasic_ReadWriteModule GetHandle() {
	return *(Handle_IGESBasic_ReadWriteModule*) &$self;
	}
};
%extend IGESBasic_ReadWriteModule {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") IGESBasic_ReadWriteModule::~IGESBasic_ReadWriteModule %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESBasic_ReadWriteModule {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESBasic_ExternalRefLibName;
class IGESBasic_ExternalRefLibName : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESBasic_ExternalRefLibName();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aLibName, const Handle_TCollection_HAsciiString &anExtName);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString LibraryName() const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString ReferenceName() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend IGESBasic_ExternalRefLibName {
	Handle_IGESBasic_ExternalRefLibName GetHandle() {
	return *(Handle_IGESBasic_ExternalRefLibName*) &$self;
	}
};
%extend IGESBasic_ExternalRefLibName {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") IGESBasic_ExternalRefLibName::~IGESBasic_ExternalRefLibName %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESBasic_ExternalRefLibName {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor IGESBasic_ToolName;
class IGESBasic_ToolName {
	public:
		%feature("autodoc", "1");
		IGESBasic_ToolName();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESBasic_Name &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESBasic_Name &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESBasic_Name &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		Standard_Boolean OwnCorrect(const Handle_IGESBasic_Name &ent) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESBasic_Name &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESBasic_Name &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESBasic_Name &entfrom, const Handle_IGESBasic_Name &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESBasic_Name &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};
%feature("shadow") IGESBasic_ToolName::~IGESBasic_ToolName %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend IGESBasic_ToolName {
	void _kill_pointed() {
		delete $self;
	}
};
