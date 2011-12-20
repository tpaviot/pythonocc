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

%module MeshVS
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include MeshVS_renames.i


%include MeshVS_required_python_modules.i


%include MeshVS_dependencies.i


%include MeshVS_headers.i

typedef MeshVS_Mesh * MeshVS_MeshPtr;
typedef Standard_Integer MeshVS_BuilderPriority;
typedef Standard_Integer MeshVS_DisplayModeFlags;

enum MeshVS_DrawerAttribute {
	MeshVS_DA_InteriorStyle,
	MeshVS_DA_InteriorColor,
	MeshVS_DA_BackInteriorColor,
	MeshVS_DA_EdgeColor,
	MeshVS_DA_EdgeType,
	MeshVS_DA_EdgeWidth,
	MeshVS_DA_HatchStyle,
	MeshVS_DA_FrontMaterial,
	MeshVS_DA_BackMaterial,
	MeshVS_DA_BeamType,
	MeshVS_DA_BeamWidth,
	MeshVS_DA_BeamColor,
	MeshVS_DA_MarkerType,
	MeshVS_DA_MarkerColor,
	MeshVS_DA_MarkerScale,
	MeshVS_DA_TextColor,
	MeshVS_DA_TextHeight,
	MeshVS_DA_TextFont,
	MeshVS_DA_TextExpansionFactor,
	MeshVS_DA_TextSpace,
	MeshVS_DA_TextStyle,
	MeshVS_DA_TextDisplayType,
	MeshVS_DA_TextTexFont,
	MeshVS_DA_TextFontAspect,
	MeshVS_DA_VectorColor,
	MeshVS_DA_VectorMaxLength,
	MeshVS_DA_VectorArrowPart,
	MeshVS_DA_IsAllowOverlapped,
	MeshVS_DA_Reflection,
	MeshVS_DA_ColorReflection,
	MeshVS_DA_ShrinkCoeff,
	MeshVS_DA_MaxFaceNodes,
	MeshVS_DA_ComputeTime,
	MeshVS_DA_ComputeSelectionTime,
	MeshVS_DA_DisplayNodes,
	MeshVS_DA_SelectableAuto,
	MeshVS_DA_ShowEdges,
	MeshVS_DA_SmoothShading,
	MeshVS_DA_SupressBackFaces,
	MeshVS_DA_User,
	};

enum MeshVS_EntityType {
	MeshVS_ET_NONE,
	MeshVS_ET_Node,
	MeshVS_ET_0D,
	MeshVS_ET_Link,
	MeshVS_ET_Face,
	MeshVS_ET_Volume,
	MeshVS_ET_Element,
	MeshVS_ET_All,
	};

enum MeshVS_MeshSelectionMethod {
	MeshVS_MSM_PRECISE,
	MeshVS_MSM_NODES,
	MeshVS_MSM_BOX,
	};



