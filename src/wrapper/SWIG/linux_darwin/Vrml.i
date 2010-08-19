/*

Copyright 2008-2010 Thomas Paviot (tpaviot@gmail.com)

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

%module Vrml
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include Vrml_renames.i


%include Vrml_required_python_modules.i


%include Vrml_dependencies.i


%include Vrml_headers.i


enum Vrml_Texture2Wrap {
	Vrml_REPEAT,
	Vrml_CLAMP,
	};

enum Vrml_SFImageNumber {
	Vrml_NULL,
	Vrml_ONE,
	Vrml_TWO,
	Vrml_THREE,
	Vrml_FOUR,
	};

enum Vrml_FaceType {
	Vrml_UNKNOWN_FACE_TYPE,
	Vrml_CONVEX,
	};

enum Vrml_ShapeType {
	Vrml_UNKNOWN_SHAPE_TYPE,
	Vrml_SOLID,
	};

enum Vrml_VertexOrdering {
	Vrml_UNKNOWN_ORDERING,
	Vrml_CLOCKWISE,
	Vrml_COUNTERCLOCKWISE,
	};

enum Vrml_SeparatorRenderCulling {
	Vrml_OFF,
	Vrml_ON,
	Vrml_AUTO,
	};

enum Vrml_FontStyleStyle {
	Vrml_NONE,
	Vrml_BOLD,
	Vrml_ITALIC,
	};

enum Vrml_MaterialBindingAndNormalBinding {
	Vrml_DEFAULT,
	Vrml_OVERALL,
	Vrml_PER_PART,
	Vrml_PER_PART_INDEXED,
	Vrml_PER_FACE,
	Vrml_PER_FACE_INDEXED,
	Vrml_PER_VERTEX,
	Vrml_PER_VERTEX_INDEXED,
	};

enum Vrml_AsciiTextJustification {
	Vrml_LEFT,
	Vrml_CENTER,
	Vrml_RIGHT,
	};

enum Vrml_ConeParts {
	Vrml_ConeSIDES,
	Vrml_ConeBOTTOM,
	Vrml_ConeALL,
	};

enum Vrml_CylinderParts {
	Vrml_CylinderSIDES,
	Vrml_CylinderTOP,
	Vrml_CylinderBOTTOM,
	Vrml_CylinderALL,
	};

enum Vrml_WWWAnchorMap {
	Vrml_MAP_NONE,
	Vrml_POINT,
	};

enum Vrml_FontStyleFamily {
	Vrml_SERIF,
	Vrml_SANS,
	Vrml_TYPEWRITER,
	};



%nodefaultctor Handle_Vrml_LOD;
class Handle_Vrml_LOD : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Vrml_LOD();
		%feature("autodoc", "1");
		Handle_Vrml_LOD(const Handle_Vrml_LOD &aHandle);
		%feature("autodoc", "1");
		Handle_Vrml_LOD(const Vrml_LOD *anItem);
		%feature("autodoc", "1");
		Handle_Vrml_LOD & operator=(const Handle_Vrml_LOD &aHandle);
		%feature("autodoc", "1");
		Handle_Vrml_LOD & operator=(const Vrml_LOD *anItem);
		%feature("autodoc", "1");
		static		Handle_Vrml_LOD const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Vrml_LOD {
	Vrml_LOD* GetObject() {
	return (Vrml_LOD*)$self->Access();
	}
};
%feature("shadow") Handle_Vrml_LOD::~Handle_Vrml_LOD %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Vrml_LOD {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Vrml_Coordinate3;
class Handle_Vrml_Coordinate3 : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Vrml_Coordinate3();
		%feature("autodoc", "1");
		Handle_Vrml_Coordinate3(const Handle_Vrml_Coordinate3 &aHandle);
		%feature("autodoc", "1");
		Handle_Vrml_Coordinate3(const Vrml_Coordinate3 *anItem);
		%feature("autodoc", "1");
		Handle_Vrml_Coordinate3 & operator=(const Handle_Vrml_Coordinate3 &aHandle);
		%feature("autodoc", "1");
		Handle_Vrml_Coordinate3 & operator=(const Vrml_Coordinate3 *anItem);
		%feature("autodoc", "1");
		static		Handle_Vrml_Coordinate3 const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Vrml_Coordinate3 {
	Vrml_Coordinate3* GetObject() {
	return (Vrml_Coordinate3*)$self->Access();
	}
};
%feature("shadow") Handle_Vrml_Coordinate3::~Handle_Vrml_Coordinate3 %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Vrml_Coordinate3 {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Vrml_AsciiText;
class Handle_Vrml_AsciiText : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Vrml_AsciiText();
		%feature("autodoc", "1");
		Handle_Vrml_AsciiText(const Handle_Vrml_AsciiText &aHandle);
		%feature("autodoc", "1");
		Handle_Vrml_AsciiText(const Vrml_AsciiText *anItem);
		%feature("autodoc", "1");
		Handle_Vrml_AsciiText & operator=(const Handle_Vrml_AsciiText &aHandle);
		%feature("autodoc", "1");
		Handle_Vrml_AsciiText & operator=(const Vrml_AsciiText *anItem);
		%feature("autodoc", "1");
		static		Handle_Vrml_AsciiText const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Vrml_AsciiText {
	Vrml_AsciiText* GetObject() {
	return (Vrml_AsciiText*)$self->Access();
	}
};
%feature("shadow") Handle_Vrml_AsciiText::~Handle_Vrml_AsciiText %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Vrml_AsciiText {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Vrml_SFImage;
class Handle_Vrml_SFImage : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Vrml_SFImage();
		%feature("autodoc", "1");
		Handle_Vrml_SFImage(const Handle_Vrml_SFImage &aHandle);
		%feature("autodoc", "1");
		Handle_Vrml_SFImage(const Vrml_SFImage *anItem);
		%feature("autodoc", "1");
		Handle_Vrml_SFImage & operator=(const Handle_Vrml_SFImage &aHandle);
		%feature("autodoc", "1");
		Handle_Vrml_SFImage & operator=(const Vrml_SFImage *anItem);
		%feature("autodoc", "1");
		static		Handle_Vrml_SFImage const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Vrml_SFImage {
	Vrml_SFImage* GetObject() {
	return (Vrml_SFImage*)$self->Access();
	}
};
%feature("shadow") Handle_Vrml_SFImage::~Handle_Vrml_SFImage %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Vrml_SFImage {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Vrml_Normal;
class Handle_Vrml_Normal : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Vrml_Normal();
		%feature("autodoc", "1");
		Handle_Vrml_Normal(const Handle_Vrml_Normal &aHandle);
		%feature("autodoc", "1");
		Handle_Vrml_Normal(const Vrml_Normal *anItem);
		%feature("autodoc", "1");
		Handle_Vrml_Normal & operator=(const Handle_Vrml_Normal &aHandle);
		%feature("autodoc", "1");
		Handle_Vrml_Normal & operator=(const Vrml_Normal *anItem);
		%feature("autodoc", "1");
		static		Handle_Vrml_Normal const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Vrml_Normal {
	Vrml_Normal* GetObject() {
	return (Vrml_Normal*)$self->Access();
	}
};
%feature("shadow") Handle_Vrml_Normal::~Handle_Vrml_Normal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Vrml_Normal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Vrml_Material;
class Handle_Vrml_Material : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Vrml_Material();
		%feature("autodoc", "1");
		Handle_Vrml_Material(const Handle_Vrml_Material &aHandle);
		%feature("autodoc", "1");
		Handle_Vrml_Material(const Vrml_Material *anItem);
		%feature("autodoc", "1");
		Handle_Vrml_Material & operator=(const Handle_Vrml_Material &aHandle);
		%feature("autodoc", "1");
		Handle_Vrml_Material & operator=(const Vrml_Material *anItem);
		%feature("autodoc", "1");
		static		Handle_Vrml_Material const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Vrml_Material {
	Vrml_Material* GetObject() {
	return (Vrml_Material*)$self->Access();
	}
};
%feature("shadow") Handle_Vrml_Material::~Handle_Vrml_Material %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Vrml_Material {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Vrml_IndexedLineSet;
class Handle_Vrml_IndexedLineSet : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Vrml_IndexedLineSet();
		%feature("autodoc", "1");
		Handle_Vrml_IndexedLineSet(const Handle_Vrml_IndexedLineSet &aHandle);
		%feature("autodoc", "1");
		Handle_Vrml_IndexedLineSet(const Vrml_IndexedLineSet *anItem);
		%feature("autodoc", "1");
		Handle_Vrml_IndexedLineSet & operator=(const Handle_Vrml_IndexedLineSet &aHandle);
		%feature("autodoc", "1");
		Handle_Vrml_IndexedLineSet & operator=(const Vrml_IndexedLineSet *anItem);
		%feature("autodoc", "1");
		static		Handle_Vrml_IndexedLineSet const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Vrml_IndexedLineSet {
	Vrml_IndexedLineSet* GetObject() {
	return (Vrml_IndexedLineSet*)$self->Access();
	}
};
%feature("shadow") Handle_Vrml_IndexedLineSet::~Handle_Vrml_IndexedLineSet %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Vrml_IndexedLineSet {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Vrml_IndexedFaceSet;
class Handle_Vrml_IndexedFaceSet : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Vrml_IndexedFaceSet();
		%feature("autodoc", "1");
		Handle_Vrml_IndexedFaceSet(const Handle_Vrml_IndexedFaceSet &aHandle);
		%feature("autodoc", "1");
		Handle_Vrml_IndexedFaceSet(const Vrml_IndexedFaceSet *anItem);
		%feature("autodoc", "1");
		Handle_Vrml_IndexedFaceSet & operator=(const Handle_Vrml_IndexedFaceSet &aHandle);
		%feature("autodoc", "1");
		Handle_Vrml_IndexedFaceSet & operator=(const Vrml_IndexedFaceSet *anItem);
		%feature("autodoc", "1");
		static		Handle_Vrml_IndexedFaceSet const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Vrml_IndexedFaceSet {
	Vrml_IndexedFaceSet* GetObject() {
	return (Vrml_IndexedFaceSet*)$self->Access();
	}
};
%feature("shadow") Handle_Vrml_IndexedFaceSet::~Handle_Vrml_IndexedFaceSet %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Vrml_IndexedFaceSet {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Vrml_TextureCoordinate2;
class Handle_Vrml_TextureCoordinate2 : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Vrml_TextureCoordinate2();
		%feature("autodoc", "1");
		Handle_Vrml_TextureCoordinate2(const Handle_Vrml_TextureCoordinate2 &aHandle);
		%feature("autodoc", "1");
		Handle_Vrml_TextureCoordinate2(const Vrml_TextureCoordinate2 *anItem);
		%feature("autodoc", "1");
		Handle_Vrml_TextureCoordinate2 & operator=(const Handle_Vrml_TextureCoordinate2 &aHandle);
		%feature("autodoc", "1");
		Handle_Vrml_TextureCoordinate2 & operator=(const Vrml_TextureCoordinate2 *anItem);
		%feature("autodoc", "1");
		static		Handle_Vrml_TextureCoordinate2 const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Vrml_TextureCoordinate2 {
	Vrml_TextureCoordinate2* GetObject() {
	return (Vrml_TextureCoordinate2*)$self->Access();
	}
};
%feature("shadow") Handle_Vrml_TextureCoordinate2::~Handle_Vrml_TextureCoordinate2 %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Vrml_TextureCoordinate2 {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Vrml_Switch;
class Vrml_Switch {
	public:
		%feature("autodoc", "1");
		Vrml_Switch(const Standard_Integer aWhichChild=-0x000000001);
		%feature("autodoc", "1");
		void SetWhichChild(const Standard_Integer aWhichChild);
		%feature("autodoc", "1");
		Standard_Integer WhichChild() const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string PrintToString() {
			std::stringstream s;
			self->Print(s);
			return s.str();}
		};

};
%feature("shadow") Vrml_Switch::~Vrml_Switch %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Vrml_Switch {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Vrml_MaterialBinding;
class Vrml_MaterialBinding {
	public:
		%feature("autodoc", "1");
		Vrml_MaterialBinding(const Vrml_MaterialBindingAndNormalBinding aValue);
		%feature("autodoc", "1");
		Vrml_MaterialBinding();
		%feature("autodoc", "1");
		void SetValue(const Vrml_MaterialBindingAndNormalBinding aValue);
		%feature("autodoc", "1");
		Vrml_MaterialBindingAndNormalBinding Value() const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string PrintToString() {
			std::stringstream s;
			self->Print(s);
			return s.str();}
		};

};
%feature("shadow") Vrml_MaterialBinding::~Vrml_MaterialBinding %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Vrml_MaterialBinding {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Vrml_TransformSeparator;
class Vrml_TransformSeparator {
	public:
		%feature("autodoc", "1");
		Vrml_TransformSeparator();
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string PrintToString() {
			std::stringstream s;
			self->Print(s);
			return s.str();}
		};

};
%feature("shadow") Vrml_TransformSeparator::~Vrml_TransformSeparator %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Vrml_TransformSeparator {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Vrml_Cube;
class Vrml_Cube {
	public:
		%feature("autodoc", "1");
		Vrml_Cube(const Standard_Real aWidth=2, const Standard_Real aHeight=2, const Standard_Real aDepth=2);
		%feature("autodoc", "1");
		void SetWidth(const Standard_Real aWidth);
		%feature("autodoc", "1");
		Standard_Real Width() const;
		%feature("autodoc", "1");
		void SetHeight(const Standard_Real aHeight);
		%feature("autodoc", "1");
		Standard_Real Height() const;
		%feature("autodoc", "1");
		void SetDepth(const Standard_Real aDepth);
		%feature("autodoc", "1");
		Standard_Real Depth() const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string PrintToString() {
			std::stringstream s;
			self->Print(s);
			return s.str();}
		};

};
%feature("shadow") Vrml_Cube::~Vrml_Cube %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Vrml_Cube {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Vrml_FontStyle;
class Vrml_FontStyle {
	public:
		%feature("autodoc", "1");
		Vrml_FontStyle(const Standard_Real aSize=10, const Vrml_FontStyleFamily aFamily=Vrml_SERIF, const Vrml_FontStyleStyle aStyle=Vrml_NONE);
		%feature("autodoc", "1");
		void SetSize(const Standard_Real aSize);
		%feature("autodoc", "1");
		Standard_Real Size() const;
		%feature("autodoc", "1");
		void SetFamily(const Vrml_FontStyleFamily aFamily);
		%feature("autodoc", "1");
		Vrml_FontStyleFamily Family() const;
		%feature("autodoc", "1");
		void SetStyle(const Vrml_FontStyleStyle aStyle);
		%feature("autodoc", "1");
		Vrml_FontStyleStyle Style() const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string PrintToString() {
			std::stringstream s;
			self->Print(s);
			return s.str();}
		};

};
%feature("shadow") Vrml_FontStyle::~Vrml_FontStyle %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Vrml_FontStyle {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Vrml_Sphere;
class Vrml_Sphere {
	public:
		%feature("autodoc", "1");
		Vrml_Sphere(const Standard_Real aRadius=1);
		%feature("autodoc", "1");
		void SetRadius(const Standard_Real aRadius);
		%feature("autodoc", "1");
		Standard_Real Radius() const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string PrintToString() {
			std::stringstream s;
			self->Print(s);
			return s.str();}
		};

};
%feature("shadow") Vrml_Sphere::~Vrml_Sphere %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Vrml_Sphere {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Vrml_IndexedFaceSet;
class Vrml_IndexedFaceSet : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Vrml_IndexedFaceSet(const Handle_TColStd_HArray1OfInteger &aCoordIndex, const Handle_TColStd_HArray1OfInteger &aMaterialIndex, const Handle_TColStd_HArray1OfInteger &aNormalIndex, const Handle_TColStd_HArray1OfInteger &aTextureCoordIndex);
		%feature("autodoc", "1");
		Vrml_IndexedFaceSet();
		%feature("autodoc", "1");
		void SetCoordIndex(const Handle_TColStd_HArray1OfInteger &aCoordIndex);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfInteger CoordIndex() const;
		%feature("autodoc", "1");
		void SetMaterialIndex(const Handle_TColStd_HArray1OfInteger &aMaterialIndex);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfInteger MaterialIndex() const;
		%feature("autodoc", "1");
		void SetNormalIndex(const Handle_TColStd_HArray1OfInteger &aNormalIndex);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfInteger NormalIndex() const;
		%feature("autodoc", "1");
		void SetTextureCoordIndex(const Handle_TColStd_HArray1OfInteger &aTextureCoordIndex);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfInteger TextureCoordIndex() const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string PrintToString() {
			std::stringstream s;
			self->Print(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Vrml_IndexedFaceSet {
	Handle_Vrml_IndexedFaceSet GetHandle() {
	return *(Handle_Vrml_IndexedFaceSet*) &$self;
	}
};
%extend Vrml_IndexedFaceSet {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Vrml_IndexedFaceSet::~Vrml_IndexedFaceSet %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Vrml_IndexedFaceSet {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Vrml_NormalBinding;
class Vrml_NormalBinding {
	public:
		%feature("autodoc", "1");
		Vrml_NormalBinding(const Vrml_MaterialBindingAndNormalBinding aValue);
		%feature("autodoc", "1");
		Vrml_NormalBinding();
		%feature("autodoc", "1");
		void SetValue(const Vrml_MaterialBindingAndNormalBinding aValue);
		%feature("autodoc", "1");
		Vrml_MaterialBindingAndNormalBinding Value() const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string PrintToString() {
			std::stringstream s;
			self->Print(s);
			return s.str();}
		};

};
%feature("shadow") Vrml_NormalBinding::~Vrml_NormalBinding %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Vrml_NormalBinding {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Vrml_Instancing;
class Vrml_Instancing {
	public:
		%feature("autodoc", "1");
		Vrml_Instancing(const TCollection_AsciiString &aString);
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string DEFToString() {
			std::stringstream s;
			self->DEF(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string USEToString() {
			std::stringstream s;
			self->USE(s);
			return s.str();}
		};

};
%feature("shadow") Vrml_Instancing::~Vrml_Instancing %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Vrml_Instancing {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Vrml_AsciiText;
class Vrml_AsciiText : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Vrml_AsciiText();
		%feature("autodoc", "1");
		Vrml_AsciiText(const Handle_TColStd_HArray1OfAsciiString &aString, const Standard_Real aSpacing, const Vrml_AsciiTextJustification aJustification, const Standard_Real aWidth);
		%feature("autodoc", "1");
		void SetString(const Handle_TColStd_HArray1OfAsciiString &aString);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfAsciiString String() const;
		%feature("autodoc", "1");
		void SetSpacing(const Standard_Real aSpacing);
		%feature("autodoc", "1");
		Standard_Real Spacing() const;
		%feature("autodoc", "1");
		void SetJustification(const Vrml_AsciiTextJustification aJustification);
		%feature("autodoc", "1");
		Vrml_AsciiTextJustification Justification() const;
		%feature("autodoc", "1");
		void SetWidth(const Standard_Real aWidth);
		%feature("autodoc", "1");
		Standard_Real Width() const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string PrintToString() {
			std::stringstream s;
			self->Print(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Vrml_AsciiText {
	Handle_Vrml_AsciiText GetHandle() {
	return *(Handle_Vrml_AsciiText*) &$self;
	}
};
%extend Vrml_AsciiText {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Vrml_AsciiText::~Vrml_AsciiText %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Vrml_AsciiText {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Vrml_IndexedLineSet;
class Vrml_IndexedLineSet : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Vrml_IndexedLineSet(const Handle_TColStd_HArray1OfInteger &aCoordIndex, const Handle_TColStd_HArray1OfInteger &aMaterialIndex, const Handle_TColStd_HArray1OfInteger &aNormalIndex, const Handle_TColStd_HArray1OfInteger &aTextureCoordIndex);
		%feature("autodoc", "1");
		Vrml_IndexedLineSet();
		%feature("autodoc", "1");
		void SetCoordIndex(const Handle_TColStd_HArray1OfInteger &aCoordIndex);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfInteger CoordIndex() const;
		%feature("autodoc", "1");
		void SetMaterialIndex(const Handle_TColStd_HArray1OfInteger &aMaterialIndex);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfInteger MaterialIndex() const;
		%feature("autodoc", "1");
		void SetNormalIndex(const Handle_TColStd_HArray1OfInteger &aNormalIndex);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfInteger NormalIndex() const;
		%feature("autodoc", "1");
		void SetTextureCoordIndex(const Handle_TColStd_HArray1OfInteger &aTextureCoordIndex);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfInteger TextureCoordIndex() const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string PrintToString() {
			std::stringstream s;
			self->Print(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Vrml_IndexedLineSet {
	Handle_Vrml_IndexedLineSet GetHandle() {
	return *(Handle_Vrml_IndexedLineSet*) &$self;
	}
};
%extend Vrml_IndexedLineSet {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Vrml_IndexedLineSet::~Vrml_IndexedLineSet %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Vrml_IndexedLineSet {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Vrml_Normal;
class Vrml_Normal : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Vrml_Normal(const Handle_TColgp_HArray1OfVec &aVector);
		%feature("autodoc", "1");
		Vrml_Normal();
		%feature("autodoc", "1");
		void SetVector(const Handle_TColgp_HArray1OfVec &aVector);
		%feature("autodoc", "1");
		Handle_TColgp_HArray1OfVec Vector() const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string PrintToString() {
			std::stringstream s;
			self->Print(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Vrml_Normal {
	Handle_Vrml_Normal GetHandle() {
	return *(Handle_Vrml_Normal*) &$self;
	}
};
%extend Vrml_Normal {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Vrml_Normal::~Vrml_Normal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Vrml_Normal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Vrml_SpotLight;
class Vrml_SpotLight {
	public:
		%feature("autodoc", "1");
		Vrml_SpotLight();
		%feature("autodoc", "1");
		Vrml_SpotLight(const Standard_Boolean aOnOff, const Standard_Real aIntensity, const Quantity_Color &aColor, const gp_Vec &aLocation, const gp_Vec &aDirection, const Standard_Real aDropOffRate, const Standard_Real aCutOffAngle);
		%feature("autodoc", "1");
		void SetOnOff(const Standard_Boolean anOnOff);
		%feature("autodoc", "1");
		Standard_Boolean OnOff() const;
		%feature("autodoc", "1");
		void SetIntensity(const Standard_Real aIntensity);
		%feature("autodoc", "1");
		Standard_Real Intensity() const;
		%feature("autodoc", "1");
		void SetColor(const Quantity_Color &aColor);
		%feature("autodoc", "1");
		Quantity_Color Color() const;
		%feature("autodoc", "1");
		void SetLocation(const gp_Vec &aLocation);
		%feature("autodoc", "1");
		gp_Vec Location() const;
		%feature("autodoc", "1");
		void SetDirection(const gp_Vec &aDirection);
		%feature("autodoc", "1");
		gp_Vec Direction() const;
		%feature("autodoc", "1");
		void SetDropOffRate(const Standard_Real aDropOffRate);
		%feature("autodoc", "1");
		Standard_Real DropOffRate() const;
		%feature("autodoc", "1");
		void SetCutOffAngle(const Standard_Real aCutOffAngle);
		%feature("autodoc", "1");
		Standard_Real CutOffAngle() const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string PrintToString() {
			std::stringstream s;
			self->Print(s);
			return s.str();}
		};

};
%feature("shadow") Vrml_SpotLight::~Vrml_SpotLight %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Vrml_SpotLight {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Vrml_Texture2;
class Vrml_Texture2 {
	public:
		%feature("autodoc", "1");
		Vrml_Texture2();
		%feature("autodoc", "1");
		Vrml_Texture2(const TCollection_AsciiString &aFilename, const Handle_Vrml_SFImage &aImage, const Vrml_Texture2Wrap aWrapS, const Vrml_Texture2Wrap aWrapT);
		%feature("autodoc", "1");
		void SetFilename(const TCollection_AsciiString &aFilename);
		%feature("autodoc", "1");
		TCollection_AsciiString Filename() const;
		%feature("autodoc", "1");
		void SetImage(const Handle_Vrml_SFImage &aImage);
		%feature("autodoc", "1");
		Handle_Vrml_SFImage Image() const;
		%feature("autodoc", "1");
		void SetWrapS(const Vrml_Texture2Wrap aWrapS);
		%feature("autodoc", "1");
		Vrml_Texture2Wrap WrapS() const;
		%feature("autodoc", "1");
		void SetWrapT(const Vrml_Texture2Wrap aWrapT);
		%feature("autodoc", "1");
		Vrml_Texture2Wrap WrapT() const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string PrintToString() {
			std::stringstream s;
			self->Print(s);
			return s.str();}
		};

};
%feature("shadow") Vrml_Texture2::~Vrml_Texture2 %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Vrml_Texture2 {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Vrml_SFImage;
class Vrml_SFImage : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Vrml_SFImage();
		%feature("autodoc", "1");
		Vrml_SFImage(const Standard_Integer aWidth, const Standard_Integer aHeight, const Vrml_SFImageNumber aNumber, const Handle_TColStd_HArray1OfInteger &anArray);
		%feature("autodoc", "1");
		void SetWidth(const Standard_Integer aWidth);
		%feature("autodoc", "1");
		Standard_Integer Width() const;
		%feature("autodoc", "1");
		void SetHeight(const Standard_Integer aHeight);
		%feature("autodoc", "1");
		Standard_Integer Height() const;
		%feature("autodoc", "1");
		void SetNumber(const Vrml_SFImageNumber aNumber);
		%feature("autodoc", "1");
		Vrml_SFImageNumber Number() const;
		%feature("autodoc", "1");
		void SetArray(const Handle_TColStd_HArray1OfInteger &anArray);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfInteger Array() const;
		%feature("autodoc", "1");
		Standard_Boolean ArrayFlag() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Vrml_SFImage {
	Handle_Vrml_SFImage GetHandle() {
	return *(Handle_Vrml_SFImage*) &$self;
	}
};
%extend Vrml_SFImage {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Vrml_SFImage::~Vrml_SFImage %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Vrml_SFImage {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Vrml_WWWInline;
class Vrml_WWWInline {
	public:
		%feature("autodoc", "1");
		Vrml_WWWInline();
		%feature("autodoc", "1");
		Vrml_WWWInline(const TCollection_AsciiString &aName, const gp_Vec &aBboxSize, const gp_Vec &aBboxCenter);
		%feature("autodoc", "1");
		void SetName(const TCollection_AsciiString &aName);
		%feature("autodoc", "1");
		TCollection_AsciiString Name() const;
		%feature("autodoc", "1");
		void SetBboxSize(const gp_Vec &aBboxSize);
		%feature("autodoc", "1");
		gp_Vec BboxSize() const;
		%feature("autodoc", "1");
		void SetBboxCenter(const gp_Vec &aBboxCenter);
		%feature("autodoc", "1");
		gp_Vec BboxCenter() const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string PrintToString() {
			std::stringstream s;
			self->Print(s);
			return s.str();}
		};

};
%feature("shadow") Vrml_WWWInline::~Vrml_WWWInline %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Vrml_WWWInline {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Vrml_PointLight;
class Vrml_PointLight {
	public:
		%feature("autodoc", "1");
		Vrml_PointLight();
		%feature("autodoc", "1");
		Vrml_PointLight(const Standard_Boolean aOnOff, const Standard_Real aIntensity, const Quantity_Color &aColor, const gp_Vec &aLocation);
		%feature("autodoc", "1");
		void SetOnOff(const Standard_Boolean aOnOff);
		%feature("autodoc", "1");
		Standard_Boolean OnOff() const;
		%feature("autodoc", "1");
		void SetIntensity(const Standard_Real aIntensity);
		%feature("autodoc", "1");
		Standard_Real Intensity() const;
		%feature("autodoc", "1");
		void SetColor(const Quantity_Color &aColor);
		%feature("autodoc", "1");
		Quantity_Color Color() const;
		%feature("autodoc", "1");
		void SetLocation(const gp_Vec &aLocation);
		%feature("autodoc", "1");
		gp_Vec Location() const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string PrintToString() {
			std::stringstream s;
			self->Print(s);
			return s.str();}
		};

};
%feature("shadow") Vrml_PointLight::~Vrml_PointLight %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Vrml_PointLight {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Vrml_Transform;
class Vrml_Transform {
	public:
		%feature("autodoc", "1");
		Vrml_Transform();
		%feature("autodoc", "1");
		Vrml_Transform(const gp_Vec &aTranslation, const Vrml_SFRotation &aRotation, const gp_Vec &aScaleFactor, const Vrml_SFRotation &aScaleOrientation, const gp_Vec &aCenter);
		%feature("autodoc", "1");
		void SetTranslation(const gp_Vec &aTranslation);
		%feature("autodoc", "1");
		gp_Vec Translation() const;
		%feature("autodoc", "1");
		void SetRotation(const Vrml_SFRotation &aRotation);
		%feature("autodoc", "1");
		Vrml_SFRotation Rotation() const;
		%feature("autodoc", "1");
		void SetScaleFactor(const gp_Vec &aScaleFactor);
		%feature("autodoc", "1");
		gp_Vec ScaleFactor() const;
		%feature("autodoc", "1");
		void SetScaleOrientation(const Vrml_SFRotation &aScaleOrientation);
		%feature("autodoc", "1");
		Vrml_SFRotation ScaleOrientation() const;
		%feature("autodoc", "1");
		void SetCenter(const gp_Vec &aCenter);
		%feature("autodoc", "1");
		gp_Vec Center() const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string PrintToString() {
			std::stringstream s;
			self->Print(s);
			return s.str();}
		};

};
%feature("shadow") Vrml_Transform::~Vrml_Transform %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Vrml_Transform {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Vrml_Scale;
class Vrml_Scale {
	public:
		%feature("autodoc", "1");
		Vrml_Scale();
		%feature("autodoc", "1");
		Vrml_Scale(const gp_Vec &aScaleFactor);
		%feature("autodoc", "1");
		void SetScaleFactor(const gp_Vec &aScaleFactor);
		%feature("autodoc", "1");
		gp_Vec ScaleFactor() const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string PrintToString() {
			std::stringstream s;
			self->Print(s);
			return s.str();}
		};

};
%feature("shadow") Vrml_Scale::~Vrml_Scale %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Vrml_Scale {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Vrml_Cylinder;
class Vrml_Cylinder {
	public:
		%feature("autodoc", "1");
		Vrml_Cylinder(const Vrml_CylinderParts aParts=Vrml_CylinderALL, const Standard_Real aRadius=1, const Standard_Real aHeight=2);
		%feature("autodoc", "1");
		void SetParts(const Vrml_CylinderParts aParts);
		%feature("autodoc", "1");
		Vrml_CylinderParts Parts() const;
		%feature("autodoc", "1");
		void SetRadius(const Standard_Real aRadius);
		%feature("autodoc", "1");
		Standard_Real Radius() const;
		%feature("autodoc", "1");
		void SetHeight(const Standard_Real aHeight);
		%feature("autodoc", "1");
		Standard_Real Height() const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string PrintToString() {
			std::stringstream s;
			self->Print(s);
			return s.str();}
		};

};
%feature("shadow") Vrml_Cylinder::~Vrml_Cylinder %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Vrml_Cylinder {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Vrml_PerspectiveCamera;
class Vrml_PerspectiveCamera {
	public:
		%feature("autodoc", "1");
		Vrml_PerspectiveCamera();
		%feature("autodoc", "1");
		Vrml_PerspectiveCamera(const gp_Vec &aPosition, const Vrml_SFRotation &aOrientation, const Standard_Real aFocalDistance, const Standard_Real aHeightAngle);
		%feature("autodoc", "1");
		void SetPosition(const gp_Vec &aPosition);
		%feature("autodoc", "1");
		gp_Vec Position() const;
		%feature("autodoc", "1");
		void SetOrientation(const Vrml_SFRotation &aOrientation);
		%feature("autodoc", "1");
		Vrml_SFRotation Orientation() const;
		%feature("autodoc", "1");
		void SetFocalDistance(const Standard_Real aFocalDistance);
		%feature("autodoc", "1");
		Standard_Real FocalDistance() const;
		%feature("autodoc", "1");
		void SetAngle(const Standard_Real aHeightAngle);
		%feature("autodoc", "1");
		Standard_Real Angle() const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string PrintToString() {
			std::stringstream s;
			self->Print(s);
			return s.str();}
		};

};
%feature("shadow") Vrml_PerspectiveCamera::~Vrml_PerspectiveCamera %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Vrml_PerspectiveCamera {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Vrml_Texture2Transform;
class Vrml_Texture2Transform {
	public:
		%feature("autodoc", "1");
		Vrml_Texture2Transform();
		%feature("autodoc", "1");
		Vrml_Texture2Transform(const gp_Vec2d &aTranslation, const Standard_Real aRotation, const gp_Vec2d &aScaleFactor, const gp_Vec2d &aCenter);
		%feature("autodoc", "1");
		void SetTranslation(const gp_Vec2d &aTranslation);
		%feature("autodoc", "1");
		gp_Vec2d Translation() const;
		%feature("autodoc", "1");
		void SetRotation(const Standard_Real aRotation);
		%feature("autodoc", "1");
		Standard_Real Rotation() const;
		%feature("autodoc", "1");
		void SetScaleFactor(const gp_Vec2d &aScaleFactor);
		%feature("autodoc", "1");
		gp_Vec2d ScaleFactor() const;
		%feature("autodoc", "1");
		void SetCenter(const gp_Vec2d &aCenter);
		%feature("autodoc", "1");
		gp_Vec2d Center() const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string PrintToString() {
			std::stringstream s;
			self->Print(s);
			return s.str();}
		};

};
%feature("shadow") Vrml_Texture2Transform::~Vrml_Texture2Transform %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Vrml_Texture2Transform {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Vrml_SFRotation;
class Vrml_SFRotation {
	public:
		%feature("autodoc", "1");
		Vrml_SFRotation();
		%feature("autodoc", "1");
		Vrml_SFRotation(const Standard_Real aRotationX, const Standard_Real aRotationY, const Standard_Real aRotationZ, const Standard_Real anAngle);
		%feature("autodoc", "1");
		void SetRotationX(const Standard_Real aRotationX);
		%feature("autodoc", "1");
		Standard_Real RotationX() const;
		%feature("autodoc", "1");
		void SetRotationY(const Standard_Real aRotationY);
		%feature("autodoc", "1");
		Standard_Real RotationY() const;
		%feature("autodoc", "1");
		void SetRotationZ(const Standard_Real aRotationZ);
		%feature("autodoc", "1");
		Standard_Real RotationZ() const;
		%feature("autodoc", "1");
		void SetAngle(const Standard_Real anAngle);
		%feature("autodoc", "1");
		Standard_Real Angle() const;

};
%feature("shadow") Vrml_SFRotation::~Vrml_SFRotation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Vrml_SFRotation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Vrml_OrthographicCamera;
class Vrml_OrthographicCamera {
	public:
		%feature("autodoc", "1");
		Vrml_OrthographicCamera();
		%feature("autodoc", "1");
		Vrml_OrthographicCamera(const gp_Vec &aPosition, const Vrml_SFRotation &aOrientation, const Standard_Real aFocalDistance, const Standard_Real aHeight);
		%feature("autodoc", "1");
		void SetPosition(const gp_Vec &aPosition);
		%feature("autodoc", "1");
		gp_Vec Position() const;
		%feature("autodoc", "1");
		void SetOrientation(const Vrml_SFRotation &aOrientation);
		%feature("autodoc", "1");
		Vrml_SFRotation Orientation() const;
		%feature("autodoc", "1");
		void SetFocalDistance(const Standard_Real aFocalDistance);
		%feature("autodoc", "1");
		Standard_Real FocalDistance() const;
		%feature("autodoc", "1");
		void SetHeight(const Standard_Real aHeight);
		%feature("autodoc", "1");
		Standard_Real Height() const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string PrintToString() {
			std::stringstream s;
			self->Print(s);
			return s.str();}
		};

};
%feature("shadow") Vrml_OrthographicCamera::~Vrml_OrthographicCamera %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Vrml_OrthographicCamera {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Vrml_Cone;
class Vrml_Cone {
	public:
		%feature("autodoc", "1");
		Vrml_Cone(const Vrml_ConeParts aParts=Vrml_ConeALL, const Standard_Real aBottomRadius=1, const Standard_Real aHeight=2);
		%feature("autodoc", "1");
		void SetParts(const Vrml_ConeParts aParts);
		%feature("autodoc", "1");
		Vrml_ConeParts Parts() const;
		%feature("autodoc", "1");
		void SetBottomRadius(const Standard_Real aBottomRadius);
		%feature("autodoc", "1");
		Standard_Real BottomRadius() const;
		%feature("autodoc", "1");
		void SetHeight(const Standard_Real aHeight);
		%feature("autodoc", "1");
		Standard_Real Height() const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string PrintToString() {
			std::stringstream s;
			self->Print(s);
			return s.str();}
		};

};
%feature("shadow") Vrml_Cone::~Vrml_Cone %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Vrml_Cone {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Vrml_Coordinate3;
class Vrml_Coordinate3 : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Vrml_Coordinate3(const Handle_TColgp_HArray1OfVec &aPoint);
		%feature("autodoc", "1");
		Vrml_Coordinate3();
		%feature("autodoc", "1");
		void SetPoint(const Handle_TColgp_HArray1OfVec &aPoint);
		%feature("autodoc", "1");
		Handle_TColgp_HArray1OfVec Point() const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string PrintToString() {
			std::stringstream s;
			self->Print(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Vrml_Coordinate3 {
	Handle_Vrml_Coordinate3 GetHandle() {
	return *(Handle_Vrml_Coordinate3*) &$self;
	}
};
%extend Vrml_Coordinate3 {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Vrml_Coordinate3::~Vrml_Coordinate3 %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Vrml_Coordinate3 {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Vrml;
class Vrml {
	public:
		%feature("autodoc", "1");
		Vrml();
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string VrmlHeaderWriterToString() {
			std::stringstream s;
			self->VrmlHeaderWriter(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		static		Standard_OStream & CommentWriter(const char * aComment, Standard_OStream & anOStream);

};
%feature("shadow") Vrml::~Vrml %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Vrml {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Vrml_Info;
class Vrml_Info {
	public:
		%feature("autodoc", "1");
		Vrml_Info(const TCollection_AsciiString &aString="<Undefined info>");
		%feature("autodoc", "1");
		void SetString(const TCollection_AsciiString &aString);
		%feature("autodoc", "1");
		TCollection_AsciiString String() const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string PrintToString() {
			std::stringstream s;
			self->Print(s);
			return s.str();}
		};

};
%feature("shadow") Vrml_Info::~Vrml_Info %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Vrml_Info {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Vrml_MatrixTransform;
class Vrml_MatrixTransform {
	public:
		%feature("autodoc", "1");
		Vrml_MatrixTransform();
		%feature("autodoc", "1");
		Vrml_MatrixTransform(const gp_Trsf &aMatrix);
		%feature("autodoc", "1");
		void SetMatrix(const gp_Trsf &aMatrix);
		%feature("autodoc", "1");
		gp_Trsf Matrix() const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string PrintToString() {
			std::stringstream s;
			self->Print(s);
			return s.str();}
		};

};
%feature("shadow") Vrml_MatrixTransform::~Vrml_MatrixTransform %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Vrml_MatrixTransform {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Vrml_LOD;
class Vrml_LOD : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Vrml_LOD();
		%feature("autodoc", "1");
		Vrml_LOD(const Handle_TColStd_HArray1OfReal &aRange, const gp_Vec &aCenter);
		%feature("autodoc", "1");
		void SetRange(const Handle_TColStd_HArray1OfReal &aRange);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal Range() const;
		%feature("autodoc", "1");
		void SetCenter(const gp_Vec &aCenter);
		%feature("autodoc", "1");
		gp_Vec Center() const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string PrintToString() {
			std::stringstream s;
			self->Print(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Vrml_LOD {
	Handle_Vrml_LOD GetHandle() {
	return *(Handle_Vrml_LOD*) &$self;
	}
};
%extend Vrml_LOD {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Vrml_LOD::~Vrml_LOD %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Vrml_LOD {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Vrml_DirectionalLight;
class Vrml_DirectionalLight {
	public:
		%feature("autodoc", "1");
		Vrml_DirectionalLight();
		%feature("autodoc", "1");
		Vrml_DirectionalLight(const Standard_Boolean aOnOff, const Standard_Real aIntensity, const Quantity_Color &aColor, const gp_Vec &aDirection);
		%feature("autodoc", "1");
		void SetOnOff(const Standard_Boolean aOnOff);
		%feature("autodoc", "1");
		Standard_Boolean OnOff() const;
		%feature("autodoc", "1");
		void SetIntensity(const Standard_Real aIntensity);
		%feature("autodoc", "1");
		Standard_Real Intensity() const;
		%feature("autodoc", "1");
		void SetColor(const Quantity_Color &aColor);
		%feature("autodoc", "1");
		Quantity_Color Color() const;
		%feature("autodoc", "1");
		void SetDirection(const gp_Vec &aDirection);
		%feature("autodoc", "1");
		gp_Vec Direction() const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string PrintToString() {
			std::stringstream s;
			self->Print(s);
			return s.str();}
		};

};
%feature("shadow") Vrml_DirectionalLight::~Vrml_DirectionalLight %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Vrml_DirectionalLight {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Vrml_Material;
class Vrml_Material : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Vrml_Material(const Handle_Quantity_HArray1OfColor &aAmbientColor, const Handle_Quantity_HArray1OfColor &aDiffuseColor, const Handle_Quantity_HArray1OfColor &aSpecularColor, const Handle_Quantity_HArray1OfColor &aEmissiveColor, const Handle_TColStd_HArray1OfReal &aShininess, const Handle_TColStd_HArray1OfReal &aTransparency);
		%feature("autodoc", "1");
		Vrml_Material();
		%feature("autodoc", "1");
		void SetAmbientColor(const Handle_Quantity_HArray1OfColor &aAmbientColor);
		%feature("autodoc", "1");
		Handle_Quantity_HArray1OfColor AmbientColor() const;
		%feature("autodoc", "1");
		void SetDiffuseColor(const Handle_Quantity_HArray1OfColor &aDiffuseColor);
		%feature("autodoc", "1");
		Handle_Quantity_HArray1OfColor DiffuseColor() const;
		%feature("autodoc", "1");
		void SetSpecularColor(const Handle_Quantity_HArray1OfColor &aSpecularColor);
		%feature("autodoc", "1");
		Handle_Quantity_HArray1OfColor SpecularColor() const;
		%feature("autodoc", "1");
		void SetEmissiveColor(const Handle_Quantity_HArray1OfColor &aEmissiveColor);
		%feature("autodoc", "1");
		Handle_Quantity_HArray1OfColor EmissiveColor() const;
		%feature("autodoc", "1");
		void SetShininess(const Handle_TColStd_HArray1OfReal &aShininess);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal Shininess() const;
		%feature("autodoc", "1");
		void SetTransparency(const Handle_TColStd_HArray1OfReal &aTransparency);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal Transparency() const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string PrintToString() {
			std::stringstream s;
			self->Print(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Vrml_Material {
	Handle_Vrml_Material GetHandle() {
	return *(Handle_Vrml_Material*) &$self;
	}
};
%extend Vrml_Material {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Vrml_Material::~Vrml_Material %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Vrml_Material {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Vrml_WWWAnchor;
class Vrml_WWWAnchor {
	public:
		%feature("autodoc", "1");
		Vrml_WWWAnchor(const TCollection_AsciiString &aName="", const TCollection_AsciiString &aDescription="", const Vrml_WWWAnchorMap aMap=Vrml_MAP_NONE);
		%feature("autodoc", "1");
		void SetName(const TCollection_AsciiString &aName);
		%feature("autodoc", "1");
		TCollection_AsciiString Name() const;
		%feature("autodoc", "1");
		void SetDescription(const TCollection_AsciiString &aDescription);
		%feature("autodoc", "1");
		TCollection_AsciiString Description() const;
		%feature("autodoc", "1");
		void SetMap(const Vrml_WWWAnchorMap aMap);
		%feature("autodoc", "1");
		Vrml_WWWAnchorMap Map() const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string PrintToString() {
			std::stringstream s;
			self->Print(s);
			return s.str();}
		};

};
%feature("shadow") Vrml_WWWAnchor::~Vrml_WWWAnchor %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Vrml_WWWAnchor {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Vrml_Rotation;
class Vrml_Rotation {
	public:
		%feature("autodoc", "1");
		Vrml_Rotation();
		%feature("autodoc", "1");
		Vrml_Rotation(const Vrml_SFRotation &aRotation);
		%feature("autodoc", "1");
		void SetRotation(const Vrml_SFRotation &aRotation);
		%feature("autodoc", "1");
		Vrml_SFRotation Rotation() const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string PrintToString() {
			std::stringstream s;
			self->Print(s);
			return s.str();}
		};

};
%feature("shadow") Vrml_Rotation::~Vrml_Rotation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Vrml_Rotation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Vrml_ShapeHints;
class Vrml_ShapeHints {
	public:
		%feature("autodoc", "1");
		Vrml_ShapeHints(const Vrml_VertexOrdering aVertexOrdering=Vrml_UNKNOWN_ORDERING, const Vrml_ShapeType aShapeType=Vrml_UNKNOWN_SHAPE_TYPE, const Vrml_FaceType aFaceType=Vrml_CONVEX, const Standard_Real aAngle=5.0e-1);
		%feature("autodoc", "1");
		void SetVertexOrdering(const Vrml_VertexOrdering aVertexOrdering);
		%feature("autodoc", "1");
		Vrml_VertexOrdering VertexOrdering() const;
		%feature("autodoc", "1");
		void SetShapeType(const Vrml_ShapeType aShapeType);
		%feature("autodoc", "1");
		Vrml_ShapeType ShapeType() const;
		%feature("autodoc", "1");
		void SetFaceType(const Vrml_FaceType aFaceType);
		%feature("autodoc", "1");
		Vrml_FaceType FaceType() const;
		%feature("autodoc", "1");
		void SetAngle(const Standard_Real aAngle);
		%feature("autodoc", "1");
		Standard_Real Angle() const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string PrintToString() {
			std::stringstream s;
			self->Print(s);
			return s.str();}
		};

};
%feature("shadow") Vrml_ShapeHints::~Vrml_ShapeHints %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Vrml_ShapeHints {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Vrml_PointSet;
class Vrml_PointSet {
	public:
		%feature("autodoc", "1");
		Vrml_PointSet(const Standard_Integer aStartIndex=0, const Standard_Integer aNumPoints=-0x000000001);
		%feature("autodoc", "1");
		void SetStartIndex(const Standard_Integer aStartIndex);
		%feature("autodoc", "1");
		Standard_Integer StartIndex() const;
		%feature("autodoc", "1");
		void SetNumPoints(const Standard_Integer aNumPoints);
		%feature("autodoc", "1");
		Standard_Integer NumPoints() const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string PrintToString() {
			std::stringstream s;
			self->Print(s);
			return s.str();}
		};

};
%feature("shadow") Vrml_PointSet::~Vrml_PointSet %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Vrml_PointSet {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Vrml_Separator;
class Vrml_Separator {
	public:
		%feature("autodoc", "1");
		Vrml_Separator(const Vrml_SeparatorRenderCulling aRenderCulling);
		%feature("autodoc", "1");
		Vrml_Separator();
		%feature("autodoc", "1");
		void SetRenderCulling(const Vrml_SeparatorRenderCulling aRenderCulling);
		%feature("autodoc", "1");
		Vrml_SeparatorRenderCulling RenderCulling() const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string PrintToString() {
			std::stringstream s;
			self->Print(s);
			return s.str();}
		};

};
%feature("shadow") Vrml_Separator::~Vrml_Separator %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Vrml_Separator {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Vrml_Translation;
class Vrml_Translation {
	public:
		%feature("autodoc", "1");
		Vrml_Translation();
		%feature("autodoc", "1");
		Vrml_Translation(const gp_Vec &aTranslation);
		%feature("autodoc", "1");
		void SetTranslation(const gp_Vec &aTranslation);
		%feature("autodoc", "1");
		gp_Vec Translation() const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string PrintToString() {
			std::stringstream s;
			self->Print(s);
			return s.str();}
		};

};
%feature("shadow") Vrml_Translation::~Vrml_Translation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Vrml_Translation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Vrml_Group;
class Vrml_Group {
	public:
		%feature("autodoc", "1");
		Vrml_Group();
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string PrintToString() {
			std::stringstream s;
			self->Print(s);
			return s.str();}
		};

};
%feature("shadow") Vrml_Group::~Vrml_Group %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Vrml_Group {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Vrml_TextureCoordinate2;
class Vrml_TextureCoordinate2 : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Vrml_TextureCoordinate2();
		%feature("autodoc", "1");
		Vrml_TextureCoordinate2(const Handle_TColgp_HArray1OfVec2d &aPoint);
		%feature("autodoc", "1");
		void SetPoint(const Handle_TColgp_HArray1OfVec2d &aPoint);
		%feature("autodoc", "1");
		Handle_TColgp_HArray1OfVec2d Point() const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string PrintToString() {
			std::stringstream s;
			self->Print(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Vrml_TextureCoordinate2 {
	Handle_Vrml_TextureCoordinate2 GetHandle() {
	return *(Handle_Vrml_TextureCoordinate2*) &$self;
	}
};
%extend Vrml_TextureCoordinate2 {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Vrml_TextureCoordinate2::~Vrml_TextureCoordinate2 %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Vrml_TextureCoordinate2 {
	void _kill_pointed() {
		delete $self;
	}
};
