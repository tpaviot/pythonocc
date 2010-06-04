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
%module Graphic3d
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%pythoncode {
import GarbageCollector
};

%include Graphic3d_dependencies.i


%include Graphic3d_headers.i

typedef Standard_Integer Graphic3d_TransModeFlags;
typedef CALL_DEF_PICK Graphic3d_CPick;
typedef CALL_DEF_USERDRAW Graphic3d_CUserDraw;
typedef Graphic3d_Structure * Graphic3d_StructPtr;
typedef CALL_DEF_VIEW Graphic3d_CView;
typedef CALL_DEF_INIT_TEXTURE Graphic3d_CInitTexture;
typedef CALL_DEF_LIGHT Graphic3d_CLight;
typedef CALL_DEF_STRUCTURE Graphic3d_CStructure;
typedef CALL_DEF_GROUP Graphic3d_CGroup;
typedef CALL_DEF_PARRAY * Graphic3d_PrimitiveArray;
typedef CALL_DEF_TEXTURE Graphic3d_CTexture;
typedef CALL_DEF_BOUNDS Graphic3d_CBounds;
typedef CALL_DEF_TRANSFORM_PERSISTENCE Graphic3d_CTransPersStruct;
typedef CALL_DEF_PLANE Graphic3d_CPlane;

enum Graphic3d_TypeOfReflection {
	Graphic3d_TOR_AMBIENT,
	Graphic3d_TOR_DIFFUSE,
	Graphic3d_TOR_SPECULAR,
	Graphic3d_TOR_EMISSION,
	};

enum Graphic3d_HorizontalTextAlignment {
	Graphic3d_HTA_NORMAL,
	Graphic3d_HTA_LEFT,
	Graphic3d_HTA_CENTER,
	Graphic3d_HTA_RIGHT,
	};

enum Graphic3d_SortType {
	Graphic3d_ST_Simple,
	Graphic3d_ST_BSP_Tree,
	};

enum Graphic3d_TypeOfTexture {
	Graphic3d_TOT_1D,
	Graphic3d_TOT_2D,
	Graphic3d_TOT_2D_MIPMAP,
	};

enum Graphic3d_TypeOfConnection {
	Graphic3d_TOC_ANCESTOR,
	Graphic3d_TOC_DESCENDANT,
	};

enum Graphic3d_TypeOfPolygon {
	Graphic3d_TOP_UNKNOWN,
	Graphic3d_TOP_COMPLEX,
	Graphic3d_TOP_CONCAVE,
	Graphic3d_TOP_CONVEX,
	};

enum Graphic3d_NameOfTextureEnv {
	Graphic3d_NOT_ENV_CLOUDS,
	Graphic3d_NOT_ENV_CV,
	Graphic3d_NOT_ENV_MEDIT,
	Graphic3d_NOT_ENV_PEARL,
	Graphic3d_NOT_ENV_SKY1,
	Graphic3d_NOT_ENV_SKY2,
	Graphic3d_NOT_ENV_LINES,
	Graphic3d_NOT_ENV_ROAD,
	Graphic3d_NOT_ENV_UNKNOWN,
	};

enum Graphic3d_TypeOfStructure {
	Graphic3d_TOS_WIREFRAME,
	Graphic3d_TOS_SHADING,
	Graphic3d_TOS_COMPUTED,
	Graphic3d_TOS_ALL,
	};

enum Graphic3d_NameOfMaterial {
	Graphic3d_NOM_BRASS,
	Graphic3d_NOM_BRONZE,
	Graphic3d_NOM_COPPER,
	Graphic3d_NOM_GOLD,
	Graphic3d_NOM_PEWTER,
	Graphic3d_NOM_PLASTER,
	Graphic3d_NOM_PLASTIC,
	Graphic3d_NOM_SILVER,
	Graphic3d_NOM_STEEL,
	Graphic3d_NOM_STONE,
	Graphic3d_NOM_SHINY_PLASTIC,
	Graphic3d_NOM_SATIN,
	Graphic3d_NOM_METALIZED,
	Graphic3d_NOM_NEON_GNC,
	Graphic3d_NOM_CHROME,
	Graphic3d_NOM_ALUMINIUM,
	Graphic3d_NOM_OBSIDIAN,
	Graphic3d_NOM_NEON_PHC,
	Graphic3d_NOM_JADE,
	Graphic3d_NOM_DEFAULT,
	Graphic3d_NOM_UserDefined,
	};

enum Graphic3d_VerticalTextAlignment {
	Graphic3d_VTA_NORMAL,
	Graphic3d_VTA_TOP,
	Graphic3d_VTA_CAP,
	Graphic3d_VTA_HALF,
	Graphic3d_VTA_BASE,
	Graphic3d_VTA_BOTTOM,
	};

enum Graphic3d_NameOfTexture1D {
	Graphic3d_NOT_1D_ELEVATION,
	Graphic3d_NOT_1D_UNKNOWN,
	};

enum Graphic3d_TypeOfComposition {
	Graphic3d_TOC_REPLACE,
	Graphic3d_TOC_POSTCONCATENATE,
	};

enum Graphic3d_NameOfTexture2D {
	Graphic3d_NOT_2D_MATRA,
	Graphic3d_NOT_2D_ALIENSKIN,
	Graphic3d_NOT_2D_BLUE_ROCK,
	Graphic3d_NOT_2D_BLUEWHITE_PAPER,
	Graphic3d_NOT_2D_BRUSHED,
	Graphic3d_NOT_2D_BUBBLES,
	Graphic3d_NOT_2D_BUMP,
	Graphic3d_NOT_2D_CAST,
	Graphic3d_NOT_2D_CHIPBD,
	Graphic3d_NOT_2D_CLOUDS,
	Graphic3d_NOT_2D_FLESH,
	Graphic3d_NOT_2D_FLOOR,
	Graphic3d_NOT_2D_GALVNISD,
	Graphic3d_NOT_2D_GRASS,
	Graphic3d_NOT_2D_ALUMINUM,
	Graphic3d_NOT_2D_ROCK,
	Graphic3d_NOT_2D_KNURL,
	Graphic3d_NOT_2D_MAPLE,
	Graphic3d_NOT_2D_MARBLE,
	Graphic3d_NOT_2D_MOTTLED,
	Graphic3d_NOT_2D_RAIN,
	Graphic3d_NOT_2D_UNKNOWN,
	};

enum Graphic3d_TypeOfMaterial {
	Graphic3d_MATERIAL_ASPECT,
	Graphic3d_MATERIAL_PHYSIC,
	};

enum Graphic3d_TextPath {
	Graphic3d_TP_UP,
	Graphic3d_TP_DOWN,
	Graphic3d_TP_LEFT,
	Graphic3d_TP_RIGHT,
	};

enum Graphic3d_NameOfFont {
	Graphic3d_NOF_ASCII_MONO,
	Graphic3d_NOF_ASCII_SIMPLEX,
	Graphic3d_NOF_ASCII_DUPLEX,
	Graphic3d_NOF_ASCII_COMPLEX,
	Graphic3d_NOF_ASCII_TRIPLEX,
	Graphic3d_NOF_ASCII_ITALIC_COMPLEX,
	Graphic3d_NOF_ASCII_ITALIC_TRIPLEX,
	Graphic3d_NOF_ASCII_SCRIPT_SIMPLEX,
	Graphic3d_NOF_ASCII_SCRIPT_COMPLEX,
	Graphic3d_NOF_GREEK_MONO,
	Graphic3d_NOF_GREEK_SIMPLEX,
	Graphic3d_NOF_GREEK_COMPLEX,
	Graphic3d_NOF_SYMBOL_MONO,
	Graphic3d_NOF_SYMBOL_SIMPLEX,
	Graphic3d_NOF_CARTOGRAPHIC_SIMPLEX,
	Graphic3d_NOF_KANJI_MONO,
	Graphic3d_NOF_KATAKANA_MONO,
	};

enum Graphic3d_TypeOfPrimitiveArray {
	Graphic3d_TOPA_UNDEFINED,
	Graphic3d_TOPA_POINTS,
	Graphic3d_TOPA_POLYLINES,
	Graphic3d_TOPA_SEGMENTS,
	Graphic3d_TOPA_POLYGONS,
	Graphic3d_TOPA_TRIANGLES,
	Graphic3d_TOPA_QUADRANGLES,
	Graphic3d_TOPA_TRIANGLESTRIPS,
	Graphic3d_TOPA_QUADRANGLESTRIPS,
	Graphic3d_TOPA_TRIANGLEFANS,
	};

enum Graphic3d_TypeOfTextureMode {
	Graphic3d_TOTM_OBJECT,
	Graphic3d_TOTM_SPHERE,
	Graphic3d_TOTM_EYE,
	Graphic3d_TOTM_MANUAL,
	};

enum Graphic3d_NameOfTexturePlane {
	Graphic3d_NOTP_XY,
	Graphic3d_NOTP_YZ,
	Graphic3d_NOTP_ZX,
	Graphic3d_NOTP_UNKNOWN,
	};

enum Graphic3d_TypeOfPrimitive {
	Graphic3d_TOP_UNDEFINED,
	Graphic3d_TOP_POLYLINE,
	Graphic3d_TOP_POLYGON,
	Graphic3d_TOP_TRIANGLEMESH,
	Graphic3d_TOP_QUADRANGLEMESH,
	Graphic3d_TOP_TEXT,
	Graphic3d_TOP_MARKER,
	Graphic3d_TOP_PARRAY,
	};

enum Graphic3d_ExportFormat {
	Graphic3d_EF_PostScript,
	Graphic3d_EF_EnhPostScript,
	Graphic3d_EF_EnhMetaFile,
	Graphic3d_EF_PDF,
	};