%nodefaultctor Handle_MeshVS_DataMapNodeOfDataMapOfIntegerMeshEntityOwner;
class Handle_MeshVS_DataMapNodeOfDataMapOfIntegerMeshEntityOwner : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_MeshVS_DataMapNodeOfDataMapOfIntegerMeshEntityOwner();
		%feature("autodoc", "1");
		Handle_MeshVS_DataMapNodeOfDataMapOfIntegerMeshEntityOwner(const Handle_MeshVS_DataMapNodeOfDataMapOfIntegerMeshEntityOwner &aHandle);
		%feature("autodoc", "1");
		Handle_MeshVS_DataMapNodeOfDataMapOfIntegerMeshEntityOwner(const MeshVS_DataMapNodeOfDataMapOfIntegerMeshEntityOwner *anItem);
		%feature("autodoc", "1");
		Handle_MeshVS_DataMapNodeOfDataMapOfIntegerMeshEntityOwner & operator=(const Handle_MeshVS_DataMapNodeOfDataMapOfIntegerMeshEntityOwner &aHandle);
		%feature("autodoc", "1");
		Handle_MeshVS_DataMapNodeOfDataMapOfIntegerMeshEntityOwner & operator=(const MeshVS_DataMapNodeOfDataMapOfIntegerMeshEntityOwner *anItem);
		%feature("autodoc", "1");
		static		Handle_MeshVS_DataMapNodeOfDataMapOfIntegerMeshEntityOwner DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MeshVS_DataMapNodeOfDataMapOfIntegerMeshEntityOwner {
	MeshVS_DataMapNodeOfDataMapOfIntegerMeshEntityOwner* GetObject() {
	return (MeshVS_DataMapNodeOfDataMapOfIntegerMeshEntityOwner*)$self->Access();
	}
};
%feature("shadow") Handle_MeshVS_DataMapNodeOfDataMapOfIntegerMeshEntityOwner::~Handle_MeshVS_DataMapNodeOfDataMapOfIntegerMeshEntityOwner %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MeshVS_DataMapNodeOfDataMapOfIntegerMeshEntityOwner {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MeshVS_DataMapNodeOfDataMapOfHArray1OfSequenceOfInteger;
class Handle_MeshVS_DataMapNodeOfDataMapOfHArray1OfSequenceOfInteger : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_MeshVS_DataMapNodeOfDataMapOfHArray1OfSequenceOfInteger();
		%feature("autodoc", "1");
		Handle_MeshVS_DataMapNodeOfDataMapOfHArray1OfSequenceOfInteger(const Handle_MeshVS_DataMapNodeOfDataMapOfHArray1OfSequenceOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_MeshVS_DataMapNodeOfDataMapOfHArray1OfSequenceOfInteger(const MeshVS_DataMapNodeOfDataMapOfHArray1OfSequenceOfInteger *anItem);
		%feature("autodoc", "1");
		Handle_MeshVS_DataMapNodeOfDataMapOfHArray1OfSequenceOfInteger & operator=(const Handle_MeshVS_DataMapNodeOfDataMapOfHArray1OfSequenceOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_MeshVS_DataMapNodeOfDataMapOfHArray1OfSequenceOfInteger & operator=(const MeshVS_DataMapNodeOfDataMapOfHArray1OfSequenceOfInteger *anItem);
		%feature("autodoc", "1");
		static		Handle_MeshVS_DataMapNodeOfDataMapOfHArray1OfSequenceOfInteger DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MeshVS_DataMapNodeOfDataMapOfHArray1OfSequenceOfInteger {
	MeshVS_DataMapNodeOfDataMapOfHArray1OfSequenceOfInteger* GetObject() {
	return (MeshVS_DataMapNodeOfDataMapOfHArray1OfSequenceOfInteger*)$self->Access();
	}
};
%feature("shadow") Handle_MeshVS_DataMapNodeOfDataMapOfHArray1OfSequenceOfInteger::~Handle_MeshVS_DataMapNodeOfDataMapOfHArray1OfSequenceOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MeshVS_DataMapNodeOfDataMapOfHArray1OfSequenceOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MeshVS_SequenceNodeOfSequenceOfPrsBuilder;
class Handle_MeshVS_SequenceNodeOfSequenceOfPrsBuilder : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_MeshVS_SequenceNodeOfSequenceOfPrsBuilder();
		%feature("autodoc", "1");
		Handle_MeshVS_SequenceNodeOfSequenceOfPrsBuilder(const Handle_MeshVS_SequenceNodeOfSequenceOfPrsBuilder &aHandle);
		%feature("autodoc", "1");
		Handle_MeshVS_SequenceNodeOfSequenceOfPrsBuilder(const MeshVS_SequenceNodeOfSequenceOfPrsBuilder *anItem);
		%feature("autodoc", "1");
		Handle_MeshVS_SequenceNodeOfSequenceOfPrsBuilder & operator=(const Handle_MeshVS_SequenceNodeOfSequenceOfPrsBuilder &aHandle);
		%feature("autodoc", "1");
		Handle_MeshVS_SequenceNodeOfSequenceOfPrsBuilder & operator=(const MeshVS_SequenceNodeOfSequenceOfPrsBuilder *anItem);
		%feature("autodoc", "1");
		static		Handle_MeshVS_SequenceNodeOfSequenceOfPrsBuilder DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MeshVS_SequenceNodeOfSequenceOfPrsBuilder {
	MeshVS_SequenceNodeOfSequenceOfPrsBuilder* GetObject() {
	return (MeshVS_SequenceNodeOfSequenceOfPrsBuilder*)$self->Access();
	}
};
%feature("shadow") Handle_MeshVS_SequenceNodeOfSequenceOfPrsBuilder::~Handle_MeshVS_SequenceNodeOfSequenceOfPrsBuilder %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MeshVS_SequenceNodeOfSequenceOfPrsBuilder {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MeshVS_PrsBuilder;
class Handle_MeshVS_PrsBuilder : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_MeshVS_PrsBuilder();
		%feature("autodoc", "1");
		Handle_MeshVS_PrsBuilder(const Handle_MeshVS_PrsBuilder &aHandle);
		%feature("autodoc", "1");
		Handle_MeshVS_PrsBuilder(const MeshVS_PrsBuilder *anItem);
		%feature("autodoc", "1");
		Handle_MeshVS_PrsBuilder & operator=(const Handle_MeshVS_PrsBuilder &aHandle);
		%feature("autodoc", "1");
		Handle_MeshVS_PrsBuilder & operator=(const MeshVS_PrsBuilder *anItem);
		%feature("autodoc", "1");
		static		Handle_MeshVS_PrsBuilder DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MeshVS_PrsBuilder {
	MeshVS_PrsBuilder* GetObject() {
	return (MeshVS_PrsBuilder*)$self->Access();
	}
};
%feature("shadow") Handle_MeshVS_PrsBuilder::~Handle_MeshVS_PrsBuilder %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MeshVS_PrsBuilder {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MeshVS_MeshPrsBuilder;
class Handle_MeshVS_MeshPrsBuilder : public Handle_MeshVS_PrsBuilder {
	public:
		%feature("autodoc", "1");
		Handle_MeshVS_MeshPrsBuilder();
		%feature("autodoc", "1");
		Handle_MeshVS_MeshPrsBuilder(const Handle_MeshVS_MeshPrsBuilder &aHandle);
		%feature("autodoc", "1");
		Handle_MeshVS_MeshPrsBuilder(const MeshVS_MeshPrsBuilder *anItem);
		%feature("autodoc", "1");
		Handle_MeshVS_MeshPrsBuilder & operator=(const Handle_MeshVS_MeshPrsBuilder &aHandle);
		%feature("autodoc", "1");
		Handle_MeshVS_MeshPrsBuilder & operator=(const MeshVS_MeshPrsBuilder *anItem);
		%feature("autodoc", "1");
		static		Handle_MeshVS_MeshPrsBuilder DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MeshVS_MeshPrsBuilder {
	MeshVS_MeshPrsBuilder* GetObject() {
	return (MeshVS_MeshPrsBuilder*)$self->Access();
	}
};
%feature("shadow") Handle_MeshVS_MeshPrsBuilder::~Handle_MeshVS_MeshPrsBuilder %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MeshVS_MeshPrsBuilder {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MeshVS_DataSource;
class Handle_MeshVS_DataSource : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_MeshVS_DataSource();
		%feature("autodoc", "1");
		Handle_MeshVS_DataSource(const Handle_MeshVS_DataSource &aHandle);
		%feature("autodoc", "1");
		Handle_MeshVS_DataSource(const MeshVS_DataSource *anItem);
		%feature("autodoc", "1");
		Handle_MeshVS_DataSource & operator=(const Handle_MeshVS_DataSource &aHandle);
		%feature("autodoc", "1");
		Handle_MeshVS_DataSource & operator=(const MeshVS_DataSource *anItem);
		%feature("autodoc", "1");
		static		Handle_MeshVS_DataSource DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MeshVS_DataSource {
	MeshVS_DataSource* GetObject() {
	return (MeshVS_DataSource*)$self->Access();
	}
};
%feature("shadow") Handle_MeshVS_DataSource::~Handle_MeshVS_DataSource %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MeshVS_DataSource {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MeshVS_Mesh;
class Handle_MeshVS_Mesh : public Handle_AIS_InteractiveObject {
	public:
		%feature("autodoc", "1");
		Handle_MeshVS_Mesh();
		%feature("autodoc", "1");
		Handle_MeshVS_Mesh(const Handle_MeshVS_Mesh &aHandle);
		%feature("autodoc", "1");
		Handle_MeshVS_Mesh(const MeshVS_Mesh *anItem);
		%feature("autodoc", "1");
		Handle_MeshVS_Mesh & operator=(const Handle_MeshVS_Mesh &aHandle);
		%feature("autodoc", "1");
		Handle_MeshVS_Mesh & operator=(const MeshVS_Mesh *anItem);
		%feature("autodoc", "1");
		static		Handle_MeshVS_Mesh DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MeshVS_Mesh {
	MeshVS_Mesh* GetObject() {
	return (MeshVS_Mesh*)$self->Access();
	}
};
%feature("shadow") Handle_MeshVS_Mesh::~Handle_MeshVS_Mesh %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MeshVS_Mesh {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MeshVS_SensitiveSegment;
class Handle_MeshVS_SensitiveSegment : public Handle_Select3D_SensitiveSegment {
	public:
		%feature("autodoc", "1");
		Handle_MeshVS_SensitiveSegment();
		%feature("autodoc", "1");
		Handle_MeshVS_SensitiveSegment(const Handle_MeshVS_SensitiveSegment &aHandle);
		%feature("autodoc", "1");
		Handle_MeshVS_SensitiveSegment(const MeshVS_SensitiveSegment *anItem);
		%feature("autodoc", "1");
		Handle_MeshVS_SensitiveSegment & operator=(const Handle_MeshVS_SensitiveSegment &aHandle);
		%feature("autodoc", "1");
		Handle_MeshVS_SensitiveSegment & operator=(const MeshVS_SensitiveSegment *anItem);
		%feature("autodoc", "1");
		static		Handle_MeshVS_SensitiveSegment DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MeshVS_SensitiveSegment {
	MeshVS_SensitiveSegment* GetObject() {
	return (MeshVS_SensitiveSegment*)$self->Access();
	}
};
%feature("shadow") Handle_MeshVS_SensitiveSegment::~Handle_MeshVS_SensitiveSegment %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MeshVS_SensitiveSegment {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MeshVS_MeshOwner;
class Handle_MeshVS_MeshOwner : public Handle_SelectMgr_EntityOwner {
	public:
		%feature("autodoc", "1");
		Handle_MeshVS_MeshOwner();
		%feature("autodoc", "1");
		Handle_MeshVS_MeshOwner(const Handle_MeshVS_MeshOwner &aHandle);
		%feature("autodoc", "1");
		Handle_MeshVS_MeshOwner(const MeshVS_MeshOwner *anItem);
		%feature("autodoc", "1");
		Handle_MeshVS_MeshOwner & operator=(const Handle_MeshVS_MeshOwner &aHandle);
		%feature("autodoc", "1");
		Handle_MeshVS_MeshOwner & operator=(const MeshVS_MeshOwner *anItem);
		%feature("autodoc", "1");
		static		Handle_MeshVS_MeshOwner DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MeshVS_MeshOwner {
	MeshVS_MeshOwner* GetObject() {
	return (MeshVS_MeshOwner*)$self->Access();
	}
};
%feature("shadow") Handle_MeshVS_MeshOwner::~Handle_MeshVS_MeshOwner %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MeshVS_MeshOwner {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MeshVS_DataMapNodeOfDataMapOfIntegerTwoColors;
class Handle_MeshVS_DataMapNodeOfDataMapOfIntegerTwoColors : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_MeshVS_DataMapNodeOfDataMapOfIntegerTwoColors();
		%feature("autodoc", "1");
		Handle_MeshVS_DataMapNodeOfDataMapOfIntegerTwoColors(const Handle_MeshVS_DataMapNodeOfDataMapOfIntegerTwoColors &aHandle);
		%feature("autodoc", "1");
		Handle_MeshVS_DataMapNodeOfDataMapOfIntegerTwoColors(const MeshVS_DataMapNodeOfDataMapOfIntegerTwoColors *anItem);
		%feature("autodoc", "1");
		Handle_MeshVS_DataMapNodeOfDataMapOfIntegerTwoColors & operator=(const Handle_MeshVS_DataMapNodeOfDataMapOfIntegerTwoColors &aHandle);
		%feature("autodoc", "1");
		Handle_MeshVS_DataMapNodeOfDataMapOfIntegerTwoColors & operator=(const MeshVS_DataMapNodeOfDataMapOfIntegerTwoColors *anItem);
		%feature("autodoc", "1");
		static		Handle_MeshVS_DataMapNodeOfDataMapOfIntegerTwoColors DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MeshVS_DataMapNodeOfDataMapOfIntegerTwoColors {
	MeshVS_DataMapNodeOfDataMapOfIntegerTwoColors* GetObject() {
	return (MeshVS_DataMapNodeOfDataMapOfIntegerTwoColors*)$self->Access();
	}
};
%feature("shadow") Handle_MeshVS_DataMapNodeOfDataMapOfIntegerTwoColors::~Handle_MeshVS_DataMapNodeOfDataMapOfIntegerTwoColors %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MeshVS_DataMapNodeOfDataMapOfIntegerTwoColors {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MeshVS_DataMapNodeOfDataMapOfIntegerMaterial;
class Handle_MeshVS_DataMapNodeOfDataMapOfIntegerMaterial : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_MeshVS_DataMapNodeOfDataMapOfIntegerMaterial();
		%feature("autodoc", "1");
		Handle_MeshVS_DataMapNodeOfDataMapOfIntegerMaterial(const Handle_MeshVS_DataMapNodeOfDataMapOfIntegerMaterial &aHandle);
		%feature("autodoc", "1");
		Handle_MeshVS_DataMapNodeOfDataMapOfIntegerMaterial(const MeshVS_DataMapNodeOfDataMapOfIntegerMaterial *anItem);
		%feature("autodoc", "1");
		Handle_MeshVS_DataMapNodeOfDataMapOfIntegerMaterial & operator=(const Handle_MeshVS_DataMapNodeOfDataMapOfIntegerMaterial &aHandle);
		%feature("autodoc", "1");
		Handle_MeshVS_DataMapNodeOfDataMapOfIntegerMaterial & operator=(const MeshVS_DataMapNodeOfDataMapOfIntegerMaterial *anItem);
		%feature("autodoc", "1");
		static		Handle_MeshVS_DataMapNodeOfDataMapOfIntegerMaterial DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MeshVS_DataMapNodeOfDataMapOfIntegerMaterial {
	MeshVS_DataMapNodeOfDataMapOfIntegerMaterial* GetObject() {
	return (MeshVS_DataMapNodeOfDataMapOfIntegerMaterial*)$self->Access();
	}
};
%feature("shadow") Handle_MeshVS_DataMapNodeOfDataMapOfIntegerMaterial::~Handle_MeshVS_DataMapNodeOfDataMapOfIntegerMaterial %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MeshVS_DataMapNodeOfDataMapOfIntegerMaterial {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MeshVS_DummySensitiveEntity;
class Handle_MeshVS_DummySensitiveEntity : public Handle_SelectBasics_SensitiveEntity {
	public:
		%feature("autodoc", "1");
		Handle_MeshVS_DummySensitiveEntity();
		%feature("autodoc", "1");
		Handle_MeshVS_DummySensitiveEntity(const Handle_MeshVS_DummySensitiveEntity &aHandle);
		%feature("autodoc", "1");
		Handle_MeshVS_DummySensitiveEntity(const MeshVS_DummySensitiveEntity *anItem);
		%feature("autodoc", "1");
		Handle_MeshVS_DummySensitiveEntity & operator=(const Handle_MeshVS_DummySensitiveEntity &aHandle);
		%feature("autodoc", "1");
		Handle_MeshVS_DummySensitiveEntity & operator=(const MeshVS_DummySensitiveEntity *anItem);
		%feature("autodoc", "1");
		static		Handle_MeshVS_DummySensitiveEntity DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MeshVS_DummySensitiveEntity {
	MeshVS_DummySensitiveEntity* GetObject() {
	return (MeshVS_DummySensitiveEntity*)$self->Access();
	}
};
%feature("shadow") Handle_MeshVS_DummySensitiveEntity::~Handle_MeshVS_DummySensitiveEntity %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MeshVS_DummySensitiveEntity {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MeshVS_SensitiveMesh;
class Handle_MeshVS_SensitiveMesh : public Handle_Select3D_SensitiveEntity {
	public:
		%feature("autodoc", "1");
		Handle_MeshVS_SensitiveMesh();
		%feature("autodoc", "1");
		Handle_MeshVS_SensitiveMesh(const Handle_MeshVS_SensitiveMesh &aHandle);
		%feature("autodoc", "1");
		Handle_MeshVS_SensitiveMesh(const MeshVS_SensitiveMesh *anItem);
		%feature("autodoc", "1");
		Handle_MeshVS_SensitiveMesh & operator=(const Handle_MeshVS_SensitiveMesh &aHandle);
		%feature("autodoc", "1");
		Handle_MeshVS_SensitiveMesh & operator=(const MeshVS_SensitiveMesh *anItem);
		%feature("autodoc", "1");
		static		Handle_MeshVS_SensitiveMesh DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MeshVS_SensitiveMesh {
	MeshVS_SensitiveMesh* GetObject() {
	return (MeshVS_SensitiveMesh*)$self->Access();
	}
};
%feature("shadow") Handle_MeshVS_SensitiveMesh::~Handle_MeshVS_SensitiveMesh %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MeshVS_SensitiveMesh {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MeshVS_Drawer;
class Handle_MeshVS_Drawer : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_MeshVS_Drawer();
		%feature("autodoc", "1");
		Handle_MeshVS_Drawer(const Handle_MeshVS_Drawer &aHandle);
		%feature("autodoc", "1");
		Handle_MeshVS_Drawer(const MeshVS_Drawer *anItem);
		%feature("autodoc", "1");
		Handle_MeshVS_Drawer & operator=(const Handle_MeshVS_Drawer &aHandle);
		%feature("autodoc", "1");
		Handle_MeshVS_Drawer & operator=(const MeshVS_Drawer *anItem);
		%feature("autodoc", "1");
		static		Handle_MeshVS_Drawer DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MeshVS_Drawer {
	MeshVS_Drawer* GetObject() {
	return (MeshVS_Drawer*)$self->Access();
	}
};
%feature("shadow") Handle_MeshVS_Drawer::~Handle_MeshVS_Drawer %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MeshVS_Drawer {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MeshVS_DataMapNodeOfDataMapOfTwoColorsMapOfInteger;
class Handle_MeshVS_DataMapNodeOfDataMapOfTwoColorsMapOfInteger : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_MeshVS_DataMapNodeOfDataMapOfTwoColorsMapOfInteger();
		%feature("autodoc", "1");
		Handle_MeshVS_DataMapNodeOfDataMapOfTwoColorsMapOfInteger(const Handle_MeshVS_DataMapNodeOfDataMapOfTwoColorsMapOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_MeshVS_DataMapNodeOfDataMapOfTwoColorsMapOfInteger(const MeshVS_DataMapNodeOfDataMapOfTwoColorsMapOfInteger *anItem);
		%feature("autodoc", "1");
		Handle_MeshVS_DataMapNodeOfDataMapOfTwoColorsMapOfInteger & operator=(const Handle_MeshVS_DataMapNodeOfDataMapOfTwoColorsMapOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_MeshVS_DataMapNodeOfDataMapOfTwoColorsMapOfInteger & operator=(const MeshVS_DataMapNodeOfDataMapOfTwoColorsMapOfInteger *anItem);
		%feature("autodoc", "1");
		static		Handle_MeshVS_DataMapNodeOfDataMapOfTwoColorsMapOfInteger DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MeshVS_DataMapNodeOfDataMapOfTwoColorsMapOfInteger {
	MeshVS_DataMapNodeOfDataMapOfTwoColorsMapOfInteger* GetObject() {
	return (MeshVS_DataMapNodeOfDataMapOfTwoColorsMapOfInteger*)$self->Access();
	}
};
%feature("shadow") Handle_MeshVS_DataMapNodeOfDataMapOfTwoColorsMapOfInteger::~Handle_MeshVS_DataMapNodeOfDataMapOfTwoColorsMapOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MeshVS_DataMapNodeOfDataMapOfTwoColorsMapOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MeshVS_DataMapNodeOfDataMapOfIntegerAsciiString;
class Handle_MeshVS_DataMapNodeOfDataMapOfIntegerAsciiString : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_MeshVS_DataMapNodeOfDataMapOfIntegerAsciiString();
		%feature("autodoc", "1");
		Handle_MeshVS_DataMapNodeOfDataMapOfIntegerAsciiString(const Handle_MeshVS_DataMapNodeOfDataMapOfIntegerAsciiString &aHandle);
		%feature("autodoc", "1");
		Handle_MeshVS_DataMapNodeOfDataMapOfIntegerAsciiString(const MeshVS_DataMapNodeOfDataMapOfIntegerAsciiString *anItem);
		%feature("autodoc", "1");
		Handle_MeshVS_DataMapNodeOfDataMapOfIntegerAsciiString & operator=(const Handle_MeshVS_DataMapNodeOfDataMapOfIntegerAsciiString &aHandle);
		%feature("autodoc", "1");
		Handle_MeshVS_DataMapNodeOfDataMapOfIntegerAsciiString & operator=(const MeshVS_DataMapNodeOfDataMapOfIntegerAsciiString *anItem);
		%feature("autodoc", "1");
		static		Handle_MeshVS_DataMapNodeOfDataMapOfIntegerAsciiString DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MeshVS_DataMapNodeOfDataMapOfIntegerAsciiString {
	MeshVS_DataMapNodeOfDataMapOfIntegerAsciiString* GetObject() {
	return (MeshVS_DataMapNodeOfDataMapOfIntegerAsciiString*)$self->Access();
	}
};
%feature("shadow") Handle_MeshVS_DataMapNodeOfDataMapOfIntegerAsciiString::~Handle_MeshVS_DataMapNodeOfDataMapOfIntegerAsciiString %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MeshVS_DataMapNodeOfDataMapOfIntegerAsciiString {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MeshVS_DataMapNodeOfDataMapOfIntegerOwner;
class Handle_MeshVS_DataMapNodeOfDataMapOfIntegerOwner : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_MeshVS_DataMapNodeOfDataMapOfIntegerOwner();
		%feature("autodoc", "1");
		Handle_MeshVS_DataMapNodeOfDataMapOfIntegerOwner(const Handle_MeshVS_DataMapNodeOfDataMapOfIntegerOwner &aHandle);
		%feature("autodoc", "1");
		Handle_MeshVS_DataMapNodeOfDataMapOfIntegerOwner(const MeshVS_DataMapNodeOfDataMapOfIntegerOwner *anItem);
		%feature("autodoc", "1");
		Handle_MeshVS_DataMapNodeOfDataMapOfIntegerOwner & operator=(const Handle_MeshVS_DataMapNodeOfDataMapOfIntegerOwner &aHandle);
		%feature("autodoc", "1");
		Handle_MeshVS_DataMapNodeOfDataMapOfIntegerOwner & operator=(const MeshVS_DataMapNodeOfDataMapOfIntegerOwner *anItem);
		%feature("autodoc", "1");
		static		Handle_MeshVS_DataMapNodeOfDataMapOfIntegerOwner DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MeshVS_DataMapNodeOfDataMapOfIntegerOwner {
	MeshVS_DataMapNodeOfDataMapOfIntegerOwner* GetObject() {
	return (MeshVS_DataMapNodeOfDataMapOfIntegerOwner*)$self->Access();
	}
};
%feature("shadow") Handle_MeshVS_DataMapNodeOfDataMapOfIntegerOwner::~Handle_MeshVS_DataMapNodeOfDataMapOfIntegerOwner %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MeshVS_DataMapNodeOfDataMapOfIntegerOwner {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MeshVS_MeshEntityOwner;
class Handle_MeshVS_MeshEntityOwner : public Handle_SelectMgr_EntityOwner {
	public:
		%feature("autodoc", "1");
		Handle_MeshVS_MeshEntityOwner();
		%feature("autodoc", "1");
		Handle_MeshVS_MeshEntityOwner(const Handle_MeshVS_MeshEntityOwner &aHandle);
		%feature("autodoc", "1");
		Handle_MeshVS_MeshEntityOwner(const MeshVS_MeshEntityOwner *anItem);
		%feature("autodoc", "1");
		Handle_MeshVS_MeshEntityOwner & operator=(const Handle_MeshVS_MeshEntityOwner &aHandle);
		%feature("autodoc", "1");
		Handle_MeshVS_MeshEntityOwner & operator=(const MeshVS_MeshEntityOwner *anItem);
		%feature("autodoc", "1");
		static		Handle_MeshVS_MeshEntityOwner DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MeshVS_MeshEntityOwner {
	MeshVS_MeshEntityOwner* GetObject() {
	return (MeshVS_MeshEntityOwner*)$self->Access();
	}
};
%feature("shadow") Handle_MeshVS_MeshEntityOwner::~Handle_MeshVS_MeshEntityOwner %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MeshVS_MeshEntityOwner {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MeshVS_SensitivePolyhedron;
class Handle_MeshVS_SensitivePolyhedron : public Handle_Select3D_SensitiveEntity {
	public:
		%feature("autodoc", "1");
		Handle_MeshVS_SensitivePolyhedron();
		%feature("autodoc", "1");
		Handle_MeshVS_SensitivePolyhedron(const Handle_MeshVS_SensitivePolyhedron &aHandle);
		%feature("autodoc", "1");
		Handle_MeshVS_SensitivePolyhedron(const MeshVS_SensitivePolyhedron *anItem);
		%feature("autodoc", "1");
		Handle_MeshVS_SensitivePolyhedron & operator=(const Handle_MeshVS_SensitivePolyhedron &aHandle);
		%feature("autodoc", "1");
		Handle_MeshVS_SensitivePolyhedron & operator=(const MeshVS_SensitivePolyhedron *anItem);
		%feature("autodoc", "1");
		static		Handle_MeshVS_SensitivePolyhedron DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MeshVS_SensitivePolyhedron {
	MeshVS_SensitivePolyhedron* GetObject() {
	return (MeshVS_SensitivePolyhedron*)$self->Access();
	}
};
%feature("shadow") Handle_MeshVS_SensitivePolyhedron::~Handle_MeshVS_SensitivePolyhedron %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MeshVS_SensitivePolyhedron {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MeshVS_DataMapNodeOfDataMapOfIntegerVector;
class Handle_MeshVS_DataMapNodeOfDataMapOfIntegerVector : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_MeshVS_DataMapNodeOfDataMapOfIntegerVector();
		%feature("autodoc", "1");
		Handle_MeshVS_DataMapNodeOfDataMapOfIntegerVector(const Handle_MeshVS_DataMapNodeOfDataMapOfIntegerVector &aHandle);
		%feature("autodoc", "1");
		Handle_MeshVS_DataMapNodeOfDataMapOfIntegerVector(const MeshVS_DataMapNodeOfDataMapOfIntegerVector *anItem);
		%feature("autodoc", "1");
		Handle_MeshVS_DataMapNodeOfDataMapOfIntegerVector & operator=(const Handle_MeshVS_DataMapNodeOfDataMapOfIntegerVector &aHandle);
		%feature("autodoc", "1");
		Handle_MeshVS_DataMapNodeOfDataMapOfIntegerVector & operator=(const MeshVS_DataMapNodeOfDataMapOfIntegerVector *anItem);
		%feature("autodoc", "1");
		static		Handle_MeshVS_DataMapNodeOfDataMapOfIntegerVector DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MeshVS_DataMapNodeOfDataMapOfIntegerVector {
	MeshVS_DataMapNodeOfDataMapOfIntegerVector* GetObject() {
	return (MeshVS_DataMapNodeOfDataMapOfIntegerVector*)$self->Access();
	}
};
%feature("shadow") Handle_MeshVS_DataMapNodeOfDataMapOfIntegerVector::~Handle_MeshVS_DataMapNodeOfDataMapOfIntegerVector %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MeshVS_DataMapNodeOfDataMapOfIntegerVector {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MeshVS_DeformedDataSource;
class Handle_MeshVS_DeformedDataSource : public Handle_MeshVS_DataSource {
	public:
		%feature("autodoc", "1");
		Handle_MeshVS_DeformedDataSource();
		%feature("autodoc", "1");
		Handle_MeshVS_DeformedDataSource(const Handle_MeshVS_DeformedDataSource &aHandle);
		%feature("autodoc", "1");
		Handle_MeshVS_DeformedDataSource(const MeshVS_DeformedDataSource *anItem);
		%feature("autodoc", "1");
		Handle_MeshVS_DeformedDataSource & operator=(const Handle_MeshVS_DeformedDataSource &aHandle);
		%feature("autodoc", "1");
		Handle_MeshVS_DeformedDataSource & operator=(const MeshVS_DeformedDataSource *anItem);
		%feature("autodoc", "1");
		static		Handle_MeshVS_DeformedDataSource DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MeshVS_DeformedDataSource {
	MeshVS_DeformedDataSource* GetObject() {
	return (MeshVS_DeformedDataSource*)$self->Access();
	}
};
%feature("shadow") Handle_MeshVS_DeformedDataSource::~Handle_MeshVS_DeformedDataSource %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MeshVS_DeformedDataSource {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MeshVS_TextPrsBuilder;
class Handle_MeshVS_TextPrsBuilder : public Handle_MeshVS_PrsBuilder {
	public:
		%feature("autodoc", "1");
		Handle_MeshVS_TextPrsBuilder();
		%feature("autodoc", "1");
		Handle_MeshVS_TextPrsBuilder(const Handle_MeshVS_TextPrsBuilder &aHandle);
		%feature("autodoc", "1");
		Handle_MeshVS_TextPrsBuilder(const MeshVS_TextPrsBuilder *anItem);
		%feature("autodoc", "1");
		Handle_MeshVS_TextPrsBuilder & operator=(const Handle_MeshVS_TextPrsBuilder &aHandle);
		%feature("autodoc", "1");
		Handle_MeshVS_TextPrsBuilder & operator=(const MeshVS_TextPrsBuilder *anItem);
		%feature("autodoc", "1");
		static		Handle_MeshVS_TextPrsBuilder DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MeshVS_TextPrsBuilder {
	MeshVS_TextPrsBuilder* GetObject() {
	return (MeshVS_TextPrsBuilder*)$self->Access();
	}
};
%feature("shadow") Handle_MeshVS_TextPrsBuilder::~Handle_MeshVS_TextPrsBuilder %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MeshVS_TextPrsBuilder {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MeshVS_DataSource3D;
class Handle_MeshVS_DataSource3D : public Handle_MeshVS_DataSource {
	public:
		%feature("autodoc", "1");
		Handle_MeshVS_DataSource3D();
		%feature("autodoc", "1");
		Handle_MeshVS_DataSource3D(const Handle_MeshVS_DataSource3D &aHandle);
		%feature("autodoc", "1");
		Handle_MeshVS_DataSource3D(const MeshVS_DataSource3D *anItem);
		%feature("autodoc", "1");
		Handle_MeshVS_DataSource3D & operator=(const Handle_MeshVS_DataSource3D &aHandle);
		%feature("autodoc", "1");
		Handle_MeshVS_DataSource3D & operator=(const MeshVS_DataSource3D *anItem);
		%feature("autodoc", "1");
		static		Handle_MeshVS_DataSource3D DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MeshVS_DataSource3D {
	MeshVS_DataSource3D* GetObject() {
	return (MeshVS_DataSource3D*)$self->Access();
	}
};
%feature("shadow") Handle_MeshVS_DataSource3D::~Handle_MeshVS_DataSource3D %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MeshVS_DataSource3D {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MeshVS_SensitiveFace;
class Handle_MeshVS_SensitiveFace : public Handle_Select3D_SensitiveFace {
	public:
		%feature("autodoc", "1");
		Handle_MeshVS_SensitiveFace();
		%feature("autodoc", "1");
		Handle_MeshVS_SensitiveFace(const Handle_MeshVS_SensitiveFace &aHandle);
		%feature("autodoc", "1");
		Handle_MeshVS_SensitiveFace(const MeshVS_SensitiveFace *anItem);
		%feature("autodoc", "1");
		Handle_MeshVS_SensitiveFace & operator=(const Handle_MeshVS_SensitiveFace &aHandle);
		%feature("autodoc", "1");
		Handle_MeshVS_SensitiveFace & operator=(const MeshVS_SensitiveFace *anItem);
		%feature("autodoc", "1");
		static		Handle_MeshVS_SensitiveFace DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MeshVS_SensitiveFace {
	MeshVS_SensitiveFace* GetObject() {
	return (MeshVS_SensitiveFace*)$self->Access();
	}
};
%feature("shadow") Handle_MeshVS_SensitiveFace::~Handle_MeshVS_SensitiveFace %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MeshVS_SensitiveFace {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MeshVS_DataMapNodeOfDataMapOfColorMapOfInteger;
class Handle_MeshVS_DataMapNodeOfDataMapOfColorMapOfInteger : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_MeshVS_DataMapNodeOfDataMapOfColorMapOfInteger();
		%feature("autodoc", "1");
		Handle_MeshVS_DataMapNodeOfDataMapOfColorMapOfInteger(const Handle_MeshVS_DataMapNodeOfDataMapOfColorMapOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_MeshVS_DataMapNodeOfDataMapOfColorMapOfInteger(const MeshVS_DataMapNodeOfDataMapOfColorMapOfInteger *anItem);
		%feature("autodoc", "1");
		Handle_MeshVS_DataMapNodeOfDataMapOfColorMapOfInteger & operator=(const Handle_MeshVS_DataMapNodeOfDataMapOfColorMapOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_MeshVS_DataMapNodeOfDataMapOfColorMapOfInteger & operator=(const MeshVS_DataMapNodeOfDataMapOfColorMapOfInteger *anItem);
		%feature("autodoc", "1");
		static		Handle_MeshVS_DataMapNodeOfDataMapOfColorMapOfInteger DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MeshVS_DataMapNodeOfDataMapOfColorMapOfInteger {
	MeshVS_DataMapNodeOfDataMapOfColorMapOfInteger* GetObject() {
	return (MeshVS_DataMapNodeOfDataMapOfColorMapOfInteger*)$self->Access();
	}
};
%feature("shadow") Handle_MeshVS_DataMapNodeOfDataMapOfColorMapOfInteger::~Handle_MeshVS_DataMapNodeOfDataMapOfColorMapOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MeshVS_DataMapNodeOfDataMapOfColorMapOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MeshVS_ElementalColorPrsBuilder;
class Handle_MeshVS_ElementalColorPrsBuilder : public Handle_MeshVS_PrsBuilder {
	public:
		%feature("autodoc", "1");
		Handle_MeshVS_ElementalColorPrsBuilder();
		%feature("autodoc", "1");
		Handle_MeshVS_ElementalColorPrsBuilder(const Handle_MeshVS_ElementalColorPrsBuilder &aHandle);
		%feature("autodoc", "1");
		Handle_MeshVS_ElementalColorPrsBuilder(const MeshVS_ElementalColorPrsBuilder *anItem);
		%feature("autodoc", "1");
		Handle_MeshVS_ElementalColorPrsBuilder & operator=(const Handle_MeshVS_ElementalColorPrsBuilder &aHandle);
		%feature("autodoc", "1");
		Handle_MeshVS_ElementalColorPrsBuilder & operator=(const MeshVS_ElementalColorPrsBuilder *anItem);
		%feature("autodoc", "1");
		static		Handle_MeshVS_ElementalColorPrsBuilder DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MeshVS_ElementalColorPrsBuilder {
	MeshVS_ElementalColorPrsBuilder* GetObject() {
	return (MeshVS_ElementalColorPrsBuilder*)$self->Access();
	}
};
%feature("shadow") Handle_MeshVS_ElementalColorPrsBuilder::~Handle_MeshVS_ElementalColorPrsBuilder %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MeshVS_ElementalColorPrsBuilder {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MeshVS_NodalColorPrsBuilder;
class Handle_MeshVS_NodalColorPrsBuilder : public Handle_MeshVS_PrsBuilder {
	public:
		%feature("autodoc", "1");
		Handle_MeshVS_NodalColorPrsBuilder();
		%feature("autodoc", "1");
		Handle_MeshVS_NodalColorPrsBuilder(const Handle_MeshVS_NodalColorPrsBuilder &aHandle);
		%feature("autodoc", "1");
		Handle_MeshVS_NodalColorPrsBuilder(const MeshVS_NodalColorPrsBuilder *anItem);
		%feature("autodoc", "1");
		Handle_MeshVS_NodalColorPrsBuilder & operator=(const Handle_MeshVS_NodalColorPrsBuilder &aHandle);
		%feature("autodoc", "1");
		Handle_MeshVS_NodalColorPrsBuilder & operator=(const MeshVS_NodalColorPrsBuilder *anItem);
		%feature("autodoc", "1");
		static		Handle_MeshVS_NodalColorPrsBuilder DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MeshVS_NodalColorPrsBuilder {
	MeshVS_NodalColorPrsBuilder* GetObject() {
	return (MeshVS_NodalColorPrsBuilder*)$self->Access();
	}
};
%feature("shadow") Handle_MeshVS_NodalColorPrsBuilder::~Handle_MeshVS_NodalColorPrsBuilder %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MeshVS_NodalColorPrsBuilder {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MeshVS_VectorPrsBuilder;
class Handle_MeshVS_VectorPrsBuilder : public Handle_MeshVS_PrsBuilder {
	public:
		%feature("autodoc", "1");
		Handle_MeshVS_VectorPrsBuilder();
		%feature("autodoc", "1");
		Handle_MeshVS_VectorPrsBuilder(const Handle_MeshVS_VectorPrsBuilder &aHandle);
		%feature("autodoc", "1");
		Handle_MeshVS_VectorPrsBuilder(const MeshVS_VectorPrsBuilder *anItem);
		%feature("autodoc", "1");
		Handle_MeshVS_VectorPrsBuilder & operator=(const Handle_MeshVS_VectorPrsBuilder &aHandle);
		%feature("autodoc", "1");
		Handle_MeshVS_VectorPrsBuilder & operator=(const MeshVS_VectorPrsBuilder *anItem);
		%feature("autodoc", "1");
		static		Handle_MeshVS_VectorPrsBuilder DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MeshVS_VectorPrsBuilder {
	MeshVS_VectorPrsBuilder* GetObject() {
	return (MeshVS_VectorPrsBuilder*)$self->Access();
	}
};
%feature("shadow") Handle_MeshVS_VectorPrsBuilder::~Handle_MeshVS_VectorPrsBuilder %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MeshVS_VectorPrsBuilder {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MeshVS_HArray1OfSequenceOfInteger;
class Handle_MeshVS_HArray1OfSequenceOfInteger : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_MeshVS_HArray1OfSequenceOfInteger();
		%feature("autodoc", "1");
		Handle_MeshVS_HArray1OfSequenceOfInteger(const Handle_MeshVS_HArray1OfSequenceOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_MeshVS_HArray1OfSequenceOfInteger(const MeshVS_HArray1OfSequenceOfInteger *anItem);
		%feature("autodoc", "1");
		Handle_MeshVS_HArray1OfSequenceOfInteger & operator=(const Handle_MeshVS_HArray1OfSequenceOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_MeshVS_HArray1OfSequenceOfInteger & operator=(const MeshVS_HArray1OfSequenceOfInteger *anItem);
		%feature("autodoc", "1");
		static		Handle_MeshVS_HArray1OfSequenceOfInteger DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MeshVS_HArray1OfSequenceOfInteger {
	MeshVS_HArray1OfSequenceOfInteger* GetObject() {
	return (MeshVS_HArray1OfSequenceOfInteger*)$self->Access();
	}
};
%feature("shadow") Handle_MeshVS_HArray1OfSequenceOfInteger::~Handle_MeshVS_HArray1OfSequenceOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MeshVS_HArray1OfSequenceOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MeshVS_StdMapNodeOfMapOfTwoNodes;
class Handle_MeshVS_StdMapNodeOfMapOfTwoNodes : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_MeshVS_StdMapNodeOfMapOfTwoNodes();
		%feature("autodoc", "1");
		Handle_MeshVS_StdMapNodeOfMapOfTwoNodes(const Handle_MeshVS_StdMapNodeOfMapOfTwoNodes &aHandle);
		%feature("autodoc", "1");
		Handle_MeshVS_StdMapNodeOfMapOfTwoNodes(const MeshVS_StdMapNodeOfMapOfTwoNodes *anItem);
		%feature("autodoc", "1");
		Handle_MeshVS_StdMapNodeOfMapOfTwoNodes & operator=(const Handle_MeshVS_StdMapNodeOfMapOfTwoNodes &aHandle);
		%feature("autodoc", "1");
		Handle_MeshVS_StdMapNodeOfMapOfTwoNodes & operator=(const MeshVS_StdMapNodeOfMapOfTwoNodes *anItem);
		%feature("autodoc", "1");
		static		Handle_MeshVS_StdMapNodeOfMapOfTwoNodes DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MeshVS_StdMapNodeOfMapOfTwoNodes {
	MeshVS_StdMapNodeOfMapOfTwoNodes* GetObject() {
	return (MeshVS_StdMapNodeOfMapOfTwoNodes*)$self->Access();
	}
};
%feature("shadow") Handle_MeshVS_StdMapNodeOfMapOfTwoNodes::~Handle_MeshVS_StdMapNodeOfMapOfTwoNodes %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MeshVS_StdMapNodeOfMapOfTwoNodes {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MeshVS_DataMapNodeOfDataMapOfIntegerBoolean;
class Handle_MeshVS_DataMapNodeOfDataMapOfIntegerBoolean : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_MeshVS_DataMapNodeOfDataMapOfIntegerBoolean();
		%feature("autodoc", "1");
		Handle_MeshVS_DataMapNodeOfDataMapOfIntegerBoolean(const Handle_MeshVS_DataMapNodeOfDataMapOfIntegerBoolean &aHandle);
		%feature("autodoc", "1");
		Handle_MeshVS_DataMapNodeOfDataMapOfIntegerBoolean(const MeshVS_DataMapNodeOfDataMapOfIntegerBoolean *anItem);
		%feature("autodoc", "1");
		Handle_MeshVS_DataMapNodeOfDataMapOfIntegerBoolean & operator=(const Handle_MeshVS_DataMapNodeOfDataMapOfIntegerBoolean &aHandle);
		%feature("autodoc", "1");
		Handle_MeshVS_DataMapNodeOfDataMapOfIntegerBoolean & operator=(const MeshVS_DataMapNodeOfDataMapOfIntegerBoolean *anItem);
		%feature("autodoc", "1");
		static		Handle_MeshVS_DataMapNodeOfDataMapOfIntegerBoolean DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MeshVS_DataMapNodeOfDataMapOfIntegerBoolean {
	MeshVS_DataMapNodeOfDataMapOfIntegerBoolean* GetObject() {
	return (MeshVS_DataMapNodeOfDataMapOfIntegerBoolean*)$self->Access();
	}
};
%feature("shadow") Handle_MeshVS_DataMapNodeOfDataMapOfIntegerBoolean::~Handle_MeshVS_DataMapNodeOfDataMapOfIntegerBoolean %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MeshVS_DataMapNodeOfDataMapOfIntegerBoolean {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MeshVS_DataMapNodeOfDataMapOfIntegerColor;
class Handle_MeshVS_DataMapNodeOfDataMapOfIntegerColor : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_MeshVS_DataMapNodeOfDataMapOfIntegerColor();
		%feature("autodoc", "1");
		Handle_MeshVS_DataMapNodeOfDataMapOfIntegerColor(const Handle_MeshVS_DataMapNodeOfDataMapOfIntegerColor &aHandle);
		%feature("autodoc", "1");
		Handle_MeshVS_DataMapNodeOfDataMapOfIntegerColor(const MeshVS_DataMapNodeOfDataMapOfIntegerColor *anItem);
		%feature("autodoc", "1");
		Handle_MeshVS_DataMapNodeOfDataMapOfIntegerColor & operator=(const Handle_MeshVS_DataMapNodeOfDataMapOfIntegerColor &aHandle);
		%feature("autodoc", "1");
		Handle_MeshVS_DataMapNodeOfDataMapOfIntegerColor & operator=(const MeshVS_DataMapNodeOfDataMapOfIntegerColor *anItem);
		%feature("autodoc", "1");
		static		Handle_MeshVS_DataMapNodeOfDataMapOfIntegerColor DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MeshVS_DataMapNodeOfDataMapOfIntegerColor {
	MeshVS_DataMapNodeOfDataMapOfIntegerColor* GetObject() {
	return (MeshVS_DataMapNodeOfDataMapOfIntegerColor*)$self->Access();
	}
};
%feature("shadow") Handle_MeshVS_DataMapNodeOfDataMapOfIntegerColor::~Handle_MeshVS_DataMapNodeOfDataMapOfIntegerColor %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MeshVS_DataMapNodeOfDataMapOfIntegerColor {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshVS_DataMapIteratorOfDataMapOfIntegerTwoColors;
class MeshVS_DataMapIteratorOfDataMapOfIntegerTwoColors : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		MeshVS_DataMapIteratorOfDataMapOfIntegerTwoColors();
		%feature("autodoc", "1");
		MeshVS_DataMapIteratorOfDataMapOfIntegerTwoColors(const MeshVS_DataMapOfIntegerTwoColors &aMap);
		%feature("autodoc", "1");
		void Initialize(const MeshVS_DataMapOfIntegerTwoColors &aMap);
		%feature("autodoc", "1");
		const Standard_Integer & Key() const;
		%feature("autodoc", "1");
		const MeshVS_TwoColors & Value() const;

};
%feature("shadow") MeshVS_DataMapIteratorOfDataMapOfIntegerTwoColors::~MeshVS_DataMapIteratorOfDataMapOfIntegerTwoColors %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshVS_DataMapIteratorOfDataMapOfIntegerTwoColors {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshVS_MapIteratorOfMapOfTwoNodes;
class MeshVS_MapIteratorOfMapOfTwoNodes : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		MeshVS_MapIteratorOfMapOfTwoNodes();
		%feature("autodoc", "1");
		MeshVS_MapIteratorOfMapOfTwoNodes(const MeshVS_MapOfTwoNodes &aMap);
		%feature("autodoc", "1");
		void Initialize(const MeshVS_MapOfTwoNodes &aMap);
		%feature("autodoc", "1");
		const MeshVS_TwoNodes & Key() const;

};
%feature("shadow") MeshVS_MapIteratorOfMapOfTwoNodes::~MeshVS_MapIteratorOfMapOfTwoNodes %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshVS_MapIteratorOfMapOfTwoNodes {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshVS_DataMapIteratorOfDataMapOfIntegerAsciiString;
class MeshVS_DataMapIteratorOfDataMapOfIntegerAsciiString : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		MeshVS_DataMapIteratorOfDataMapOfIntegerAsciiString();
		%feature("autodoc", "1");
		MeshVS_DataMapIteratorOfDataMapOfIntegerAsciiString(const MeshVS_DataMapOfIntegerAsciiString &aMap);
		%feature("autodoc", "1");
		void Initialize(const MeshVS_DataMapOfIntegerAsciiString &aMap);
		%feature("autodoc", "1");
		const Standard_Integer & Key() const;
		%feature("autodoc", "1");
		const TCollection_AsciiString & Value() const;

};
%feature("shadow") MeshVS_DataMapIteratorOfDataMapOfIntegerAsciiString::~MeshVS_DataMapIteratorOfDataMapOfIntegerAsciiString %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshVS_DataMapIteratorOfDataMapOfIntegerAsciiString {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshVS_TwoColors;
class MeshVS_TwoColors {
	public:
		%feature("autodoc", "1");
		MeshVS_TwoColors();

};
%feature("shadow") MeshVS_TwoColors::~MeshVS_TwoColors %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshVS_TwoColors {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshVS_DataSource;
class MeshVS_DataSource : public MMgt_TShared {
	public:
		%feature("autodoc","GetGeom(Standard_Integer ID, Standard_Boolean IsElement) -> Standard_Integer");

		virtual		Standard_Boolean GetGeom(const Standard_Integer ID, const Standard_Boolean IsElement, TColStd_Array1OfReal & Coords, Standard_Integer &OutValue, MeshVS_EntityType & Type) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean GetGeomType(const Standard_Integer ID, const Standard_Boolean IsElement, MeshVS_EntityType & Type) const;
		%feature("autodoc","Get3DGeom(Standard_Integer ID) -> Standard_Integer");

		virtual		Standard_Boolean Get3DGeom(const Standard_Integer ID, Standard_Integer &OutValue, Handle_MeshVS_HArray1OfSequenceOfInteger & Data) const;
		%feature("autodoc", "1");
		virtual		Standard_Address GetAddr(const Standard_Integer ID, const Standard_Boolean IsElement) const;
		%feature("autodoc","GetNodesByElement(Standard_Integer ID) -> Standard_Integer");

		virtual		Standard_Boolean GetNodesByElement(const Standard_Integer ID, TColStd_Array1OfInteger & NodeIDs, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		virtual		const TColStd_PackedMapOfInteger & GetAllNodes() const;
		%feature("autodoc", "1");
		virtual		const TColStd_PackedMapOfInteger & GetAllElements() const;
		%feature("autodoc","GetNormal(Standard_Integer Id, Standard_Integer Max) -> [Standard_Real, Standard_Real, Standard_Real]");

		virtual		Standard_Boolean GetNormal(const Standard_Integer Id, const Standard_Integer Max, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","GetNodeNormal(Standard_Integer ranknode, Standard_Integer ElementId) -> [Standard_Real, Standard_Real, Standard_Real]");

		virtual		Standard_Boolean GetNodeNormal(const Standard_Integer ranknode, const Standard_Integer ElementId, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean GetNormalsByElement(const Standard_Integer Id, const Standard_Boolean IsNodal, const Standard_Integer MaxNodes, Handle_TColStd_HArray1OfReal & Normals) const;
		%feature("autodoc", "1");
		virtual		void GetAllGroups(TColStd_PackedMapOfInteger & Ids) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean GetGroup(const Standard_Integer Id, MeshVS_EntityType & Type, TColStd_PackedMapOfInteger & Ids) const;
		%feature("autodoc", "1");
		virtual		Standard_Address GetGroupAddr(const Standard_Integer ID) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsAdvancedSelectionEnabled() const;
		%feature("autodoc", "1");
		virtual		Bnd_Box GetBoundingBox() const;
		%feature("autodoc","GetDetectedEntities(const Prs, Standard_Real X, Standard_Real Y, Standard_Real aTol) -> Standard_Real");

		virtual		Standard_Boolean GetDetectedEntities(const Handle_MeshVS_Mesh &Prs, const Standard_Real X, const Standard_Real Y, const Standard_Real aTol, Handle_TColStd_HPackedMapOfInteger & Nodes, Handle_TColStd_HPackedMapOfInteger & Elements, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean GetDetectedEntities(const Handle_MeshVS_Mesh &Prs, const Standard_Real XMin, const Standard_Real YMin, const Standard_Real XMax, const Standard_Real YMax, const Standard_Real aTol, Handle_TColStd_HPackedMapOfInteger & Nodes, Handle_TColStd_HPackedMapOfInteger & Elements);
		%feature("autodoc", "1");
		virtual		Standard_Boolean GetDetectedEntities(const Handle_MeshVS_Mesh &Prs, const TColgp_Array1OfPnt2d &Polyline, const Bnd_Box2d &aBox, const Standard_Real aTol, Handle_TColStd_HPackedMapOfInteger & Nodes, Handle_TColStd_HPackedMapOfInteger & Elements);
		%feature("autodoc", "1");
		virtual		Standard_Boolean GetDetectedEntities(const Handle_MeshVS_Mesh &Prs, Handle_TColStd_HPackedMapOfInteger & Nodes, Handle_TColStd_HPackedMapOfInteger & Elements);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MeshVS_DataSource {
	Handle_MeshVS_DataSource GetHandle() {
	return *(Handle_MeshVS_DataSource*) &$self;
	}
};
%extend MeshVS_DataSource {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") MeshVS_DataSource::~MeshVS_DataSource %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshVS_DataSource {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshVS_DataSource3D;
class MeshVS_DataSource3D : public MeshVS_DataSource {
	public:
		%feature("autodoc", "1");
		Handle_MeshVS_HArray1OfSequenceOfInteger GetPrismTopology(const Standard_Integer BasePoints) const;
		%feature("autodoc", "1");
		Handle_MeshVS_HArray1OfSequenceOfInteger GetPyramidTopology(const Standard_Integer BasePoints) const;
		%feature("autodoc", "1");
		static		Handle_MeshVS_HArray1OfSequenceOfInteger CreatePrismTopology(const Standard_Integer BasePoints);
		%feature("autodoc", "1");
		static		Handle_MeshVS_HArray1OfSequenceOfInteger CreatePyramidTopology(const Standard_Integer BasePoints);

};
%extend MeshVS_DataSource3D {
	Handle_MeshVS_DataSource3D GetHandle() {
	return *(Handle_MeshVS_DataSource3D*) &$self;
	}
};
%extend MeshVS_DataSource3D {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") MeshVS_DataSource3D::~MeshVS_DataSource3D %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshVS_DataSource3D {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshVS_DataMapOfHArray1OfSequenceOfInteger;
class MeshVS_DataMapOfHArray1OfSequenceOfInteger : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		MeshVS_DataMapOfHArray1OfSequenceOfInteger(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		MeshVS_DataMapOfHArray1OfSequenceOfInteger & Assign(const MeshVS_DataMapOfHArray1OfSequenceOfInteger &Other);
		%feature("autodoc", "1");
		MeshVS_DataMapOfHArray1OfSequenceOfInteger & operator=(const MeshVS_DataMapOfHArray1OfSequenceOfInteger &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Standard_Integer &K, const Handle_MeshVS_HArray1OfSequenceOfInteger &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Standard_Integer &K);
		%feature("autodoc", "1");
		const Handle_MeshVS_HArray1OfSequenceOfInteger & Find(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		const Handle_MeshVS_HArray1OfSequenceOfInteger & operator()(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Handle_MeshVS_HArray1OfSequenceOfInteger & ChangeFind(const Standard_Integer &K);
		%feature("autodoc", "1");
		Handle_MeshVS_HArray1OfSequenceOfInteger & operator()(const Standard_Integer &K);

};
%feature("shadow") MeshVS_DataMapOfHArray1OfSequenceOfInteger::~MeshVS_DataMapOfHArray1OfSequenceOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshVS_DataMapOfHArray1OfSequenceOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshVS_StdMapNodeOfMapOfTwoNodes;
class MeshVS_StdMapNodeOfMapOfTwoNodes : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		MeshVS_StdMapNodeOfMapOfTwoNodes(const MeshVS_TwoNodes &K, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		MeshVS_TwoNodes & Key() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MeshVS_StdMapNodeOfMapOfTwoNodes {
	Handle_MeshVS_StdMapNodeOfMapOfTwoNodes GetHandle() {
	return *(Handle_MeshVS_StdMapNodeOfMapOfTwoNodes*) &$self;
	}
};
%extend MeshVS_StdMapNodeOfMapOfTwoNodes {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") MeshVS_StdMapNodeOfMapOfTwoNodes::~MeshVS_StdMapNodeOfMapOfTwoNodes %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshVS_StdMapNodeOfMapOfTwoNodes {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshVS_DataMapNodeOfDataMapOfIntegerColor;
class MeshVS_DataMapNodeOfDataMapOfIntegerColor : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		MeshVS_DataMapNodeOfDataMapOfIntegerColor(const Standard_Integer &K, const Quantity_Color &I, const TCollection_MapNodePtr &n);
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
		Quantity_Color & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MeshVS_DataMapNodeOfDataMapOfIntegerColor {
	Handle_MeshVS_DataMapNodeOfDataMapOfIntegerColor GetHandle() {
	return *(Handle_MeshVS_DataMapNodeOfDataMapOfIntegerColor*) &$self;
	}
};
%extend MeshVS_DataMapNodeOfDataMapOfIntegerColor {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") MeshVS_DataMapNodeOfDataMapOfIntegerColor::~MeshVS_DataMapNodeOfDataMapOfIntegerColor %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshVS_DataMapNodeOfDataMapOfIntegerColor {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshVS_DeformedDataSource;
class MeshVS_DeformedDataSource : public MeshVS_DataSource {
	public:
		%feature("autodoc", "1");
		MeshVS_DeformedDataSource(const Handle_MeshVS_DataSource &theNonDeformDS, const Standard_Real theMagnify);
		%feature("autodoc","GetGeom(Standard_Integer ID, Standard_Boolean IsElement) -> Standard_Integer");

		virtual		Standard_Boolean GetGeom(const Standard_Integer ID, const Standard_Boolean IsElement, TColStd_Array1OfReal & Coords, Standard_Integer &OutValue, MeshVS_EntityType & Type) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean GetGeomType(const Standard_Integer ID, const Standard_Boolean IsElement, MeshVS_EntityType & Type) const;
		%feature("autodoc","Get3DGeom(Standard_Integer ID) -> Standard_Integer");

		virtual		Standard_Boolean Get3DGeom(const Standard_Integer ID, Standard_Integer &OutValue, Handle_MeshVS_HArray1OfSequenceOfInteger & Data) const;
		%feature("autodoc", "1");
		virtual		Standard_Address GetAddr(const Standard_Integer ID, const Standard_Boolean IsElement) const;
		%feature("autodoc","GetNodesByElement(Standard_Integer ID) -> Standard_Integer");

		virtual		Standard_Boolean GetNodesByElement(const Standard_Integer ID, TColStd_Array1OfInteger & NodeIDs, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		virtual		const TColStd_PackedMapOfInteger & GetAllNodes() const;
		%feature("autodoc", "1");
		virtual		const TColStd_PackedMapOfInteger & GetAllElements() const;
		%feature("autodoc", "1");
		const MeshVS_DataMapOfIntegerVector & GetVectors() const;
		%feature("autodoc", "1");
		void SetVectors(const MeshVS_DataMapOfIntegerVector &Map);
		%feature("autodoc", "1");
		Standard_Boolean GetVector(const Standard_Integer ID, gp_Vec & Vect) const;
		%feature("autodoc", "1");
		void SetVector(const Standard_Integer ID, const gp_Vec Vect);
		%feature("autodoc", "1");
		void SetNonDeformedDataSource(const Handle_MeshVS_DataSource &theDS);
		%feature("autodoc", "1");
		Handle_MeshVS_DataSource GetNonDeformedDataSource() const;
		%feature("autodoc", "1");
		void SetMagnify(const Standard_Real theMagnify);
		%feature("autodoc", "1");
		Standard_Real GetMagnify() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MeshVS_DeformedDataSource {
	Handle_MeshVS_DeformedDataSource GetHandle() {
	return *(Handle_MeshVS_DeformedDataSource*) &$self;
	}
};
%extend MeshVS_DeformedDataSource {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") MeshVS_DeformedDataSource::~MeshVS_DeformedDataSource %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshVS_DeformedDataSource {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshVS_DataMapIteratorOfDataMapOfIntegerMaterial;
class MeshVS_DataMapIteratorOfDataMapOfIntegerMaterial : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		MeshVS_DataMapIteratorOfDataMapOfIntegerMaterial();
		%feature("autodoc", "1");
		MeshVS_DataMapIteratorOfDataMapOfIntegerMaterial(const MeshVS_DataMapOfIntegerMaterial &aMap);
		%feature("autodoc", "1");
		void Initialize(const MeshVS_DataMapOfIntegerMaterial &aMap);
		%feature("autodoc", "1");
		const Standard_Integer & Key() const;
		%feature("autodoc", "1");
		const Graphic3d_MaterialAspect & Value() const;

};
%feature("shadow") MeshVS_DataMapIteratorOfDataMapOfIntegerMaterial::~MeshVS_DataMapIteratorOfDataMapOfIntegerMaterial %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshVS_DataMapIteratorOfDataMapOfIntegerMaterial {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshVS_SequenceNodeOfSequenceOfPrsBuilder;
class MeshVS_SequenceNodeOfSequenceOfPrsBuilder : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		MeshVS_SequenceNodeOfSequenceOfPrsBuilder(const Handle_MeshVS_PrsBuilder &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_MeshVS_PrsBuilder & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MeshVS_SequenceNodeOfSequenceOfPrsBuilder {
	Handle_MeshVS_SequenceNodeOfSequenceOfPrsBuilder GetHandle() {
	return *(Handle_MeshVS_SequenceNodeOfSequenceOfPrsBuilder*) &$self;
	}
};
%extend MeshVS_SequenceNodeOfSequenceOfPrsBuilder {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") MeshVS_SequenceNodeOfSequenceOfPrsBuilder::~MeshVS_SequenceNodeOfSequenceOfPrsBuilder %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshVS_SequenceNodeOfSequenceOfPrsBuilder {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshVS_DataMapIteratorOfDataMapOfIntegerVector;
class MeshVS_DataMapIteratorOfDataMapOfIntegerVector : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		MeshVS_DataMapIteratorOfDataMapOfIntegerVector();
		%feature("autodoc", "1");
		MeshVS_DataMapIteratorOfDataMapOfIntegerVector(const MeshVS_DataMapOfIntegerVector &aMap);
		%feature("autodoc", "1");
		void Initialize(const MeshVS_DataMapOfIntegerVector &aMap);
		%feature("autodoc", "1");
		const Standard_Integer & Key() const;
		%feature("autodoc", "1");
		const gp_Vec  Value() const;

};
%feature("shadow") MeshVS_DataMapIteratorOfDataMapOfIntegerVector::~MeshVS_DataMapIteratorOfDataMapOfIntegerVector %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshVS_DataMapIteratorOfDataMapOfIntegerVector {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshVS_DataMapIteratorOfDataMapOfIntegerBoolean;
class MeshVS_DataMapIteratorOfDataMapOfIntegerBoolean : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		MeshVS_DataMapIteratorOfDataMapOfIntegerBoolean();
		%feature("autodoc", "1");
		MeshVS_DataMapIteratorOfDataMapOfIntegerBoolean(const MeshVS_DataMapOfIntegerBoolean &aMap);
		%feature("autodoc", "1");
		void Initialize(const MeshVS_DataMapOfIntegerBoolean &aMap);
		%feature("autodoc", "1");
		const Standard_Integer & Key() const;
		%feature("autodoc", "1");
		const Standard_Boolean & Value() const;

};
%feature("shadow") MeshVS_DataMapIteratorOfDataMapOfIntegerBoolean::~MeshVS_DataMapIteratorOfDataMapOfIntegerBoolean %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshVS_DataMapIteratorOfDataMapOfIntegerBoolean {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshVS_DataMapOfColorMapOfInteger;
class MeshVS_DataMapOfColorMapOfInteger : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		MeshVS_DataMapOfColorMapOfInteger(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		MeshVS_DataMapOfColorMapOfInteger & Assign(const MeshVS_DataMapOfColorMapOfInteger &Other);
		%feature("autodoc", "1");
		MeshVS_DataMapOfColorMapOfInteger & operator=(const MeshVS_DataMapOfColorMapOfInteger &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Quantity_Color &K, const TColStd_MapOfInteger &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Quantity_Color &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Quantity_Color &K);
		%feature("autodoc", "1");
		const TColStd_MapOfInteger & Find(const Quantity_Color &K) const;
		%feature("autodoc", "1");
		const TColStd_MapOfInteger & operator()(const Quantity_Color &K) const;
		%feature("autodoc", "1");
		TColStd_MapOfInteger & ChangeFind(const Quantity_Color &K);
		%feature("autodoc", "1");
		TColStd_MapOfInteger & operator()(const Quantity_Color &K);

};
%feature("shadow") MeshVS_DataMapOfColorMapOfInteger::~MeshVS_DataMapOfColorMapOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshVS_DataMapOfColorMapOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshVS_Buffer;
class MeshVS_Buffer {
	public:
		%feature("autodoc", "1");
		MeshVS_Buffer(const Standard_Size theSize);

};
%feature("shadow") MeshVS_Buffer::~MeshVS_Buffer %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshVS_Buffer {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshVS_SequenceOfPrsBuilder;
class MeshVS_SequenceOfPrsBuilder : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		MeshVS_SequenceOfPrsBuilder();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const MeshVS_SequenceOfPrsBuilder & Assign(const MeshVS_SequenceOfPrsBuilder &Other);
		%feature("autodoc", "1");
		const MeshVS_SequenceOfPrsBuilder & operator=(const MeshVS_SequenceOfPrsBuilder &Other);
		%feature("autodoc", "1");
		void Append(const Handle_MeshVS_PrsBuilder &T);
		%feature("autodoc", "1");
		void Append(MeshVS_SequenceOfPrsBuilder & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_MeshVS_PrsBuilder &T);
		%feature("autodoc", "1");
		void Prepend(MeshVS_SequenceOfPrsBuilder & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_MeshVS_PrsBuilder &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, MeshVS_SequenceOfPrsBuilder & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_MeshVS_PrsBuilder &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, MeshVS_SequenceOfPrsBuilder & S);
		%feature("autodoc", "1");
		const Handle_MeshVS_PrsBuilder & First() const;
		%feature("autodoc", "1");
		const Handle_MeshVS_PrsBuilder & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, MeshVS_SequenceOfPrsBuilder & S);
		%feature("autodoc", "1");
		const Handle_MeshVS_PrsBuilder & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_MeshVS_PrsBuilder & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_MeshVS_PrsBuilder &I);
		%feature("autodoc", "1");
		Handle_MeshVS_PrsBuilder & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_MeshVS_PrsBuilder & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") MeshVS_SequenceOfPrsBuilder::~MeshVS_SequenceOfPrsBuilder %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshVS_SequenceOfPrsBuilder {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshVS_HArray1OfSequenceOfInteger;
class MeshVS_HArray1OfSequenceOfInteger : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		MeshVS_HArray1OfSequenceOfInteger(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		MeshVS_HArray1OfSequenceOfInteger(const Standard_Integer Low, const Standard_Integer Up, const TColStd_SequenceOfInteger &V);
		%feature("autodoc", "1");
		void Init(const TColStd_SequenceOfInteger &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const TColStd_SequenceOfInteger &Value);
		%feature("autodoc", "1");
		const TColStd_SequenceOfInteger & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		TColStd_SequenceOfInteger & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const MeshVS_Array1OfSequenceOfInteger & Array1() const;
		%feature("autodoc", "1");
		MeshVS_Array1OfSequenceOfInteger & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MeshVS_HArray1OfSequenceOfInteger {
	Handle_MeshVS_HArray1OfSequenceOfInteger GetHandle() {
	return *(Handle_MeshVS_HArray1OfSequenceOfInteger*) &$self;
	}
};
%extend MeshVS_HArray1OfSequenceOfInteger {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") MeshVS_HArray1OfSequenceOfInteger::~MeshVS_HArray1OfSequenceOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshVS_HArray1OfSequenceOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshVS_DataMapIteratorOfDataMapOfColorMapOfInteger;
class MeshVS_DataMapIteratorOfDataMapOfColorMapOfInteger : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		MeshVS_DataMapIteratorOfDataMapOfColorMapOfInteger();
		%feature("autodoc", "1");
		MeshVS_DataMapIteratorOfDataMapOfColorMapOfInteger(const MeshVS_DataMapOfColorMapOfInteger &aMap);
		%feature("autodoc", "1");
		void Initialize(const MeshVS_DataMapOfColorMapOfInteger &aMap);
		%feature("autodoc", "1");
		const Quantity_Color & Key() const;
		%feature("autodoc", "1");
		const TColStd_MapOfInteger & Value() const;

};
%feature("shadow") MeshVS_DataMapIteratorOfDataMapOfColorMapOfInteger::~MeshVS_DataMapIteratorOfDataMapOfColorMapOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshVS_DataMapIteratorOfDataMapOfColorMapOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshVS_PrsBuilder;
class MeshVS_PrsBuilder : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		virtual		void Build(const Handle_Prs3d_Presentation &Prs, const TColStd_PackedMapOfInteger &IDs, TColStd_PackedMapOfInteger & IDsToExclude, const Standard_Boolean IsElement, const Standard_Integer DisplayMode) const;
		%feature("autodoc", "1");
		virtual		void CustomBuild(const Handle_Prs3d_Presentation &Prs, const TColStd_PackedMapOfInteger &IDs, TColStd_PackedMapOfInteger & IDsToExclude, const Standard_Integer DisplayMode) const;
		%feature("autodoc", "1");
		virtual		Handle_SelectBasics_SensitiveEntity CustomSensitiveEntity(const Handle_SelectBasics_EntityOwner &Owner, const Standard_Integer SelectMode) const;
		%feature("autodoc", "1");
		Standard_Integer GetFlags() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean TestFlags(const Standard_Integer DisplayMode) const;
		%feature("autodoc", "1");
		Standard_Integer GetId() const;
		%feature("autodoc", "1");
		Standard_Integer GetPriority() const;
		%feature("autodoc", "1");
		Handle_MeshVS_DataSource GetDataSource() const;
		%feature("autodoc", "1");
		void SetDataSource(const Handle_MeshVS_DataSource &newDS);
		%feature("autodoc", "1");
		Handle_MeshVS_Drawer GetDrawer() const;
		%feature("autodoc", "1");
		void SetDrawer(const Handle_MeshVS_Drawer &newDr);
		%feature("autodoc", "1");
		void SetExcluding(const Standard_Boolean state);
		%feature("autodoc", "1");
		Standard_Boolean IsExcludingOn() const;
		%feature("autodoc", "1");
		void SetPresentationManager(const Handle_PrsMgr_PresentationManager3d &thePrsMgr);
		%feature("autodoc", "1");
		Handle_PrsMgr_PresentationManager3d GetPresentationManager() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MeshVS_PrsBuilder {
	Handle_MeshVS_PrsBuilder GetHandle() {
	return *(Handle_MeshVS_PrsBuilder*) &$self;
	}
};
%extend MeshVS_PrsBuilder {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") MeshVS_PrsBuilder::~MeshVS_PrsBuilder %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshVS_PrsBuilder {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshVS_VectorPrsBuilder;
class MeshVS_VectorPrsBuilder : public MeshVS_PrsBuilder {
	public:
		%feature("autodoc", "1");
		MeshVS_VectorPrsBuilder(const Handle_MeshVS_Mesh &Parent, const Standard_Real MaxLength, const Quantity_Color &VectorColor, const MeshVS_DisplayModeFlags &Flags=MeshVS_DisplayModeFlags const &(::MeshVS_DMF_VectorDataPrs), const Handle_MeshVS_DataSource &DS=0, const Standard_Integer Id=-0x000000001, const MeshVS_BuilderPriority &Priority=MeshVS_BuilderPriority const &(::MeshVS_BP_Vector), const Standard_Boolean IsSimplePrs=0);
		%feature("autodoc", "1");
		virtual		void Build(const Handle_Prs3d_Presentation &Prs, const TColStd_PackedMapOfInteger &IDs, TColStd_PackedMapOfInteger & IDsToExclude, const Standard_Boolean IsElement, const Standard_Integer theDisplayMode) const;
		%feature("autodoc", "1");
		void DrawVector(const gp_Trsf theTrsf, const Standard_Real Length, const Standard_Real MaxLength, const TColgp_Array1OfPnt &ArrowPoints, const Handle_Graphic3d_ArrayOfPrimitives &Lines, const Handle_Graphic3d_ArrayOfPrimitives &ArrowLines, const Handle_Graphic3d_ArrayOfPrimitives &Triangles) const;
		%feature("autodoc", "1");
		static		Standard_Real calculateArrow(TColgp_Array1OfPnt & Points, const Standard_Real Length, const Standard_Real ArrowPart);
		%feature("autodoc", "1");
		const MeshVS_DataMapOfIntegerVector & GetVectors(const Standard_Boolean IsElement) const;
		%feature("autodoc", "1");
		void SetVectors(const Standard_Boolean IsElement, const MeshVS_DataMapOfIntegerVector &Map);
		%feature("autodoc", "1");
		Standard_Boolean HasVectors(const Standard_Boolean IsElement) const;
		%feature("autodoc", "1");
		Standard_Boolean GetVector(const Standard_Boolean IsElement, const Standard_Integer ID, gp_Vec & Vect) const;
		%feature("autodoc", "1");
		void SetVector(const Standard_Boolean IsElement, const Standard_Integer ID, const gp_Vec Vect);
		%feature("autodoc","GetMinMaxVectorValue(Standard_Boolean IsElement) -> [Standard_Real, Standard_Real]");

		void GetMinMaxVectorValue(const Standard_Boolean IsElement, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		void SetSimplePrsMode(const Standard_Boolean IsSimpleArrow);
		%feature("autodoc", "1");
		void SetSimplePrsParams(const Standard_Real theLineWidthParam, const Standard_Real theStartParam, const Standard_Real theEndParam);

};
%extend MeshVS_VectorPrsBuilder {
	Handle_MeshVS_VectorPrsBuilder GetHandle() {
	return *(Handle_MeshVS_VectorPrsBuilder*) &$self;
	}
};
%extend MeshVS_VectorPrsBuilder {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") MeshVS_VectorPrsBuilder::~MeshVS_VectorPrsBuilder %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshVS_VectorPrsBuilder {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshVS_DataMapOfTwoColorsMapOfInteger;
class MeshVS_DataMapOfTwoColorsMapOfInteger : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		MeshVS_DataMapOfTwoColorsMapOfInteger(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		MeshVS_DataMapOfTwoColorsMapOfInteger & Assign(const MeshVS_DataMapOfTwoColorsMapOfInteger &Other);
		%feature("autodoc", "1");
		MeshVS_DataMapOfTwoColorsMapOfInteger & operator=(const MeshVS_DataMapOfTwoColorsMapOfInteger &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const MeshVS_TwoColors &K, const TColStd_MapOfInteger &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const MeshVS_TwoColors &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const MeshVS_TwoColors &K);
		%feature("autodoc", "1");
		const TColStd_MapOfInteger & Find(const MeshVS_TwoColors &K) const;
		%feature("autodoc", "1");
		const TColStd_MapOfInteger & operator()(const MeshVS_TwoColors &K) const;
		%feature("autodoc", "1");
		TColStd_MapOfInteger & ChangeFind(const MeshVS_TwoColors &K);
		%feature("autodoc", "1");
		TColStd_MapOfInteger & operator()(const MeshVS_TwoColors &K);

};
%feature("shadow") MeshVS_DataMapOfTwoColorsMapOfInteger::~MeshVS_DataMapOfTwoColorsMapOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshVS_DataMapOfTwoColorsMapOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshVS_SensitiveSegment;
class MeshVS_SensitiveSegment : public Select3D_SensitiveSegment {
	public:
		%feature("autodoc", "1");
		MeshVS_SensitiveSegment(const Handle_SelectBasics_EntityOwner &theOwner, const gp_Pnt theFirstP, const gp_Pnt theLastP, const Standard_Integer theMaxRect=1);
		%feature("autodoc", "1");
		virtual		void Project(const Handle_Select3D_Projector &aProjector);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Matches(const Standard_Real XMin, const Standard_Real YMin, const Standard_Real XMax, const Standard_Real YMax, const Standard_Real aTol);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Matches(const TColgp_Array1OfPnt2d &Polyline, const Bnd_Box2d &aBox, const Standard_Real aTol);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MeshVS_SensitiveSegment {
	Handle_MeshVS_SensitiveSegment GetHandle() {
	return *(Handle_MeshVS_SensitiveSegment*) &$self;
	}
};
%extend MeshVS_SensitiveSegment {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") MeshVS_SensitiveSegment::~MeshVS_SensitiveSegment %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshVS_SensitiveSegment {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshVS_DataMapOfIntegerBoolean;
class MeshVS_DataMapOfIntegerBoolean : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		MeshVS_DataMapOfIntegerBoolean(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		MeshVS_DataMapOfIntegerBoolean & Assign(const MeshVS_DataMapOfIntegerBoolean &Other);
		%feature("autodoc", "1");
		MeshVS_DataMapOfIntegerBoolean & operator=(const MeshVS_DataMapOfIntegerBoolean &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Standard_Integer &K, const Standard_Boolean &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Standard_Integer &K);
		%feature("autodoc", "1");
		const Standard_Boolean & Find(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		const Standard_Boolean & operator()(const Standard_Integer &K) const;
		%feature("autodoc","1");
		%extend {
				Standard_Boolean GetChangeFind(const Standard_Integer &K) {
				return (Standard_Boolean) $self->ChangeFind(K);
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetChangeFind(Standard_Boolean value ,const Standard_Integer &K) {
				$self->ChangeFind(K)=value;
				}
		};
		%feature("autodoc", "1");
		Standard_Boolean & operator()(const Standard_Integer &K);

};
%feature("shadow") MeshVS_DataMapOfIntegerBoolean::~MeshVS_DataMapOfIntegerBoolean %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshVS_DataMapOfIntegerBoolean {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshVS_DataMapNodeOfDataMapOfIntegerBoolean;
class MeshVS_DataMapNodeOfDataMapOfIntegerBoolean : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		MeshVS_DataMapNodeOfDataMapOfIntegerBoolean(const Standard_Integer &K, const Standard_Boolean &I, const TCollection_MapNodePtr &n);
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
%extend MeshVS_DataMapNodeOfDataMapOfIntegerBoolean {
	Handle_MeshVS_DataMapNodeOfDataMapOfIntegerBoolean GetHandle() {
	return *(Handle_MeshVS_DataMapNodeOfDataMapOfIntegerBoolean*) &$self;
	}
};
%extend MeshVS_DataMapNodeOfDataMapOfIntegerBoolean {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") MeshVS_DataMapNodeOfDataMapOfIntegerBoolean::~MeshVS_DataMapNodeOfDataMapOfIntegerBoolean %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshVS_DataMapNodeOfDataMapOfIntegerBoolean {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshVS_SensitivePolyhedron;
class MeshVS_SensitivePolyhedron : public Select3D_SensitiveEntity {
	public:
		%feature("autodoc", "1");
		MeshVS_SensitivePolyhedron(const Handle_SelectBasics_EntityOwner &Owner, const TColgp_Array1OfPnt &Nodes, const Handle_MeshVS_HArray1OfSequenceOfInteger &Topo);
		%feature("autodoc", "1");
		virtual		void Project(const Handle_Select3D_Projector &aProjector);
		%feature("autodoc", "1");
		virtual		Handle_Select3D_SensitiveEntity GetConnected(const TopLoc_Location &aLocation);
		%feature("autodoc","Matches(Standard_Real X, Standard_Real Y, Standard_Real aTol) -> Standard_Real");

		virtual		Standard_Boolean Matches(const Standard_Real X, const Standard_Real Y, const Standard_Real aTol, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Matches(const Standard_Real XMin, const Standard_Real YMin, const Standard_Real XMax, const Standard_Real YMax, const Standard_Real aTol);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Matches(const TColgp_Array1OfPnt2d &Polyline, const Bnd_Box2d &aBox, const Standard_Real aTol);
		%feature("autodoc", "1");
		virtual		Standard_Real ComputeDepth(const gp_Lin EyeLine) const;
		%feature("autodoc", "1");
		virtual		void Areas(SelectBasics_ListOfBox2d & aResult);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MeshVS_SensitivePolyhedron {
	Handle_MeshVS_SensitivePolyhedron GetHandle() {
	return *(Handle_MeshVS_SensitivePolyhedron*) &$self;
	}
};
%extend MeshVS_SensitivePolyhedron {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") MeshVS_SensitivePolyhedron::~MeshVS_SensitivePolyhedron %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshVS_SensitivePolyhedron {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshVS_DataMapNodeOfDataMapOfIntegerMaterial;
class MeshVS_DataMapNodeOfDataMapOfIntegerMaterial : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		MeshVS_DataMapNodeOfDataMapOfIntegerMaterial(const Standard_Integer &K, const Graphic3d_MaterialAspect &I, const TCollection_MapNodePtr &n);
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
		Graphic3d_MaterialAspect & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MeshVS_DataMapNodeOfDataMapOfIntegerMaterial {
	Handle_MeshVS_DataMapNodeOfDataMapOfIntegerMaterial GetHandle() {
	return *(Handle_MeshVS_DataMapNodeOfDataMapOfIntegerMaterial*) &$self;
	}
};
%extend MeshVS_DataMapNodeOfDataMapOfIntegerMaterial {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") MeshVS_DataMapNodeOfDataMapOfIntegerMaterial::~MeshVS_DataMapNodeOfDataMapOfIntegerMaterial %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshVS_DataMapNodeOfDataMapOfIntegerMaterial {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshVS_DataMapIteratorOfDataMapOfIntegerMeshEntityOwner;
class MeshVS_DataMapIteratorOfDataMapOfIntegerMeshEntityOwner : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		MeshVS_DataMapIteratorOfDataMapOfIntegerMeshEntityOwner();
		%feature("autodoc", "1");
		MeshVS_DataMapIteratorOfDataMapOfIntegerMeshEntityOwner(const MeshVS_DataMapOfIntegerMeshEntityOwner &aMap);
		%feature("autodoc", "1");
		void Initialize(const MeshVS_DataMapOfIntegerMeshEntityOwner &aMap);
		%feature("autodoc", "1");
		const Standard_Integer & Key() const;
		%feature("autodoc", "1");
		const Handle_MeshVS_MeshEntityOwner & Value() const;

};
%feature("shadow") MeshVS_DataMapIteratorOfDataMapOfIntegerMeshEntityOwner::~MeshVS_DataMapIteratorOfDataMapOfIntegerMeshEntityOwner %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshVS_DataMapIteratorOfDataMapOfIntegerMeshEntityOwner {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshVS_DataMapOfIntegerMeshEntityOwner;
class MeshVS_DataMapOfIntegerMeshEntityOwner : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		MeshVS_DataMapOfIntegerMeshEntityOwner(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		MeshVS_DataMapOfIntegerMeshEntityOwner & Assign(const MeshVS_DataMapOfIntegerMeshEntityOwner &Other);
		%feature("autodoc", "1");
		MeshVS_DataMapOfIntegerMeshEntityOwner & operator=(const MeshVS_DataMapOfIntegerMeshEntityOwner &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Standard_Integer &K, const Handle_MeshVS_MeshEntityOwner &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Standard_Integer &K);
		%feature("autodoc", "1");
		const Handle_MeshVS_MeshEntityOwner & Find(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		const Handle_MeshVS_MeshEntityOwner & operator()(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Handle_MeshVS_MeshEntityOwner & ChangeFind(const Standard_Integer &K);
		%feature("autodoc", "1");
		Handle_MeshVS_MeshEntityOwner & operator()(const Standard_Integer &K);

};
%feature("shadow") MeshVS_DataMapOfIntegerMeshEntityOwner::~MeshVS_DataMapOfIntegerMeshEntityOwner %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshVS_DataMapOfIntegerMeshEntityOwner {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshVS_SensitiveMesh;
class MeshVS_SensitiveMesh : public Select3D_SensitiveEntity {
	public:
		%feature("autodoc", "1");
		MeshVS_SensitiveMesh(const Handle_SelectBasics_EntityOwner &theOwner, const Standard_Integer theMode=0);
		%feature("autodoc", "1");
		Standard_Integer GetMode() const;
		%feature("autodoc", "1");
		virtual		Handle_Select3D_SensitiveEntity GetConnected(const TopLoc_Location &aLocation);
		%feature("autodoc", "1");
		virtual		Standard_Real ComputeDepth(const gp_Lin EyeLine) const;
		%feature("autodoc","Matches(Standard_Real X, Standard_Real Y, Standard_Real aTol) -> Standard_Real");

		virtual		Standard_Boolean Matches(const Standard_Real X, const Standard_Real Y, const Standard_Real aTol, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Matches(const Standard_Real XMin, const Standard_Real YMin, const Standard_Real XMax, const Standard_Real YMax, const Standard_Real aTol);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Matches(const TColgp_Array1OfPnt2d &Polyline, const Bnd_Box2d &aBox, const Standard_Real aTol);
		%feature("autodoc", "1");
		virtual		void Project(const Handle_Select3D_Projector &aProjector);
		%feature("autodoc", "1");
		virtual		void Areas(SelectBasics_ListOfBox2d & boxes);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MeshVS_SensitiveMesh {
	Handle_MeshVS_SensitiveMesh GetHandle() {
	return *(Handle_MeshVS_SensitiveMesh*) &$self;
	}
};
%extend MeshVS_SensitiveMesh {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") MeshVS_SensitiveMesh::~MeshVS_SensitiveMesh %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshVS_SensitiveMesh {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshVS_ColorHasher;
class MeshVS_ColorHasher : public TColStd_MapIntegerHasher {
	public:
		%feature("autodoc", "1");
		MeshVS_ColorHasher();
		%feature("autodoc", "1");
		static		Standard_Integer HashCode(const Quantity_Color &K, const Standard_Integer Upper);
		%feature("autodoc", "1");
		static		Standard_Boolean IsEqual(const Quantity_Color &K1, const Quantity_Color &K2);

};
%feature("shadow") MeshVS_ColorHasher::~MeshVS_ColorHasher %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshVS_ColorHasher {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshVS_DataMapNodeOfDataMapOfHArray1OfSequenceOfInteger;
class MeshVS_DataMapNodeOfDataMapOfHArray1OfSequenceOfInteger : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		MeshVS_DataMapNodeOfDataMapOfHArray1OfSequenceOfInteger(const Standard_Integer &K, const Handle_MeshVS_HArray1OfSequenceOfInteger &I, const TCollection_MapNodePtr &n);
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
		Handle_MeshVS_HArray1OfSequenceOfInteger & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MeshVS_DataMapNodeOfDataMapOfHArray1OfSequenceOfInteger {
	Handle_MeshVS_DataMapNodeOfDataMapOfHArray1OfSequenceOfInteger GetHandle() {
	return *(Handle_MeshVS_DataMapNodeOfDataMapOfHArray1OfSequenceOfInteger*) &$self;
	}
};
%extend MeshVS_DataMapNodeOfDataMapOfHArray1OfSequenceOfInteger {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") MeshVS_DataMapNodeOfDataMapOfHArray1OfSequenceOfInteger::~MeshVS_DataMapNodeOfDataMapOfHArray1OfSequenceOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshVS_DataMapNodeOfDataMapOfHArray1OfSequenceOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshVS_DataMapOfIntegerColor;
class MeshVS_DataMapOfIntegerColor : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		MeshVS_DataMapOfIntegerColor(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		MeshVS_DataMapOfIntegerColor & Assign(const MeshVS_DataMapOfIntegerColor &Other);
		%feature("autodoc", "1");
		MeshVS_DataMapOfIntegerColor & operator=(const MeshVS_DataMapOfIntegerColor &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Standard_Integer &K, const Quantity_Color &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Standard_Integer &K);
		%feature("autodoc", "1");
		const Quantity_Color & Find(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		const Quantity_Color & operator()(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Quantity_Color & ChangeFind(const Standard_Integer &K);
		%feature("autodoc", "1");
		Quantity_Color & operator()(const Standard_Integer &K);

};
%feature("shadow") MeshVS_DataMapOfIntegerColor::~MeshVS_DataMapOfIntegerColor %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshVS_DataMapOfIntegerColor {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshVS_TwoColorsHasher;
class MeshVS_TwoColorsHasher {
	public:
		%feature("autodoc", "1");
		MeshVS_TwoColorsHasher();
		%feature("autodoc", "1");
		static		Standard_Integer HashCode(const MeshVS_TwoColors &K, const Standard_Integer Upper);
		%feature("autodoc", "1");
		static		Standard_Boolean IsEqual(const MeshVS_TwoColors &K1, const MeshVS_TwoColors &K2);

};
%feature("shadow") MeshVS_TwoColorsHasher::~MeshVS_TwoColorsHasher %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshVS_TwoColorsHasher {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshVS_NodalColorPrsBuilder;
class MeshVS_NodalColorPrsBuilder : public MeshVS_PrsBuilder {
	public:
		%feature("autodoc", "1");
		MeshVS_NodalColorPrsBuilder(const Handle_MeshVS_Mesh &Parent, const MeshVS_DisplayModeFlags &Flags=MeshVS_DisplayModeFlags const &(::MeshVS_DMF_NodalColorDataPrs), const Handle_MeshVS_DataSource &DS=0, const Standard_Integer Id=-0x000000001, const MeshVS_BuilderPriority &Priority=MeshVS_BuilderPriority const &(::MeshVS_BP_NodalColor));
		%feature("autodoc", "1");
		virtual		void Build(const Handle_Prs3d_Presentation &Prs, const TColStd_PackedMapOfInteger &IDs, TColStd_PackedMapOfInteger & IDsToExclude, const Standard_Boolean IsElement, const Standard_Integer DisplayMode) const;
		%feature("autodoc", "1");
		const MeshVS_DataMapOfIntegerColor & GetColors() const;
		%feature("autodoc", "1");
		void SetColors(const MeshVS_DataMapOfIntegerColor &Map);
		%feature("autodoc", "1");
		Standard_Boolean HasColors() const;
		%feature("autodoc", "1");
		Standard_Boolean GetColor(const Standard_Integer ID, Quantity_Color & theColor) const;
		%feature("autodoc", "1");
		void SetColor(const Standard_Integer ID, const Quantity_Color &theColor);
		%feature("autodoc", "1");
		void UseTexture(const Standard_Boolean theToUse);
		%feature("autodoc", "1");
		Standard_Boolean IsUseTexture() const;
		%feature("autodoc", "1");
		void SetColorMap(const Aspect_SequenceOfColor &theColors);
		%feature("autodoc", "1");
		const Aspect_SequenceOfColor & GetColorMap() const;
		%feature("autodoc", "1");
		void SetInvalidColor(const Quantity_Color &theInvalidColor);
		%feature("autodoc", "1");
		Quantity_Color GetInvalidColor() const;
		%feature("autodoc", "1");
		void SetTextureCoords(const TColStd_DataMapOfIntegerReal &theMap);
		%feature("autodoc", "1");
		const TColStd_DataMapOfIntegerReal & GetTextureCoords() const;
		%feature("autodoc", "1");
		void SetTextureCoord(const Standard_Integer theID, const Standard_Real theCoord);
		%feature("autodoc", "1");
		Standard_Real GetTextureCoord(const Standard_Integer theID);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MeshVS_NodalColorPrsBuilder {
	Handle_MeshVS_NodalColorPrsBuilder GetHandle() {
	return *(Handle_MeshVS_NodalColorPrsBuilder*) &$self;
	}
};
%extend MeshVS_NodalColorPrsBuilder {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") MeshVS_NodalColorPrsBuilder::~MeshVS_NodalColorPrsBuilder %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshVS_NodalColorPrsBuilder {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshVS_Drawer;
class MeshVS_Drawer : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		MeshVS_Drawer();
		%feature("autodoc", "1");
		virtual		void Assign(const Handle_MeshVS_Drawer &aDrawer);
		%feature("autodoc", "1");
		void SetInteger(const Standard_Integer Key, const Standard_Integer Value);
		%feature("autodoc", "1");
		void SetDouble(const Standard_Integer Key, const Standard_Real Value);
		%feature("autodoc", "1");
		void SetBoolean(const Standard_Integer Key, const Standard_Boolean Value);
		%feature("autodoc", "1");
		void SetColor(const Standard_Integer Key, const Quantity_Color &Value);
		%feature("autodoc", "1");
		void SetMaterial(const Standard_Integer Key, const Graphic3d_MaterialAspect &Value);
		%feature("autodoc", "1");
		void SetAsciiString(const Standard_Integer Key, const TCollection_AsciiString &Value);
		%feature("autodoc","GetInteger(Standard_Integer Key) -> Standard_Integer");

		Standard_Boolean GetInteger(const Standard_Integer Key, Standard_Integer &OutValue) const;
		%feature("autodoc","GetDouble(Standard_Integer Key) -> Standard_Real");

		Standard_Boolean GetDouble(const Standard_Integer Key, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Boolean GetBoolean(const Standard_Integer Key, Standard_Boolean & Value) const;
		%feature("autodoc", "1");
		Standard_Boolean GetColor(const Standard_Integer Key, Quantity_Color & Value) const;
		%feature("autodoc", "1");
		Standard_Boolean GetMaterial(const Standard_Integer Key, Graphic3d_MaterialAspect & Value) const;
		%feature("autodoc", "1");
		Standard_Boolean GetAsciiString(const Standard_Integer Key, TCollection_AsciiString & Value) const;
		%feature("autodoc", "1");
		Standard_Boolean RemoveInteger(const Standard_Integer Key);
		%feature("autodoc", "1");
		Standard_Boolean RemoveDouble(const Standard_Integer Key);
		%feature("autodoc", "1");
		Standard_Boolean RemoveBoolean(const Standard_Integer Key);
		%feature("autodoc", "1");
		Standard_Boolean RemoveColor(const Standard_Integer Key);
		%feature("autodoc", "1");
		Standard_Boolean RemoveMaterial(const Standard_Integer Key);
		%feature("autodoc", "1");
		Standard_Boolean RemoveAsciiString(const Standard_Integer Key);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MeshVS_Drawer {
	Handle_MeshVS_Drawer GetHandle() {
	return *(Handle_MeshVS_Drawer*) &$self;
	}
};
%extend MeshVS_Drawer {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") MeshVS_Drawer::~MeshVS_Drawer %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshVS_Drawer {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshVS_DataMapNodeOfDataMapOfIntegerVector;
class MeshVS_DataMapNodeOfDataMapOfIntegerVector : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		MeshVS_DataMapNodeOfDataMapOfIntegerVector(const Standard_Integer &K, const gp_Vec I, const TCollection_MapNodePtr &n);
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
		gp_Vec  Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MeshVS_DataMapNodeOfDataMapOfIntegerVector {
	Handle_MeshVS_DataMapNodeOfDataMapOfIntegerVector GetHandle() {
	return *(Handle_MeshVS_DataMapNodeOfDataMapOfIntegerVector*) &$self;
	}
};
%extend MeshVS_DataMapNodeOfDataMapOfIntegerVector {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") MeshVS_DataMapNodeOfDataMapOfIntegerVector::~MeshVS_DataMapNodeOfDataMapOfIntegerVector %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshVS_DataMapNodeOfDataMapOfIntegerVector {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshVS_DataMapNodeOfDataMapOfIntegerAsciiString;
class MeshVS_DataMapNodeOfDataMapOfIntegerAsciiString : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		MeshVS_DataMapNodeOfDataMapOfIntegerAsciiString(const Standard_Integer &K, const TCollection_AsciiString &I, const TCollection_MapNodePtr &n);
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
		TCollection_AsciiString & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MeshVS_DataMapNodeOfDataMapOfIntegerAsciiString {
	Handle_MeshVS_DataMapNodeOfDataMapOfIntegerAsciiString GetHandle() {
	return *(Handle_MeshVS_DataMapNodeOfDataMapOfIntegerAsciiString*) &$self;
	}
};
%extend MeshVS_DataMapNodeOfDataMapOfIntegerAsciiString {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") MeshVS_DataMapNodeOfDataMapOfIntegerAsciiString::~MeshVS_DataMapNodeOfDataMapOfIntegerAsciiString %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshVS_DataMapNodeOfDataMapOfIntegerAsciiString {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshVS_DataMapOfIntegerMaterial;
class MeshVS_DataMapOfIntegerMaterial : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		MeshVS_DataMapOfIntegerMaterial(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		MeshVS_DataMapOfIntegerMaterial & Assign(const MeshVS_DataMapOfIntegerMaterial &Other);
		%feature("autodoc", "1");
		MeshVS_DataMapOfIntegerMaterial & operator=(const MeshVS_DataMapOfIntegerMaterial &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Standard_Integer &K, const Graphic3d_MaterialAspect &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Standard_Integer &K);
		%feature("autodoc", "1");
		const Graphic3d_MaterialAspect & Find(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		const Graphic3d_MaterialAspect & operator()(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Graphic3d_MaterialAspect & ChangeFind(const Standard_Integer &K);
		%feature("autodoc", "1");
		Graphic3d_MaterialAspect & operator()(const Standard_Integer &K);

};
%feature("shadow") MeshVS_DataMapOfIntegerMaterial::~MeshVS_DataMapOfIntegerMaterial %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshVS_DataMapOfIntegerMaterial {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshVS_TwoNodesHasher;
class MeshVS_TwoNodesHasher {
	public:
		%feature("autodoc", "1");
		MeshVS_TwoNodesHasher();
		%feature("autodoc", "1");
		static		Standard_Integer HashCode(const MeshVS_TwoNodes &K, const Standard_Integer Upper);
		%feature("autodoc", "1");
		static		Standard_Boolean IsEqual(const MeshVS_TwoNodes &K1, const MeshVS_TwoNodes &K2);

};
%feature("shadow") MeshVS_TwoNodesHasher::~MeshVS_TwoNodesHasher %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshVS_TwoNodesHasher {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshVS_TextPrsBuilder;
class MeshVS_TextPrsBuilder : public MeshVS_PrsBuilder {
	public:
		%feature("autodoc", "1");
		MeshVS_TextPrsBuilder(const Handle_MeshVS_Mesh &Parent, const Standard_Real Height, const Quantity_Color &Color, const MeshVS_DisplayModeFlags &Flags=MeshVS_DisplayModeFlags const &(::MeshVS_DMF_TextDataPrs), const Handle_MeshVS_DataSource &DS=0, const Standard_Integer Id=-0x000000001, const MeshVS_BuilderPriority &Priority=MeshVS_BuilderPriority const &(::MeshVS_BP_Text));
		%feature("autodoc", "1");
		virtual		void Build(const Handle_Prs3d_Presentation &Prs, const TColStd_PackedMapOfInteger &IDs, TColStd_PackedMapOfInteger & IDsToExclude, const Standard_Boolean IsElement, const Standard_Integer theDisplayMode) const;
		%feature("autodoc", "1");
		const MeshVS_DataMapOfIntegerAsciiString & GetTexts(const Standard_Boolean IsElement) const;
		%feature("autodoc", "1");
		void SetTexts(const Standard_Boolean IsElement, const MeshVS_DataMapOfIntegerAsciiString &Map);
		%feature("autodoc", "1");
		Standard_Boolean HasTexts(const Standard_Boolean IsElement) const;
		%feature("autodoc", "1");
		Standard_Boolean GetText(const Standard_Boolean IsElement, const Standard_Integer ID, TCollection_AsciiString & Text) const;
		%feature("autodoc", "1");
		void SetText(const Standard_Boolean IsElement, const Standard_Integer ID, const TCollection_AsciiString &Text);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MeshVS_TextPrsBuilder {
	Handle_MeshVS_TextPrsBuilder GetHandle() {
	return *(Handle_MeshVS_TextPrsBuilder*) &$self;
	}
};
%extend MeshVS_TextPrsBuilder {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") MeshVS_TextPrsBuilder::~MeshVS_TextPrsBuilder %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshVS_TextPrsBuilder {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshVS_Array1OfSequenceOfInteger;
class MeshVS_Array1OfSequenceOfInteger {
	public:
		%feature("autodoc", "1");
		MeshVS_Array1OfSequenceOfInteger(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		MeshVS_Array1OfSequenceOfInteger(const TColStd_SequenceOfInteger &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const TColStd_SequenceOfInteger &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const MeshVS_Array1OfSequenceOfInteger & Assign(const MeshVS_Array1OfSequenceOfInteger &Other);
		%feature("autodoc", "1");
		const MeshVS_Array1OfSequenceOfInteger & operator=(const MeshVS_Array1OfSequenceOfInteger &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const TColStd_SequenceOfInteger &Value);
		%feature("autodoc", "1");
		const TColStd_SequenceOfInteger & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const TColStd_SequenceOfInteger & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		TColStd_SequenceOfInteger & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		TColStd_SequenceOfInteger & operator()(const Standard_Integer Index);

};
%feature("shadow") MeshVS_Array1OfSequenceOfInteger::~MeshVS_Array1OfSequenceOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshVS_Array1OfSequenceOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshVS_MapOfTwoNodes;
class MeshVS_MapOfTwoNodes : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		MeshVS_MapOfTwoNodes(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		MeshVS_MapOfTwoNodes & Assign(const MeshVS_MapOfTwoNodes &Other);
		%feature("autodoc", "1");
		MeshVS_MapOfTwoNodes & operator=(const MeshVS_MapOfTwoNodes &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Add(const MeshVS_TwoNodes &aKey);
		%feature("autodoc", "1");
		Standard_Boolean Contains(const MeshVS_TwoNodes &aKey) const;
		%feature("autodoc", "1");
		Standard_Boolean Remove(const MeshVS_TwoNodes &aKey);

};
%feature("shadow") MeshVS_MapOfTwoNodes::~MeshVS_MapOfTwoNodes %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshVS_MapOfTwoNodes {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshVS_DataMapOfIntegerVector;
class MeshVS_DataMapOfIntegerVector : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		MeshVS_DataMapOfIntegerVector(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		MeshVS_DataMapOfIntegerVector & Assign(const MeshVS_DataMapOfIntegerVector &Other);
		%feature("autodoc", "1");
		MeshVS_DataMapOfIntegerVector & operator=(const MeshVS_DataMapOfIntegerVector &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Standard_Integer &K, const gp_Vec I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Standard_Integer &K);
		%feature("autodoc", "1");
		const gp_Vec  Find(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		const gp_Vec  operator()(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		gp_Vec  ChangeFind(const Standard_Integer &K);
		%feature("autodoc", "1");
		gp_Vec  operator()(const Standard_Integer &K);

};
%feature("shadow") MeshVS_DataMapOfIntegerVector::~MeshVS_DataMapOfIntegerVector %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshVS_DataMapOfIntegerVector {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshVS_DataMapNodeOfDataMapOfIntegerTwoColors;
class MeshVS_DataMapNodeOfDataMapOfIntegerTwoColors : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		MeshVS_DataMapNodeOfDataMapOfIntegerTwoColors(const Standard_Integer &K, const MeshVS_TwoColors &I, const TCollection_MapNodePtr &n);
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
		MeshVS_TwoColors & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MeshVS_DataMapNodeOfDataMapOfIntegerTwoColors {
	Handle_MeshVS_DataMapNodeOfDataMapOfIntegerTwoColors GetHandle() {
	return *(Handle_MeshVS_DataMapNodeOfDataMapOfIntegerTwoColors*) &$self;
	}
};
%extend MeshVS_DataMapNodeOfDataMapOfIntegerTwoColors {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") MeshVS_DataMapNodeOfDataMapOfIntegerTwoColors::~MeshVS_DataMapNodeOfDataMapOfIntegerTwoColors %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshVS_DataMapNodeOfDataMapOfIntegerTwoColors {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshVS_ElementalColorPrsBuilder;
class MeshVS_ElementalColorPrsBuilder : public MeshVS_PrsBuilder {
	public:
		%feature("autodoc", "1");
		MeshVS_ElementalColorPrsBuilder(const Handle_MeshVS_Mesh &Parent, const MeshVS_DisplayModeFlags &Flags=MeshVS_DisplayModeFlags const &(::MeshVS_DMF_ElementalColorDataPrs), const Handle_MeshVS_DataSource &DS=0, const Standard_Integer Id=-0x000000001, const MeshVS_BuilderPriority &Priority=MeshVS_BuilderPriority const &(::MeshVS_BP_ElemColor));
		%feature("autodoc", "1");
		virtual		void Build(const Handle_Prs3d_Presentation &Prs, const TColStd_PackedMapOfInteger &IDs, TColStd_PackedMapOfInteger & IDsToExclude, const Standard_Boolean IsElement, const Standard_Integer DisplayMode) const;
		%feature("autodoc", "1");
		const MeshVS_DataMapOfIntegerColor & GetColors1() const;
		%feature("autodoc", "1");
		void SetColors1(const MeshVS_DataMapOfIntegerColor &Map);
		%feature("autodoc", "1");
		Standard_Boolean HasColors1() const;
		%feature("autodoc", "1");
		Standard_Boolean GetColor1(const Standard_Integer ID, Quantity_Color & theColor) const;
		%feature("autodoc", "1");
		void SetColor1(const Standard_Integer ID, const Quantity_Color &theColor);
		%feature("autodoc", "1");
		const MeshVS_DataMapOfIntegerTwoColors & GetColors2() const;
		%feature("autodoc", "1");
		void SetColors2(const MeshVS_DataMapOfIntegerTwoColors &Map);
		%feature("autodoc", "1");
		Standard_Boolean HasColors2() const;
		%feature("autodoc", "1");
		Standard_Boolean GetColor2(const Standard_Integer ID, MeshVS_TwoColors & theColor) const;
		%feature("autodoc", "1");
		Standard_Boolean GetColor2(const Standard_Integer ID, Quantity_Color & theColor1, Quantity_Color & theColor2) const;
		%feature("autodoc", "1");
		void SetColor2(const Standard_Integer ID, const MeshVS_TwoColors &theTwoColors);
		%feature("autodoc", "1");
		void SetColor2(const Standard_Integer ID, const Quantity_Color &theColor1, const Quantity_Color &theColor2);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MeshVS_ElementalColorPrsBuilder {
	Handle_MeshVS_ElementalColorPrsBuilder GetHandle() {
	return *(Handle_MeshVS_ElementalColorPrsBuilder*) &$self;
	}
};
%extend MeshVS_ElementalColorPrsBuilder {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") MeshVS_ElementalColorPrsBuilder::~MeshVS_ElementalColorPrsBuilder %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshVS_ElementalColorPrsBuilder {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshVS_DataMapNodeOfDataMapOfColorMapOfInteger;
class MeshVS_DataMapNodeOfDataMapOfColorMapOfInteger : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		MeshVS_DataMapNodeOfDataMapOfColorMapOfInteger(const Quantity_Color &K, const TColStd_MapOfInteger &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Quantity_Color & Key() const;
		%feature("autodoc", "1");
		TColStd_MapOfInteger & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MeshVS_DataMapNodeOfDataMapOfColorMapOfInteger {
	Handle_MeshVS_DataMapNodeOfDataMapOfColorMapOfInteger GetHandle() {
	return *(Handle_MeshVS_DataMapNodeOfDataMapOfColorMapOfInteger*) &$self;
	}
};
%extend MeshVS_DataMapNodeOfDataMapOfColorMapOfInteger {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") MeshVS_DataMapNodeOfDataMapOfColorMapOfInteger::~MeshVS_DataMapNodeOfDataMapOfColorMapOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshVS_DataMapNodeOfDataMapOfColorMapOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshVS_DataMapIteratorOfDataMapOfIntegerColor;
class MeshVS_DataMapIteratorOfDataMapOfIntegerColor : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		MeshVS_DataMapIteratorOfDataMapOfIntegerColor();
		%feature("autodoc", "1");
		MeshVS_DataMapIteratorOfDataMapOfIntegerColor(const MeshVS_DataMapOfIntegerColor &aMap);
		%feature("autodoc", "1");
		void Initialize(const MeshVS_DataMapOfIntegerColor &aMap);
		%feature("autodoc", "1");
		const Standard_Integer & Key() const;
		%feature("autodoc", "1");
		const Quantity_Color & Value() const;

};
%feature("shadow") MeshVS_DataMapIteratorOfDataMapOfIntegerColor::~MeshVS_DataMapIteratorOfDataMapOfIntegerColor %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshVS_DataMapIteratorOfDataMapOfIntegerColor {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshVS_DataMapIteratorOfDataMapOfTwoColorsMapOfInteger;
class MeshVS_DataMapIteratorOfDataMapOfTwoColorsMapOfInteger : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		MeshVS_DataMapIteratorOfDataMapOfTwoColorsMapOfInteger();
		%feature("autodoc", "1");
		MeshVS_DataMapIteratorOfDataMapOfTwoColorsMapOfInteger(const MeshVS_DataMapOfTwoColorsMapOfInteger &aMap);
		%feature("autodoc", "1");
		void Initialize(const MeshVS_DataMapOfTwoColorsMapOfInteger &aMap);
		%feature("autodoc", "1");
		const MeshVS_TwoColors & Key() const;
		%feature("autodoc", "1");
		const TColStd_MapOfInteger & Value() const;

};
%feature("shadow") MeshVS_DataMapIteratorOfDataMapOfTwoColorsMapOfInteger::~MeshVS_DataMapIteratorOfDataMapOfTwoColorsMapOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshVS_DataMapIteratorOfDataMapOfTwoColorsMapOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshVS_Tool;
class MeshVS_Tool {
	public:
		%feature("autodoc", "1");
		MeshVS_Tool();
		%feature("autodoc", "1");
		static		Handle_Graphic3d_AspectFillArea3d CreateAspectFillArea3d(const Handle_MeshVS_Drawer &theDr, const Standard_Boolean UseDefaults=1);
		%feature("autodoc", "1");
		static		Handle_Graphic3d_AspectFillArea3d CreateAspectFillArea3d(const Handle_MeshVS_Drawer &theDr, const Graphic3d_MaterialAspect &Mat, const Standard_Boolean UseDefaults=1);
		%feature("autodoc", "1");
		static		Handle_Graphic3d_AspectLine3d CreateAspectLine3d(const Handle_MeshVS_Drawer &theDr, const Standard_Boolean UseDefaults=1);
		%feature("autodoc", "1");
		static		Handle_Graphic3d_AspectMarker3d CreateAspectMarker3d(const Handle_MeshVS_Drawer &theDr, const Standard_Boolean UseDefaults=1);
		%feature("autodoc", "1");
		static		Handle_Graphic3d_AspectText3d CreateAspectText3d(const Handle_MeshVS_Drawer &theDr, const Standard_Boolean UseDefaults=1);
		%feature("autodoc", "1");
		static		Standard_Boolean GetNormal(const TColStd_Array1OfReal &Nodes, gp_Vec & Norm);
		%feature("autodoc", "1");
		static		Standard_Boolean GetAverageNormal(const TColStd_Array1OfReal &Nodes, gp_Vec & Norm);

};
%feature("shadow") MeshVS_Tool::~MeshVS_Tool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshVS_Tool {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshVS_SensitiveFace;
class MeshVS_SensitiveFace : public Select3D_SensitiveFace {
	public:
		%feature("autodoc", "1");
		MeshVS_SensitiveFace(const Handle_SelectBasics_EntityOwner &theOwner, const TColgp_Array1OfPnt &thePoints, const Select3D_TypeOfSensitivity theSensType=Select3D_TOS_INTERIOR);
		%feature("autodoc", "1");
		virtual		void Project(const Handle_Select3D_Projector &aProjector);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Matches(const Standard_Real XMin, const Standard_Real YMin, const Standard_Real XMax, const Standard_Real YMax, const Standard_Real aTol);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Matches(const TColgp_Array1OfPnt2d &Polyline, const Bnd_Box2d &aBox, const Standard_Real aTol);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MeshVS_SensitiveFace {
	Handle_MeshVS_SensitiveFace GetHandle() {
	return *(Handle_MeshVS_SensitiveFace*) &$self;
	}
};
%extend MeshVS_SensitiveFace {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") MeshVS_SensitiveFace::~MeshVS_SensitiveFace %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshVS_SensitiveFace {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshVS_DataMapOfIntegerTwoColors;
class MeshVS_DataMapOfIntegerTwoColors : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		MeshVS_DataMapOfIntegerTwoColors(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		MeshVS_DataMapOfIntegerTwoColors & Assign(const MeshVS_DataMapOfIntegerTwoColors &Other);
		%feature("autodoc", "1");
		MeshVS_DataMapOfIntegerTwoColors & operator=(const MeshVS_DataMapOfIntegerTwoColors &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Standard_Integer &K, const MeshVS_TwoColors &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Standard_Integer &K);
		%feature("autodoc", "1");
		const MeshVS_TwoColors & Find(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		const MeshVS_TwoColors & operator()(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		MeshVS_TwoColors & ChangeFind(const Standard_Integer &K);
		%feature("autodoc", "1");
		MeshVS_TwoColors & operator()(const Standard_Integer &K);

};
%feature("shadow") MeshVS_DataMapOfIntegerTwoColors::~MeshVS_DataMapOfIntegerTwoColors %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshVS_DataMapOfIntegerTwoColors {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshVS_TwoNodes;
class MeshVS_TwoNodes {
	public:
		%feature("autodoc", "1");
		MeshVS_TwoNodes(Standard_Integer =0, Standard_Integer =0);

};
%feature("shadow") MeshVS_TwoNodes::~MeshVS_TwoNodes %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshVS_TwoNodes {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshVS_DataMapNodeOfDataMapOfIntegerOwner;
class MeshVS_DataMapNodeOfDataMapOfIntegerOwner : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		MeshVS_DataMapNodeOfDataMapOfIntegerOwner(const Standard_Integer &K, const Handle_SelectMgr_EntityOwner &I, const TCollection_MapNodePtr &n);
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
		Handle_SelectMgr_EntityOwner & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MeshVS_DataMapNodeOfDataMapOfIntegerOwner {
	Handle_MeshVS_DataMapNodeOfDataMapOfIntegerOwner GetHandle() {
	return *(Handle_MeshVS_DataMapNodeOfDataMapOfIntegerOwner*) &$self;
	}
};
%extend MeshVS_DataMapNodeOfDataMapOfIntegerOwner {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") MeshVS_DataMapNodeOfDataMapOfIntegerOwner::~MeshVS_DataMapNodeOfDataMapOfIntegerOwner %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshVS_DataMapNodeOfDataMapOfIntegerOwner {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshVS_DataMapNodeOfDataMapOfIntegerMeshEntityOwner;
class MeshVS_DataMapNodeOfDataMapOfIntegerMeshEntityOwner : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		MeshVS_DataMapNodeOfDataMapOfIntegerMeshEntityOwner(const Standard_Integer &K, const Handle_MeshVS_MeshEntityOwner &I, const TCollection_MapNodePtr &n);
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
		Handle_MeshVS_MeshEntityOwner & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MeshVS_DataMapNodeOfDataMapOfIntegerMeshEntityOwner {
	Handle_MeshVS_DataMapNodeOfDataMapOfIntegerMeshEntityOwner GetHandle() {
	return *(Handle_MeshVS_DataMapNodeOfDataMapOfIntegerMeshEntityOwner*) &$self;
	}
};
%extend MeshVS_DataMapNodeOfDataMapOfIntegerMeshEntityOwner {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") MeshVS_DataMapNodeOfDataMapOfIntegerMeshEntityOwner::~MeshVS_DataMapNodeOfDataMapOfIntegerMeshEntityOwner %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshVS_DataMapNodeOfDataMapOfIntegerMeshEntityOwner {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshVS_DataMapIteratorOfDataMapOfIntegerOwner;
class MeshVS_DataMapIteratorOfDataMapOfIntegerOwner : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		MeshVS_DataMapIteratorOfDataMapOfIntegerOwner();
		%feature("autodoc", "1");
		MeshVS_DataMapIteratorOfDataMapOfIntegerOwner(const MeshVS_DataMapOfIntegerOwner &aMap);
		%feature("autodoc", "1");
		void Initialize(const MeshVS_DataMapOfIntegerOwner &aMap);
		%feature("autodoc", "1");
		const Standard_Integer & Key() const;
		%feature("autodoc", "1");
		const Handle_SelectMgr_EntityOwner & Value() const;

};
%feature("shadow") MeshVS_DataMapIteratorOfDataMapOfIntegerOwner::~MeshVS_DataMapIteratorOfDataMapOfIntegerOwner %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshVS_DataMapIteratorOfDataMapOfIntegerOwner {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshVS_Mesh;
class MeshVS_Mesh : public AIS_InteractiveObject {
	public:
		%feature("autodoc", "1");
		MeshVS_Mesh(const Standard_Boolean theIsAllowOverlapped=0);
		%feature("autodoc", "1");
		virtual		void Destroy();
		%feature("autodoc", "1");
		virtual		void Compute(const Handle_PrsMgr_PresentationManager3d &PM, const Handle_Prs3d_Presentation &Prs, const Standard_Integer DisplayMode);
		%feature("autodoc", "1");
		virtual		void ComputeSelection(const Handle_SelectMgr_Selection &Sel, const Standard_Integer SelectMode);
		%feature("autodoc", "1");
		virtual		void HilightSelected(const Handle_PrsMgr_PresentationManager3d &PM, const SelectMgr_SequenceOfOwner &Owners);
		%feature("autodoc", "1");
		virtual		void HilightOwnerWithColor(const Handle_PrsMgr_PresentationManager3d &PM, const Quantity_NameOfColor Color, const Handle_SelectMgr_EntityOwner &Owner);
		%feature("autodoc", "1");
		virtual		void ClearSelected();
		%feature("autodoc", "1");
		Standard_Integer GetBuildersCount() const;
		%feature("autodoc", "1");
		Handle_MeshVS_PrsBuilder GetBuilder(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_MeshVS_PrsBuilder GetBuilderById(const Standard_Integer Id) const;
		%feature("autodoc", "1");
		Standard_Integer GetFreeId() const;
		%feature("autodoc", "1");
		void AddBuilder(const Handle_MeshVS_PrsBuilder &Builder, const Standard_Boolean TreatAsHilighter=0);
		%feature("autodoc", "1");
		void SetHilighter(const Handle_MeshVS_PrsBuilder &Builder);
		%feature("autodoc", "1");
		Standard_Boolean SetHilighter(const Standard_Integer Index);
		%feature("autodoc", "1");
		Standard_Boolean SetHilighterById(const Standard_Integer Id);
		%feature("autodoc", "1");
		Handle_MeshVS_PrsBuilder GetHilighter() const;
		%feature("autodoc", "1");
		void RemoveBuilder(const Standard_Integer Index);
		%feature("autodoc", "1");
		void RemoveBuilderById(const Standard_Integer Id);
		%feature("autodoc", "1");
		Handle_MeshVS_PrsBuilder FindBuilder(const char * TypeString) const;
		%feature("autodoc", "1");
		const MeshVS_DataMapOfIntegerOwner & GetOwnerMaps(const Standard_Boolean IsElement);
		%feature("autodoc", "1");
		Handle_MeshVS_DataSource GetDataSource() const;
		%feature("autodoc", "1");
		void SetDataSource(const Handle_MeshVS_DataSource &aDataSource);
		%feature("autodoc", "1");
		Handle_MeshVS_Drawer GetDrawer() const;
		%feature("autodoc", "1");
		void SetDrawer(const Handle_MeshVS_Drawer &aDrawer);
		%feature("autodoc", "1");
		Standard_Boolean IsHiddenElem(const Standard_Integer ID) const;
		%feature("autodoc", "1");
		Standard_Boolean IsHiddenNode(const Standard_Integer ID) const;
		%feature("autodoc", "1");
		Standard_Boolean IsSelectableElem(const Standard_Integer ID) const;
		%feature("autodoc", "1");
		Standard_Boolean IsSelectableNode(const Standard_Integer ID) const;
		%feature("autodoc", "1");
		const Handle_TColStd_HPackedMapOfInteger & GetHiddenNodes() const;
		%feature("autodoc", "1");
		void SetHiddenNodes(const Handle_TColStd_HPackedMapOfInteger &Ids);
		%feature("autodoc", "1");
		const Handle_TColStd_HPackedMapOfInteger & GetHiddenElems() const;
		%feature("autodoc", "1");
		void SetHiddenElems(const Handle_TColStd_HPackedMapOfInteger &Ids);
		%feature("autodoc", "1");
		const Handle_TColStd_HPackedMapOfInteger & GetSelectableNodes() const;
		%feature("autodoc", "1");
		void SetSelectableNodes(const Handle_TColStd_HPackedMapOfInteger &Ids);
		%feature("autodoc", "1");
		void UpdateSelectableNodes();
		%feature("autodoc", "1");
		MeshVS_MeshSelectionMethod GetMeshSelMethod() const;
		%feature("autodoc", "1");
		void SetMeshSelMethod(const MeshVS_MeshSelectionMethod M);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsWholeMeshOwner(const Handle_SelectMgr_EntityOwner &theOwner) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MeshVS_Mesh {
	Handle_MeshVS_Mesh GetHandle() {
	return *(Handle_MeshVS_Mesh*) &$self;
	}
};
%extend MeshVS_Mesh {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") MeshVS_Mesh::~MeshVS_Mesh %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshVS_Mesh {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshVS_DataMapNodeOfDataMapOfTwoColorsMapOfInteger;
class MeshVS_DataMapNodeOfDataMapOfTwoColorsMapOfInteger : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		MeshVS_DataMapNodeOfDataMapOfTwoColorsMapOfInteger(const MeshVS_TwoColors &K, const TColStd_MapOfInteger &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		MeshVS_TwoColors & Key() const;
		%feature("autodoc", "1");
		TColStd_MapOfInteger & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MeshVS_DataMapNodeOfDataMapOfTwoColorsMapOfInteger {
	Handle_MeshVS_DataMapNodeOfDataMapOfTwoColorsMapOfInteger GetHandle() {
	return *(Handle_MeshVS_DataMapNodeOfDataMapOfTwoColorsMapOfInteger*) &$self;
	}
};
%extend MeshVS_DataMapNodeOfDataMapOfTwoColorsMapOfInteger {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") MeshVS_DataMapNodeOfDataMapOfTwoColorsMapOfInteger::~MeshVS_DataMapNodeOfDataMapOfTwoColorsMapOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshVS_DataMapNodeOfDataMapOfTwoColorsMapOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshVS_DataMapOfIntegerOwner;
class MeshVS_DataMapOfIntegerOwner : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		MeshVS_DataMapOfIntegerOwner(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		MeshVS_DataMapOfIntegerOwner & Assign(const MeshVS_DataMapOfIntegerOwner &Other);
		%feature("autodoc", "1");
		MeshVS_DataMapOfIntegerOwner & operator=(const MeshVS_DataMapOfIntegerOwner &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Standard_Integer &K, const Handle_SelectMgr_EntityOwner &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Standard_Integer &K);
		%feature("autodoc", "1");
		const Handle_SelectMgr_EntityOwner & Find(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		const Handle_SelectMgr_EntityOwner & operator()(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Handle_SelectMgr_EntityOwner & ChangeFind(const Standard_Integer &K);
		%feature("autodoc", "1");
		Handle_SelectMgr_EntityOwner & operator()(const Standard_Integer &K);

};
%feature("shadow") MeshVS_DataMapOfIntegerOwner::~MeshVS_DataMapOfIntegerOwner %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshVS_DataMapOfIntegerOwner {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshVS_DataMapOfIntegerAsciiString;
class MeshVS_DataMapOfIntegerAsciiString : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		MeshVS_DataMapOfIntegerAsciiString(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		MeshVS_DataMapOfIntegerAsciiString & Assign(const MeshVS_DataMapOfIntegerAsciiString &Other);
		%feature("autodoc", "1");
		MeshVS_DataMapOfIntegerAsciiString & operator=(const MeshVS_DataMapOfIntegerAsciiString &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Standard_Integer &K, const TCollection_AsciiString &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Standard_Integer &K);
		%feature("autodoc", "1");
		const TCollection_AsciiString & Find(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		const TCollection_AsciiString & operator()(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		TCollection_AsciiString & ChangeFind(const Standard_Integer &K);
		%feature("autodoc", "1");
		TCollection_AsciiString & operator()(const Standard_Integer &K);

};
%feature("shadow") MeshVS_DataMapOfIntegerAsciiString::~MeshVS_DataMapOfIntegerAsciiString %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshVS_DataMapOfIntegerAsciiString {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshVS_MeshPrsBuilder;
class MeshVS_MeshPrsBuilder : public MeshVS_PrsBuilder {
	public:
		%feature("autodoc", "1");
		MeshVS_MeshPrsBuilder(const Handle_MeshVS_Mesh &Parent, const MeshVS_DisplayModeFlags &Flags=MeshVS_DisplayModeFlags const &(::MeshVS_DMF_Shrink), const Handle_MeshVS_DataSource &DS=0, const Standard_Integer Id=-0x000000001, const MeshVS_BuilderPriority &Priority=MeshVS_BuilderPriority const &(::MeshVS_BP_Mesh));
		%feature("autodoc", "1");
		virtual		void Build(const Handle_Prs3d_Presentation &Prs, const TColStd_PackedMapOfInteger &IDs, TColStd_PackedMapOfInteger & IDsToExclude, const Standard_Boolean IsElement, const Standard_Integer DisplayMode) const;
		%feature("autodoc", "1");
		virtual		void BuildNodes(const Handle_Prs3d_Presentation &Prs, const TColStd_PackedMapOfInteger &IDs, TColStd_PackedMapOfInteger & IDsToExclude, const Standard_Integer DisplayMode) const;
		%feature("autodoc", "1");
		virtual		void BuildElements(const Handle_Prs3d_Presentation &Prs, const TColStd_PackedMapOfInteger &IDs, TColStd_PackedMapOfInteger & IDsToExclude, const Standard_Integer DisplayMode) const;
		%feature("autodoc", "1");
		virtual		void BuildHilightPrs(const Handle_Prs3d_Presentation &Prs, const TColStd_PackedMapOfInteger &IDs, const Standard_Boolean IsElement) const;
		%feature("autodoc", "1");
		static		void AddVolumePrs(const Handle_MeshVS_HArray1OfSequenceOfInteger &Topo, const TColStd_Array1OfReal &Nodes, const Standard_Integer NbNodes, const Handle_Graphic3d_ArrayOfPrimitives &Array, const Standard_Boolean IsReflected, const Standard_Boolean IsShrinked, const Standard_Boolean IsSelect, const Standard_Real ShrinkCoef);
		%feature("autodoc","HowManyPrimitives(const Topo, Standard_Boolean AsPolygons, Standard_Boolean IsSelect, Standard_Integer NbNodes) -> [Standard_Integer, Standard_Integer]");

		static		void HowManyPrimitives(const Handle_MeshVS_HArray1OfSequenceOfInteger &Topo, const Standard_Boolean AsPolygons, const Standard_Boolean IsSelect, const Standard_Integer NbNodes, Standard_Integer &OutValue, Standard_Integer &OutValue);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MeshVS_MeshPrsBuilder {
	Handle_MeshVS_MeshPrsBuilder GetHandle() {
	return *(Handle_MeshVS_MeshPrsBuilder*) &$self;
	}
};
%extend MeshVS_MeshPrsBuilder {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") MeshVS_MeshPrsBuilder::~MeshVS_MeshPrsBuilder %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshVS_MeshPrsBuilder {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshVS_MeshOwner;
class MeshVS_MeshOwner : public SelectMgr_EntityOwner {
	public:
		%feature("autodoc", "1");
		MeshVS_MeshOwner(const SelectMgr_SOPtr &theSelObj, const Handle_MeshVS_DataSource &theDS, const Standard_Integer thePriority=0);
		%feature("autodoc", "1");
		const Handle_MeshVS_DataSource & GetDataSource() const;
		%feature("autodoc", "1");
		const Handle_TColStd_HPackedMapOfInteger & GetSelectedNodes() const;
		%feature("autodoc", "1");
		const Handle_TColStd_HPackedMapOfInteger & GetSelectedElements() const;
		%feature("autodoc", "1");
		virtual		void AddSelectedEntities(const Handle_TColStd_HPackedMapOfInteger &Nodes, const Handle_TColStd_HPackedMapOfInteger &Elems);
		%feature("autodoc", "1");
		virtual		void ClearSelectedEntities();
		%feature("autodoc", "1");
		const Handle_TColStd_HPackedMapOfInteger & GetDetectedNodes() const;
		%feature("autodoc", "1");
		const Handle_TColStd_HPackedMapOfInteger & GetDetectedElements() const;
		%feature("autodoc", "1");
		void SetDetectedEntities(const Handle_TColStd_HPackedMapOfInteger &Nodes, const Handle_TColStd_HPackedMapOfInteger &Elems);
		%feature("autodoc", "1");
		virtual		void HilightWithColor(const Handle_PrsMgr_PresentationManager3d &PM, const Quantity_NameOfColor theColor, const Standard_Integer Mode=0);
		%feature("autodoc", "1");
		virtual		void Unhilight(const Handle_PrsMgr_PresentationManager &PM, const Standard_Integer Mode=0);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsForcedHilight() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MeshVS_MeshOwner {
	Handle_MeshVS_MeshOwner GetHandle() {
	return *(Handle_MeshVS_MeshOwner*) &$self;
	}
};
%extend MeshVS_MeshOwner {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") MeshVS_MeshOwner::~MeshVS_MeshOwner %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshVS_MeshOwner {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshVS_DataMapIteratorOfDataMapOfHArray1OfSequenceOfInteger;
class MeshVS_DataMapIteratorOfDataMapOfHArray1OfSequenceOfInteger : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		MeshVS_DataMapIteratorOfDataMapOfHArray1OfSequenceOfInteger();
		%feature("autodoc", "1");
		MeshVS_DataMapIteratorOfDataMapOfHArray1OfSequenceOfInteger(const MeshVS_DataMapOfHArray1OfSequenceOfInteger &aMap);
		%feature("autodoc", "1");
		void Initialize(const MeshVS_DataMapOfHArray1OfSequenceOfInteger &aMap);
		%feature("autodoc", "1");
		const Standard_Integer & Key() const;
		%feature("autodoc", "1");
		const Handle_MeshVS_HArray1OfSequenceOfInteger & Value() const;

};
%feature("shadow") MeshVS_DataMapIteratorOfDataMapOfHArray1OfSequenceOfInteger::~MeshVS_DataMapIteratorOfDataMapOfHArray1OfSequenceOfInteger %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshVS_DataMapIteratorOfDataMapOfHArray1OfSequenceOfInteger {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshVS_MeshEntityOwner;
class MeshVS_MeshEntityOwner : public SelectMgr_EntityOwner {
	public:
		%feature("autodoc", "1");
		MeshVS_MeshEntityOwner(const SelectMgr_SOPtr &SelObj, const Standard_Integer ID, const Standard_Address MeshEntity, const MeshVS_EntityType &Type, const Standard_Integer Priority=0, const Standard_Boolean IsGroup=0);
		%feature("autodoc", "1");
		Standard_Address Owner() const;
		%feature("autodoc", "1");
		MeshVS_EntityType Type() const;
		%feature("autodoc", "1");
		Standard_Integer ID() const;
		%feature("autodoc", "1");
		Standard_Boolean IsGroup() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsHilighted(const Handle_PrsMgr_PresentationManager &PM, const Standard_Integer Mode=0) const;
		%feature("autodoc", "1");
		virtual		void Hilight();
		%feature("autodoc", "1");
		virtual		void Hilight(const Handle_PrsMgr_PresentationManager &PM, const Standard_Integer Mode=0);
		%feature("autodoc", "1");
		virtual		void HilightWithColor(const Handle_PrsMgr_PresentationManager3d &PM, const Quantity_NameOfColor theColor, const Standard_Integer Mode=0);
		%feature("autodoc", "1");
		virtual		void Unhilight(const Handle_PrsMgr_PresentationManager &PM, const Standard_Integer Mode=0);
		%feature("autodoc", "1");
		virtual		void Clear(const Handle_PrsMgr_PresentationManager &PM, const Standard_Integer Mode=0);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MeshVS_MeshEntityOwner {
	Handle_MeshVS_MeshEntityOwner GetHandle() {
	return *(Handle_MeshVS_MeshEntityOwner*) &$self;
	}
};
%extend MeshVS_MeshEntityOwner {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") MeshVS_MeshEntityOwner::~MeshVS_MeshEntityOwner %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshVS_MeshEntityOwner {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshVS_DummySensitiveEntity;
class MeshVS_DummySensitiveEntity : public SelectBasics_SensitiveEntity {
	public:
		%feature("autodoc", "1");
		MeshVS_DummySensitiveEntity(const Handle_SelectBasics_EntityOwner &OwnerId);
		%feature("autodoc", "1");
		virtual		void Areas(SelectBasics_ListOfBox2d & aresult);
		%feature("autodoc","Matches(Standard_Real X, Standard_Real Y, Standard_Real aTol) -> Standard_Real");

		virtual		Standard_Boolean Matches(const Standard_Real X, const Standard_Real Y, const Standard_Real aTol, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Matches(const Standard_Real XMin, const Standard_Real YMin, const Standard_Real XMax, const Standard_Real YMax, const Standard_Real aTol);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Matches(const TColgp_Array1OfPnt2d &Polyline, const Bnd_Box2d &aBox, const Standard_Real aTol);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Is3D() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean NeedsConversion() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer MaxBoxes() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MeshVS_DummySensitiveEntity {
	Handle_MeshVS_DummySensitiveEntity GetHandle() {
	return *(Handle_MeshVS_DummySensitiveEntity*) &$self;
	}
};
%extend MeshVS_DummySensitiveEntity {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") MeshVS_DummySensitiveEntity::~MeshVS_DummySensitiveEntity %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshVS_DummySensitiveEntity {
	void _kill_pointed() {
		delete $self;
	}
};