%nodefaultctor Handle_Graphic3d_GraphicDriver;
class Handle_Graphic3d_GraphicDriver : public Handle_Aspect_GraphicDriver {
	public:
		%feature("autodoc", "1");
		Handle_Graphic3d_GraphicDriver();
		%feature("autodoc", "1");
		Handle_Graphic3d_GraphicDriver(const Handle_Graphic3d_GraphicDriver &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_GraphicDriver(const Graphic3d_GraphicDriver *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_GraphicDriver & operator=(const Handle_Graphic3d_GraphicDriver &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_GraphicDriver & operator=(const Graphic3d_GraphicDriver *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_GraphicDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic3d_GraphicDriver {
	Graphic3d_GraphicDriver* GetObject() {
	return (Graphic3d_GraphicDriver*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic3d_GraphicDriver::~Handle_Graphic3d_GraphicDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic3d_GraphicDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic3d_GroupDefinitionError;
class Handle_Graphic3d_GroupDefinitionError : public Handle_Standard_OutOfRange {
	public:
		%feature("autodoc", "1");
		Handle_Graphic3d_GroupDefinitionError();
		%feature("autodoc", "1");
		Handle_Graphic3d_GroupDefinitionError(const Handle_Graphic3d_GroupDefinitionError &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_GroupDefinitionError(const Graphic3d_GroupDefinitionError *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_GroupDefinitionError & operator=(const Handle_Graphic3d_GroupDefinitionError &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_GroupDefinitionError & operator=(const Graphic3d_GroupDefinitionError *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_GroupDefinitionError const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic3d_GroupDefinitionError {
	Graphic3d_GroupDefinitionError* GetObject() {
	return (Graphic3d_GroupDefinitionError*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic3d_GroupDefinitionError::~Handle_Graphic3d_GroupDefinitionError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic3d_GroupDefinitionError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic3d_TextureRoot;
class Handle_Graphic3d_TextureRoot : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Graphic3d_TextureRoot();
		%feature("autodoc", "1");
		Handle_Graphic3d_TextureRoot(const Handle_Graphic3d_TextureRoot &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_TextureRoot(const Graphic3d_TextureRoot *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_TextureRoot & operator=(const Handle_Graphic3d_TextureRoot &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_TextureRoot & operator=(const Graphic3d_TextureRoot *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_TextureRoot const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic3d_TextureRoot {
	Graphic3d_TextureRoot* GetObject() {
	return (Graphic3d_TextureRoot*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic3d_TextureRoot::~Handle_Graphic3d_TextureRoot %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic3d_TextureRoot {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic3d_TextureMap;
class Handle_Graphic3d_TextureMap : public Handle_Graphic3d_TextureRoot {
	public:
		%feature("autodoc", "1");
		Handle_Graphic3d_TextureMap();
		%feature("autodoc", "1");
		Handle_Graphic3d_TextureMap(const Handle_Graphic3d_TextureMap &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_TextureMap(const Graphic3d_TextureMap *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_TextureMap & operator=(const Handle_Graphic3d_TextureMap &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_TextureMap & operator=(const Graphic3d_TextureMap *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_TextureMap const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic3d_TextureMap {
	Graphic3d_TextureMap* GetObject() {
	return (Graphic3d_TextureMap*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic3d_TextureMap::~Handle_Graphic3d_TextureMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic3d_TextureMap {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic3d_TextureEnv;
class Handle_Graphic3d_TextureEnv : public Handle_Graphic3d_TextureRoot {
	public:
		%feature("autodoc", "1");
		Handle_Graphic3d_TextureEnv();
		%feature("autodoc", "1");
		Handle_Graphic3d_TextureEnv(const Handle_Graphic3d_TextureEnv &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_TextureEnv(const Graphic3d_TextureEnv *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_TextureEnv & operator=(const Handle_Graphic3d_TextureEnv &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_TextureEnv & operator=(const Graphic3d_TextureEnv *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_TextureEnv const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic3d_TextureEnv {
	Graphic3d_TextureEnv* GetObject() {
	return (Graphic3d_TextureEnv*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic3d_TextureEnv::~Handle_Graphic3d_TextureEnv %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic3d_TextureEnv {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic3d_ArrayOfPrimitives;
class Handle_Graphic3d_ArrayOfPrimitives : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Graphic3d_ArrayOfPrimitives();
		%feature("autodoc", "1");
		Handle_Graphic3d_ArrayOfPrimitives(const Handle_Graphic3d_ArrayOfPrimitives &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_ArrayOfPrimitives(const Graphic3d_ArrayOfPrimitives *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_ArrayOfPrimitives & operator=(const Handle_Graphic3d_ArrayOfPrimitives &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_ArrayOfPrimitives & operator=(const Graphic3d_ArrayOfPrimitives *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_ArrayOfPrimitives const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic3d_ArrayOfPrimitives {
	Graphic3d_ArrayOfPrimitives* GetObject() {
	return (Graphic3d_ArrayOfPrimitives*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic3d_ArrayOfPrimitives::~Handle_Graphic3d_ArrayOfPrimitives %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic3d_ArrayOfPrimitives {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic3d_ArrayOfPoints;
class Handle_Graphic3d_ArrayOfPoints : public Handle_Graphic3d_ArrayOfPrimitives {
	public:
		%feature("autodoc", "1");
		Handle_Graphic3d_ArrayOfPoints();
		%feature("autodoc", "1");
		Handle_Graphic3d_ArrayOfPoints(const Handle_Graphic3d_ArrayOfPoints &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_ArrayOfPoints(const Graphic3d_ArrayOfPoints *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_ArrayOfPoints & operator=(const Handle_Graphic3d_ArrayOfPoints &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_ArrayOfPoints & operator=(const Graphic3d_ArrayOfPoints *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_ArrayOfPoints const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic3d_ArrayOfPoints {
	Graphic3d_ArrayOfPoints* GetObject() {
	return (Graphic3d_ArrayOfPoints*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic3d_ArrayOfPoints::~Handle_Graphic3d_ArrayOfPoints %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic3d_ArrayOfPoints {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic3d_Texture2D;
class Handle_Graphic3d_Texture2D : public Handle_Graphic3d_TextureMap {
	public:
		%feature("autodoc", "1");
		Handle_Graphic3d_Texture2D();
		%feature("autodoc", "1");
		Handle_Graphic3d_Texture2D(const Handle_Graphic3d_Texture2D &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_Texture2D(const Graphic3d_Texture2D *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_Texture2D & operator=(const Handle_Graphic3d_Texture2D &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_Texture2D & operator=(const Graphic3d_Texture2D *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_Texture2D const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic3d_Texture2D {
	Graphic3d_Texture2D* GetObject() {
	return (Graphic3d_Texture2D*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic3d_Texture2D::~Handle_Graphic3d_Texture2D %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic3d_Texture2D {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic3d_SequenceNodeOfSequenceOfStructure;
class Handle_Graphic3d_SequenceNodeOfSequenceOfStructure : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_Graphic3d_SequenceNodeOfSequenceOfStructure();
		%feature("autodoc", "1");
		Handle_Graphic3d_SequenceNodeOfSequenceOfStructure(const Handle_Graphic3d_SequenceNodeOfSequenceOfStructure &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_SequenceNodeOfSequenceOfStructure(const Graphic3d_SequenceNodeOfSequenceOfStructure *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_SequenceNodeOfSequenceOfStructure & operator=(const Handle_Graphic3d_SequenceNodeOfSequenceOfStructure &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_SequenceNodeOfSequenceOfStructure & operator=(const Graphic3d_SequenceNodeOfSequenceOfStructure *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_SequenceNodeOfSequenceOfStructure const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic3d_SequenceNodeOfSequenceOfStructure {
	Graphic3d_SequenceNodeOfSequenceOfStructure* GetObject() {
	return (Graphic3d_SequenceNodeOfSequenceOfStructure*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic3d_SequenceNodeOfSequenceOfStructure::~Handle_Graphic3d_SequenceNodeOfSequenceOfStructure %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic3d_SequenceNodeOfSequenceOfStructure {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic3d_ListNodeOfSetListOfSetOfGroup;
class Handle_Graphic3d_ListNodeOfSetListOfSetOfGroup : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_Graphic3d_ListNodeOfSetListOfSetOfGroup();
		%feature("autodoc", "1");
		Handle_Graphic3d_ListNodeOfSetListOfSetOfGroup(const Handle_Graphic3d_ListNodeOfSetListOfSetOfGroup &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_ListNodeOfSetListOfSetOfGroup(const Graphic3d_ListNodeOfSetListOfSetOfGroup *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_ListNodeOfSetListOfSetOfGroup & operator=(const Handle_Graphic3d_ListNodeOfSetListOfSetOfGroup &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_ListNodeOfSetListOfSetOfGroup & operator=(const Graphic3d_ListNodeOfSetListOfSetOfGroup *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_ListNodeOfSetListOfSetOfGroup const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic3d_ListNodeOfSetListOfSetOfGroup {
	Graphic3d_ListNodeOfSetListOfSetOfGroup* GetObject() {
	return (Graphic3d_ListNodeOfSetListOfSetOfGroup*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic3d_ListNodeOfSetListOfSetOfGroup::~Handle_Graphic3d_ListNodeOfSetListOfSetOfGroup %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic3d_ListNodeOfSetListOfSetOfGroup {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic3d_Texture1D;
class Handle_Graphic3d_Texture1D : public Handle_Graphic3d_TextureMap {
	public:
		%feature("autodoc", "1");
		Handle_Graphic3d_Texture1D();
		%feature("autodoc", "1");
		Handle_Graphic3d_Texture1D(const Handle_Graphic3d_Texture1D &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_Texture1D(const Graphic3d_Texture1D *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_Texture1D & operator=(const Handle_Graphic3d_Texture1D &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_Texture1D & operator=(const Graphic3d_Texture1D *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_Texture1D const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic3d_Texture1D {
	Graphic3d_Texture1D* GetObject() {
	return (Graphic3d_Texture1D*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic3d_Texture1D::~Handle_Graphic3d_Texture1D %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic3d_Texture1D {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic3d_Texture1Dmanual;
class Handle_Graphic3d_Texture1Dmanual : public Handle_Graphic3d_Texture1D {
	public:
		%feature("autodoc", "1");
		Handle_Graphic3d_Texture1Dmanual();
		%feature("autodoc", "1");
		Handle_Graphic3d_Texture1Dmanual(const Handle_Graphic3d_Texture1Dmanual &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_Texture1Dmanual(const Graphic3d_Texture1Dmanual *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_Texture1Dmanual & operator=(const Handle_Graphic3d_Texture1Dmanual &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_Texture1Dmanual & operator=(const Graphic3d_Texture1Dmanual *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_Texture1Dmanual const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic3d_Texture1Dmanual {
	Graphic3d_Texture1Dmanual* GetObject() {
	return (Graphic3d_Texture1Dmanual*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic3d_Texture1Dmanual::~Handle_Graphic3d_Texture1Dmanual %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic3d_Texture1Dmanual {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic3d_ArrayOfPolygons;
class Handle_Graphic3d_ArrayOfPolygons : public Handle_Graphic3d_ArrayOfPrimitives {
	public:
		%feature("autodoc", "1");
		Handle_Graphic3d_ArrayOfPolygons();
		%feature("autodoc", "1");
		Handle_Graphic3d_ArrayOfPolygons(const Handle_Graphic3d_ArrayOfPolygons &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_ArrayOfPolygons(const Graphic3d_ArrayOfPolygons *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_ArrayOfPolygons & operator=(const Handle_Graphic3d_ArrayOfPolygons &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_ArrayOfPolygons & operator=(const Graphic3d_ArrayOfPolygons *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_ArrayOfPolygons const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic3d_ArrayOfPolygons {
	Graphic3d_ArrayOfPolygons* GetObject() {
	return (Graphic3d_ArrayOfPolygons*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic3d_ArrayOfPolygons::~Handle_Graphic3d_ArrayOfPolygons %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic3d_ArrayOfPolygons {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic3d_AspectMarker3d;
class Handle_Graphic3d_AspectMarker3d : public Handle_Aspect_AspectMarker {
	public:
		%feature("autodoc", "1");
		Handle_Graphic3d_AspectMarker3d();
		%feature("autodoc", "1");
		Handle_Graphic3d_AspectMarker3d(const Handle_Graphic3d_AspectMarker3d &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_AspectMarker3d(const Graphic3d_AspectMarker3d *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_AspectMarker3d & operator=(const Handle_Graphic3d_AspectMarker3d &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_AspectMarker3d & operator=(const Graphic3d_AspectMarker3d *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_AspectMarker3d const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic3d_AspectMarker3d {
	Graphic3d_AspectMarker3d* GetObject() {
	return (Graphic3d_AspectMarker3d*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic3d_AspectMarker3d::~Handle_Graphic3d_AspectMarker3d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic3d_AspectMarker3d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic3d_ArrayOfPolylines;
class Handle_Graphic3d_ArrayOfPolylines : public Handle_Graphic3d_ArrayOfPrimitives {
	public:
		%feature("autodoc", "1");
		Handle_Graphic3d_ArrayOfPolylines();
		%feature("autodoc", "1");
		Handle_Graphic3d_ArrayOfPolylines(const Handle_Graphic3d_ArrayOfPolylines &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_ArrayOfPolylines(const Graphic3d_ArrayOfPolylines *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_ArrayOfPolylines & operator=(const Handle_Graphic3d_ArrayOfPolylines &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_ArrayOfPolylines & operator=(const Graphic3d_ArrayOfPolylines *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_ArrayOfPolylines const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic3d_ArrayOfPolylines {
	Graphic3d_ArrayOfPolylines* GetObject() {
	return (Graphic3d_ArrayOfPolylines*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic3d_ArrayOfPolylines::~Handle_Graphic3d_ArrayOfPolylines %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic3d_ArrayOfPolylines {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic3d_AspectText3d;
class Handle_Graphic3d_AspectText3d : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Graphic3d_AspectText3d();
		%feature("autodoc", "1");
		Handle_Graphic3d_AspectText3d(const Handle_Graphic3d_AspectText3d &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_AspectText3d(const Graphic3d_AspectText3d *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_AspectText3d & operator=(const Handle_Graphic3d_AspectText3d &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_AspectText3d & operator=(const Graphic3d_AspectText3d *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_AspectText3d const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic3d_AspectText3d {
	Graphic3d_AspectText3d* GetObject() {
	return (Graphic3d_AspectText3d*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic3d_AspectText3d::~Handle_Graphic3d_AspectText3d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic3d_AspectText3d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic3d_TransformError;
class Handle_Graphic3d_TransformError : public Handle_Standard_OutOfRange {
	public:
		%feature("autodoc", "1");
		Handle_Graphic3d_TransformError();
		%feature("autodoc", "1");
		Handle_Graphic3d_TransformError(const Handle_Graphic3d_TransformError &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_TransformError(const Graphic3d_TransformError *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_TransformError & operator=(const Handle_Graphic3d_TransformError &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_TransformError & operator=(const Graphic3d_TransformError *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_TransformError const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic3d_TransformError {
	Graphic3d_TransformError* GetObject() {
	return (Graphic3d_TransformError*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic3d_TransformError::~Handle_Graphic3d_TransformError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic3d_TransformError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic3d_PlotterDefinitionError;
class Handle_Graphic3d_PlotterDefinitionError : public Handle_Standard_OutOfRange {
	public:
		%feature("autodoc", "1");
		Handle_Graphic3d_PlotterDefinitionError();
		%feature("autodoc", "1");
		Handle_Graphic3d_PlotterDefinitionError(const Handle_Graphic3d_PlotterDefinitionError &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_PlotterDefinitionError(const Graphic3d_PlotterDefinitionError *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_PlotterDefinitionError & operator=(const Handle_Graphic3d_PlotterDefinitionError &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_PlotterDefinitionError & operator=(const Graphic3d_PlotterDefinitionError *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_PlotterDefinitionError const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic3d_PlotterDefinitionError {
	Graphic3d_PlotterDefinitionError* GetObject() {
	return (Graphic3d_PlotterDefinitionError*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic3d_PlotterDefinitionError::~Handle_Graphic3d_PlotterDefinitionError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic3d_PlotterDefinitionError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic3d_Texture1Dsegment;
class Handle_Graphic3d_Texture1Dsegment : public Handle_Graphic3d_Texture1D {
	public:
		%feature("autodoc", "1");
		Handle_Graphic3d_Texture1Dsegment();
		%feature("autodoc", "1");
		Handle_Graphic3d_Texture1Dsegment(const Handle_Graphic3d_Texture1Dsegment &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_Texture1Dsegment(const Graphic3d_Texture1Dsegment *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_Texture1Dsegment & operator=(const Handle_Graphic3d_Texture1Dsegment &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_Texture1Dsegment & operator=(const Graphic3d_Texture1Dsegment *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_Texture1Dsegment const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic3d_Texture1Dsegment {
	Graphic3d_Texture1Dsegment* GetObject() {
	return (Graphic3d_Texture1Dsegment*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic3d_Texture1Dsegment::~Handle_Graphic3d_Texture1Dsegment %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic3d_Texture1Dsegment {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic3d_AspectLine3d;
class Handle_Graphic3d_AspectLine3d : public Handle_Aspect_AspectLine {
	public:
		%feature("autodoc", "1");
		Handle_Graphic3d_AspectLine3d();
		%feature("autodoc", "1");
		Handle_Graphic3d_AspectLine3d(const Handle_Graphic3d_AspectLine3d &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_AspectLine3d(const Graphic3d_AspectLine3d *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_AspectLine3d & operator=(const Handle_Graphic3d_AspectLine3d &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_AspectLine3d & operator=(const Graphic3d_AspectLine3d *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_AspectLine3d const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic3d_AspectLine3d {
	Graphic3d_AspectLine3d* GetObject() {
	return (Graphic3d_AspectLine3d*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic3d_AspectLine3d::~Handle_Graphic3d_AspectLine3d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic3d_AspectLine3d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic3d_Plotter;
class Handle_Graphic3d_Plotter : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Graphic3d_Plotter();
		%feature("autodoc", "1");
		Handle_Graphic3d_Plotter(const Handle_Graphic3d_Plotter &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_Plotter(const Graphic3d_Plotter *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_Plotter & operator=(const Handle_Graphic3d_Plotter &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_Plotter & operator=(const Graphic3d_Plotter *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_Plotter const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic3d_Plotter {
	Graphic3d_Plotter* GetObject() {
	return (Graphic3d_Plotter*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic3d_Plotter::~Handle_Graphic3d_Plotter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic3d_Plotter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic3d_DataStructureManager;
class Handle_Graphic3d_DataStructureManager : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Graphic3d_DataStructureManager();
		%feature("autodoc", "1");
		Handle_Graphic3d_DataStructureManager(const Handle_Graphic3d_DataStructureManager &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_DataStructureManager(const Graphic3d_DataStructureManager *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_DataStructureManager & operator=(const Handle_Graphic3d_DataStructureManager &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_DataStructureManager & operator=(const Graphic3d_DataStructureManager *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_DataStructureManager const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic3d_DataStructureManager {
	Graphic3d_DataStructureManager* GetObject() {
	return (Graphic3d_DataStructureManager*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic3d_DataStructureManager::~Handle_Graphic3d_DataStructureManager %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic3d_DataStructureManager {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic3d_HSequenceOfGroup;
class Handle_Graphic3d_HSequenceOfGroup : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Graphic3d_HSequenceOfGroup();
		%feature("autodoc", "1");
		Handle_Graphic3d_HSequenceOfGroup(const Handle_Graphic3d_HSequenceOfGroup &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_HSequenceOfGroup(const Graphic3d_HSequenceOfGroup *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_HSequenceOfGroup & operator=(const Handle_Graphic3d_HSequenceOfGroup &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_HSequenceOfGroup & operator=(const Graphic3d_HSequenceOfGroup *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_HSequenceOfGroup const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic3d_HSequenceOfGroup {
	Graphic3d_HSequenceOfGroup* GetObject() {
	return (Graphic3d_HSequenceOfGroup*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic3d_HSequenceOfGroup::~Handle_Graphic3d_HSequenceOfGroup %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic3d_HSequenceOfGroup {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic3d_ArrayOfTriangleFans;
class Handle_Graphic3d_ArrayOfTriangleFans : public Handle_Graphic3d_ArrayOfPrimitives {
	public:
		%feature("autodoc", "1");
		Handle_Graphic3d_ArrayOfTriangleFans();
		%feature("autodoc", "1");
		Handle_Graphic3d_ArrayOfTriangleFans(const Handle_Graphic3d_ArrayOfTriangleFans &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_ArrayOfTriangleFans(const Graphic3d_ArrayOfTriangleFans *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_ArrayOfTriangleFans & operator=(const Handle_Graphic3d_ArrayOfTriangleFans &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_ArrayOfTriangleFans & operator=(const Graphic3d_ArrayOfTriangleFans *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_ArrayOfTriangleFans const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic3d_ArrayOfTriangleFans {
	Graphic3d_ArrayOfTriangleFans* GetObject() {
	return (Graphic3d_ArrayOfTriangleFans*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic3d_ArrayOfTriangleFans::~Handle_Graphic3d_ArrayOfTriangleFans %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic3d_ArrayOfTriangleFans {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic3d_AspectTextDefinitionError;
class Handle_Graphic3d_AspectTextDefinitionError : public Handle_Standard_OutOfRange {
	public:
		%feature("autodoc", "1");
		Handle_Graphic3d_AspectTextDefinitionError();
		%feature("autodoc", "1");
		Handle_Graphic3d_AspectTextDefinitionError(const Handle_Graphic3d_AspectTextDefinitionError &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_AspectTextDefinitionError(const Graphic3d_AspectTextDefinitionError *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_AspectTextDefinitionError & operator=(const Handle_Graphic3d_AspectTextDefinitionError &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_AspectTextDefinitionError & operator=(const Graphic3d_AspectTextDefinitionError *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_AspectTextDefinitionError const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic3d_AspectTextDefinitionError {
	Graphic3d_AspectTextDefinitionError* GetObject() {
	return (Graphic3d_AspectTextDefinitionError*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic3d_AspectTextDefinitionError::~Handle_Graphic3d_AspectTextDefinitionError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic3d_AspectTextDefinitionError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic3d_CycleError;
class Handle_Graphic3d_CycleError : public Handle_Standard_DomainError {
	public:
		%feature("autodoc", "1");
		Handle_Graphic3d_CycleError();
		%feature("autodoc", "1");
		Handle_Graphic3d_CycleError(const Handle_Graphic3d_CycleError &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_CycleError(const Graphic3d_CycleError *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_CycleError & operator=(const Handle_Graphic3d_CycleError &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_CycleError & operator=(const Graphic3d_CycleError *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_CycleError const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic3d_CycleError {
	Graphic3d_CycleError* GetObject() {
	return (Graphic3d_CycleError*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic3d_CycleError::~Handle_Graphic3d_CycleError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic3d_CycleError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic3d_VectorError;
class Handle_Graphic3d_VectorError : public Handle_Standard_OutOfRange {
	public:
		%feature("autodoc", "1");
		Handle_Graphic3d_VectorError();
		%feature("autodoc", "1");
		Handle_Graphic3d_VectorError(const Handle_Graphic3d_VectorError &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_VectorError(const Graphic3d_VectorError *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_VectorError & operator=(const Handle_Graphic3d_VectorError &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_VectorError & operator=(const Graphic3d_VectorError *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_VectorError const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic3d_VectorError {
	Graphic3d_VectorError* GetObject() {
	return (Graphic3d_VectorError*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic3d_VectorError::~Handle_Graphic3d_VectorError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic3d_VectorError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic3d_Texture2Dmanual;
class Handle_Graphic3d_Texture2Dmanual : public Handle_Graphic3d_Texture2D {
	public:
		%feature("autodoc", "1");
		Handle_Graphic3d_Texture2Dmanual();
		%feature("autodoc", "1");
		Handle_Graphic3d_Texture2Dmanual(const Handle_Graphic3d_Texture2Dmanual &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_Texture2Dmanual(const Graphic3d_Texture2Dmanual *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_Texture2Dmanual & operator=(const Handle_Graphic3d_Texture2Dmanual &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_Texture2Dmanual & operator=(const Graphic3d_Texture2Dmanual *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_Texture2Dmanual const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic3d_Texture2Dmanual {
	Graphic3d_Texture2Dmanual* GetObject() {
	return (Graphic3d_Texture2Dmanual*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic3d_Texture2Dmanual::~Handle_Graphic3d_Texture2Dmanual %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic3d_Texture2Dmanual {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic3d_Group;
class Handle_Graphic3d_Group : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Graphic3d_Group();
		%feature("autodoc", "1");
		Handle_Graphic3d_Group(const Handle_Graphic3d_Group &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_Group(const Graphic3d_Group *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_Group & operator=(const Handle_Graphic3d_Group &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_Group & operator=(const Graphic3d_Group *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_Group const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic3d_Group {
	Graphic3d_Group* GetObject() {
	return (Graphic3d_Group*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic3d_Group::~Handle_Graphic3d_Group %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic3d_Group {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic3d_PriorityDefinitionError;
class Handle_Graphic3d_PriorityDefinitionError : public Handle_Standard_OutOfRange {
	public:
		%feature("autodoc", "1");
		Handle_Graphic3d_PriorityDefinitionError();
		%feature("autodoc", "1");
		Handle_Graphic3d_PriorityDefinitionError(const Handle_Graphic3d_PriorityDefinitionError &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_PriorityDefinitionError(const Graphic3d_PriorityDefinitionError *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_PriorityDefinitionError & operator=(const Handle_Graphic3d_PriorityDefinitionError &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_PriorityDefinitionError & operator=(const Graphic3d_PriorityDefinitionError *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_PriorityDefinitionError const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic3d_PriorityDefinitionError {
	Graphic3d_PriorityDefinitionError* GetObject() {
	return (Graphic3d_PriorityDefinitionError*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic3d_PriorityDefinitionError::~Handle_Graphic3d_PriorityDefinitionError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic3d_PriorityDefinitionError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic3d_AspectFillArea3d;
class Handle_Graphic3d_AspectFillArea3d : public Handle_Aspect_AspectFillArea {
	public:
		%feature("autodoc", "1");
		Handle_Graphic3d_AspectFillArea3d();
		%feature("autodoc", "1");
		Handle_Graphic3d_AspectFillArea3d(const Handle_Graphic3d_AspectFillArea3d &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_AspectFillArea3d(const Graphic3d_AspectFillArea3d *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_AspectFillArea3d & operator=(const Handle_Graphic3d_AspectFillArea3d &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_AspectFillArea3d & operator=(const Graphic3d_AspectFillArea3d *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_AspectFillArea3d const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic3d_AspectFillArea3d {
	Graphic3d_AspectFillArea3d* GetObject() {
	return (Graphic3d_AspectFillArea3d*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic3d_AspectFillArea3d::~Handle_Graphic3d_AspectFillArea3d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic3d_AspectFillArea3d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic3d_ListNodeOfListOfShortReal;
class Handle_Graphic3d_ListNodeOfListOfShortReal : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_Graphic3d_ListNodeOfListOfShortReal();
		%feature("autodoc", "1");
		Handle_Graphic3d_ListNodeOfListOfShortReal(const Handle_Graphic3d_ListNodeOfListOfShortReal &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_ListNodeOfListOfShortReal(const Graphic3d_ListNodeOfListOfShortReal *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_ListNodeOfListOfShortReal & operator=(const Handle_Graphic3d_ListNodeOfListOfShortReal &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_ListNodeOfListOfShortReal & operator=(const Graphic3d_ListNodeOfListOfShortReal *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_ListNodeOfListOfShortReal const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic3d_ListNodeOfListOfShortReal {
	Graphic3d_ListNodeOfListOfShortReal* GetObject() {
	return (Graphic3d_ListNodeOfListOfShortReal*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic3d_ListNodeOfListOfShortReal::~Handle_Graphic3d_ListNodeOfListOfShortReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic3d_ListNodeOfListOfShortReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic3d_ArrayOfQuadrangleStrips;
class Handle_Graphic3d_ArrayOfQuadrangleStrips : public Handle_Graphic3d_ArrayOfPrimitives {
	public:
		%feature("autodoc", "1");
		Handle_Graphic3d_ArrayOfQuadrangleStrips();
		%feature("autodoc", "1");
		Handle_Graphic3d_ArrayOfQuadrangleStrips(const Handle_Graphic3d_ArrayOfQuadrangleStrips &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_ArrayOfQuadrangleStrips(const Graphic3d_ArrayOfQuadrangleStrips *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_ArrayOfQuadrangleStrips & operator=(const Handle_Graphic3d_ArrayOfQuadrangleStrips &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_ArrayOfQuadrangleStrips & operator=(const Graphic3d_ArrayOfQuadrangleStrips *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_ArrayOfQuadrangleStrips const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic3d_ArrayOfQuadrangleStrips {
	Graphic3d_ArrayOfQuadrangleStrips* GetObject() {
	return (Graphic3d_ArrayOfQuadrangleStrips*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic3d_ArrayOfQuadrangleStrips::~Handle_Graphic3d_ArrayOfQuadrangleStrips %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic3d_ArrayOfQuadrangleStrips {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic3d_GraphicDevice;
class Handle_Graphic3d_GraphicDevice : public Handle_Xw_GraphicDevice {
	public:
		%feature("autodoc", "1");
		Handle_Graphic3d_GraphicDevice();
		%feature("autodoc", "1");
		Handle_Graphic3d_GraphicDevice(const Handle_Graphic3d_GraphicDevice &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_GraphicDevice(const Graphic3d_GraphicDevice *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_GraphicDevice & operator=(const Handle_Graphic3d_GraphicDevice &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_GraphicDevice & operator=(const Graphic3d_GraphicDevice *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_GraphicDevice const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic3d_GraphicDevice {
	Graphic3d_GraphicDevice* GetObject() {
	return (Graphic3d_GraphicDevice*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic3d_GraphicDevice::~Handle_Graphic3d_GraphicDevice %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic3d_GraphicDevice {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic3d_InitialisationError;
class Handle_Graphic3d_InitialisationError : public Handle_Standard_OutOfRange {
	public:
		%feature("autodoc", "1");
		Handle_Graphic3d_InitialisationError();
		%feature("autodoc", "1");
		Handle_Graphic3d_InitialisationError(const Handle_Graphic3d_InitialisationError &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_InitialisationError(const Graphic3d_InitialisationError *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_InitialisationError & operator=(const Handle_Graphic3d_InitialisationError &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_InitialisationError & operator=(const Graphic3d_InitialisationError *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_InitialisationError const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic3d_InitialisationError {
	Graphic3d_InitialisationError* GetObject() {
	return (Graphic3d_InitialisationError*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic3d_InitialisationError::~Handle_Graphic3d_InitialisationError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic3d_InitialisationError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic3d_ArrayOfTriangleStrips;
class Handle_Graphic3d_ArrayOfTriangleStrips : public Handle_Graphic3d_ArrayOfPrimitives {
	public:
		%feature("autodoc", "1");
		Handle_Graphic3d_ArrayOfTriangleStrips();
		%feature("autodoc", "1");
		Handle_Graphic3d_ArrayOfTriangleStrips(const Handle_Graphic3d_ArrayOfTriangleStrips &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_ArrayOfTriangleStrips(const Graphic3d_ArrayOfTriangleStrips *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_ArrayOfTriangleStrips & operator=(const Handle_Graphic3d_ArrayOfTriangleStrips &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_ArrayOfTriangleStrips & operator=(const Graphic3d_ArrayOfTriangleStrips *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_ArrayOfTriangleStrips const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic3d_ArrayOfTriangleStrips {
	Graphic3d_ArrayOfTriangleStrips* GetObject() {
	return (Graphic3d_ArrayOfTriangleStrips*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic3d_ArrayOfTriangleStrips::~Handle_Graphic3d_ArrayOfTriangleStrips %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic3d_ArrayOfTriangleStrips {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic3d_ArrayOfTriangles;
class Handle_Graphic3d_ArrayOfTriangles : public Handle_Graphic3d_ArrayOfPrimitives {
	public:
		%feature("autodoc", "1");
		Handle_Graphic3d_ArrayOfTriangles();
		%feature("autodoc", "1");
		Handle_Graphic3d_ArrayOfTriangles(const Handle_Graphic3d_ArrayOfTriangles &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_ArrayOfTriangles(const Graphic3d_ArrayOfTriangles *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_ArrayOfTriangles & operator=(const Handle_Graphic3d_ArrayOfTriangles &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_ArrayOfTriangles & operator=(const Graphic3d_ArrayOfTriangles *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_ArrayOfTriangles const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic3d_ArrayOfTriangles {
	Graphic3d_ArrayOfTriangles* GetObject() {
	return (Graphic3d_ArrayOfTriangles*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic3d_ArrayOfTriangles::~Handle_Graphic3d_ArrayOfTriangles %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic3d_ArrayOfTriangles {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic3d_HSequenceOfStructure;
class Handle_Graphic3d_HSequenceOfStructure : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Graphic3d_HSequenceOfStructure();
		%feature("autodoc", "1");
		Handle_Graphic3d_HSequenceOfStructure(const Handle_Graphic3d_HSequenceOfStructure &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_HSequenceOfStructure(const Graphic3d_HSequenceOfStructure *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_HSequenceOfStructure & operator=(const Handle_Graphic3d_HSequenceOfStructure &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_HSequenceOfStructure & operator=(const Graphic3d_HSequenceOfStructure *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_HSequenceOfStructure const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic3d_HSequenceOfStructure {
	Graphic3d_HSequenceOfStructure* GetObject() {
	return (Graphic3d_HSequenceOfStructure*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic3d_HSequenceOfStructure::~Handle_Graphic3d_HSequenceOfStructure %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic3d_HSequenceOfStructure {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic3d_StdMapNodeOfMapOfStructure;
class Handle_Graphic3d_StdMapNodeOfMapOfStructure : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_Graphic3d_StdMapNodeOfMapOfStructure();
		%feature("autodoc", "1");
		Handle_Graphic3d_StdMapNodeOfMapOfStructure(const Handle_Graphic3d_StdMapNodeOfMapOfStructure &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_StdMapNodeOfMapOfStructure(const Graphic3d_StdMapNodeOfMapOfStructure *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_StdMapNodeOfMapOfStructure & operator=(const Handle_Graphic3d_StdMapNodeOfMapOfStructure &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_StdMapNodeOfMapOfStructure & operator=(const Graphic3d_StdMapNodeOfMapOfStructure *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_StdMapNodeOfMapOfStructure const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic3d_StdMapNodeOfMapOfStructure {
	Graphic3d_StdMapNodeOfMapOfStructure* GetObject() {
	return (Graphic3d_StdMapNodeOfMapOfStructure*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic3d_StdMapNodeOfMapOfStructure::~Handle_Graphic3d_StdMapNodeOfMapOfStructure %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic3d_StdMapNodeOfMapOfStructure {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic3d_SequenceNodeOfSequenceOfAddress;
class Handle_Graphic3d_SequenceNodeOfSequenceOfAddress : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_Graphic3d_SequenceNodeOfSequenceOfAddress();
		%feature("autodoc", "1");
		Handle_Graphic3d_SequenceNodeOfSequenceOfAddress(const Handle_Graphic3d_SequenceNodeOfSequenceOfAddress &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_SequenceNodeOfSequenceOfAddress(const Graphic3d_SequenceNodeOfSequenceOfAddress *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_SequenceNodeOfSequenceOfAddress & operator=(const Handle_Graphic3d_SequenceNodeOfSequenceOfAddress &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_SequenceNodeOfSequenceOfAddress & operator=(const Graphic3d_SequenceNodeOfSequenceOfAddress *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_SequenceNodeOfSequenceOfAddress const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic3d_SequenceNodeOfSequenceOfAddress {
	Graphic3d_SequenceNodeOfSequenceOfAddress* GetObject() {
	return (Graphic3d_SequenceNodeOfSequenceOfAddress*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic3d_SequenceNodeOfSequenceOfAddress::~Handle_Graphic3d_SequenceNodeOfSequenceOfAddress %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic3d_SequenceNodeOfSequenceOfAddress {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic3d_StructureManager;
class Handle_Graphic3d_StructureManager : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Graphic3d_StructureManager();
		%feature("autodoc", "1");
		Handle_Graphic3d_StructureManager(const Handle_Graphic3d_StructureManager &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_StructureManager(const Graphic3d_StructureManager *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_StructureManager & operator=(const Handle_Graphic3d_StructureManager &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_StructureManager & operator=(const Graphic3d_StructureManager *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_StructureManager const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic3d_StructureManager {
	Graphic3d_StructureManager* GetObject() {
	return (Graphic3d_StructureManager*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic3d_StructureManager::~Handle_Graphic3d_StructureManager %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic3d_StructureManager {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic3d_ArrayOfQuadrangles;
class Handle_Graphic3d_ArrayOfQuadrangles : public Handle_Graphic3d_ArrayOfPrimitives {
	public:
		%feature("autodoc", "1");
		Handle_Graphic3d_ArrayOfQuadrangles();
		%feature("autodoc", "1");
		Handle_Graphic3d_ArrayOfQuadrangles(const Handle_Graphic3d_ArrayOfQuadrangles &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_ArrayOfQuadrangles(const Graphic3d_ArrayOfQuadrangles *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_ArrayOfQuadrangles & operator=(const Handle_Graphic3d_ArrayOfQuadrangles &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_ArrayOfQuadrangles & operator=(const Graphic3d_ArrayOfQuadrangles *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_ArrayOfQuadrangles const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic3d_ArrayOfQuadrangles {
	Graphic3d_ArrayOfQuadrangles* GetObject() {
	return (Graphic3d_ArrayOfQuadrangles*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic3d_ArrayOfQuadrangles::~Handle_Graphic3d_ArrayOfQuadrangles %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic3d_ArrayOfQuadrangles {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic3d_HSetOfGroup;
class Handle_Graphic3d_HSetOfGroup : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Graphic3d_HSetOfGroup();
		%feature("autodoc", "1");
		Handle_Graphic3d_HSetOfGroup(const Handle_Graphic3d_HSetOfGroup &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_HSetOfGroup(const Graphic3d_HSetOfGroup *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_HSetOfGroup & operator=(const Handle_Graphic3d_HSetOfGroup &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_HSetOfGroup & operator=(const Graphic3d_HSetOfGroup *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_HSetOfGroup const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic3d_HSetOfGroup {
	Graphic3d_HSetOfGroup* GetObject() {
	return (Graphic3d_HSetOfGroup*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic3d_HSetOfGroup::~Handle_Graphic3d_HSetOfGroup %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic3d_HSetOfGroup {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic3d_ArrayOfSegments;
class Handle_Graphic3d_ArrayOfSegments : public Handle_Graphic3d_ArrayOfPrimitives {
	public:
		%feature("autodoc", "1");
		Handle_Graphic3d_ArrayOfSegments();
		%feature("autodoc", "1");
		Handle_Graphic3d_ArrayOfSegments(const Handle_Graphic3d_ArrayOfSegments &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_ArrayOfSegments(const Graphic3d_ArrayOfSegments *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_ArrayOfSegments & operator=(const Handle_Graphic3d_ArrayOfSegments &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_ArrayOfSegments & operator=(const Graphic3d_ArrayOfSegments *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_ArrayOfSegments const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic3d_ArrayOfSegments {
	Graphic3d_ArrayOfSegments* GetObject() {
	return (Graphic3d_ArrayOfSegments*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic3d_ArrayOfSegments::~Handle_Graphic3d_ArrayOfSegments %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic3d_ArrayOfSegments {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic3d_Structure;
class Handle_Graphic3d_Structure : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Graphic3d_Structure();
		%feature("autodoc", "1");
		Handle_Graphic3d_Structure(const Handle_Graphic3d_Structure &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_Structure(const Graphic3d_Structure *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_Structure & operator=(const Handle_Graphic3d_Structure &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_Structure & operator=(const Graphic3d_Structure *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_Structure const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic3d_Structure {
	Graphic3d_Structure* GetObject() {
	return (Graphic3d_Structure*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic3d_Structure::~Handle_Graphic3d_Structure %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic3d_Structure {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic3d_StructureDefinitionError;
class Handle_Graphic3d_StructureDefinitionError : public Handle_Standard_OutOfRange {
	public:
		%feature("autodoc", "1");
		Handle_Graphic3d_StructureDefinitionError();
		%feature("autodoc", "1");
		Handle_Graphic3d_StructureDefinitionError(const Handle_Graphic3d_StructureDefinitionError &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_StructureDefinitionError(const Graphic3d_StructureDefinitionError *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_StructureDefinitionError & operator=(const Handle_Graphic3d_StructureDefinitionError &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_StructureDefinitionError & operator=(const Graphic3d_StructureDefinitionError *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_StructureDefinitionError const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic3d_StructureDefinitionError {
	Graphic3d_StructureDefinitionError* GetObject() {
	return (Graphic3d_StructureDefinitionError*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic3d_StructureDefinitionError::~Handle_Graphic3d_StructureDefinitionError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic3d_StructureDefinitionError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic3d_PickIdDefinitionError;
class Handle_Graphic3d_PickIdDefinitionError : public Handle_Standard_OutOfRange {
	public:
		%feature("autodoc", "1");
		Handle_Graphic3d_PickIdDefinitionError();
		%feature("autodoc", "1");
		Handle_Graphic3d_PickIdDefinitionError(const Handle_Graphic3d_PickIdDefinitionError &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_PickIdDefinitionError(const Graphic3d_PickIdDefinitionError *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_PickIdDefinitionError & operator=(const Handle_Graphic3d_PickIdDefinitionError &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_PickIdDefinitionError & operator=(const Graphic3d_PickIdDefinitionError *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_PickIdDefinitionError const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic3d_PickIdDefinitionError {
	Graphic3d_PickIdDefinitionError* GetObject() {
	return (Graphic3d_PickIdDefinitionError*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic3d_PickIdDefinitionError::~Handle_Graphic3d_PickIdDefinitionError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic3d_PickIdDefinitionError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic3d_HArray1OfBytes;
class Handle_Graphic3d_HArray1OfBytes : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Graphic3d_HArray1OfBytes();
		%feature("autodoc", "1");
		Handle_Graphic3d_HArray1OfBytes(const Handle_Graphic3d_HArray1OfBytes &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_HArray1OfBytes(const Graphic3d_HArray1OfBytes *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_HArray1OfBytes & operator=(const Handle_Graphic3d_HArray1OfBytes &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_HArray1OfBytes & operator=(const Graphic3d_HArray1OfBytes *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_HArray1OfBytes const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic3d_HArray1OfBytes {
	Graphic3d_HArray1OfBytes* GetObject() {
	return (Graphic3d_HArray1OfBytes*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic3d_HArray1OfBytes::~Handle_Graphic3d_HArray1OfBytes %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic3d_HArray1OfBytes {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic3d_SequenceNodeOfSequenceOfGroup;
class Handle_Graphic3d_SequenceNodeOfSequenceOfGroup : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_Graphic3d_SequenceNodeOfSequenceOfGroup();
		%feature("autodoc", "1");
		Handle_Graphic3d_SequenceNodeOfSequenceOfGroup(const Handle_Graphic3d_SequenceNodeOfSequenceOfGroup &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_SequenceNodeOfSequenceOfGroup(const Graphic3d_SequenceNodeOfSequenceOfGroup *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_SequenceNodeOfSequenceOfGroup & operator=(const Handle_Graphic3d_SequenceNodeOfSequenceOfGroup &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_SequenceNodeOfSequenceOfGroup & operator=(const Graphic3d_SequenceNodeOfSequenceOfGroup *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_SequenceNodeOfSequenceOfGroup const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic3d_SequenceNodeOfSequenceOfGroup {
	Graphic3d_SequenceNodeOfSequenceOfGroup* GetObject() {
	return (Graphic3d_SequenceNodeOfSequenceOfGroup*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic3d_SequenceNodeOfSequenceOfGroup::~Handle_Graphic3d_SequenceNodeOfSequenceOfGroup %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic3d_SequenceNodeOfSequenceOfGroup {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic3d_MaterialDefinitionError;
class Handle_Graphic3d_MaterialDefinitionError : public Handle_Standard_OutOfRange {
	public:
		%feature("autodoc", "1");
		Handle_Graphic3d_MaterialDefinitionError();
		%feature("autodoc", "1");
		Handle_Graphic3d_MaterialDefinitionError(const Handle_Graphic3d_MaterialDefinitionError &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_MaterialDefinitionError(const Graphic3d_MaterialDefinitionError *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_MaterialDefinitionError & operator=(const Handle_Graphic3d_MaterialDefinitionError &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_MaterialDefinitionError & operator=(const Graphic3d_MaterialDefinitionError *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_MaterialDefinitionError const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic3d_MaterialDefinitionError {
	Graphic3d_MaterialDefinitionError* GetObject() {
	return (Graphic3d_MaterialDefinitionError*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic3d_MaterialDefinitionError::~Handle_Graphic3d_MaterialDefinitionError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic3d_MaterialDefinitionError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic3d_ListNodeOfListOfPArray;
class Handle_Graphic3d_ListNodeOfListOfPArray : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_Graphic3d_ListNodeOfListOfPArray();
		%feature("autodoc", "1");
		Handle_Graphic3d_ListNodeOfListOfPArray(const Handle_Graphic3d_ListNodeOfListOfPArray &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_ListNodeOfListOfPArray(const Graphic3d_ListNodeOfListOfPArray *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_ListNodeOfListOfPArray & operator=(const Handle_Graphic3d_ListNodeOfListOfPArray &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_ListNodeOfListOfPArray & operator=(const Graphic3d_ListNodeOfListOfPArray *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_ListNodeOfListOfPArray const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic3d_ListNodeOfListOfPArray {
	Graphic3d_ListNodeOfListOfPArray* GetObject() {
	return (Graphic3d_ListNodeOfListOfPArray*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic3d_ListNodeOfListOfPArray::~Handle_Graphic3d_ListNodeOfListOfPArray %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic3d_ListNodeOfListOfPArray {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Graphic3d_Texture2Dplane;
class Handle_Graphic3d_Texture2Dplane : public Handle_Graphic3d_Texture2D {
	public:
		%feature("autodoc", "1");
		Handle_Graphic3d_Texture2Dplane();
		%feature("autodoc", "1");
		Handle_Graphic3d_Texture2Dplane(const Handle_Graphic3d_Texture2Dplane &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_Texture2Dplane(const Graphic3d_Texture2Dplane *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_Texture2Dplane & operator=(const Handle_Graphic3d_Texture2Dplane &aHandle);
		%feature("autodoc", "1");
		Handle_Graphic3d_Texture2Dplane & operator=(const Graphic3d_Texture2Dplane *anItem);
		%feature("autodoc", "1");
		Handle_Graphic3d_Texture2Dplane const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Graphic3d_Texture2Dplane {
	Graphic3d_Texture2Dplane* GetObject() {
	return (Graphic3d_Texture2Dplane*)$self->Access();
	}
};
%feature("shadow") Handle_Graphic3d_Texture2Dplane::~Handle_Graphic3d_Texture2Dplane %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Graphic3d_Texture2Dplane {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic3d_CBitFields20;
class Graphic3d_CBitFields20 {
	public:
		%feature("autodoc", "1");
		Graphic3d_CBitFields20();

};
%feature("shadow") Graphic3d_CBitFields20::~Graphic3d_CBitFields20 %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic3d_CBitFields20 {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic3d_ArrayOfPrimitives;
class Graphic3d_ArrayOfPrimitives : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Integer AddVertex(const gp_Pnt &aVertice);
		%feature("autodoc", "1");
		Standard_Integer AddVertex(const Standard_Real X, const Standard_Real Y, const Standard_Real Z);
		%feature("autodoc", "1");
		Standard_Integer AddVertex(const gp_Pnt &aVertice, const Quantity_Color &aColor);
		%feature("autodoc", "1");
		Standard_Integer AddVertex(const gp_Pnt &aVertice, const gp_Dir &aNormal);
		%feature("autodoc", "1");
		Standard_Integer AddVertex(const Standard_Real X, const Standard_Real Y, const Standard_Real Z, const Standard_Real NX, const Standard_Real NY, const Standard_Real NZ);
		%feature("autodoc", "1");
		Standard_Integer AddVertex(const gp_Pnt &aVertice, const gp_Dir &aNormal, const Quantity_Color &aColor);
		%feature("autodoc", "1");
		Standard_Integer AddVertex(const gp_Pnt &aVertice, const gp_Pnt2d &aTexel);
		%feature("autodoc", "1");
		Standard_Integer AddVertex(const Standard_Real X, const Standard_Real Y, const Standard_Real Z, const Standard_Real TX, const Standard_Real TY);
		%feature("autodoc", "1");
		Standard_Integer AddVertex(const gp_Pnt &aVertice, const gp_Dir &aNormal, const gp_Pnt2d &aTexel);
		%feature("autodoc", "1");
		Standard_Integer AddVertex(const Standard_Real X, const Standard_Real Y, const Standard_Real Z, const Standard_Real NX, const Standard_Real NY, const Standard_Real NZ, const Standard_Real TX, const Standard_Real TY);
		%feature("autodoc", "1");
		Standard_Integer AddBound(const Standard_Integer edgeNumber);
		%feature("autodoc", "1");
		Standard_Integer AddBound(const Standard_Integer edgeNumber, const Quantity_Color &aBColor);
		%feature("autodoc", "1");
		Standard_Integer AddBound(const Standard_Integer edgeNumber, const Standard_Real R, const Standard_Real G, const Standard_Real B);
		%feature("autodoc", "1");
		Standard_Integer AddEdge(const Standard_Integer vertexIndex, const Standard_Boolean isVisible=1);
		%feature("autodoc", "1");
		Standard_Boolean Orientate(const gp_Dir &aNormal);
		%feature("autodoc", "1");
		Standard_Boolean Orientate(const Standard_Integer aBoundIndex, const gp_Dir &aNormal);
		%feature("autodoc", "1");
		void SetVertice(const Standard_Integer anIndex, const gp_Pnt &aVertice);
		%feature("autodoc", "1");
		void SetVertice(const Standard_Integer anIndex, const Standard_Real X, const Standard_Real Y, const Standard_Real Z);
		%feature("autodoc", "1");
		void SetVertexColor(const Standard_Integer anIndex, const Quantity_Color &aColor);
		%feature("autodoc", "1");
		void SetVertexColor(const Standard_Integer anIndex, const Standard_Real R, const Standard_Real G, const Standard_Real B);
		%feature("autodoc", "1");
		void SetVertexNormal(const Standard_Integer anIndex, const gp_Dir &aNormal);
		%feature("autodoc", "1");
		void SetVertexNormal(const Standard_Integer anIndex, const Standard_Real NX, const Standard_Real NY, const Standard_Real NZ);
		%feature("autodoc", "1");
		void SetVertexTexel(const Standard_Integer anIndex, const gp_Pnt2d &aTexel);
		%feature("autodoc", "1");
		void SetVertexTexel(const Standard_Integer anIndex, const Standard_Real TX, const Standard_Real TY);
		%feature("autodoc", "1");
		void SetBoundColor(const Standard_Integer anIndex, const Quantity_Color &aColor);
		%feature("autodoc", "1");
		void SetBoundColor(const Standard_Integer anIndex, const Standard_Real R, const Standard_Real G, const Standard_Real B);
		%feature("autodoc", "1");
		Graphic3d_PrimitiveArray Array() const;
		%feature("autodoc", "1");
		Graphic3d_TypeOfPrimitiveArray Type() const;
		%feature("autodoc", "1");
		char * StringType() const;
		%feature("autodoc", "1");
		Standard_Boolean HasVertexNormals() const;
		%feature("autodoc", "1");
		Standard_Boolean HasVertexColors() const;
		%feature("autodoc", "1");
		Standard_Boolean HasVertexTexels() const;
		%feature("autodoc", "1");
		Standard_Integer VertexNumber() const;
		%feature("autodoc", "1");
		gp_Pnt Vertice(const Standard_Integer aRank) const;
		%feature("autodoc","Vertice(Standard_Integer anIndex) -> [Standard_Real, Standard_Real, Standard_Real]");

		void Vertice(const Standard_Integer anIndex, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Quantity_Color VertexColor(const Standard_Integer aRank) const;
		%feature("autodoc","VertexColor(Standard_Integer anIndex) -> [Standard_Real, Standard_Real, Standard_Real]");

		void VertexColor(const Standard_Integer anIndex, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		gp_Dir VertexNormal(const Standard_Integer aRank) const;
		%feature("autodoc","VertexNormal(Standard_Integer anIndex) -> [Standard_Real, Standard_Real, Standard_Real]");

		void VertexNormal(const Standard_Integer anIndex, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		gp_Pnt2d VertexTexel(const Standard_Integer aRank) const;
		%feature("autodoc","VertexTexel(Standard_Integer anIndex) -> [Standard_Real, Standard_Real]");

		void VertexTexel(const Standard_Integer anIndex, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Boolean HasEdgeInfos() const;
		%feature("autodoc", "1");
		Standard_Integer EdgeNumber() const;
		%feature("autodoc", "1");
		Standard_Integer Edge(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		Standard_Boolean EdgeIsVisible(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		Standard_Boolean HasBoundColors() const;
		%feature("autodoc", "1");
		Standard_Integer BoundNumber() const;
		%feature("autodoc", "1");
		Standard_Integer Bound(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		Quantity_Color BoundColor(const Standard_Integer aRank) const;
		%feature("autodoc","BoundColor(Standard_Integer anIndex) -> [Standard_Real, Standard_Real, Standard_Real]");

		void BoundColor(const Standard_Integer anIndex, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Integer ItemNumber() const;
		%feature("autodoc", "1");
		void Enable();
		%feature("autodoc", "1");
		void Disable();
		%feature("autodoc", "1");
		Standard_Boolean IsEnable();
		%feature("autodoc", "1");
		Standard_Boolean IsValid();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic3d_ArrayOfPrimitives {
	Handle_Graphic3d_ArrayOfPrimitives GetHandle() {
	return *(Handle_Graphic3d_ArrayOfPrimitives*) &$self;
	}
};
%extend Graphic3d_ArrayOfPrimitives {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic3d_ArrayOfPrimitives::~Graphic3d_ArrayOfPrimitives %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic3d_ArrayOfPrimitives {
	void _kill_pointed() {
		delete $self;
	}
};
%extend Graphic3d_ArrayOfPrimitives {
	Graphic3d_ArrayOfPrimitives () {}
};


%nodefaultctor Graphic3d_ArrayOfQuadrangleStrips;
class Graphic3d_ArrayOfQuadrangleStrips : public Graphic3d_ArrayOfPrimitives {
	public:
		%feature("autodoc", "1");
		Graphic3d_ArrayOfQuadrangleStrips(const Standard_Integer maxVertexs, const Standard_Integer maxStrips=0, const Standard_Boolean hasVNormals=0, const Standard_Boolean hasVColors=0, const Standard_Boolean hasSColors=0, const Standard_Boolean hasTexels=0);

};
%extend Graphic3d_ArrayOfQuadrangleStrips {
	Handle_Graphic3d_ArrayOfQuadrangleStrips GetHandle() {
	return *(Handle_Graphic3d_ArrayOfQuadrangleStrips*) &$self;
	}
};
%extend Graphic3d_ArrayOfQuadrangleStrips {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic3d_ArrayOfQuadrangleStrips::~Graphic3d_ArrayOfQuadrangleStrips %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic3d_ArrayOfQuadrangleStrips {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic3d_VectorError;
class Graphic3d_VectorError : public Standard_OutOfRange {
	public:
		%feature("autodoc", "1");
		Graphic3d_VectorError();
		%feature("autodoc", "1");
		Graphic3d_VectorError(const char * AString);
		%feature("autodoc", "1");
		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		Handle_Graphic3d_VectorError NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic3d_VectorError {
	Handle_Graphic3d_VectorError GetHandle() {
	return *(Handle_Graphic3d_VectorError*) &$self;
	}
};
%extend Graphic3d_VectorError {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic3d_VectorError::~Graphic3d_VectorError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic3d_VectorError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic3d_Structure;
class Graphic3d_Structure : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Graphic3d_Structure(const Handle_Graphic3d_StructureManager &AManager);
		%feature("autodoc", "1");
		virtual		void Clear(const Standard_Boolean WithDestruction=1);
		%feature("autodoc", "1");
		virtual		void Destroy();
		%feature("autodoc", "1");
		virtual		void Display();
		%feature("autodoc", "1");
		void Display(const Standard_Integer Priority);
		%feature("autodoc", "1");
		Standard_Integer DisplayPriority() const;
		%feature("autodoc", "1");
		virtual		void Erase();
		%feature("autodoc", "1");
		void Highlight(const Aspect_TypeOfHighlightMethod Method);
		%feature("autodoc", "1");
		void Remove();
		%feature("autodoc", "1");
		void SetHighlightColor(const Quantity_Color &AColor);
		%feature("autodoc", "1");
		void SetInfiniteState(const Standard_Boolean AFlag);
		%feature("autodoc", "1");
		void SetDisplayPriority(const Standard_Integer Priority);
		%feature("autodoc", "1");
		void ResetDisplayPriority();
		%feature("autodoc", "1");
		void SetPick(const Standard_Boolean AValue);
		%feature("autodoc", "1");
		void SetPrimitivesAspect(const Handle_Graphic3d_AspectLine3d &CTX);
		%feature("autodoc", "1");
		void SetPrimitivesAspect(const Handle_Graphic3d_AspectFillArea3d &CTX);
		%feature("autodoc", "1");
		void SetPrimitivesAspect(const Handle_Graphic3d_AspectText3d &CTX);
		%feature("autodoc", "1");
		void SetPrimitivesAspect(const Handle_Graphic3d_AspectMarker3d &CTX);
		%feature("autodoc", "1");
		void SetVisible(const Standard_Boolean AValue);
		%feature("autodoc", "1");
		void SetManager(const Handle_Graphic3d_StructureManager &AManager, const Standard_Boolean WithPropagation=0);
		%feature("autodoc", "1");
		virtual		void SetVisual(const Graphic3d_TypeOfStructure AVisual);
		%feature("autodoc", "1");
		void SetZoomLimit(const Standard_Real LimitInf, const Standard_Real LimitSup);
		%feature("autodoc", "1");
		void UnHighlight();
		%feature("autodoc", "1");
		virtual		Handle_Graphic3d_Structure Compute(const Handle_Graphic3d_DataStructureManager &aProjector);
		%feature("autodoc", "1");
		virtual		Handle_Graphic3d_Structure Compute(const Handle_Graphic3d_DataStructureManager &aProjector, const TColStd_Array2OfReal &AMatrix);
		%feature("autodoc", "1");
		virtual		void Compute(const Handle_Graphic3d_DataStructureManager &aProjector, Handle_Graphic3d_Structure & aStructure);
		%feature("autodoc", "1");
		virtual		void Compute(const Handle_Graphic3d_DataStructureManager &aProjector, const TColStd_Array2OfReal &AMatrix, Handle_Graphic3d_Structure & aStructure);
		%feature("autodoc", "1");
		void ReCompute();
		%feature("autodoc", "1");
		void ReCompute(const Handle_Graphic3d_DataStructureManager &aProjector);
		%feature("autodoc", "1");
		Standard_Boolean ContainsFacet() const;
		%feature("autodoc", "1");
		Standard_Boolean Exploration(const Standard_Integer ElementNumber, Graphic3d_VertexNC & AVertex, Graphic3d_Vector & AVector) const;
		%feature("autodoc", "1");
		Handle_Graphic3d_AspectFillArea3d FillArea3dAspect() const;
		%feature("autodoc", "1");
		Handle_Graphic3d_HSetOfGroup Groups() const;
		%feature("autodoc", "1");
		Standard_Integer NumberOfGroups() const;
		%feature("autodoc", "1");
		Quantity_Color HighlightColor() const;
		%feature("autodoc", "1");
		Standard_Boolean IsDeleted() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsDisplayed() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Boolean IsInfinite() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsHighlighted() const;
		%feature("autodoc", "1");
		Standard_Boolean IsSelectable() const;
		%feature("autodoc", "1");
		Standard_Boolean IsRotated() const;
		%feature("autodoc", "1");
		Standard_Boolean IsTransformed() const;
		%feature("autodoc", "1");
		Standard_Boolean IsVisible() const;
		%feature("autodoc", "1");
		Handle_Graphic3d_AspectLine3d Line3dAspect() const;
		%feature("autodoc", "1");
		Handle_Graphic3d_AspectMarker3d Marker3dAspect() const;
		%feature("autodoc","MinMaxValues() -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real]");

		void MinMaxValues(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		void PrimitivesAspect(Handle_Graphic3d_AspectLine3d & CTXL, Handle_Graphic3d_AspectText3d & CTXT, Handle_Graphic3d_AspectMarker3d & CTXM, Handle_Graphic3d_AspectFillArea3d & CTXF) const;
		%feature("autodoc", "1");
		Handle_Graphic3d_AspectText3d Text3dAspect() const;
		%feature("autodoc", "1");
		Graphic3d_TypeOfPrimitive Type(const Standard_Integer ElementNumber) const;
		%feature("autodoc", "1");
		Graphic3d_TypeOfStructure Visual() const;
		%feature("autodoc", "1");
		Standard_Boolean AcceptConnection(const Handle_Graphic3d_Structure &AStructure1, const Handle_Graphic3d_Structure &AStructure2, const Graphic3d_TypeOfConnection AType);
		%feature("autodoc", "1");
		void Ancestors(Graphic3d_MapOfStructure & SG) const;
		%feature("autodoc", "1");
		void Connect(const Handle_Graphic3d_Structure &AStructure, const Graphic3d_TypeOfConnection AType, const Standard_Boolean WithCheck=0);
		%feature("autodoc", "1");
		void Descendants(Graphic3d_MapOfStructure & SG) const;
		%feature("autodoc", "1");
		void Disconnect(const Handle_Graphic3d_Structure &AStructure);
		%feature("autodoc", "1");
		void DisconnectAll(const Graphic3d_TypeOfConnection AType);
		%feature("autodoc", "1");
		void Network(const Handle_Graphic3d_Structure &AStructure, const Graphic3d_TypeOfConnection AType, Graphic3d_MapOfStructure & ASet);
		%feature("autodoc", "1");
		void SetOwner(const Standard_Address Owner);
		%feature("autodoc", "1");
		Standard_Address Owner() const;
		%feature("autodoc", "1");
		void SetHLRValidation(const Standard_Boolean AFlag);
		%feature("autodoc", "1");
		Standard_Boolean HLRValidation() const;
		%feature("autodoc", "1");
		Graphic3d_TypeOfComposition Composition() const;
		%feature("autodoc", "1");
		void SetTransform(const TColStd_Array2OfReal &AMatrix, const Graphic3d_TypeOfComposition AType);
		%feature("autodoc", "1");
		void Transform(TColStd_Array2OfReal & AMatrix) const;
		%feature("autodoc", "1");
		void SetTransformPersistence(const Graphic3d_TransModeFlags &AFlag, const gp_Pnt &APoint);
		%feature("autodoc", "1");
		void SetTransformPersistence(const Graphic3d_TransModeFlags &AFlag);
		%feature("autodoc", "1");
		Graphic3d_TransModeFlags TransformPersistenceMode() const;
		%feature("autodoc", "1");
		gp_Pnt TransformPersistencePoint() const;
		%feature("autodoc", "1");
		Graphic3d_TypeOfStructure ComputeVisual() const;
		%feature("autodoc", "1");
		void Exploration() const;
		%feature("autodoc", "1");
		void GraphicClear(const Standard_Boolean WithDestruction);
		%feature("autodoc", "1");
		void GraphicConnect(const Handle_Graphic3d_Structure &ADaughter);
		%feature("autodoc", "1");
		void GraphicDisconnect(const Handle_Graphic3d_Structure &ADaughter);
		%feature("autodoc", "1");
		void GraphicHighlight(const Aspect_TypeOfHighlightMethod Method);
		%feature("autodoc", "1");
		void GraphicTransform(const TColStd_Array2OfReal &AMatrix);
		%feature("autodoc", "1");
		void GraphicUnHighlight();
		%feature("autodoc", "1");
		Standard_Integer Identification() const;
		%feature("autodoc", "1");
		virtual		void Plot(const Handle_Graphic3d_Plotter &aPlotter);
		%feature("autodoc", "1");
		void PrintNetwork(const Handle_Graphic3d_Structure &AStructure, const Graphic3d_TypeOfConnection AType);
		%feature("autodoc", "1");
		void Remove(const Standard_Address APtr, const Graphic3d_TypeOfConnection AType);
		%feature("autodoc", "1");
		void SetComputeVisual(const Graphic3d_TypeOfStructure AVisual);
		%feature("autodoc","Transforms(const ATrsf, Standard_Real X, Standard_Real Y, Standard_Real Z) -> [Standard_Real, Standard_Real, Standard_Real]");

		void Transforms(const TColStd_Array2OfReal &ATrsf, const Standard_Real X, const Standard_Real Y, const Standard_Real Z, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		Graphic3d_Vector Transforms(const TColStd_Array2OfReal &ATrsf, const Graphic3d_Vector &Coord);
		%feature("autodoc", "1");
		Graphic3d_Vertex Transforms(const TColStd_Array2OfReal &ATrsf, const Graphic3d_Vertex &Coord);
		%feature("autodoc", "1");
		Standard_Address CStructure() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic3d_Structure {
	Handle_Graphic3d_Structure GetHandle() {
	return *(Handle_Graphic3d_Structure*) &$self;
	}
};
%extend Graphic3d_Structure {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic3d_Structure::~Graphic3d_Structure %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic3d_Structure {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic3d_TextureRoot;
class Graphic3d_TextureRoot : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		void Destroy() const;
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		const OSD_Path & Path() const;
		%feature("autodoc", "1");
		Graphic3d_TypeOfTexture Type() const;
		%feature("autodoc", "1");
		void LoadTexture(const Handle_AlienImage_AlienImage &anImage);
		%feature("autodoc", "1");
		Standard_Integer TextureId() const;
		%feature("autodoc", "1");
		Handle_AlienImage_AlienImage Image() const;
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal GetTexUpperBounds() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic3d_TextureRoot {
	Handle_Graphic3d_TextureRoot GetHandle() {
	return *(Handle_Graphic3d_TextureRoot*) &$self;
	}
};
%extend Graphic3d_TextureRoot {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic3d_TextureRoot::~Graphic3d_TextureRoot %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic3d_TextureRoot {
	void _kill_pointed() {
		delete $self;
	}
};
%extend Graphic3d_TextureRoot {
	Graphic3d_TextureRoot () {}
};


%nodefaultctor Graphic3d_TextureEnv;
class Graphic3d_TextureEnv : public Graphic3d_TextureRoot {
	public:
		%feature("autodoc", "1");
		Graphic3d_TextureEnv(const Handle_Graphic3d_StructureManager &SM, const char * aFileName);
		%feature("autodoc", "1");
		Graphic3d_TextureEnv(const Handle_Graphic3d_StructureManager &SM, const Graphic3d_NameOfTextureEnv aName);
		%feature("autodoc", "1");
		Graphic3d_NameOfTextureEnv Name() const;
		%feature("autodoc", "1");
		Standard_Integer NumberOfTextures();
		%feature("autodoc", "1");
		char * TextureName(const Standard_Integer aRank);

};
%extend Graphic3d_TextureEnv {
	Handle_Graphic3d_TextureEnv GetHandle() {
	return *(Handle_Graphic3d_TextureEnv*) &$self;
	}
};
%extend Graphic3d_TextureEnv {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic3d_TextureEnv::~Graphic3d_TextureEnv %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic3d_TextureEnv {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic3d_Array1OfVertexNC;
class Graphic3d_Array1OfVertexNC {
	public:
		%feature("autodoc", "1");
		Graphic3d_Array1OfVertexNC(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		Graphic3d_Array1OfVertexNC(const Graphic3d_VertexNC &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Graphic3d_VertexNC &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const Graphic3d_Array1OfVertexNC & Assign(const Graphic3d_Array1OfVertexNC &Other);
		%feature("autodoc", "1");
		const Graphic3d_Array1OfVertexNC & operator=(const Graphic3d_Array1OfVertexNC &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Graphic3d_VertexNC &Value);
		%feature("autodoc", "1");
		const Graphic3d_VertexNC & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Graphic3d_VertexNC & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Graphic3d_VertexNC & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Graphic3d_VertexNC & operator()(const Standard_Integer Index);

};
%feature("shadow") Graphic3d_Array1OfVertexNC::~Graphic3d_Array1OfVertexNC %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic3d_Array1OfVertexNC {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic3d_Array2OfVertex;
class Graphic3d_Array2OfVertex {
	public:
		%feature("autodoc", "1");
		Graphic3d_Array2OfVertex(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		Graphic3d_Array2OfVertex(const Graphic3d_Vertex &Item, const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		void Init(const Graphic3d_Vertex &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		const Graphic3d_Array2OfVertex & Assign(const Graphic3d_Array2OfVertex &Other);
		%feature("autodoc", "1");
		const Graphic3d_Array2OfVertex & operator=(const Graphic3d_Array2OfVertex &Other);
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
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const Graphic3d_Vertex &Value);
		%feature("autodoc", "1");
		const Graphic3d_Vertex & Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		const Graphic3d_Vertex & operator()(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		Graphic3d_Vertex & ChangeValue(const Standard_Integer Row, const Standard_Integer Col);
		%feature("autodoc", "1");
		Graphic3d_Vertex & operator()(const Standard_Integer Row, const Standard_Integer Col);

};
%feature("shadow") Graphic3d_Array2OfVertex::~Graphic3d_Array2OfVertex %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic3d_Array2OfVertex {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic3d_InitialisationError;
class Graphic3d_InitialisationError : public Standard_OutOfRange {
	public:
		%feature("autodoc", "1");
		Graphic3d_InitialisationError();
		%feature("autodoc", "1");
		Graphic3d_InitialisationError(const char * AString);
		%feature("autodoc", "1");
		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		Handle_Graphic3d_InitialisationError NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic3d_InitialisationError {
	Handle_Graphic3d_InitialisationError GetHandle() {
	return *(Handle_Graphic3d_InitialisationError*) &$self;
	}
};
%extend Graphic3d_InitialisationError {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic3d_InitialisationError::~Graphic3d_InitialisationError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic3d_InitialisationError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic3d_StdMapNodeOfMapOfStructure;
class Graphic3d_StdMapNodeOfMapOfStructure : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Graphic3d_StdMapNodeOfMapOfStructure(const Handle_Graphic3d_Structure &K, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_Graphic3d_Structure & Key() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic3d_StdMapNodeOfMapOfStructure {
	Handle_Graphic3d_StdMapNodeOfMapOfStructure GetHandle() {
	return *(Handle_Graphic3d_StdMapNodeOfMapOfStructure*) &$self;
	}
};
%extend Graphic3d_StdMapNodeOfMapOfStructure {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic3d_StdMapNodeOfMapOfStructure::~Graphic3d_StdMapNodeOfMapOfStructure %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic3d_StdMapNodeOfMapOfStructure {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic3d_ListIteratorOfListOfShortReal;
class Graphic3d_ListIteratorOfListOfShortReal {
	public:
		%feature("autodoc", "1");
		Graphic3d_ListIteratorOfListOfShortReal();
		%feature("autodoc", "1");
		Graphic3d_ListIteratorOfListOfShortReal(const Graphic3d_ListOfShortReal &L);
		%feature("autodoc", "1");
		void Initialize(const Graphic3d_ListOfShortReal &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		Standard_ShortReal & Value() const;

};
%feature("shadow") Graphic3d_ListIteratorOfListOfShortReal::~Graphic3d_ListIteratorOfListOfShortReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic3d_ListIteratorOfListOfShortReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic3d_AspectTextDefinitionError;
class Graphic3d_AspectTextDefinitionError : public Standard_OutOfRange {
	public:
		%feature("autodoc", "1");
		Graphic3d_AspectTextDefinitionError();
		%feature("autodoc", "1");
		Graphic3d_AspectTextDefinitionError(const char * AString);
		%feature("autodoc", "1");
		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		Handle_Graphic3d_AspectTextDefinitionError NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic3d_AspectTextDefinitionError {
	Handle_Graphic3d_AspectTextDefinitionError GetHandle() {
	return *(Handle_Graphic3d_AspectTextDefinitionError*) &$self;
	}
};
%extend Graphic3d_AspectTextDefinitionError {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic3d_AspectTextDefinitionError::~Graphic3d_AspectTextDefinitionError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic3d_AspectTextDefinitionError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic3d_SequenceNodeOfSequenceOfAddress;
class Graphic3d_SequenceNodeOfSequenceOfAddress : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Graphic3d_SequenceNodeOfSequenceOfAddress(const Standard_Address &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Standard_Address & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic3d_SequenceNodeOfSequenceOfAddress {
	Handle_Graphic3d_SequenceNodeOfSequenceOfAddress GetHandle() {
	return *(Handle_Graphic3d_SequenceNodeOfSequenceOfAddress*) &$self;
	}
};
%extend Graphic3d_SequenceNodeOfSequenceOfAddress {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic3d_SequenceNodeOfSequenceOfAddress::~Graphic3d_SequenceNodeOfSequenceOfAddress %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic3d_SequenceNodeOfSequenceOfAddress {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic3d_Array1OfBytes;
class Graphic3d_Array1OfBytes {
	public:
		%feature("autodoc", "1");
		Graphic3d_Array1OfBytes(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		Graphic3d_Array1OfBytes(const Standard_Byte &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Standard_Byte &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const Graphic3d_Array1OfBytes & Assign(const Graphic3d_Array1OfBytes &Other);
		%feature("autodoc", "1");
		const Graphic3d_Array1OfBytes & operator=(const Graphic3d_Array1OfBytes &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Standard_Byte &Value);
		%feature("autodoc", "1");
		const Standard_Byte & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Standard_Byte & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Byte & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Standard_Byte & operator()(const Standard_Integer Index);

};
%feature("shadow") Graphic3d_Array1OfBytes::~Graphic3d_Array1OfBytes %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic3d_Array1OfBytes {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic3d_ListIteratorOfSetListOfSetOfGroup;
class Graphic3d_ListIteratorOfSetListOfSetOfGroup {
	public:
		%feature("autodoc", "1");
		Graphic3d_ListIteratorOfSetListOfSetOfGroup();
		%feature("autodoc", "1");
		Graphic3d_ListIteratorOfSetListOfSetOfGroup(const Graphic3d_SetListOfSetOfGroup &L);
		%feature("autodoc", "1");
		void Initialize(const Graphic3d_SetListOfSetOfGroup &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		Handle_Graphic3d_Group & Value() const;

};
%feature("shadow") Graphic3d_ListIteratorOfSetListOfSetOfGroup::~Graphic3d_ListIteratorOfSetListOfSetOfGroup %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic3d_ListIteratorOfSetListOfSetOfGroup {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic3d_PickIdDefinitionError;
class Graphic3d_PickIdDefinitionError : public Standard_OutOfRange {
	public:
		%feature("autodoc", "1");
		Graphic3d_PickIdDefinitionError();
		%feature("autodoc", "1");
		Graphic3d_PickIdDefinitionError(const char * AString);
		%feature("autodoc", "1");
		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		Handle_Graphic3d_PickIdDefinitionError NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic3d_PickIdDefinitionError {
	Handle_Graphic3d_PickIdDefinitionError GetHandle() {
	return *(Handle_Graphic3d_PickIdDefinitionError*) &$self;
	}
};
%extend Graphic3d_PickIdDefinitionError {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic3d_PickIdDefinitionError::~Graphic3d_PickIdDefinitionError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic3d_PickIdDefinitionError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic3d_SetOfGroup;
class Graphic3d_SetOfGroup {
	public:
		%feature("autodoc", "1");
		Graphic3d_SetOfGroup();
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Add(const Handle_Graphic3d_Group &T);
		%feature("autodoc", "1");
		Standard_Boolean Remove(const Handle_Graphic3d_Group &T);
		%feature("autodoc", "1");
		void Union(const Graphic3d_SetOfGroup &B);
		%feature("autodoc", "1");
		void Intersection(const Graphic3d_SetOfGroup &B);
		%feature("autodoc", "1");
		void Difference(const Graphic3d_SetOfGroup &B);
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Handle_Graphic3d_Group &T) const;
		%feature("autodoc", "1");
		Standard_Boolean IsASubset(const Graphic3d_SetOfGroup &S) const;
		%feature("autodoc", "1");
		Standard_Boolean IsAProperSubset(const Graphic3d_SetOfGroup &S) const;

};
%feature("shadow") Graphic3d_SetOfGroup::~Graphic3d_SetOfGroup %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic3d_SetOfGroup {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic3d_ArrayOfPoints;
class Graphic3d_ArrayOfPoints : public Graphic3d_ArrayOfPrimitives {
	public:
		%feature("autodoc", "1");
		Graphic3d_ArrayOfPoints(const Standard_Integer maxVertexs);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic3d_ArrayOfPoints {
	Handle_Graphic3d_ArrayOfPoints GetHandle() {
	return *(Handle_Graphic3d_ArrayOfPoints*) &$self;
	}
};
%extend Graphic3d_ArrayOfPoints {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic3d_ArrayOfPoints::~Graphic3d_ArrayOfPoints %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic3d_ArrayOfPoints {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic3d_CBitFields16;
class Graphic3d_CBitFields16 {
	public:
		%feature("autodoc", "1");
		Graphic3d_CBitFields16();

};
%feature("shadow") Graphic3d_CBitFields16::~Graphic3d_CBitFields16 %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic3d_CBitFields16 {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic3d_CBitFields8;
class Graphic3d_CBitFields8 {
	public:
		%feature("autodoc", "1");
		Graphic3d_CBitFields8();

};
%feature("shadow") Graphic3d_CBitFields8::~Graphic3d_CBitFields8 %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic3d_CBitFields8 {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic3d_PlotterDefinitionError;
class Graphic3d_PlotterDefinitionError : public Standard_OutOfRange {
	public:
		%feature("autodoc", "1");
		Graphic3d_PlotterDefinitionError();
		%feature("autodoc", "1");
		Graphic3d_PlotterDefinitionError(const char * AString);
		%feature("autodoc", "1");
		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		Handle_Graphic3d_PlotterDefinitionError NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic3d_PlotterDefinitionError {
	Handle_Graphic3d_PlotterDefinitionError GetHandle() {
	return *(Handle_Graphic3d_PlotterDefinitionError*) &$self;
	}
};
%extend Graphic3d_PlotterDefinitionError {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic3d_PlotterDefinitionError::~Graphic3d_PlotterDefinitionError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic3d_PlotterDefinitionError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic3d_TextureMap;
class Graphic3d_TextureMap : public Graphic3d_TextureRoot {
	public:
		%feature("autodoc", "1");
		void EnableSmooth();
		%feature("autodoc", "1");
		Standard_Boolean IsSmoothed() const;
		%feature("autodoc", "1");
		void DisableSmooth();
		%feature("autodoc", "1");
		void EnableModulate();
		%feature("autodoc", "1");
		void DisableModulate();
		%feature("autodoc", "1");
		Standard_Boolean IsModulate() const;
		%feature("autodoc", "1");
		void EnableRepeat();
		%feature("autodoc", "1");
		void DisableRepeat();
		%feature("autodoc", "1");
		Standard_Boolean IsRepeat() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic3d_TextureMap {
	Handle_Graphic3d_TextureMap GetHandle() {
	return *(Handle_Graphic3d_TextureMap*) &$self;
	}
};
%extend Graphic3d_TextureMap {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic3d_TextureMap::~Graphic3d_TextureMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic3d_TextureMap {
	void _kill_pointed() {
		delete $self;
	}
};
%extend Graphic3d_TextureMap {
	Graphic3d_TextureMap () {}
};


%nodefaultctor Graphic3d_ListOfPArray;
class Graphic3d_ListOfPArray {
	public:
		%feature("autodoc", "1");
		Graphic3d_ListOfPArray();
		%feature("autodoc", "1");
		void Assign(const Graphic3d_ListOfPArray &Other);
		%feature("autodoc", "1");
		void operator=(const Graphic3d_ListOfPArray &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const Handle_Graphic3d_ArrayOfPrimitives &I);
		%feature("autodoc", "1");
		void Prepend(const Handle_Graphic3d_ArrayOfPrimitives &I, Graphic3d_ListIteratorOfListOfPArray & theIt);
		%feature("autodoc", "1");
		void Prepend(Graphic3d_ListOfPArray & Other);
		%feature("autodoc", "1");
		void Append(const Handle_Graphic3d_ArrayOfPrimitives &I);
		%feature("autodoc", "1");
		void Append(const Handle_Graphic3d_ArrayOfPrimitives &I, Graphic3d_ListIteratorOfListOfPArray & theIt);
		%feature("autodoc", "1");
		void Append(Graphic3d_ListOfPArray & Other);
		%feature("autodoc", "1");
		Handle_Graphic3d_ArrayOfPrimitives & First() const;
		%feature("autodoc", "1");
		Handle_Graphic3d_ArrayOfPrimitives & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(Graphic3d_ListIteratorOfListOfPArray & It);
		%feature("autodoc", "1");
		void InsertBefore(const Handle_Graphic3d_ArrayOfPrimitives &I, Graphic3d_ListIteratorOfListOfPArray & It);
		%feature("autodoc", "1");
		void InsertBefore(Graphic3d_ListOfPArray & Other, Graphic3d_ListIteratorOfListOfPArray & It);
		%feature("autodoc", "1");
		void InsertAfter(const Handle_Graphic3d_ArrayOfPrimitives &I, Graphic3d_ListIteratorOfListOfPArray & It);
		%feature("autodoc", "1");
		void InsertAfter(Graphic3d_ListOfPArray & Other, Graphic3d_ListIteratorOfListOfPArray & It);

};
%feature("shadow") Graphic3d_ListOfPArray::~Graphic3d_ListOfPArray %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic3d_ListOfPArray {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic3d_SequenceOfAddress;
class Graphic3d_SequenceOfAddress : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		Graphic3d_SequenceOfAddress();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const Graphic3d_SequenceOfAddress & Assign(const Graphic3d_SequenceOfAddress &Other);
		%feature("autodoc", "1");
		const Graphic3d_SequenceOfAddress & operator=(const Graphic3d_SequenceOfAddress &Other);
		%feature("autodoc", "1");
		void Append(const Standard_Address &T);
		%feature("autodoc", "1");
		void Append(Graphic3d_SequenceOfAddress & S);
		%feature("autodoc", "1");
		void Prepend(const Standard_Address &T);
		%feature("autodoc", "1");
		void Prepend(Graphic3d_SequenceOfAddress & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Standard_Address &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, Graphic3d_SequenceOfAddress & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Standard_Address &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, Graphic3d_SequenceOfAddress & S);
		%feature("autodoc", "1");
		const Standard_Address & First() const;
		%feature("autodoc", "1");
		const Standard_Address & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, Graphic3d_SequenceOfAddress & S);
		%feature("autodoc", "1");
		const Standard_Address & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Standard_Address & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Standard_Address &I);
		%feature("autodoc", "1");
		Standard_Address & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Standard_Address & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") Graphic3d_SequenceOfAddress::~Graphic3d_SequenceOfAddress %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic3d_SequenceOfAddress {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic3d_HSequenceOfStructure;
class Graphic3d_HSequenceOfStructure : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Graphic3d_HSequenceOfStructure();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const Handle_Graphic3d_Structure &anItem);
		%feature("autodoc", "1");
		void Append(const Handle_Graphic3d_HSequenceOfStructure &aSequence);
		%feature("autodoc", "1");
		void Prepend(const Handle_Graphic3d_Structure &anItem);
		%feature("autodoc", "1");
		void Prepend(const Handle_Graphic3d_HSequenceOfStructure &aSequence);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_Graphic3d_Structure &anItem);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_Graphic3d_HSequenceOfStructure &aSequence);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_Graphic3d_Structure &anItem);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_Graphic3d_HSequenceOfStructure &aSequence);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer anIndex, const Standard_Integer anOtherIndex);
		%feature("autodoc", "1");
		Handle_Graphic3d_HSequenceOfStructure Split(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer anIndex, const Handle_Graphic3d_Structure &anItem);
		%feature("autodoc", "1");
		const Handle_Graphic3d_Structure & Value(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		Handle_Graphic3d_Structure & ChangeValue(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer fromIndex, const Standard_Integer toIndex);
		%feature("autodoc", "1");
		const Graphic3d_SequenceOfStructure & Sequence() const;
		%feature("autodoc", "1");
		Graphic3d_SequenceOfStructure & ChangeSequence();
		%feature("autodoc", "1");
		Handle_Graphic3d_HSequenceOfStructure ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic3d_HSequenceOfStructure {
	Handle_Graphic3d_HSequenceOfStructure GetHandle() {
	return *(Handle_Graphic3d_HSequenceOfStructure*) &$self;
	}
};
%extend Graphic3d_HSequenceOfStructure {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic3d_HSequenceOfStructure::~Graphic3d_HSequenceOfStructure %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic3d_HSequenceOfStructure {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic3d_SetListOfSetOfGroup;
class Graphic3d_SetListOfSetOfGroup {
	public:
		%feature("autodoc", "1");
		Graphic3d_SetListOfSetOfGroup();
		%feature("autodoc", "1");
		void Assign(const Graphic3d_SetListOfSetOfGroup &Other);
		%feature("autodoc", "1");
		void operator=(const Graphic3d_SetListOfSetOfGroup &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const Handle_Graphic3d_Group &I);
		%feature("autodoc", "1");
		void Prepend(const Handle_Graphic3d_Group &I, Graphic3d_ListIteratorOfSetListOfSetOfGroup & theIt);
		%feature("autodoc", "1");
		void Prepend(Graphic3d_SetListOfSetOfGroup & Other);
		%feature("autodoc", "1");
		void Append(const Handle_Graphic3d_Group &I);
		%feature("autodoc", "1");
		void Append(const Handle_Graphic3d_Group &I, Graphic3d_ListIteratorOfSetListOfSetOfGroup & theIt);
		%feature("autodoc", "1");
		void Append(Graphic3d_SetListOfSetOfGroup & Other);
		%feature("autodoc", "1");
		Handle_Graphic3d_Group & First() const;
		%feature("autodoc", "1");
		Handle_Graphic3d_Group & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(Graphic3d_ListIteratorOfSetListOfSetOfGroup & It);
		%feature("autodoc", "1");
		void InsertBefore(const Handle_Graphic3d_Group &I, Graphic3d_ListIteratorOfSetListOfSetOfGroup & It);
		%feature("autodoc", "1");
		void InsertBefore(Graphic3d_SetListOfSetOfGroup & Other, Graphic3d_ListIteratorOfSetListOfSetOfGroup & It);
		%feature("autodoc", "1");
		void InsertAfter(const Handle_Graphic3d_Group &I, Graphic3d_ListIteratorOfSetListOfSetOfGroup & It);
		%feature("autodoc", "1");
		void InsertAfter(Graphic3d_SetListOfSetOfGroup & Other, Graphic3d_ListIteratorOfSetListOfSetOfGroup & It);

};
%feature("shadow") Graphic3d_SetListOfSetOfGroup::~Graphic3d_SetListOfSetOfGroup %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic3d_SetListOfSetOfGroup {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic3d_ListNodeOfListOfShortReal;
class Graphic3d_ListNodeOfListOfShortReal : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Graphic3d_ListNodeOfListOfShortReal(const Standard_ShortReal &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Standard_ShortReal & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic3d_ListNodeOfListOfShortReal {
	Handle_Graphic3d_ListNodeOfListOfShortReal GetHandle() {
	return *(Handle_Graphic3d_ListNodeOfListOfShortReal*) &$self;
	}
};
%extend Graphic3d_ListNodeOfListOfShortReal {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic3d_ListNodeOfListOfShortReal::~Graphic3d_ListNodeOfListOfShortReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic3d_ListNodeOfListOfShortReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic3d_Array2OfVertexC;
class Graphic3d_Array2OfVertexC {
	public:
		%feature("autodoc", "1");
		Graphic3d_Array2OfVertexC(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		Graphic3d_Array2OfVertexC(const Graphic3d_VertexC &Item, const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		void Init(const Graphic3d_VertexC &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		const Graphic3d_Array2OfVertexC & Assign(const Graphic3d_Array2OfVertexC &Other);
		%feature("autodoc", "1");
		const Graphic3d_Array2OfVertexC & operator=(const Graphic3d_Array2OfVertexC &Other);
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
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const Graphic3d_VertexC &Value);
		%feature("autodoc", "1");
		const Graphic3d_VertexC & Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		const Graphic3d_VertexC & operator()(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		Graphic3d_VertexC & ChangeValue(const Standard_Integer Row, const Standard_Integer Col);
		%feature("autodoc", "1");
		Graphic3d_VertexC & operator()(const Standard_Integer Row, const Standard_Integer Col);

};
%feature("shadow") Graphic3d_Array2OfVertexC::~Graphic3d_Array2OfVertexC %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic3d_Array2OfVertexC {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic3d_HArray1OfBytes;
class Graphic3d_HArray1OfBytes : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Graphic3d_HArray1OfBytes(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		Graphic3d_HArray1OfBytes(const Standard_Integer Low, const Standard_Integer Up, const Standard_Byte &V);
		%feature("autodoc", "1");
		void Init(const Standard_Byte &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Standard_Byte &Value);
		%feature("autodoc", "1");
		const Standard_Byte & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Byte & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const Graphic3d_Array1OfBytes & Array1() const;
		%feature("autodoc", "1");
		Graphic3d_Array1OfBytes & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic3d_HArray1OfBytes {
	Handle_Graphic3d_HArray1OfBytes GetHandle() {
	return *(Handle_Graphic3d_HArray1OfBytes*) &$self;
	}
};
%extend Graphic3d_HArray1OfBytes {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic3d_HArray1OfBytes::~Graphic3d_HArray1OfBytes %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic3d_HArray1OfBytes {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic3d_Texture2D;
class Graphic3d_Texture2D : public Graphic3d_TextureMap {
	public:
		%feature("autodoc", "1");
		Graphic3d_NameOfTexture2D Name() const;
		%feature("autodoc", "1");
		Standard_Integer NumberOfTextures();
		%feature("autodoc", "1");
		char * TextureName(const Standard_Integer aRank);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic3d_Texture2D {
	Handle_Graphic3d_Texture2D GetHandle() {
	return *(Handle_Graphic3d_Texture2D*) &$self;
	}
};
%extend Graphic3d_Texture2D {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic3d_Texture2D::~Graphic3d_Texture2D %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic3d_Texture2D {
	void _kill_pointed() {
		delete $self;
	}
};
%extend Graphic3d_Texture2D {
	Graphic3d_Texture2D () {}
};


%nodefaultctor Graphic3d_Texture2Dplane;
class Graphic3d_Texture2Dplane : public Graphic3d_Texture2D {
	public:
		%feature("autodoc", "1");
		Graphic3d_Texture2Dplane(const Handle_Graphic3d_StructureManager &SM, const char * FileName);
		%feature("autodoc", "1");
		Graphic3d_Texture2Dplane(const Handle_Graphic3d_StructureManager &SM, const Graphic3d_NameOfTexture2D NOT);
		%feature("autodoc", "1");
		void SetPlaneS(const Standard_ShortReal A, const Standard_ShortReal B, const Standard_ShortReal C, const Standard_ShortReal D);
		%feature("autodoc", "1");
		void SetPlaneT(const Standard_ShortReal A, const Standard_ShortReal B, const Standard_ShortReal C, const Standard_ShortReal D);
		%feature("autodoc", "1");
		void SetPlane(const Graphic3d_NameOfTexturePlane APlane);
		%feature("autodoc", "1");
		void SetScaleS(const Standard_ShortReal val);
		%feature("autodoc", "1");
		void SetScaleT(const Standard_ShortReal val);
		%feature("autodoc", "1");
		void SetTranslateS(const Standard_ShortReal val);
		%feature("autodoc", "1");
		void SetTranslateT(const Standard_ShortReal val);
		%feature("autodoc", "1");
		void SetRotation(const Standard_ShortReal val);
		%feature("autodoc", "1");
		Graphic3d_NameOfTexturePlane Plane() const;
		%feature("autodoc", "1");
		void PlaneS(Standard_ShortReal & A, Standard_ShortReal & B, Standard_ShortReal & C, Standard_ShortReal & D) const;
		%feature("autodoc", "1");
		void PlaneT(Standard_ShortReal & A, Standard_ShortReal & B, Standard_ShortReal & C, Standard_ShortReal & D) const;
		%feature("autodoc", "1");
		void TranslateS(Standard_ShortReal & val) const;
		%feature("autodoc", "1");
		void TranslateT(Standard_ShortReal & val) const;
		%feature("autodoc", "1");
		void ScaleS(Standard_ShortReal & val) const;
		%feature("autodoc", "1");
		void ScaleT(Standard_ShortReal & val) const;
		%feature("autodoc", "1");
		void Rotation(Standard_ShortReal & val) const;

};
%extend Graphic3d_Texture2Dplane {
	Handle_Graphic3d_Texture2Dplane GetHandle() {
	return *(Handle_Graphic3d_Texture2Dplane*) &$self;
	}
};
%extend Graphic3d_Texture2Dplane {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic3d_Texture2Dplane::~Graphic3d_Texture2Dplane %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic3d_Texture2Dplane {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic3d_Vertex;
class Graphic3d_Vertex {
	public:
		%feature("autodoc", "1");
		Graphic3d_Vertex();
		%feature("autodoc", "1");
		Graphic3d_Vertex(const Graphic3d_Vertex &APoint);
		%feature("autodoc", "1");
		Graphic3d_Vertex(const Standard_Real AX, const Standard_Real AY, const Standard_Real AZ);
		%feature("autodoc", "1");
		void SetCoord(const Standard_Real Xnew, const Standard_Real Ynew, const Standard_Real Znew);
		%feature("autodoc", "1");
		void SetXCoord(const Standard_Real Xnew);
		%feature("autodoc", "1");
		void SetYCoord(const Standard_Real Ynew);
		%feature("autodoc", "1");
		void SetZCoord(const Standard_Real Znew);
		%feature("autodoc","Coord() -> [Standard_Real, Standard_Real, Standard_Real]");

		void Coord(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Real X() const;
		%feature("autodoc", "1");
		Standard_Real Y() const;
		%feature("autodoc", "1");
		Standard_Real Z() const;
		%feature("autodoc", "1");
		Standard_Real Distance(const Graphic3d_Vertex &AV1, const Graphic3d_Vertex &AV2);

};
%feature("shadow") Graphic3d_Vertex::~Graphic3d_Vertex %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic3d_Vertex {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic3d_VertexN;
class Graphic3d_VertexN : public Graphic3d_Vertex {
	public:
		%feature("autodoc", "1");
		Graphic3d_VertexN();
		%feature("autodoc", "1");
		Graphic3d_VertexN(const Standard_Real AX, const Standard_Real AY, const Standard_Real AZ, const Standard_Real ANX, const Standard_Real ANY, const Standard_Real ANZ, const Standard_Boolean FlagNormalise=1);
		%feature("autodoc", "1");
		Graphic3d_VertexN(const Graphic3d_Vertex &APoint, const Graphic3d_Vector &AVector, const Standard_Boolean FlagNormalise=1);
		%feature("autodoc", "1");
		void SetNormal(const Standard_Real NXnew, const Standard_Real NYnew, const Standard_Real NZnew, const Standard_Boolean FlagNormalise=1);
		%feature("autodoc","Normal() -> [Standard_Real, Standard_Real, Standard_Real]");

		void Normal(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;

};
%feature("shadow") Graphic3d_VertexN::~Graphic3d_VertexN %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic3d_VertexN {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic3d_VertexNC;
class Graphic3d_VertexNC : public Graphic3d_VertexN {
	public:
		%feature("autodoc", "1");
		Graphic3d_VertexNC();
		%feature("autodoc", "1");
		Graphic3d_VertexNC(const Standard_Real AX, const Standard_Real AY, const Standard_Real AZ, const Standard_Real ANX, const Standard_Real ANY, const Standard_Real ANZ, const Quantity_Color &AColor, const Standard_Boolean FlagNormalise=1);
		%feature("autodoc", "1");
		Graphic3d_VertexNC(const Graphic3d_Vertex &APoint, const Graphic3d_Vector &AVector, const Quantity_Color &AColor, const Standard_Boolean FlagNormalise=1);
		%feature("autodoc", "1");
		void SetColor(const Quantity_Color &ColorNew);
		%feature("autodoc", "1");
		Quantity_Color Color() const;

};
%feature("shadow") Graphic3d_VertexNC::~Graphic3d_VertexNC %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic3d_VertexNC {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic3d_GraphicDriver;
class Graphic3d_GraphicDriver : public Aspect_GraphicDriver {
	public:
		%feature("autodoc", "1");
		Graphic3d_GraphicDriver(const char * AShrName);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Begin(const char * ADisplay);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Begin(const Aspect_Display ADisplay);
		%feature("autodoc", "1");
		virtual		void End();
		%feature("autodoc", "1");
		virtual		Standard_Integer InquireLightLimit();
		%feature("autodoc", "1");
		virtual		void InquireMat(const Graphic3d_CView &ACView, TColStd_Array2OfReal & AMatO, TColStd_Array2OfReal & AMatM);
		%feature("autodoc", "1");
		virtual		Standard_Integer InquirePlaneLimit();
		%feature("autodoc", "1");
		virtual		Standard_Integer InquireViewLimit();
		%feature("autodoc", "1");
		virtual		Standard_Boolean InquireTextureAvailable();
		%feature("autodoc", "1");
		virtual		void Blink(const Graphic3d_CStructure &ACStructure, const Standard_Boolean Create);
		%feature("autodoc", "1");
		virtual		void BoundaryBox(const Graphic3d_CStructure &ACStructure, const Standard_Boolean Create);
		%feature("autodoc", "1");
		virtual		void HighlightColor(const Graphic3d_CStructure &ACStructure, const Standard_ShortReal R, const Standard_ShortReal G, const Standard_ShortReal B, const Standard_Boolean Create);
		%feature("autodoc", "1");
		virtual		void NameSetStructure(const Graphic3d_CStructure &ACStructure);
		%feature("autodoc", "1");
		virtual		void ClearGroup(const Graphic3d_CGroup &ACGroup);
		%feature("autodoc", "1");
		virtual		void CloseGroup(const Graphic3d_CGroup &ACGroup);
		%feature("autodoc", "1");
		virtual		void FaceContextGroup(const Graphic3d_CGroup &ACGroup, const Standard_Integer NoInsert);
		%feature("autodoc", "1");
		virtual		void Group(Graphic3d_CGroup & ACGroup);
		%feature("autodoc", "1");
		virtual		void LineContextGroup(const Graphic3d_CGroup &ACGroup, const Standard_Integer NoInsert);
		%feature("autodoc", "1");
		virtual		void MarkerContextGroup(const Graphic3d_CGroup &ACGroup, const Standard_Integer NoInsert);
		%feature("autodoc", "1");
		virtual		void MarkerContextGroup(const Graphic3d_CGroup &ACGroup, const Standard_Integer NoInsert, const Standard_Integer AMarkWidth, const Standard_Integer AMarkHeight, const Handle_Graphic3d_HArray1OfBytes &ATexture);
		%feature("autodoc", "1");
		virtual		void OpenGroup(const Graphic3d_CGroup &ACGroup);
		%feature("autodoc", "1");
		virtual		void RemoveGroup(const Graphic3d_CGroup &ACGroup);
		%feature("autodoc", "1");
		virtual		void TextContextGroup(const Graphic3d_CGroup &ACGroup, const Standard_Integer NoInsert);
		%feature("autodoc", "1");
		virtual		void ClearStructure(const Graphic3d_CStructure &ACStructure);
		%feature("autodoc", "1");
		virtual		void Connect(const Graphic3d_CStructure &AFather, const Graphic3d_CStructure &ASon);
		%feature("autodoc", "1");
		virtual		void ContextStructure(const Graphic3d_CStructure &ACStructure);
		%feature("autodoc", "1");
		virtual		void Disconnect(const Graphic3d_CStructure &AFather, const Graphic3d_CStructure &ASon);
		%feature("autodoc", "1");
		virtual		void DisplayStructure(const Graphic3d_CView &ACView, const Graphic3d_CStructure &ACStructure, const Standard_Integer APriority);
		%feature("autodoc", "1");
		virtual		void EraseStructure(const Graphic3d_CView &ACView, const Graphic3d_CStructure &ACStructure);
		%feature("autodoc", "1");
		virtual		void RemoveStructure(const Graphic3d_CStructure &ACStructure);
		%feature("autodoc", "1");
		virtual		void Structure(Graphic3d_CStructure & ACStructure);
		%feature("autodoc", "1");
		virtual		void DumpGroup(const Graphic3d_CGroup &ACGroup);
		%feature("autodoc", "1");
		virtual		void DumpStructure(const Graphic3d_CStructure &ACStructure);
		%feature("autodoc", "1");
		virtual		void DumpView(const Graphic3d_CView &ACView);
		%feature("autodoc", "1");
		virtual		Standard_Boolean ElementExploration(const Graphic3d_CStructure &ACStructure, const Standard_Integer ElementNumber, Graphic3d_VertexNC & AVertex, Graphic3d_Vector & AVector);
		%feature("autodoc", "1");
		virtual		Graphic3d_TypeOfPrimitive ElementType(const Graphic3d_CStructure &ACStructure, const Standard_Integer ElementNumber);
		%feature("autodoc", "1");
		virtual		void InitPick();
		%feature("autodoc", "1");
		virtual		void Pick(Graphic3d_CPick & ACPick);
		%feature("autodoc", "1");
		virtual		void PickId(const Graphic3d_CGroup &ACGroup);
		%feature("autodoc", "1");
		virtual		void ActivateView(const Graphic3d_CView &ACView);
		%feature("autodoc", "1");
		virtual		void AntiAliasing(const Graphic3d_CView &ACView, const Standard_Boolean AFlag);
		%feature("autodoc", "1");
		virtual		void Background(const Graphic3d_CView &ACView);
		%feature("autodoc", "1");
		virtual		void BackgroundImage(const char * FileName, const Graphic3d_CView &ACView, const Aspect_FillMethod FillStyle);
		%feature("autodoc", "1");
		virtual		void SetBgImageStyle(const Graphic3d_CView &ACView, const Aspect_FillMethod FillStyle);
		%feature("autodoc", "1");
		virtual		void ClipLimit(const Graphic3d_CView &ACView, const Standard_Boolean AWait);
		%feature("autodoc", "1");
		virtual		void DeactivateView(const Graphic3d_CView &ACView);
		%feature("autodoc", "1");
		virtual		void DepthCueing(const Graphic3d_CView &ACView, const Standard_Boolean AFlag);
		%feature("autodoc","ProjectRaster(const ACView, Standard_ShortReal AX, Standard_ShortReal AY, Standard_ShortReal AZ) -> [Standard_Integer, Standard_Integer]");

		virtual		Standard_Boolean ProjectRaster(const Graphic3d_CView &ACView, const Standard_ShortReal AX, const Standard_ShortReal AY, const Standard_ShortReal AZ, Standard_Integer &OutValue, Standard_Integer &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean UnProjectRaster(const Graphic3d_CView &ACView, const Standard_Integer Axm, const Standard_Integer Aym, const Standard_Integer AXM, const Standard_Integer AYM, const Standard_Integer AU, const Standard_Integer AV, Standard_ShortReal & AX, Standard_ShortReal & AY, Standard_ShortReal & AZ);
		%feature("autodoc", "1");
		virtual		Standard_Boolean UnProjectRasterWithRay(const Graphic3d_CView &ACView, const Standard_Integer Axm, const Standard_Integer Aym, const Standard_Integer AXM, const Standard_Integer AYM, const Standard_Integer AU, const Standard_Integer AV, Standard_ShortReal & AX, Standard_ShortReal & AY, Standard_ShortReal & AZ, Standard_ShortReal & DX, Standard_ShortReal & DY, Standard_ShortReal & DZ);
		%feature("autodoc", "1");
		virtual		void RatioWindow(const Graphic3d_CView &ACView);
		%feature("autodoc", "1");
		virtual		void Redraw(const Graphic3d_CView &ACView, const Aspect_CLayer2d &ACUnderLayer, const Aspect_CLayer2d &ACOverLayer, const Standard_Integer x=0, const Standard_Integer y=0, const Standard_Integer width=0, const Standard_Integer height=0);
		%feature("autodoc", "1");
		virtual		void RemoveView(const Graphic3d_CView &ACView);
		%feature("autodoc", "1");
		virtual		void SetLight(const Graphic3d_CView &ACView);
		%feature("autodoc", "1");
		virtual		void SetPlane(const Graphic3d_CView &ACView);
		%feature("autodoc", "1");
		virtual		void SetVisualisation(const Graphic3d_CView &ACView);
		%feature("autodoc", "1");
		virtual		void TransformStructure(const Graphic3d_CStructure &ACStructure);
		%feature("autodoc", "1");
		virtual		void DegenerateStructure(const Graphic3d_CStructure &ACStructure);
		%feature("autodoc", "1");
		virtual		void Transparency(const Graphic3d_CView &ACView, const Standard_Boolean AFlag);
		%feature("autodoc", "1");
		virtual		void Update(const Graphic3d_CView &ACView, const Aspect_CLayer2d &ACUnderLayer, const Aspect_CLayer2d &ACOverLayer);
		%feature("autodoc", "1");
		virtual		Standard_Boolean View(Graphic3d_CView & ACView);
		%feature("autodoc", "1");
		virtual		void ViewMapping(const Graphic3d_CView &ACView, const Standard_Boolean AWait);
		%feature("autodoc", "1");
		virtual		void ViewOrientation(const Graphic3d_CView &ACView, const Standard_Boolean AWait);
		%feature("autodoc", "1");
		virtual		void Environment(const Graphic3d_CView &ACView);
		%feature("autodoc", "1");
		virtual		void Marker(const Graphic3d_CGroup &ACGroup, const Graphic3d_Vertex &APoint, const Standard_Boolean EvalMinMax=1);
		%feature("autodoc", "1");
		virtual		void MarkerSet(const Graphic3d_CGroup &ACGroup, const Graphic3d_Array1OfVertex &ListVertex, const Standard_Boolean EvalMinMax=1);
		%feature("autodoc", "1");
		virtual		void Polygon(const Graphic3d_CGroup &ACGroup, const Graphic3d_Array1OfVertex &ListVertex, const Graphic3d_TypeOfPolygon AType=Graphic3d_TOP_CONVEX, const Standard_Boolean EvalMinMax=1);
		%feature("autodoc", "1");
		virtual		void Polygon(const Graphic3d_CGroup &ACGroup, const Graphic3d_Array1OfVertex &ListVertex, const Graphic3d_Vector &Normal, const Graphic3d_TypeOfPolygon AType=Graphic3d_TOP_CONVEX, const Standard_Boolean EvalMinMax=1);
		%feature("autodoc", "1");
		virtual		void Polygon(const Graphic3d_CGroup &ACGroup, const Graphic3d_Array1OfVertexN &ListVertex, const Graphic3d_TypeOfPolygon AType=Graphic3d_TOP_CONVEX, const Standard_Boolean EvalMinMax=1);
		%feature("autodoc", "1");
		virtual		void Polygon(const Graphic3d_CGroup &ACGroup, const Graphic3d_Array1OfVertexN &ListVertex, const Graphic3d_Vector &Normal, const Graphic3d_TypeOfPolygon AType=Graphic3d_TOP_CONVEX, const Standard_Boolean EvalMinMax=1);
		%feature("autodoc", "1");
		virtual		void Polygon(const Graphic3d_CGroup &ACGroup, const Graphic3d_Array1OfVertexNT &ListVertex, const Graphic3d_TypeOfPolygon AType=Graphic3d_TOP_CONVEX, const Standard_Boolean EvalMinMax=1);
		%feature("autodoc", "1");
		virtual		void PolygonHoles(const Graphic3d_CGroup &ACGroup, const TColStd_Array1OfInteger &Bounds, const Graphic3d_Array1OfVertex &ListVertex, const Standard_Boolean EvalMinMax=1);
		%feature("autodoc", "1");
		virtual		void PolygonHoles(const Graphic3d_CGroup &ACGroup, const TColStd_Array1OfInteger &Bounds, const Graphic3d_Array1OfVertex &ListVertex, const Graphic3d_Vector &Normal, const Standard_Boolean EvalMinMax=1);
		%feature("autodoc", "1");
		virtual		void PolygonHoles(const Graphic3d_CGroup &ACGroup, const TColStd_Array1OfInteger &Bounds, const Graphic3d_Array1OfVertexN &ListVertex, const Standard_Boolean EvalMinMax=1);
		%feature("autodoc", "1");
		virtual		void PolygonHoles(const Graphic3d_CGroup &ACGroup, const TColStd_Array1OfInteger &Bounds, const Graphic3d_Array1OfVertexN &ListVertex, const Graphic3d_Vector &Normal, const Standard_Boolean EvalMinMax=1);
		%feature("autodoc", "1");
		virtual		void Polyline(const Graphic3d_CGroup &ACGroup, const Standard_Real X1, const Standard_Real Y1, const Standard_Real Z1, const Standard_Real X2, const Standard_Real Y2, const Standard_Real Z2, const Standard_Boolean EvalMinMax=1);
		%feature("autodoc", "1");
		virtual		void Polyline(const Graphic3d_CGroup &ACGroup, const Graphic3d_Array1OfVertex &ListVertex, const Standard_Boolean EvalMinMax=1);
		%feature("autodoc", "1");
		virtual		void Polyline(const Graphic3d_CGroup &ACGroup, const Graphic3d_Array1OfVertexC &ListVertex, const Standard_Boolean EvalMinMax=1);
		%feature("autodoc", "1");
		virtual		void QuadrangleMesh(const Graphic3d_CGroup &ACGroup, const Graphic3d_Array2OfVertex &ListVertex, const Standard_Boolean EvalMinMax=1);
		%feature("autodoc", "1");
		virtual		void QuadrangleMesh(const Graphic3d_CGroup &ACGroup, const Graphic3d_Array2OfVertexN &ListVertex, const Standard_Boolean EvalMinMax=1);
		%feature("autodoc", "1");
		virtual		void QuadrangleMesh(const Graphic3d_CGroup &ACGroup, const Graphic3d_Array2OfVertexNT &ListVertex, const Standard_Boolean EvalMinMax=1);
		%feature("autodoc", "1");
		virtual		void QuadrangleSet(const Graphic3d_CGroup &ACGroup, const Graphic3d_Array1OfVertex &ListVertex, const Aspect_Array1OfEdge &ListEdge, const Standard_Boolean EvalMinMax=1);
		%feature("autodoc", "1");
		virtual		void QuadrangleSet(const Graphic3d_CGroup &ACGroup, const Graphic3d_Array1OfVertexN &ListVertex, const Aspect_Array1OfEdge &ListEdge, const Standard_Boolean EvalMinMax=1);
		%feature("autodoc", "1");
		virtual		void QuadrangleSet(const Graphic3d_CGroup &ACGroup, const Graphic3d_Array1OfVertexNT &ListVertex, const Aspect_Array1OfEdge &ListEdge, const Standard_Boolean EvalMinMax=1);
		%feature("autodoc", "1");
		virtual		void QuadrangleSet(const Graphic3d_CGroup &ACGroup, const Graphic3d_Array1OfVertexC &ListVertex, const Aspect_Array1OfEdge &ListEdge, const Standard_Boolean EvalMinMax=1);
		%feature("autodoc", "1");
		virtual		void QuadrangleSet(const Graphic3d_CGroup &ACGroup, const Graphic3d_Array1OfVertexNC &ListVertex, const Aspect_Array1OfEdge &ListEdge, const Standard_Boolean EvalMinMax=1);
		%feature("autodoc", "1");
		virtual		void Text(const Graphic3d_CGroup &ACGroup, const char * AText, const Graphic3d_Vertex &APoint, const Standard_Real AHeight, const Quantity_PlaneAngle AAngle, const Graphic3d_TextPath ATp, const Graphic3d_HorizontalTextAlignment AHta, const Graphic3d_VerticalTextAlignment AVta, const Standard_Boolean EvalMinMax=1);
		%feature("autodoc", "1");
		virtual		void Text(const Graphic3d_CGroup &ACGroup, const char * AText, const Graphic3d_Vertex &APoint, const Standard_Real AHeight, const Standard_Boolean EvalMinMax=1);
		%feature("autodoc", "1");
		virtual		void Text(const Graphic3d_CGroup &ACGroup, const TCollection_ExtendedString &AText, const Graphic3d_Vertex &APoint, const Standard_Real AHeight, const Quantity_PlaneAngle AAngle, const Graphic3d_TextPath ATp, const Graphic3d_HorizontalTextAlignment AHta, const Graphic3d_VerticalTextAlignment AVta, const Standard_Boolean EvalMinMax=1);
		%feature("autodoc", "1");
		virtual		void Text(const Graphic3d_CGroup &ACGroup, const TCollection_ExtendedString &AText, const Graphic3d_Vertex &APoint, const Standard_Real AHeight, const Standard_Boolean EvalMinMax=1);
		%feature("autodoc", "1");
		virtual		void TriangleMesh(const Graphic3d_CGroup &ACGroup, const Graphic3d_Array1OfVertex &ListVertex, const Standard_Boolean EvalMinMax=1);
		%feature("autodoc", "1");
		virtual		void TriangleMesh(const Graphic3d_CGroup &ACGroup, const Graphic3d_Array1OfVertexN &ListVertex, const Standard_Boolean EvalMinMax=1);
		%feature("autodoc", "1");
		virtual		void TriangleMesh(const Graphic3d_CGroup &ACGroup, const Graphic3d_Array1OfVertexNT &ListVertex, const Standard_Boolean EvalMinMax=1);
		%feature("autodoc", "1");
		virtual		void TriangleSet(const Graphic3d_CGroup &ACGroup, const Graphic3d_Array1OfVertex &ListVertex, const Aspect_Array1OfEdge &ListEdge, const Standard_Boolean EvalMinMax=1);
		%feature("autodoc", "1");
		virtual		void TriangleSet(const Graphic3d_CGroup &ACGroup, const Graphic3d_Array1OfVertexN &ListVertex, const Aspect_Array1OfEdge &ListEdge, const Standard_Boolean EvalMinMax=1);
		%feature("autodoc", "1");
		virtual		void TriangleSet(const Graphic3d_CGroup &ACGroup, const Graphic3d_Array1OfVertexNT &ListVertex, const Aspect_Array1OfEdge &ListEdge, const Standard_Boolean EvalMinMax=1);
		%feature("autodoc", "1");
		virtual		void TriangleSet(const Graphic3d_CGroup &ACGroup, const Graphic3d_Array1OfVertexC &ListVertex, const Aspect_Array1OfEdge &ListEdge, const Standard_Boolean EvalMinMax=1);
		%feature("autodoc", "1");
		virtual		void TriangleSet(const Graphic3d_CGroup &ACGroup, const Graphic3d_Array1OfVertexNC &ListVertex, const Aspect_Array1OfEdge &ListEdge, const Standard_Boolean EvalMinMax=1);
		%feature("autodoc", "1");
		virtual		void PrimitiveArray(const Graphic3d_CGroup &ACGroup, const Graphic3d_PrimitiveArray &parray, const Standard_Boolean EvalMinMax=1);
		%feature("autodoc", "1");
		virtual		void UserDraw(const Graphic3d_CGroup &ACGroup, const Graphic3d_CUserDraw &AUserDraw);
		%feature("autodoc", "1");
		virtual		void ZBufferTriedronSetup(const Quantity_NameOfColor XColor=Quantity_NOC_RED, const Quantity_NameOfColor YColor=Quantity_NOC_GREEN, const Quantity_NameOfColor ZColor=Quantity_NOC_BLUE1, const Standard_Real SizeRatio=8.00000000000000044408920985006261616945266723633e-1, const Standard_Real AxisDiametr=5.00000000000000027755575615628913510590791702271e-2, const Standard_Integer NbFacettes=12);
		%feature("autodoc", "1");
		virtual		void TriedronDisplay(const Graphic3d_CView &ACView, const Aspect_TypeOfTriedronPosition APosition=Aspect_TOTP_CENTER, const Quantity_NameOfColor AColor=Quantity_NOC_WHITE, const Standard_Real AScale=2.00000000000000004163336342344337026588618755341e-2, const Standard_Boolean AsWireframe=1);
		%feature("autodoc", "1");
		virtual		void TriedronErase(const Graphic3d_CView &ACView);
		%feature("autodoc", "1");
		virtual		void TriedronEcho(const Graphic3d_CView &ACView, const Aspect_TypeOfTriedronEcho AType=Aspect_TOTE_NONE);
		%feature("autodoc", "1");
		virtual		void Bezier(const Graphic3d_CGroup &ACGroup, const Graphic3d_Array1OfVertex &ListVertex, const Standard_Boolean EvalMinMax=1);
		%feature("autodoc", "1");
		virtual		void Bezier(const Graphic3d_CGroup &ACGroup, const Graphic3d_Array1OfVertex &ListVertex, const TColStd_Array1OfReal &ListWeight, const Standard_Boolean EvalMinMax=1);
		%feature("autodoc", "1");
		virtual		void BeginAnimation(const Graphic3d_CView &ACView);
		%feature("autodoc", "1");
		virtual		void EndAnimation(const Graphic3d_CView &ACView);
		%feature("autodoc", "1");
		virtual		Standard_Boolean BeginAddMode(const Graphic3d_CView &ACView);
		%feature("autodoc", "1");
		virtual		void EndAddMode();
		%feature("autodoc", "1");
		virtual		Standard_Boolean BeginImmediatMode(const Graphic3d_CView &ACView, const Aspect_CLayer2d &ACUnderLayer, const Aspect_CLayer2d &ACOverLayer, const Standard_Boolean DoubleBuffer, const Standard_Boolean RetainMode);
		%feature("autodoc", "1");
		virtual		void BeginPolyline();
		%feature("autodoc", "1");
		virtual		void ClearImmediatMode(const Graphic3d_CView &ACView, const Standard_Boolean aFlush=1);
		%feature("autodoc", "1");
		virtual		void Draw(const Standard_ShortReal X, const Standard_ShortReal Y, const Standard_ShortReal Z);
		%feature("autodoc", "1");
		virtual		void DrawStructure(const Graphic3d_CStructure &ACStructure);
		%feature("autodoc", "1");
		virtual		void EndImmediatMode(const Standard_Integer Synchronize);
		%feature("autodoc", "1");
		virtual		void EndPolyline();
		%feature("autodoc", "1");
		virtual		void Move(const Standard_ShortReal X, const Standard_ShortReal Y, const Standard_ShortReal Z);
		%feature("autodoc", "1");
		virtual		void SetLineColor(const Standard_ShortReal R, const Standard_ShortReal G, const Standard_ShortReal B);
		%feature("autodoc", "1");
		virtual		void SetLineType(const Standard_Integer Type);
		%feature("autodoc", "1");
		virtual		void SetLineWidth(const Standard_ShortReal Width);
		%feature("autodoc", "1");
		virtual		void SetMinMax(const Standard_ShortReal X1, const Standard_ShortReal Y1, const Standard_ShortReal Z1, const Standard_ShortReal X2, const Standard_ShortReal Y2, const Standard_ShortReal Z2);
		%feature("autodoc", "1");
		virtual		void Transform(const TColStd_Array2OfReal &AMatrix, const Graphic3d_TypeOfComposition AType);
		%feature("autodoc", "1");
		virtual		Standard_Integer CreateTexture(const Graphic3d_TypeOfTexture Type, const Handle_AlienImage_AlienImage &Image, const char * FileName, const Handle_TColStd_HArray1OfReal &TexUpperBounds) const;
		%feature("autodoc", "1");
		virtual		void DestroyTexture(const Standard_Integer TexId) const;
		%feature("autodoc", "1");
		virtual		void ModifyTexture(const Standard_Integer TexId, const Graphic3d_CInitTexture &AValue) const;
		%feature("autodoc", "1");
		virtual		void Layer(Aspect_CLayer2d & ACLayer);
		%feature("autodoc", "1");
		virtual		void RemoveLayer(const Aspect_CLayer2d &ACLayer);
		%feature("autodoc", "1");
		virtual		void BeginLayer(const Aspect_CLayer2d &ACLayer);
		%feature("autodoc", "1");
		virtual		void BeginPolygon2d();
		%feature("autodoc", "1");
		virtual		void BeginPolyline2d();
		%feature("autodoc", "1");
		virtual		void ClearLayer(const Aspect_CLayer2d &ACLayer);
		%feature("autodoc", "1");
		virtual		void Draw(const Standard_ShortReal X, const Standard_ShortReal Y);
		%feature("autodoc", "1");
		virtual		void Edge(const Standard_ShortReal X, const Standard_ShortReal Y);
		%feature("autodoc", "1");
		virtual		void EndLayer();
		%feature("autodoc", "1");
		virtual		void EndPolygon2d();
		%feature("autodoc", "1");
		virtual		void EndPolyline2d();
		%feature("autodoc", "1");
		virtual		void Move(const Standard_ShortReal X, const Standard_ShortReal Y);
		%feature("autodoc", "1");
		virtual		void Rectangle(const Standard_ShortReal X, const Standard_ShortReal Y, const Standard_ShortReal Width, const Standard_ShortReal Height);
		%feature("autodoc", "1");
		virtual		void SetColor(const Standard_ShortReal R, const Standard_ShortReal G, const Standard_ShortReal B);
		%feature("autodoc", "1");
		virtual		void SetTransparency(const Standard_ShortReal ATransparency);
		%feature("autodoc", "1");
		virtual		void UnsetTransparency();
		%feature("autodoc", "1");
		virtual		void SetLineAttributes(const Standard_Integer Type, const Standard_ShortReal Width);
		%feature("autodoc", "1");
		virtual		void SetTextAttributes(const Standard_Integer Font, const Standard_Integer Type, const Standard_ShortReal R, const Standard_ShortReal G, const Standard_ShortReal B);
		%feature("autodoc", "1");
		virtual		void Text(const char * AText, const Standard_ShortReal X, const Standard_ShortReal Y, const Standard_ShortReal AHeight);
		%feature("autodoc", "1");
		virtual		void TextSize(const char * AText, const Standard_ShortReal AHeight, Standard_ShortReal & AWidth, Standard_ShortReal & AnAscent, Standard_ShortReal & ADescent) const;
		%feature("autodoc", "1");
		virtual		void SetBackFacingModel(const Graphic3d_CView &aView);
		%feature("autodoc", "1");
		virtual		void SetDepthTestEnabled(const Graphic3d_CView &view, const Standard_Boolean isEnabled) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsDepthTestEnabled(const Graphic3d_CView &view) const;
		%feature("autodoc", "1");
		virtual		void ReadDepths(const Graphic3d_CView &view, const Standard_Integer x, const Standard_Integer y, const Standard_Integer width, const Standard_Integer height, const Standard_Address buffer) const;
		%feature("autodoc", "1");
		virtual		void SetGLLightEnabled(const Graphic3d_CView &view, const Standard_Boolean isEnabled) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsGLLightEnabled(const Graphic3d_CView &view) const;
		%feature("autodoc", "1");
		virtual		void Print(const Graphic3d_CView &ACView, const Aspect_CLayer2d &ACUnderLayer, const Aspect_CLayer2d &ACOverLayer, const Aspect_Handle hPrnDC, const Standard_Boolean showBackground, const char * filename) const;
		%feature("autodoc", "1");
		virtual		void Export(const char * FileName, const Graphic3d_ExportFormat Format, const Graphic3d_SortType SortType, const Standard_Integer W, const Standard_Integer H, const Graphic3d_CView &View, const Aspect_CLayer2d &Under, const Aspect_CLayer2d &Over, const Standard_Real Precision=5.00000000000000010408340855860842566471546888351e-3, const Standard_Address ProgressBarFunc=0, const Standard_Address ProgressObject=0);
		%feature("autodoc", "1");
		Standard_Integer Light(const Graphic3d_CLight &ACLight, const Standard_Boolean Update);
		%feature("autodoc", "1");
		Standard_Integer Plane(const Graphic3d_CPlane &ACPlane, const Standard_Boolean Update);
		%feature("autodoc", "1");
		void PrintBoolean(const char * AComment, const Standard_Boolean AValue) const;
		%feature("autodoc", "1");
		void PrintCGroup(const Graphic3d_CGroup &ACGroup, const Standard_Integer AField) const;
		%feature("autodoc", "1");
		void PrintCLight(const Graphic3d_CLight &ACLight, const Standard_Integer AField) const;
		%feature("autodoc", "1");
		void PrintCPick(const Graphic3d_CPick &ACPick, const Standard_Integer AField) const;
		%feature("autodoc", "1");
		void PrintCPlane(const Graphic3d_CPlane &ACPlane, const Standard_Integer AField) const;
		%feature("autodoc", "1");
		void PrintCStructure(const Graphic3d_CStructure &ACStructure, const Standard_Integer AField) const;
		%feature("autodoc", "1");
		void PrintCView(const Graphic3d_CView &ACView, const Standard_Integer AField) const;
		%feature("autodoc", "1");
		void PrintFunction(const char * AFunc) const;
		%feature("autodoc", "1");
		void PrintInteger(const char * AComment, const Standard_Integer AValue) const;
		%feature("autodoc", "1");
		void PrintIResult(const char * AFunc, const Standard_Integer AResult) const;
		%feature("autodoc", "1");
		void PrintShortReal(const char * AComment, const Standard_ShortReal AValue) const;
		%feature("autodoc", "1");
		void PrintMatrix(const char * AComment, const TColStd_Array2OfReal &AMatrix) const;
		%feature("autodoc", "1");
		void PrintString(const char * AComment, const char * AString) const;
		%feature("autodoc", "1");
		void SetTrace(const Standard_Integer ALevel);
		%feature("autodoc", "1");
		Standard_Integer Trace() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic3d_GraphicDriver {
	Handle_Graphic3d_GraphicDriver GetHandle() {
	return *(Handle_Graphic3d_GraphicDriver*) &$self;
	}
};
%extend Graphic3d_GraphicDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic3d_GraphicDriver::~Graphic3d_GraphicDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic3d_GraphicDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic3d_ArrayOfSegments;
class Graphic3d_ArrayOfSegments : public Graphic3d_ArrayOfPrimitives {
	public:
		%feature("autodoc", "1");
		Graphic3d_ArrayOfSegments(const Standard_Integer maxVertexs, const Standard_Integer maxEdges=0, const Standard_Boolean hasVColors=0);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic3d_ArrayOfSegments {
	Handle_Graphic3d_ArrayOfSegments GetHandle() {
	return *(Handle_Graphic3d_ArrayOfSegments*) &$self;
	}
};
%extend Graphic3d_ArrayOfSegments {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic3d_ArrayOfSegments::~Graphic3d_ArrayOfSegments %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic3d_ArrayOfSegments {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic3d_ListOfShortReal;
class Graphic3d_ListOfShortReal {
	public:
		%feature("autodoc", "1");
		Graphic3d_ListOfShortReal();
		%feature("autodoc", "1");
		void Assign(const Graphic3d_ListOfShortReal &Other);
		%feature("autodoc", "1");
		void operator=(const Graphic3d_ListOfShortReal &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const Standard_ShortReal &I);
		%feature("autodoc", "1");
		void Prepend(const Standard_ShortReal &I, Graphic3d_ListIteratorOfListOfShortReal & theIt);
		%feature("autodoc", "1");
		void Prepend(Graphic3d_ListOfShortReal & Other);
		%feature("autodoc", "1");
		void Append(const Standard_ShortReal &I);
		%feature("autodoc", "1");
		void Append(const Standard_ShortReal &I, Graphic3d_ListIteratorOfListOfShortReal & theIt);
		%feature("autodoc", "1");
		void Append(Graphic3d_ListOfShortReal & Other);
		%feature("autodoc", "1");
		Standard_ShortReal & First() const;
		%feature("autodoc", "1");
		Standard_ShortReal & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(Graphic3d_ListIteratorOfListOfShortReal & It);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_ShortReal &I, Graphic3d_ListIteratorOfListOfShortReal & It);
		%feature("autodoc", "1");
		void InsertBefore(Graphic3d_ListOfShortReal & Other, Graphic3d_ListIteratorOfListOfShortReal & It);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_ShortReal &I, Graphic3d_ListIteratorOfListOfShortReal & It);
		%feature("autodoc", "1");
		void InsertAfter(Graphic3d_ListOfShortReal & Other, Graphic3d_ListIteratorOfListOfShortReal & It);

};
%feature("shadow") Graphic3d_ListOfShortReal::~Graphic3d_ListOfShortReal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic3d_ListOfShortReal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic3d_Array1OfVertex;
class Graphic3d_Array1OfVertex {
	public:
		%feature("autodoc", "1");
		Graphic3d_Array1OfVertex(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		Graphic3d_Array1OfVertex(const Graphic3d_Vertex &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Graphic3d_Vertex &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const Graphic3d_Array1OfVertex & Assign(const Graphic3d_Array1OfVertex &Other);
		%feature("autodoc", "1");
		const Graphic3d_Array1OfVertex & operator=(const Graphic3d_Array1OfVertex &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Graphic3d_Vertex &Value);
		%feature("autodoc", "1");
		const Graphic3d_Vertex & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Graphic3d_Vertex & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Graphic3d_Vertex & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Graphic3d_Vertex & operator()(const Standard_Integer Index);

};
%feature("shadow") Graphic3d_Array1OfVertex::~Graphic3d_Array1OfVertex %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic3d_Array1OfVertex {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic3d_SequenceOfStructure;
class Graphic3d_SequenceOfStructure : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		Graphic3d_SequenceOfStructure();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const Graphic3d_SequenceOfStructure & Assign(const Graphic3d_SequenceOfStructure &Other);
		%feature("autodoc", "1");
		const Graphic3d_SequenceOfStructure & operator=(const Graphic3d_SequenceOfStructure &Other);
		%feature("autodoc", "1");
		void Append(const Handle_Graphic3d_Structure &T);
		%feature("autodoc", "1");
		void Append(Graphic3d_SequenceOfStructure & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_Graphic3d_Structure &T);
		%feature("autodoc", "1");
		void Prepend(Graphic3d_SequenceOfStructure & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_Graphic3d_Structure &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, Graphic3d_SequenceOfStructure & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_Graphic3d_Structure &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, Graphic3d_SequenceOfStructure & S);
		%feature("autodoc", "1");
		const Handle_Graphic3d_Structure & First() const;
		%feature("autodoc", "1");
		const Handle_Graphic3d_Structure & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, Graphic3d_SequenceOfStructure & S);
		%feature("autodoc", "1");
		const Handle_Graphic3d_Structure & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_Graphic3d_Structure & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_Graphic3d_Structure &I);
		%feature("autodoc", "1");
		Handle_Graphic3d_Structure & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_Graphic3d_Structure & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") Graphic3d_SequenceOfStructure::~Graphic3d_SequenceOfStructure %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic3d_SequenceOfStructure {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic3d_StructureManager;
class Graphic3d_StructureManager : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		virtual		void Destroy();
		%feature("autodoc", "1");
		void SetPrimitivesAspect(const Handle_Graphic3d_AspectLine3d &CTX);
		%feature("autodoc", "1");
		void SetPrimitivesAspect(const Handle_Graphic3d_AspectFillArea3d &CTX);
		%feature("autodoc", "1");
		void SetPrimitivesAspect(const Handle_Graphic3d_AspectText3d &CTX);
		%feature("autodoc", "1");
		void SetPrimitivesAspect(const Handle_Graphic3d_AspectMarker3d &CTX);
		%feature("autodoc", "1");
		void SetUpdateMode(const Aspect_TypeOfUpdate AType);
		%feature("autodoc", "1");
		virtual		void Update() const;
		%feature("autodoc", "1");
		void DisplayedStructures(Graphic3d_MapOfStructure & SG) const;
		%feature("autodoc", "1");
		void HighlightedStructures(Graphic3d_MapOfStructure & SG) const;
		%feature("autodoc", "1");
		void PickStructures(Graphic3d_MapOfStructure & SG) const;
		%feature("autodoc", "1");
		void VisibleStructures(Graphic3d_MapOfStructure & SG) const;
		%feature("autodoc", "1");
		Handle_Graphic3d_AspectFillArea3d FillArea3dAspect() const;
		%feature("autodoc", "1");
		Standard_Integer Limit();
		%feature("autodoc", "1");
		Handle_Graphic3d_AspectLine3d Line3dAspect() const;
		%feature("autodoc", "1");
		Handle_Graphic3d_AspectMarker3d Marker3dAspect() const;
		%feature("autodoc","MinMaxValues() -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real]");

		void MinMaxValues(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		void PrimitivesAspect(Handle_Graphic3d_AspectLine3d & CTXL, Handle_Graphic3d_AspectText3d & CTXT, Handle_Graphic3d_AspectMarker3d & CTXM, Handle_Graphic3d_AspectFillArea3d & CTXF) const;
		%feature("autodoc", "1");
		Handle_Graphic3d_AspectText3d Text3dAspect() const;
		%feature("autodoc", "1");
		Aspect_TypeOfUpdate UpdateMode() const;
		%feature("autodoc", "1");
		virtual		void ChangeDisplayPriority(const Handle_Graphic3d_Structure &AStructure, const Standard_Integer OldPriority, const Standard_Integer NewPriority);
		%feature("autodoc", "1");
		Standard_Integer CurrentId();
		%feature("autodoc", "1");
		virtual		void ReCompute(const Handle_Graphic3d_Structure &AStructure);
		%feature("autodoc", "1");
		virtual		void ReCompute(const Handle_Graphic3d_Structure &AStructure, const Handle_Graphic3d_DataStructureManager &AProjector);
		%feature("autodoc", "1");
		virtual		void Clear(const Handle_Graphic3d_Structure &AStructure, const Standard_Boolean WithDestruction);
		%feature("autodoc", "1");
		virtual		void Connect(const Handle_Graphic3d_Structure &AMother, const Handle_Graphic3d_Structure &ADaughter);
		%feature("autodoc", "1");
		virtual		void Disconnect(const Handle_Graphic3d_Structure &AMother, const Handle_Graphic3d_Structure &ADaughter);
		%feature("autodoc", "1");
		virtual		void Display(const Handle_Graphic3d_Structure &AStructure);
		%feature("autodoc", "1");
		virtual		void Erase(const Handle_Graphic3d_Structure &AStructure);
		%feature("autodoc", "1");
		virtual		void Highlight(const Handle_Graphic3d_Structure &AStructure, const Aspect_TypeOfHighlightMethod AMethod);
		%feature("autodoc", "1");
		virtual		void SetTransform(const Handle_Graphic3d_Structure &AStructure, const TColStd_Array2OfReal &ATrsf);
		%feature("autodoc", "1");
		Handle_Aspect_GraphicDevice GraphicDevice() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer Identification() const;
		%feature("autodoc", "1");
		virtual		Handle_Graphic3d_Structure Identification(const Standard_Integer AId) const;
		%feature("autodoc", "1");
		virtual		void UnHighlight();
		%feature("autodoc", "1");
		virtual		void UnHighlight(const Handle_Graphic3d_Structure &AStructure);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic3d_StructureManager {
	Handle_Graphic3d_StructureManager GetHandle() {
	return *(Handle_Graphic3d_StructureManager*) &$self;
	}
};
%extend Graphic3d_StructureManager {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic3d_StructureManager::~Graphic3d_StructureManager %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic3d_StructureManager {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic3d_Texture2Dmanual;
class Graphic3d_Texture2Dmanual : public Graphic3d_Texture2D {
	public:
		%feature("autodoc", "1");
		Graphic3d_Texture2Dmanual(const Handle_Graphic3d_StructureManager &SM, const char * FileName);
		%feature("autodoc", "1");
		Graphic3d_Texture2Dmanual(const Handle_Graphic3d_StructureManager &SM, const Graphic3d_NameOfTexture2D NOT);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic3d_Texture2Dmanual {
	Handle_Graphic3d_Texture2Dmanual GetHandle() {
	return *(Handle_Graphic3d_Texture2Dmanual*) &$self;
	}
};
%extend Graphic3d_Texture2Dmanual {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic3d_Texture2Dmanual::~Graphic3d_Texture2Dmanual %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic3d_Texture2Dmanual {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic3d_CBitFields4;
class Graphic3d_CBitFields4 {
	public:
		%feature("autodoc", "1");
		Graphic3d_CBitFields4();

};
%feature("shadow") Graphic3d_CBitFields4::~Graphic3d_CBitFields4 %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic3d_CBitFields4 {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic3d_Array1OfVertexC;
class Graphic3d_Array1OfVertexC {
	public:
		%feature("autodoc", "1");
		Graphic3d_Array1OfVertexC(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		Graphic3d_Array1OfVertexC(const Graphic3d_VertexC &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Graphic3d_VertexC &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const Graphic3d_Array1OfVertexC & Assign(const Graphic3d_Array1OfVertexC &Other);
		%feature("autodoc", "1");
		const Graphic3d_Array1OfVertexC & operator=(const Graphic3d_Array1OfVertexC &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Graphic3d_VertexC &Value);
		%feature("autodoc", "1");
		const Graphic3d_VertexC & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Graphic3d_VertexC & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Graphic3d_VertexC & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Graphic3d_VertexC & operator()(const Standard_Integer Index);

};
%feature("shadow") Graphic3d_Array1OfVertexC::~Graphic3d_Array1OfVertexC %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic3d_Array1OfVertexC {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic3d_Array1OfVertexN;
class Graphic3d_Array1OfVertexN {
	public:
		%feature("autodoc", "1");
		Graphic3d_Array1OfVertexN(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		Graphic3d_Array1OfVertexN(const Graphic3d_VertexN &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Graphic3d_VertexN &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const Graphic3d_Array1OfVertexN & Assign(const Graphic3d_Array1OfVertexN &Other);
		%feature("autodoc", "1");
		const Graphic3d_Array1OfVertexN & operator=(const Graphic3d_Array1OfVertexN &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Graphic3d_VertexN &Value);
		%feature("autodoc", "1");
		const Graphic3d_VertexN & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Graphic3d_VertexN & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Graphic3d_VertexN & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Graphic3d_VertexN & operator()(const Standard_Integer Index);

};
%feature("shadow") Graphic3d_Array1OfVertexN::~Graphic3d_Array1OfVertexN %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic3d_Array1OfVertexN {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic3d_GraphicDevice;
class Graphic3d_GraphicDevice : public Xw_GraphicDevice {
	public:
		%feature("autodoc", "1");
		Graphic3d_GraphicDevice(const char * Connexion, const Xw_TypeOfMapping Mapping=Xw_TOM_COLORCUBE, const Standard_Integer Ncolors=0, const Standard_Boolean UseDefault=1);
		%feature("autodoc", "1");
		Graphic3d_GraphicDevice(const Aspect_Display DisplayHandle);
		%feature("autodoc", "1");
		virtual		void Destroy();
		%feature("autodoc", "1");
		virtual		Handle_Aspect_GraphicDriver GraphicDriver() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic3d_GraphicDevice {
	Handle_Graphic3d_GraphicDevice GetHandle() {
	return *(Handle_Graphic3d_GraphicDevice*) &$self;
	}
};
%extend Graphic3d_GraphicDevice {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic3d_GraphicDevice::~Graphic3d_GraphicDevice %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic3d_GraphicDevice {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic3d_SequenceOfGroup;
class Graphic3d_SequenceOfGroup : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		Graphic3d_SequenceOfGroup();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const Graphic3d_SequenceOfGroup & Assign(const Graphic3d_SequenceOfGroup &Other);
		%feature("autodoc", "1");
		const Graphic3d_SequenceOfGroup & operator=(const Graphic3d_SequenceOfGroup &Other);
		%feature("autodoc", "1");
		void Append(const Handle_Graphic3d_Group &T);
		%feature("autodoc", "1");
		void Append(Graphic3d_SequenceOfGroup & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_Graphic3d_Group &T);
		%feature("autodoc", "1");
		void Prepend(Graphic3d_SequenceOfGroup & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_Graphic3d_Group &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, Graphic3d_SequenceOfGroup & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_Graphic3d_Group &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, Graphic3d_SequenceOfGroup & S);
		%feature("autodoc", "1");
		const Handle_Graphic3d_Group & First() const;
		%feature("autodoc", "1");
		const Handle_Graphic3d_Group & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, Graphic3d_SequenceOfGroup & S);
		%feature("autodoc", "1");
		const Handle_Graphic3d_Group & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_Graphic3d_Group & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_Graphic3d_Group &I);
		%feature("autodoc", "1");
		Handle_Graphic3d_Group & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_Graphic3d_Group & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") Graphic3d_SequenceOfGroup::~Graphic3d_SequenceOfGroup %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic3d_SequenceOfGroup {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic3d_Texture1D;
class Graphic3d_Texture1D : public Graphic3d_TextureMap {
	public:
		%feature("autodoc", "1");
		Graphic3d_NameOfTexture1D Name() const;
		%feature("autodoc", "1");
		Standard_Integer NumberOfTextures();
		%feature("autodoc", "1");
		char * TextureName(const Standard_Integer aRank);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic3d_Texture1D {
	Handle_Graphic3d_Texture1D GetHandle() {
	return *(Handle_Graphic3d_Texture1D*) &$self;
	}
};
%extend Graphic3d_Texture1D {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic3d_Texture1D::~Graphic3d_Texture1D %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic3d_Texture1D {
	void _kill_pointed() {
		delete $self;
	}
};
%extend Graphic3d_Texture1D {
	Graphic3d_Texture1D () {}
};


%nodefaultctor Graphic3d_Texture1Dmanual;
class Graphic3d_Texture1Dmanual : public Graphic3d_Texture1D {
	public:
		%feature("autodoc", "1");
		Graphic3d_Texture1Dmanual(const Handle_Graphic3d_StructureManager &SM, const char * FileName);
		%feature("autodoc", "1");
		Graphic3d_Texture1Dmanual(const Handle_Graphic3d_StructureManager &SM, const Graphic3d_NameOfTexture1D NOT);

};
%extend Graphic3d_Texture1Dmanual {
	Handle_Graphic3d_Texture1Dmanual GetHandle() {
	return *(Handle_Graphic3d_Texture1Dmanual*) &$self;
	}
};
%extend Graphic3d_Texture1Dmanual {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic3d_Texture1Dmanual::~Graphic3d_Texture1Dmanual %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic3d_Texture1Dmanual {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic3d_CycleError;
class Graphic3d_CycleError : public Standard_DomainError {
	public:
		%feature("autodoc", "1");
		Graphic3d_CycleError();
		%feature("autodoc", "1");
		Graphic3d_CycleError(const char * AString);
		%feature("autodoc", "1");
		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		Handle_Graphic3d_CycleError NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic3d_CycleError {
	Handle_Graphic3d_CycleError GetHandle() {
	return *(Handle_Graphic3d_CycleError*) &$self;
	}
};
%extend Graphic3d_CycleError {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic3d_CycleError::~Graphic3d_CycleError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic3d_CycleError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic3d_Array2OfVertexNT;
class Graphic3d_Array2OfVertexNT {
	public:
		%feature("autodoc", "1");
		Graphic3d_Array2OfVertexNT(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		Graphic3d_Array2OfVertexNT(const Graphic3d_VertexNT &Item, const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		void Init(const Graphic3d_VertexNT &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		const Graphic3d_Array2OfVertexNT & Assign(const Graphic3d_Array2OfVertexNT &Other);
		%feature("autodoc", "1");
		const Graphic3d_Array2OfVertexNT & operator=(const Graphic3d_Array2OfVertexNT &Other);
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
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const Graphic3d_VertexNT &Value);
		%feature("autodoc", "1");
		const Graphic3d_VertexNT & Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		const Graphic3d_VertexNT & operator()(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		Graphic3d_VertexNT & ChangeValue(const Standard_Integer Row, const Standard_Integer Col);
		%feature("autodoc", "1");
		Graphic3d_VertexNT & operator()(const Standard_Integer Row, const Standard_Integer Col);

};
%feature("shadow") Graphic3d_Array2OfVertexNT::~Graphic3d_Array2OfVertexNT %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic3d_Array2OfVertexNT {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic3d_PriorityDefinitionError;
class Graphic3d_PriorityDefinitionError : public Standard_OutOfRange {
	public:
		%feature("autodoc", "1");
		Graphic3d_PriorityDefinitionError();
		%feature("autodoc", "1");
		Graphic3d_PriorityDefinitionError(const char * AString);
		%feature("autodoc", "1");
		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		Handle_Graphic3d_PriorityDefinitionError NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic3d_PriorityDefinitionError {
	Handle_Graphic3d_PriorityDefinitionError GetHandle() {
	return *(Handle_Graphic3d_PriorityDefinitionError*) &$self;
	}
};
%extend Graphic3d_PriorityDefinitionError {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic3d_PriorityDefinitionError::~Graphic3d_PriorityDefinitionError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic3d_PriorityDefinitionError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic3d_DataStructureManager;
class Graphic3d_DataStructureManager : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		virtual		void Destroy();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic3d_DataStructureManager {
	Handle_Graphic3d_DataStructureManager GetHandle() {
	return *(Handle_Graphic3d_DataStructureManager*) &$self;
	}
};
%extend Graphic3d_DataStructureManager {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic3d_DataStructureManager::~Graphic3d_DataStructureManager %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic3d_DataStructureManager {
	void _kill_pointed() {
		delete $self;
	}
};
%extend Graphic3d_DataStructureManager {
	Graphic3d_DataStructureManager () {}
};


%nodefaultctor Graphic3d_ArrayOfTriangleFans;
class Graphic3d_ArrayOfTriangleFans : public Graphic3d_ArrayOfPrimitives {
	public:
		%feature("autodoc", "1");
		Graphic3d_ArrayOfTriangleFans(const Standard_Integer maxVertexs, const Standard_Integer maxFans=0, const Standard_Boolean hasVNormals=0, const Standard_Boolean hasVColors=0, const Standard_Boolean hasFColors=0, const Standard_Boolean hasTexels=0);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic3d_ArrayOfTriangleFans {
	Handle_Graphic3d_ArrayOfTriangleFans GetHandle() {
	return *(Handle_Graphic3d_ArrayOfTriangleFans*) &$self;
	}
};
%extend Graphic3d_ArrayOfTriangleFans {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic3d_ArrayOfTriangleFans::~Graphic3d_ArrayOfTriangleFans %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic3d_ArrayOfTriangleFans {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic3d_AspectFillArea3d;
class Graphic3d_AspectFillArea3d : public Aspect_AspectFillArea {
	public:
		%feature("autodoc", "1");
		Graphic3d_AspectFillArea3d();
		%feature("autodoc", "1");
		Graphic3d_AspectFillArea3d(const Aspect_InteriorStyle Interior, const Quantity_Color &InteriorColor, const Quantity_Color &EdgeColor, const Aspect_TypeOfLine EdgeLineType, const Standard_Real EdgeWidth, const Graphic3d_MaterialAspect &FrontMaterial, const Graphic3d_MaterialAspect &BackMaterial);
		%feature("autodoc", "1");
		void AllowBackFace();
		%feature("autodoc", "1");
		void SetBackMaterial(const Graphic3d_MaterialAspect &AMaterial);
		%feature("autodoc", "1");
		void SetDistinguishOn();
		%feature("autodoc", "1");
		void SetDistinguishOff();
		%feature("autodoc", "1");
		void SetEdgeOn();
		%feature("autodoc", "1");
		void SetEdgeOff();
		%feature("autodoc", "1");
		void SetFrontMaterial(const Graphic3d_MaterialAspect &AMaterial);
		%feature("autodoc", "1");
		void SuppressBackFace();
		%feature("autodoc", "1");
		void SetTextureMap(const Handle_Graphic3d_TextureMap &ATexture);
		%feature("autodoc", "1");
		void SetTextureMapOn();
		%feature("autodoc", "1");
		void SetTextureMapOff();
		%feature("autodoc", "1");
		void SetDefaultDegenerateModel(const Aspect_TypeOfDegenerateModel aModel=Aspect_TDM_WIREFRAME, const Quantity_Ratio aRatio=0.0);
		%feature("autodoc", "1");
		void SetDegenerateModel(const Aspect_TypeOfDegenerateModel aModel=Aspect_TDM_WIREFRAME, const Quantity_Ratio aRatio=0.0);
		%feature("autodoc", "1");
		void SetPolygonOffsets(const Standard_Integer aMode, const Standard_Real aFactor=1.0e+0, const Standard_Real aUnits=0.0);
		%feature("autodoc", "1");
		Standard_Boolean BackFace() const;
		%feature("autodoc", "1");
		Standard_Boolean Distinguish() const;
		%feature("autodoc", "1");
		Standard_Boolean Edge() const;
		%feature("autodoc", "1");
		Graphic3d_MaterialAspect BackMaterial() const;
		%feature("autodoc", "1");
		Graphic3d_MaterialAspect FrontMaterial() const;
		%feature("autodoc", "1");
		Handle_Graphic3d_TextureMap TextureMap() const;
		%feature("autodoc", "1");
		Standard_Boolean TextureMapState() const;
		%feature("autodoc", "1");
		Aspect_TypeOfDegenerateModel DegenerateModel(Quantity_Ratio & aRatio) const;
		%feature("autodoc", "1");
		Aspect_TypeOfDegenerateModel DefaultDegenerateModel(Quantity_Ratio & aRatio);
		%feature("autodoc","PolygonOffsets() -> [Standard_Integer, Standard_Real, Standard_Real]");

		void PolygonOffsets(Standard_Integer &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic3d_AspectFillArea3d {
	Handle_Graphic3d_AspectFillArea3d GetHandle() {
	return *(Handle_Graphic3d_AspectFillArea3d*) &$self;
	}
};
%extend Graphic3d_AspectFillArea3d {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic3d_AspectFillArea3d::~Graphic3d_AspectFillArea3d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic3d_AspectFillArea3d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic3d_VertexC;
class Graphic3d_VertexC : public Graphic3d_Vertex {
	public:
		%feature("autodoc", "1");
		Graphic3d_VertexC();
		%feature("autodoc", "1");
		Graphic3d_VertexC(const Standard_Real AX, const Standard_Real AY, const Standard_Real AZ, const Quantity_Color &AColor);
		%feature("autodoc", "1");
		Graphic3d_VertexC(const Graphic3d_Vertex &APoint, const Quantity_Color &AColor);
		%feature("autodoc", "1");
		void SetColor(const Quantity_Color &ColorNew);
		%feature("autodoc", "1");
		Quantity_Color Color() const;

};
%feature("shadow") Graphic3d_VertexC::~Graphic3d_VertexC %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic3d_VertexC {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic3d_VertexNT;
class Graphic3d_VertexNT : public Graphic3d_VertexN {
	public:
		%feature("autodoc", "1");
		Graphic3d_VertexNT();
		%feature("autodoc", "1");
		Graphic3d_VertexNT(const Standard_Real AX, const Standard_Real AY, const Standard_Real AZ, const Standard_Real ANX, const Standard_Real ANY, const Standard_Real ANZ, const Standard_Real ATX, const Standard_Real ATY=0.0, const Standard_Boolean FlagNormalise=1);
		%feature("autodoc", "1");
		Graphic3d_VertexNT(const Graphic3d_Vertex &APoint, const Graphic3d_Vector &AVector, const Standard_Real ATX, const Standard_Real ATY=0.0, const Standard_Boolean FlagNormalise=1);
		%feature("autodoc", "1");
		void SetTextureCoordinate(const Standard_Real ATX, const Standard_Real ATY=0.0);
		%feature("autodoc","TextureCoordinate() -> [Standard_Real, Standard_Real]");

		void TextureCoordinate(Standard_Real &OutValue, Standard_Real &OutValue) const;

};
%feature("shadow") Graphic3d_VertexNT::~Graphic3d_VertexNT %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic3d_VertexNT {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic3d_HSequenceOfGroup;
class Graphic3d_HSequenceOfGroup : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Graphic3d_HSequenceOfGroup();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const Handle_Graphic3d_Group &anItem);
		%feature("autodoc", "1");
		void Append(const Handle_Graphic3d_HSequenceOfGroup &aSequence);
		%feature("autodoc", "1");
		void Prepend(const Handle_Graphic3d_Group &anItem);
		%feature("autodoc", "1");
		void Prepend(const Handle_Graphic3d_HSequenceOfGroup &aSequence);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_Graphic3d_Group &anItem);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_Graphic3d_HSequenceOfGroup &aSequence);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_Graphic3d_Group &anItem);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_Graphic3d_HSequenceOfGroup &aSequence);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer anIndex, const Standard_Integer anOtherIndex);
		%feature("autodoc", "1");
		Handle_Graphic3d_HSequenceOfGroup Split(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer anIndex, const Handle_Graphic3d_Group &anItem);
		%feature("autodoc", "1");
		const Handle_Graphic3d_Group & Value(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		Handle_Graphic3d_Group & ChangeValue(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer fromIndex, const Standard_Integer toIndex);
		%feature("autodoc", "1");
		const Graphic3d_SequenceOfGroup & Sequence() const;
		%feature("autodoc", "1");
		Graphic3d_SequenceOfGroup & ChangeSequence();
		%feature("autodoc", "1");
		Handle_Graphic3d_HSequenceOfGroup ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic3d_HSequenceOfGroup {
	Handle_Graphic3d_HSequenceOfGroup GetHandle() {
	return *(Handle_Graphic3d_HSequenceOfGroup*) &$self;
	}
};
%extend Graphic3d_HSequenceOfGroup {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic3d_HSequenceOfGroup::~Graphic3d_HSequenceOfGroup %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic3d_HSequenceOfGroup {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic3d_MaterialAspect;
class Graphic3d_MaterialAspect {
	public:
		%feature("autodoc", "1");
		Graphic3d_MaterialAspect();
		%feature("autodoc", "1");
		Graphic3d_MaterialAspect(const Graphic3d_NameOfMaterial AName);
		%feature("autodoc", "1");
		void IncreaseShine(const Standard_Real ADelta);
		%feature("autodoc", "1");
		void SetAmbient(const Standard_Real AValue);
		%feature("autodoc", "1");
		void SetDiffuse(const Standard_Real AValue);
		%feature("autodoc", "1");
		void SetEmissive(const Standard_Real AValue);
		%feature("autodoc", "1");
		void SetShininess(const Standard_Real AValue);
		%feature("autodoc", "1");
		void SetSpecular(const Standard_Real AValue);
		%feature("autodoc", "1");
		void SetTransparency(const Standard_Real AValue);
		%feature("autodoc", "1");
		void SetColor(const Quantity_Color &AColor);
		%feature("autodoc", "1");
		void SetAmbientColor(const Quantity_Color &AColor);
		%feature("autodoc", "1");
		void SetDiffuseColor(const Quantity_Color &AColor);
		%feature("autodoc", "1");
		void SetSpecularColor(const Quantity_Color &AColor);
		%feature("autodoc", "1");
		void SetEmissiveColor(const Quantity_Color &AColor);
		%feature("autodoc", "1");
		void SetReflectionModeOn(const Graphic3d_TypeOfReflection AType);
		%feature("autodoc", "1");
		void SetReflectionModeOff(const Graphic3d_TypeOfReflection AType);
		%feature("autodoc", "1");
		void SetMaterialType(const Graphic3d_TypeOfMaterial AType);
		%feature("autodoc", "1");
		void SetMaterialName(const char * AName);
		%feature("autodoc", "1");
		void SetEnvReflexion(const Standard_ShortReal AValue);
		%feature("autodoc", "1");
		void Reset();
		%feature("autodoc", "1");
		Quantity_Color Color() const;
		%feature("autodoc", "1");
		Quantity_Color AmbientColor() const;
		%feature("autodoc", "1");
		Quantity_Color DiffuseColor() const;
		%feature("autodoc", "1");
		Quantity_Color SpecularColor() const;
		%feature("autodoc", "1");
		Quantity_Color EmissiveColor() const;
		%feature("autodoc", "1");
		Standard_Real Ambient() const;
		%feature("autodoc", "1");
		Standard_Real Diffuse() const;
		%feature("autodoc", "1");
		Standard_Real Specular() const;
		%feature("autodoc", "1");
		Standard_Real Transparency() const;
		%feature("autodoc", "1");
		Standard_Real Emissive() const;
		%feature("autodoc", "1");
		Standard_Real Shininess() const;
		%feature("autodoc", "1");
		Standard_Boolean ReflectionMode(const Graphic3d_TypeOfReflection AType) const;
		%feature("autodoc", "1");
		Standard_Boolean MaterialType(const Graphic3d_TypeOfMaterial AType) const;
		%feature("autodoc", "1");
		Standard_ShortReal EnvReflexion() const;
		%feature("autodoc", "1");
		Graphic3d_NameOfMaterial Name() const;
		%feature("autodoc", "1");
		Standard_Boolean IsDifferent(const Graphic3d_MaterialAspect &Other) const;
		%feature("autodoc", "1");
		Standard_Boolean operator!=(const Graphic3d_MaterialAspect &Other) const;
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const Graphic3d_MaterialAspect &Other) const;
		%feature("autodoc", "1");
		Standard_Boolean operator==(const Graphic3d_MaterialAspect &Other) const;
		%feature("autodoc", "1");
		Standard_Integer NumberOfMaterials();
		%feature("autodoc", "1");
		char * MaterialName(const Standard_Integer aRank);
		%feature("autodoc", "1");
		char * MaterialName() const;
		%feature("autodoc", "1");
		Graphic3d_TypeOfMaterial MaterialType(const Standard_Integer aRank);

};
%feature("shadow") Graphic3d_MaterialAspect::~Graphic3d_MaterialAspect %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic3d_MaterialAspect {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic3d_ListIteratorOfListOfPArray;
class Graphic3d_ListIteratorOfListOfPArray {
	public:
		%feature("autodoc", "1");
		Graphic3d_ListIteratorOfListOfPArray();
		%feature("autodoc", "1");
		Graphic3d_ListIteratorOfListOfPArray(const Graphic3d_ListOfPArray &L);
		%feature("autodoc", "1");
		void Initialize(const Graphic3d_ListOfPArray &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		Handle_Graphic3d_ArrayOfPrimitives & Value() const;

};
%feature("shadow") Graphic3d_ListIteratorOfListOfPArray::~Graphic3d_ListIteratorOfListOfPArray %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic3d_ListIteratorOfListOfPArray {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic3d_AspectLine3d;
class Graphic3d_AspectLine3d : public Aspect_AspectLine {
	public:
		%feature("autodoc", "1");
		Graphic3d_AspectLine3d();
		%feature("autodoc", "1");
		Graphic3d_AspectLine3d(const Quantity_Color &AColor, const Aspect_TypeOfLine AType, const Standard_Real AWidth);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic3d_AspectLine3d {
	Handle_Graphic3d_AspectLine3d GetHandle() {
	return *(Handle_Graphic3d_AspectLine3d*) &$self;
	}
};
%extend Graphic3d_AspectLine3d {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic3d_AspectLine3d::~Graphic3d_AspectLine3d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic3d_AspectLine3d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic3d_Array2OfVertexN;
class Graphic3d_Array2OfVertexN {
	public:
		%feature("autodoc", "1");
		Graphic3d_Array2OfVertexN(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		Graphic3d_Array2OfVertexN(const Graphic3d_VertexN &Item, const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		void Init(const Graphic3d_VertexN &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		const Graphic3d_Array2OfVertexN & Assign(const Graphic3d_Array2OfVertexN &Other);
		%feature("autodoc", "1");
		const Graphic3d_Array2OfVertexN & operator=(const Graphic3d_Array2OfVertexN &Other);
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
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const Graphic3d_VertexN &Value);
		%feature("autodoc", "1");
		const Graphic3d_VertexN & Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		const Graphic3d_VertexN & operator()(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		Graphic3d_VertexN & ChangeValue(const Standard_Integer Row, const Standard_Integer Col);
		%feature("autodoc", "1");
		Graphic3d_VertexN & operator()(const Standard_Integer Row, const Standard_Integer Col);

};
%feature("shadow") Graphic3d_Array2OfVertexN::~Graphic3d_Array2OfVertexN %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic3d_Array2OfVertexN {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic3d_TransformError;
class Graphic3d_TransformError : public Standard_OutOfRange {
	public:
		%feature("autodoc", "1");
		Graphic3d_TransformError();
		%feature("autodoc", "1");
		Graphic3d_TransformError(const char * AString);
		%feature("autodoc", "1");
		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		Handle_Graphic3d_TransformError NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic3d_TransformError {
	Handle_Graphic3d_TransformError GetHandle() {
	return *(Handle_Graphic3d_TransformError*) &$self;
	}
};
%extend Graphic3d_TransformError {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic3d_TransformError::~Graphic3d_TransformError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic3d_TransformError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic3d_SequenceNodeOfSequenceOfStructure;
class Graphic3d_SequenceNodeOfSequenceOfStructure : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Graphic3d_SequenceNodeOfSequenceOfStructure(const Handle_Graphic3d_Structure &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_Graphic3d_Structure & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic3d_SequenceNodeOfSequenceOfStructure {
	Handle_Graphic3d_SequenceNodeOfSequenceOfStructure GetHandle() {
	return *(Handle_Graphic3d_SequenceNodeOfSequenceOfStructure*) &$self;
	}
};
%extend Graphic3d_SequenceNodeOfSequenceOfStructure {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic3d_SequenceNodeOfSequenceOfStructure::~Graphic3d_SequenceNodeOfSequenceOfStructure %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic3d_SequenceNodeOfSequenceOfStructure {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic3d_ArrayOfPolygons;
class Graphic3d_ArrayOfPolygons : public Graphic3d_ArrayOfPrimitives {
	public:
		%feature("autodoc", "1");
		Graphic3d_ArrayOfPolygons(const Standard_Integer maxVertexs, const Standard_Integer maxBounds=0, const Standard_Integer maxEdges=0, const Standard_Boolean hasVNormals=0, const Standard_Boolean hasVColors=0, const Standard_Boolean hasBColors=0, const Standard_Boolean hasTexels=0, const Standard_Boolean hasEdgeInfos=0);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic3d_ArrayOfPolygons {
	Handle_Graphic3d_ArrayOfPolygons GetHandle() {
	return *(Handle_Graphic3d_ArrayOfPolygons*) &$self;
	}
};
%extend Graphic3d_ArrayOfPolygons {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic3d_ArrayOfPolygons::~Graphic3d_ArrayOfPolygons %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic3d_ArrayOfPolygons {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic3d_ArrayOfTriangleStrips;
class Graphic3d_ArrayOfTriangleStrips : public Graphic3d_ArrayOfPrimitives {
	public:
		%feature("autodoc", "1");
		Graphic3d_ArrayOfTriangleStrips(const Standard_Integer maxVertexs, const Standard_Integer maxStrips=0, const Standard_Boolean hasVNormals=0, const Standard_Boolean hasVColors=0, const Standard_Boolean hasSColors=0, const Standard_Boolean hasTexels=0);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic3d_ArrayOfTriangleStrips {
	Handle_Graphic3d_ArrayOfTriangleStrips GetHandle() {
	return *(Handle_Graphic3d_ArrayOfTriangleStrips*) &$self;
	}
};
%extend Graphic3d_ArrayOfTriangleStrips {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic3d_ArrayOfTriangleStrips::~Graphic3d_ArrayOfTriangleStrips %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic3d_ArrayOfTriangleStrips {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic3d_Array1OfVertexNT;
class Graphic3d_Array1OfVertexNT {
	public:
		%feature("autodoc", "1");
		Graphic3d_Array1OfVertexNT(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		Graphic3d_Array1OfVertexNT(const Graphic3d_VertexNT &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Graphic3d_VertexNT &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const Graphic3d_Array1OfVertexNT & Assign(const Graphic3d_Array1OfVertexNT &Other);
		%feature("autodoc", "1");
		const Graphic3d_Array1OfVertexNT & operator=(const Graphic3d_Array1OfVertexNT &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Graphic3d_VertexNT &Value);
		%feature("autodoc", "1");
		const Graphic3d_VertexNT & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Graphic3d_VertexNT & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Graphic3d_VertexNT & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Graphic3d_VertexNT & operator()(const Standard_Integer Index);

};
%feature("shadow") Graphic3d_Array1OfVertexNT::~Graphic3d_Array1OfVertexNT %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic3d_Array1OfVertexNT {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic3d_GroupDefinitionError;
class Graphic3d_GroupDefinitionError : public Standard_OutOfRange {
	public:
		%feature("autodoc", "1");
		Graphic3d_GroupDefinitionError();
		%feature("autodoc", "1");
		Graphic3d_GroupDefinitionError(const char * AString);
		%feature("autodoc", "1");
		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		Handle_Graphic3d_GroupDefinitionError NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic3d_GroupDefinitionError {
	Handle_Graphic3d_GroupDefinitionError GetHandle() {
	return *(Handle_Graphic3d_GroupDefinitionError*) &$self;
	}
};
%extend Graphic3d_GroupDefinitionError {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic3d_GroupDefinitionError::~Graphic3d_GroupDefinitionError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic3d_GroupDefinitionError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic3d_Texture1Dsegment;
class Graphic3d_Texture1Dsegment : public Graphic3d_Texture1D {
	public:
		%feature("autodoc", "1");
		Graphic3d_Texture1Dsegment(const Handle_Graphic3d_StructureManager &VM, const char * FileName);
		%feature("autodoc", "1");
		Graphic3d_Texture1Dsegment(const Handle_Graphic3d_StructureManager &VM, const Graphic3d_NameOfTexture1D NOT);
		%feature("autodoc", "1");
		void SetSegment(const Standard_ShortReal X1, const Standard_ShortReal Y1, const Standard_ShortReal Z1, const Standard_ShortReal X2, const Standard_ShortReal Y2, const Standard_ShortReal Z2);
		%feature("autodoc", "1");
		void Segment(Standard_ShortReal & X1, Standard_ShortReal & Y1, Standard_ShortReal & Z1, Standard_ShortReal & X2, Standard_ShortReal & Y2, Standard_ShortReal & Z2) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic3d_Texture1Dsegment {
	Handle_Graphic3d_Texture1Dsegment GetHandle() {
	return *(Handle_Graphic3d_Texture1Dsegment*) &$self;
	}
};
%extend Graphic3d_Texture1Dsegment {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic3d_Texture1Dsegment::~Graphic3d_Texture1Dsegment %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic3d_Texture1Dsegment {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic3d_ListNodeOfSetListOfSetOfGroup;
class Graphic3d_ListNodeOfSetListOfSetOfGroup : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Graphic3d_ListNodeOfSetListOfSetOfGroup(const Handle_Graphic3d_Group &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_Graphic3d_Group & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic3d_ListNodeOfSetListOfSetOfGroup {
	Handle_Graphic3d_ListNodeOfSetListOfSetOfGroup GetHandle() {
	return *(Handle_Graphic3d_ListNodeOfSetListOfSetOfGroup*) &$self;
	}
};
%extend Graphic3d_ListNodeOfSetListOfSetOfGroup {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic3d_ListNodeOfSetListOfSetOfGroup::~Graphic3d_ListNodeOfSetListOfSetOfGroup %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic3d_ListNodeOfSetListOfSetOfGroup {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic3d_Group;
class Graphic3d_Group : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Graphic3d_Group(const Handle_Graphic3d_Structure &AStructure);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		void Remove();
		%feature("autodoc", "1");
		void SetPrimitivesAspect(const Handle_Graphic3d_AspectLine3d &CTX);
		%feature("autodoc", "1");
		void SetPrimitivesAspect(const Handle_Graphic3d_AspectFillArea3d &CTX);
		%feature("autodoc", "1");
		void SetPrimitivesAspect(const Handle_Graphic3d_AspectText3d &CTX);
		%feature("autodoc", "1");
		void SetPrimitivesAspect(const Handle_Graphic3d_AspectMarker3d &CTX);
		%feature("autodoc", "1");
		void SetMinMaxValues(const Standard_Real XMin, const Standard_Real YMin, const Standard_Real ZMin, const Standard_Real XMax, const Standard_Real YMax, const Standard_Real ZMax);
		%feature("autodoc", "1");
		Standard_Integer PickId() const;
		%feature("autodoc", "1");
		void RemovePickId();
		%feature("autodoc", "1");
		void SetPickId(const Standard_Integer Id);
		%feature("autodoc", "1");
		void Marker(const Graphic3d_Vertex &APoint, const Standard_Boolean EvalMinMax=1);
		%feature("autodoc", "1");
		void MarkerSet(const Graphic3d_Array1OfVertex &ListVertex, const Standard_Boolean EvalMinMax=1);
		%feature("autodoc", "1");
		void Polygon(const Graphic3d_Array1OfVertex &ListVertex, const Graphic3d_TypeOfPolygon AType=Graphic3d_TOP_CONVEX, const Standard_Boolean EvalMinMax=1);
		%feature("autodoc", "1");
		void Polygon(const Graphic3d_Array1OfVertex &ListVertex, const Graphic3d_Vector &Normal, const Graphic3d_TypeOfPolygon AType=Graphic3d_TOP_CONVEX, const Standard_Boolean EvalMinMax=1);
		%feature("autodoc", "1");
		void Polygon(const Graphic3d_Array1OfVertexN &ListVertex, const Graphic3d_TypeOfPolygon AType=Graphic3d_TOP_CONVEX, const Standard_Boolean EvalMinMax=1);
		%feature("autodoc", "1");
		void Polygon(const Graphic3d_Array1OfVertexN &ListVertex, const Graphic3d_Vector &Normal, const Graphic3d_TypeOfPolygon AType=Graphic3d_TOP_CONVEX, const Standard_Boolean EvalMinMax=1);
		%feature("autodoc", "1");
		void Polygon(const Graphic3d_Array1OfVertexNT &ListVertex, const Graphic3d_TypeOfPolygon AType=Graphic3d_TOP_CONVEX, const Standard_Boolean EvalMinMax=1);
		%feature("autodoc", "1");
		void Polygon(const TColStd_Array1OfInteger &Bounds, const Graphic3d_Array1OfVertex &ListVertex, const Standard_Boolean EvalMinMax=1);
		%feature("autodoc", "1");
		void Polygon(const TColStd_Array1OfInteger &Bounds, const Graphic3d_Array1OfVertex &ListVertex, const Graphic3d_Vector &Normal, const Standard_Boolean EvalMinMax=1);
		%feature("autodoc", "1");
		void Polygon(const TColStd_Array1OfInteger &Bounds, const Graphic3d_Array1OfVertexN &ListVertex, const Standard_Boolean EvalMinMax=1);
		%feature("autodoc", "1");
		void Polygon(const TColStd_Array1OfInteger &Bounds, const Graphic3d_Array1OfVertexN &ListVertex, const Graphic3d_Vector &Normal, const Standard_Boolean EvalMinMax=1);
		%feature("autodoc", "1");
		void PolygonSet(const TColStd_Array1OfInteger &Bounds, const Graphic3d_Array1OfVertex &ListVertex, const Graphic3d_TypeOfPolygon AType=Graphic3d_TOP_CONVEX, const Standard_Boolean EvalMinMax=1);
		%feature("autodoc", "1");
		void Polyline(const Graphic3d_Vertex &APT1, const Graphic3d_Vertex &APT2, const Standard_Boolean EvalMinMax=1);
		%feature("autodoc", "1");
		void Polyline(const Graphic3d_Array1OfVertex &ListVertex, const Standard_Boolean EvalMinMax=1);
		%feature("autodoc", "1");
		void Polyline(const Graphic3d_Array1OfVertexC &ListVertex, const Standard_Boolean EvalMinMax=1);
		%feature("autodoc", "1");
		void QuadrangleMesh(const Graphic3d_Array2OfVertex &ListVertex, const Standard_Boolean EvalMinMax=1);
		%feature("autodoc", "1");
		void QuadrangleMesh(const Graphic3d_Array2OfVertexN &ListVertex, const Standard_Boolean EvalMinMax=1);
		%feature("autodoc", "1");
		void QuadrangleMesh(const Graphic3d_Array2OfVertexNT &ListVertex, const Standard_Boolean EvalMinMax=1);
		%feature("autodoc", "1");
		void QuadrangleSet(const Graphic3d_Array1OfVertex &ListVertex, const Aspect_Array1OfEdge &ListEdge, const Standard_Boolean EvalMinMax=1);
		%feature("autodoc", "1");
		void QuadrangleSet(const Graphic3d_Array1OfVertexN &ListVertex, const Aspect_Array1OfEdge &ListEdge, const Standard_Boolean EvalMinMax=1);
		%feature("autodoc", "1");
		void QuadrangleSet(const Graphic3d_Array1OfVertexNT &ListVertex, const Aspect_Array1OfEdge &ListEdge, const Standard_Boolean EvalMinMax=1);
		%feature("autodoc", "1");
		void QuadrangleSet(const Graphic3d_Array1OfVertexC &ListVertex, const Aspect_Array1OfEdge &ListEdge, const Standard_Boolean EvalMinMax=1);
		%feature("autodoc", "1");
		void QuadrangleSet(const Graphic3d_Array1OfVertexNC &ListVertex, const Aspect_Array1OfEdge &ListEdge, const Standard_Boolean EvalMinMax=1);
		%feature("autodoc", "1");
		void Text(const char * AText, const Graphic3d_Vertex &APoint, const Standard_Real AHeight, const Quantity_PlaneAngle AAngle, const Graphic3d_TextPath ATp, const Graphic3d_HorizontalTextAlignment AHta, const Graphic3d_VerticalTextAlignment AVta, const Standard_Boolean EvalMinMax=1);
		%feature("autodoc", "1");
		void Text(const char * AText, const Graphic3d_Vertex &APoint, const Standard_Real AHeight, const Standard_Boolean EvalMinMax=1);
		%feature("autodoc", "1");
		void Text(const TCollection_ExtendedString &AText, const Graphic3d_Vertex &APoint, const Standard_Real AHeight, const Quantity_PlaneAngle AAngle, const Graphic3d_TextPath ATp, const Graphic3d_HorizontalTextAlignment AHta, const Graphic3d_VerticalTextAlignment AVta, const Standard_Boolean EvalMinMax=1);
		%feature("autodoc", "1");
		void Text(const TCollection_ExtendedString &AText, const Graphic3d_Vertex &APoint, const Standard_Real AHeight, const Standard_Boolean EvalMinMax=1);
		%feature("autodoc", "1");
		void TriangleMesh(const Graphic3d_Array1OfVertex &ListVertex, const Standard_Boolean EvalMinMax=1);
		%feature("autodoc", "1");
		void TriangleMesh(const Graphic3d_Array1OfVertexN &ListVertex, const Standard_Boolean EvalMinMax=1);
		%feature("autodoc", "1");
		void TriangleMesh(const Graphic3d_Array1OfVertexNT &ListVertex, const Standard_Boolean EvalMinMax=1);
		%feature("autodoc", "1");
		void TriangleSet(const Graphic3d_Array1OfVertex &ListVertex, const Aspect_Array1OfEdge &ListEdge, const Standard_Boolean EvalMinMax=1);
		%feature("autodoc", "1");
		void TriangleSet(const Graphic3d_Array1OfVertexN &ListVertex, const Aspect_Array1OfEdge &ListEdge, const Standard_Boolean EvalMinMax=1);
		%feature("autodoc", "1");
		void TriangleSet(const Graphic3d_Array1OfVertexNT &ListVertex, const Aspect_Array1OfEdge &ListEdge, const Standard_Boolean EvalMinMax=1);
		%feature("autodoc", "1");
		void TriangleSet(const Graphic3d_Array1OfVertexC &ListVertex, const Aspect_Array1OfEdge &ListEdge, const Standard_Boolean EvalMinMax=1);
		%feature("autodoc", "1");
		void TriangleSet(const Graphic3d_Array1OfVertexNC &ListVertex, const Aspect_Array1OfEdge &ListEdge, const Standard_Boolean EvalMinMax=1);
		%feature("autodoc", "1");
		void AddPrimitiveArray(const Handle_Graphic3d_ArrayOfPrimitives &elem, const Standard_Boolean EvalMinMax=1);
		%feature("autodoc", "1");
		void RemovePrimitiveArray(const Standard_Integer aRank);
		%feature("autodoc", "1");
		void RemovePrimitiveArrays();
		%feature("autodoc", "1");
		void UserDraw(const Standard_Address AnObject, const Standard_Boolean EvalMinMax=1, const Standard_Boolean ContainsFacet=0);
		%feature("autodoc", "1");
		Standard_Integer ArrayNumber() const;
		%feature("autodoc", "1");
		void InitDefinedArray();
		%feature("autodoc", "1");
		void NextDefinedArray();
		%feature("autodoc", "1");
		Standard_Boolean MoreDefinedArray();
		%feature("autodoc", "1");
		Handle_Graphic3d_ArrayOfPrimitives DefinedArray() const;
		%feature("autodoc", "1");
		void GroupPrimitivesAspect(Handle_Graphic3d_AspectLine3d & CTXL, Handle_Graphic3d_AspectText3d & CTXT, Handle_Graphic3d_AspectMarker3d & CTXM, Handle_Graphic3d_AspectFillArea3d & CTXF) const;
		%feature("autodoc", "1");
		void PrimitivesAspect(Handle_Graphic3d_AspectLine3d & CTXL, Handle_Graphic3d_AspectText3d & CTXT, Handle_Graphic3d_AspectMarker3d & CTXM, Handle_Graphic3d_AspectFillArea3d & CTXF) const;
		%feature("autodoc", "1");
		Standard_Boolean ContainsFacet() const;
		%feature("autodoc", "1");
		Standard_Boolean IsDeleted() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc","MinMaxValues() -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real]");

		void MinMaxValues(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Handle_Graphic3d_Structure Structure() const;
		%feature("autodoc", "1");
		void Exploration() const;
		%feature("autodoc", "1");
		void BeginPrimitives();
		%feature("autodoc", "1");
		void EndPrimitives();
		%feature("autodoc", "1");
		void Bezier(const Graphic3d_Array1OfVertex &ListVertex, const Standard_Boolean EvalMinMax=1);
		%feature("autodoc", "1");
		void Bezier(const Graphic3d_Array1OfVertex &ListVertex, const TColStd_Array1OfReal &ListWeight, const Standard_Boolean EvalMinMax=1);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic3d_Group {
	Handle_Graphic3d_Group GetHandle() {
	return *(Handle_Graphic3d_Group*) &$self;
	}
};
%extend Graphic3d_Group {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic3d_Group::~Graphic3d_Group %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic3d_Group {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic3d_HSetOfGroup;
class Graphic3d_HSetOfGroup : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Graphic3d_HSetOfGroup();
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Add(const Handle_Graphic3d_Group &T);
		%feature("autodoc", "1");
		Standard_Boolean Remove(const Handle_Graphic3d_Group &T);
		%feature("autodoc", "1");
		Handle_Graphic3d_HSetOfGroup Union(const Handle_Graphic3d_HSetOfGroup &B) const;
		%feature("autodoc", "1");
		Handle_Graphic3d_HSetOfGroup Intersection(const Handle_Graphic3d_HSetOfGroup &B) const;
		%feature("autodoc", "1");
		Handle_Graphic3d_HSetOfGroup Difference(const Handle_Graphic3d_HSetOfGroup &B) const;
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Handle_Graphic3d_Group &T) const;
		%feature("autodoc", "1");
		Standard_Boolean IsASubset(const Handle_Graphic3d_HSetOfGroup &S) const;
		%feature("autodoc", "1");
		Standard_Boolean IsAProperSubset(const Handle_Graphic3d_HSetOfGroup &S) const;
		%feature("autodoc", "1");
		Handle_Graphic3d_HSetOfGroup ShallowCopy() const;
		%feature("autodoc", "1");
		const Graphic3d_SetOfGroup & Set() const;
		%feature("autodoc", "1");
		Graphic3d_SetOfGroup & ChangeSet();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic3d_HSetOfGroup {
	Handle_Graphic3d_HSetOfGroup GetHandle() {
	return *(Handle_Graphic3d_HSetOfGroup*) &$self;
	}
};
%extend Graphic3d_HSetOfGroup {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic3d_HSetOfGroup::~Graphic3d_HSetOfGroup %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic3d_HSetOfGroup {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic3d_SequenceNodeOfSequenceOfGroup;
class Graphic3d_SequenceNodeOfSequenceOfGroup : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Graphic3d_SequenceNodeOfSequenceOfGroup(const Handle_Graphic3d_Group &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_Graphic3d_Group & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic3d_SequenceNodeOfSequenceOfGroup {
	Handle_Graphic3d_SequenceNodeOfSequenceOfGroup GetHandle() {
	return *(Handle_Graphic3d_SequenceNodeOfSequenceOfGroup*) &$self;
	}
};
%extend Graphic3d_SequenceNodeOfSequenceOfGroup {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic3d_SequenceNodeOfSequenceOfGroup::~Graphic3d_SequenceNodeOfSequenceOfGroup %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic3d_SequenceNodeOfSequenceOfGroup {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic3d_ArrayOfQuadrangles;
class Graphic3d_ArrayOfQuadrangles : public Graphic3d_ArrayOfPrimitives {
	public:
		%feature("autodoc", "1");
		Graphic3d_ArrayOfQuadrangles(const Standard_Integer maxVertexs, const Standard_Integer maxEdges=0, const Standard_Boolean hasVNormals=0, const Standard_Boolean hasVColors=0, const Standard_Boolean hasTexels=0, const Standard_Boolean hasEdgeInfos=0);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic3d_ArrayOfQuadrangles {
	Handle_Graphic3d_ArrayOfQuadrangles GetHandle() {
	return *(Handle_Graphic3d_ArrayOfQuadrangles*) &$self;
	}
};
%extend Graphic3d_ArrayOfQuadrangles {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic3d_ArrayOfQuadrangles::~Graphic3d_ArrayOfQuadrangles %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic3d_ArrayOfQuadrangles {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic3d_ArrayOfPolylines;
class Graphic3d_ArrayOfPolylines : public Graphic3d_ArrayOfPrimitives {
	public:
		%feature("autodoc", "1");
		Graphic3d_ArrayOfPolylines(const Standard_Integer maxVertexs, const Standard_Integer maxBounds=0, const Standard_Integer maxEdges=0, const Standard_Boolean hasVColors=0, const Standard_Boolean hasBColors=0, const Standard_Boolean hasEdgeInfos=0);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic3d_ArrayOfPolylines {
	Handle_Graphic3d_ArrayOfPolylines GetHandle() {
	return *(Handle_Graphic3d_ArrayOfPolylines*) &$self;
	}
};
%extend Graphic3d_ArrayOfPolylines {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic3d_ArrayOfPolylines::~Graphic3d_ArrayOfPolylines %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic3d_ArrayOfPolylines {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic3d_MapOfStructure;
class Graphic3d_MapOfStructure : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		Graphic3d_MapOfStructure(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		Graphic3d_MapOfStructure & Assign(const Graphic3d_MapOfStructure &Other);
		%feature("autodoc", "1");
		Graphic3d_MapOfStructure & operator=(const Graphic3d_MapOfStructure &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Add(const Handle_Graphic3d_Structure &aKey);
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Handle_Graphic3d_Structure &aKey) const;
		%feature("autodoc", "1");
		Standard_Boolean Remove(const Handle_Graphic3d_Structure &aKey);

};
%feature("shadow") Graphic3d_MapOfStructure::~Graphic3d_MapOfStructure %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic3d_MapOfStructure {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic3d_ListNodeOfListOfPArray;
class Graphic3d_ListNodeOfListOfPArray : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Graphic3d_ListNodeOfListOfPArray(const Handle_Graphic3d_ArrayOfPrimitives &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_Graphic3d_ArrayOfPrimitives & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic3d_ListNodeOfListOfPArray {
	Handle_Graphic3d_ListNodeOfListOfPArray GetHandle() {
	return *(Handle_Graphic3d_ListNodeOfListOfPArray*) &$self;
	}
};
%extend Graphic3d_ListNodeOfListOfPArray {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic3d_ListNodeOfListOfPArray::~Graphic3d_ListNodeOfListOfPArray %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic3d_ListNodeOfListOfPArray {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic3d_MaterialDefinitionError;
class Graphic3d_MaterialDefinitionError : public Standard_OutOfRange {
	public:
		%feature("autodoc", "1");
		Graphic3d_MaterialDefinitionError();
		%feature("autodoc", "1");
		Graphic3d_MaterialDefinitionError(const char * AString);
		%feature("autodoc", "1");
		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		Handle_Graphic3d_MaterialDefinitionError NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic3d_MaterialDefinitionError {
	Handle_Graphic3d_MaterialDefinitionError GetHandle() {
	return *(Handle_Graphic3d_MaterialDefinitionError*) &$self;
	}
};
%extend Graphic3d_MaterialDefinitionError {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic3d_MaterialDefinitionError::~Graphic3d_MaterialDefinitionError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic3d_MaterialDefinitionError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic3d_AspectText3d;
class Graphic3d_AspectText3d : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Graphic3d_AspectText3d();
		%feature("autodoc", "1");
		Graphic3d_AspectText3d(const Quantity_Color &AColor, const Graphic3d_NameOfFont AFont, const Standard_Real AExpansionFactor, const Standard_Real ASpace, const Aspect_TypeOfStyleText AStyle=Aspect_TOST_NORMAL, const Aspect_TypeOfDisplayText ADisplayType=Aspect_TODT_NORMAL);
		%feature("autodoc", "1");
		void SetColor(const Quantity_Color &AColor);
		%feature("autodoc", "1");
		void SetExpansionFactor(const Standard_Real AFactor);
		%feature("autodoc", "1");
		void SetFont(const Graphic3d_NameOfFont AFont);
		%feature("autodoc", "1");
		void SetSpace(const Standard_Real ASpace);
		%feature("autodoc", "1");
		void SetStyle(const Aspect_TypeOfStyleText AStyle);
		%feature("autodoc", "1");
		void SetDisplayType(const Aspect_TypeOfDisplayText ADisplayType);
		%feature("autodoc", "1");
		void SetColorSubTitle(const Quantity_Color &AColor);
		%feature("autodoc", "1");
		void TexFontEnable();
		%feature("autodoc", "1");
		void TexFontDisable();
		%feature("autodoc", "1");
		Standard_Boolean IsTexFontEnable();
		%feature("autodoc", "1");
		void SetTextureMappedFont(const Standard_Boolean AFlag);
		%feature("autodoc","Values() -> [Standard_Real, Standard_Real]");

		void Values(Quantity_Color & AColor, Graphic3d_NameOfFont & AFont, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","Values() -> [Standard_Real, Standard_Real]");

		void Values(Quantity_Color & AColor, Graphic3d_NameOfFont & AFont, Standard_Real &OutValue, Standard_Real &OutValue, Aspect_TypeOfStyleText & AStyle, Aspect_TypeOfDisplayText & ADisplayType, Quantity_Color & AColorSubTitle, Standard_Boolean & ATextureMappedFont) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic3d_AspectText3d {
	Handle_Graphic3d_AspectText3d GetHandle() {
	return *(Handle_Graphic3d_AspectText3d*) &$self;
	}
};
%extend Graphic3d_AspectText3d {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic3d_AspectText3d::~Graphic3d_AspectText3d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic3d_AspectText3d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic3d_Strips;
class Graphic3d_Strips {
	public:
		%feature("autodoc", "1");
		Graphic3d_Strips();
		%feature("autodoc", "1");
		void STRIPT_INIT(const Standard_Integer NBVERTICES, const TColStd_Array1OfInteger &TABTRIANGLES);
		%feature("autodoc","STRIPT_GET_STRIP() -> [Standard_Integer, Standard_Integer, Standard_Integer]");

		void STRIPT_GET_STRIP(Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue);
		%feature("autodoc","STRIPT_GET_VERTEX() -> [Standard_Integer, Standard_Integer]");

		void STRIPT_GET_VERTEX(Standard_Integer &OutValue, Standard_Integer &OutValue);
		%feature("autodoc", "1");
		void STRIPQ_INIT(const Standard_Integer NBVERTICES, const Standard_Integer NBQUADRANG, const TColStd_SequenceOfInteger &TABQUADRANGLES);
		%feature("autodoc","STRIPQ_GET_STRIP() -> [Standard_Integer, Standard_Integer, Standard_Integer]");

		void STRIPQ_GET_STRIP(Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue);
		%feature("autodoc","STRIPQ_GET_NEXT() -> [Standard_Integer, Standard_Integer, Standard_Integer]");

		void STRIPQ_GET_NEXT(Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue);

};
%feature("shadow") Graphic3d_Strips::~Graphic3d_Strips %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic3d_Strips {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic3d_Array2OfVertexNC;
class Graphic3d_Array2OfVertexNC {
	public:
		%feature("autodoc", "1");
		Graphic3d_Array2OfVertexNC(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		Graphic3d_Array2OfVertexNC(const Graphic3d_VertexNC &Item, const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		void Init(const Graphic3d_VertexNC &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		const Graphic3d_Array2OfVertexNC & Assign(const Graphic3d_Array2OfVertexNC &Other);
		%feature("autodoc", "1");
		const Graphic3d_Array2OfVertexNC & operator=(const Graphic3d_Array2OfVertexNC &Other);
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
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const Graphic3d_VertexNC &Value);
		%feature("autodoc", "1");
		const Graphic3d_VertexNC & Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		const Graphic3d_VertexNC & operator()(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		Graphic3d_VertexNC & ChangeValue(const Standard_Integer Row, const Standard_Integer Col);
		%feature("autodoc", "1");
		Graphic3d_VertexNC & operator()(const Standard_Integer Row, const Standard_Integer Col);

};
%feature("shadow") Graphic3d_Array2OfVertexNC::~Graphic3d_Array2OfVertexNC %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic3d_Array2OfVertexNC {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic3d_SetIteratorOfSetOfGroup;
class Graphic3d_SetIteratorOfSetOfGroup {
	public:
		%feature("autodoc", "1");
		Graphic3d_SetIteratorOfSetOfGroup();
		%feature("autodoc", "1");
		Graphic3d_SetIteratorOfSetOfGroup(const Graphic3d_SetOfGroup &S);
		%feature("autodoc", "1");
		void Initialize(const Graphic3d_SetOfGroup &S);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		const Handle_Graphic3d_Group & Value() const;

};
%feature("shadow") Graphic3d_SetIteratorOfSetOfGroup::~Graphic3d_SetIteratorOfSetOfGroup %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic3d_SetIteratorOfSetOfGroup {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic3d_Plotter;
class Graphic3d_Plotter : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		virtual		void Destroy();
		%feature("autodoc", "1");
		virtual		Standard_Boolean BeginPlot(const Handle_Graphic3d_DataStructureManager &aProjector);
		%feature("autodoc", "1");
		virtual		void EndPlot();
		%feature("autodoc", "1");
		virtual		Standard_Boolean PlottingState() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic3d_Plotter {
	Handle_Graphic3d_Plotter GetHandle() {
	return *(Handle_Graphic3d_Plotter*) &$self;
	}
};
%extend Graphic3d_Plotter {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic3d_Plotter::~Graphic3d_Plotter %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic3d_Plotter {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic3d_ArrayOfTriangles;
class Graphic3d_ArrayOfTriangles : public Graphic3d_ArrayOfPrimitives {
	public:
		%feature("autodoc", "1");
		Graphic3d_ArrayOfTriangles(const Standard_Integer maxVertexs, const Standard_Integer maxEdges=0, const Standard_Boolean hasVNormals=0, const Standard_Boolean hasVColors=0, const Standard_Boolean hasTexels=0, const Standard_Boolean hasEdgeInfos=0);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic3d_ArrayOfTriangles {
	Handle_Graphic3d_ArrayOfTriangles GetHandle() {
	return *(Handle_Graphic3d_ArrayOfTriangles*) &$self;
	}
};
%extend Graphic3d_ArrayOfTriangles {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic3d_ArrayOfTriangles::~Graphic3d_ArrayOfTriangles %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic3d_ArrayOfTriangles {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic3d_Vector;
class Graphic3d_Vector {
	public:
		%feature("autodoc", "1");
		Graphic3d_Vector();
		%feature("autodoc", "1");
		Graphic3d_Vector(const Standard_Real AX, const Standard_Real AY, const Standard_Real AZ);
		%feature("autodoc", "1");
		Graphic3d_Vector(const Graphic3d_Vertex &APoint1, const Graphic3d_Vertex &APoint2);
		%feature("autodoc", "1");
		void Normalize();
		%feature("autodoc", "1");
		void SetCoord(const Standard_Real Xnew, const Standard_Real Ynew, const Standard_Real Znew);
		%feature("autodoc", "1");
		void SetXCoord(const Standard_Real Xnew);
		%feature("autodoc", "1");
		void SetYCoord(const Standard_Real Ynew);
		%feature("autodoc", "1");
		void SetZCoord(const Standard_Real Znew);
		%feature("autodoc","Coord() -> [Standard_Real, Standard_Real, Standard_Real]");

		void Coord(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Boolean IsNormalized() const;
		%feature("autodoc", "1");
		Standard_Boolean LengthZero() const;
		%feature("autodoc", "1");
		Standard_Real X() const;
		%feature("autodoc", "1");
		Standard_Real Y() const;
		%feature("autodoc", "1");
		Standard_Real Z() const;
		%feature("autodoc", "1");
		Standard_Boolean IsParallel(const Graphic3d_Vector &AV1, const Graphic3d_Vector &AV2);
		%feature("autodoc", "1");
		Standard_Real NormeOf(const Standard_Real AX, const Standard_Real AY, const Standard_Real AZ);
		%feature("autodoc", "1");
		Standard_Real NormeOf(const Graphic3d_Vector &AVector);

};
%feature("shadow") Graphic3d_Vector::~Graphic3d_Vector %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic3d_Vector {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic3d_AspectMarker3d;
class Graphic3d_AspectMarker3d : public Aspect_AspectMarker {
	public:
		%feature("autodoc", "1");
		Graphic3d_AspectMarker3d();
		%feature("autodoc", "1");
		Graphic3d_AspectMarker3d(const Aspect_TypeOfMarker AType, const Quantity_Color &AColor, const Standard_Real AScaleOrId);
		%feature("autodoc", "1");
		Graphic3d_AspectMarker3d(const Aspect_TypeOfMarker AType, const Quantity_Color &AColor, const Standard_Real AScaleOrId, const Standard_Integer AWidth, const Standard_Integer AHeight, const Handle_Graphic3d_HArray1OfBytes &ATexture);
		%feature("autodoc","GetTextureSize() -> [Standard_Integer, Standard_Integer]");

		void GetTextureSize(Standard_Integer &OutValue, Standard_Integer &OutValue);
		%feature("autodoc", "1");
		const Handle_Graphic3d_HArray1OfBytes & GetTexture();
		%feature("autodoc", "1");
		void SetTexture(const Standard_Integer AWidth, const Standard_Integer AHeight, const Handle_Graphic3d_HArray1OfBytes &ATexture);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic3d_AspectMarker3d {
	Handle_Graphic3d_AspectMarker3d GetHandle() {
	return *(Handle_Graphic3d_AspectMarker3d*) &$self;
	}
};
%extend Graphic3d_AspectMarker3d {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic3d_AspectMarker3d::~Graphic3d_AspectMarker3d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic3d_AspectMarker3d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic3d_MapIteratorOfMapOfStructure;
class Graphic3d_MapIteratorOfMapOfStructure : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		Graphic3d_MapIteratorOfMapOfStructure();
		%feature("autodoc", "1");
		Graphic3d_MapIteratorOfMapOfStructure(const Graphic3d_MapOfStructure &aMap);
		%feature("autodoc", "1");
		void Initialize(const Graphic3d_MapOfStructure &aMap);
		%feature("autodoc", "1");
		const Handle_Graphic3d_Structure & Key() const;

};
%feature("shadow") Graphic3d_MapIteratorOfMapOfStructure::~Graphic3d_MapIteratorOfMapOfStructure %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic3d_MapIteratorOfMapOfStructure {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic3d_Array1OfVector;
class Graphic3d_Array1OfVector {
	public:
		%feature("autodoc", "1");
		Graphic3d_Array1OfVector(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		Graphic3d_Array1OfVector(const Graphic3d_Vector &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Graphic3d_Vector &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const Graphic3d_Array1OfVector & Assign(const Graphic3d_Array1OfVector &Other);
		%feature("autodoc", "1");
		const Graphic3d_Array1OfVector & operator=(const Graphic3d_Array1OfVector &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Graphic3d_Vector &Value);
		%feature("autodoc", "1");
		const Graphic3d_Vector & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Graphic3d_Vector & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Graphic3d_Vector & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Graphic3d_Vector & operator()(const Standard_Integer Index);

};
%feature("shadow") Graphic3d_Array1OfVector::~Graphic3d_Array1OfVector %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic3d_Array1OfVector {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Graphic3d_StructureDefinitionError;
class Graphic3d_StructureDefinitionError : public Standard_OutOfRange {
	public:
		%feature("autodoc", "1");
		Graphic3d_StructureDefinitionError();
		%feature("autodoc", "1");
		Graphic3d_StructureDefinitionError(const char * AString);
		%feature("autodoc", "1");
		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		Handle_Graphic3d_StructureDefinitionError NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Graphic3d_StructureDefinitionError {
	Handle_Graphic3d_StructureDefinitionError GetHandle() {
	return *(Handle_Graphic3d_StructureDefinitionError*) &$self;
	}
};
%extend Graphic3d_StructureDefinitionError {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Graphic3d_StructureDefinitionError::~Graphic3d_StructureDefinitionError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Graphic3d_StructureDefinitionError {
	void _kill_pointed() {
		delete $self;
	}
};
