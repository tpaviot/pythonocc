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
%module Materials
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%pythoncode {
import GarbageCollector
};

%include Materials_dependencies.i


%include Materials_headers.i




%nodefaultctor Handle_Materials_FuzzyInstance;
class Handle_Materials_FuzzyInstance : public Handle_Dynamic_FuzzyClass {
	public:
		%feature("autodoc", "1");
		Handle_Materials_FuzzyInstance();
		%feature("autodoc", "1");
		Handle_Materials_FuzzyInstance(const Handle_Materials_FuzzyInstance &aHandle);
		%feature("autodoc", "1");
		Handle_Materials_FuzzyInstance(const Materials_FuzzyInstance *anItem);
		%feature("autodoc", "1");
		Handle_Materials_FuzzyInstance & operator=(const Handle_Materials_FuzzyInstance &aHandle);
		%feature("autodoc", "1");
		Handle_Materials_FuzzyInstance & operator=(const Materials_FuzzyInstance *anItem);
		%feature("autodoc", "1");
		Handle_Materials_FuzzyInstance const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Materials_FuzzyInstance {
	Materials_FuzzyInstance* GetObject() {
	return (Materials_FuzzyInstance*)$self->Access();
	}
};
%feature("shadow") Handle_Materials_FuzzyInstance::~Handle_Materials_FuzzyInstance %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Materials_FuzzyInstance {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Materials_Material;
class Handle_Materials_Material : public Handle_Materials_FuzzyInstance {
	public:
		%feature("autodoc", "1");
		Handle_Materials_Material();
		%feature("autodoc", "1");
		Handle_Materials_Material(const Handle_Materials_Material &aHandle);
		%feature("autodoc", "1");
		Handle_Materials_Material(const Materials_Material *anItem);
		%feature("autodoc", "1");
		Handle_Materials_Material & operator=(const Handle_Materials_Material &aHandle);
		%feature("autodoc", "1");
		Handle_Materials_Material & operator=(const Materials_Material *anItem);
		%feature("autodoc", "1");
		Handle_Materials_Material const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Materials_Material {
	Materials_Material* GetObject() {
	return (Materials_Material*)$self->Access();
	}
};
%feature("shadow") Handle_Materials_Material::~Handle_Materials_Material %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Materials_Material {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Materials_SequenceNodeOfMtsSequence;
class Handle_Materials_SequenceNodeOfMtsSequence : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_Materials_SequenceNodeOfMtsSequence();
		%feature("autodoc", "1");
		Handle_Materials_SequenceNodeOfMtsSequence(const Handle_Materials_SequenceNodeOfMtsSequence &aHandle);
		%feature("autodoc", "1");
		Handle_Materials_SequenceNodeOfMtsSequence(const Materials_SequenceNodeOfMtsSequence *anItem);
		%feature("autodoc", "1");
		Handle_Materials_SequenceNodeOfMtsSequence & operator=(const Handle_Materials_SequenceNodeOfMtsSequence &aHandle);
		%feature("autodoc", "1");
		Handle_Materials_SequenceNodeOfMtsSequence & operator=(const Materials_SequenceNodeOfMtsSequence *anItem);
		%feature("autodoc", "1");
		Handle_Materials_SequenceNodeOfMtsSequence const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Materials_SequenceNodeOfMtsSequence {
	Materials_SequenceNodeOfMtsSequence* GetObject() {
	return (Materials_SequenceNodeOfMtsSequence*)$self->Access();
	}
};
%feature("shadow") Handle_Materials_SequenceNodeOfMtsSequence::~Handle_Materials_SequenceNodeOfMtsSequence %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Materials_SequenceNodeOfMtsSequence {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Materials_MaterialsSequence;
class Handle_Materials_MaterialsSequence : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Materials_MaterialsSequence();
		%feature("autodoc", "1");
		Handle_Materials_MaterialsSequence(const Handle_Materials_MaterialsSequence &aHandle);
		%feature("autodoc", "1");
		Handle_Materials_MaterialsSequence(const Materials_MaterialsSequence *anItem);
		%feature("autodoc", "1");
		Handle_Materials_MaterialsSequence & operator=(const Handle_Materials_MaterialsSequence &aHandle);
		%feature("autodoc", "1");
		Handle_Materials_MaterialsSequence & operator=(const Materials_MaterialsSequence *anItem);
		%feature("autodoc", "1");
		Handle_Materials_MaterialsSequence const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Materials_MaterialsSequence {
	Materials_MaterialsSequence* GetObject() {
	return (Materials_MaterialsSequence*)$self->Access();
	}
};
%feature("shadow") Handle_Materials_MaterialsSequence::~Handle_Materials_MaterialsSequence %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Materials_MaterialsSequence {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Materials_Color;
class Handle_Materials_Color : public Handle_Standard_Transient {
	public:
		%feature("autodoc", "1");
		Handle_Materials_Color();
		%feature("autodoc", "1");
		Handle_Materials_Color(const Handle_Materials_Color &aHandle);
		%feature("autodoc", "1");
		Handle_Materials_Color(const Materials_Color *anItem);
		%feature("autodoc", "1");
		Handle_Materials_Color & operator=(const Handle_Materials_Color &aHandle);
		%feature("autodoc", "1");
		Handle_Materials_Color & operator=(const Materials_Color *anItem);
		%feature("autodoc", "1");
		Handle_Materials_Color const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Materials_Color {
	Materials_Color* GetObject() {
	return (Materials_Color*)$self->Access();
	}
};
%feature("shadow") Handle_Materials_Color::~Handle_Materials_Color %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Materials_Color {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Materials_MaterialDefinition;
class Handle_Materials_MaterialDefinition : public Handle_Dynamic_FuzzyDefinitionsDictionary {
	public:
		%feature("autodoc", "1");
		Handle_Materials_MaterialDefinition();
		%feature("autodoc", "1");
		Handle_Materials_MaterialDefinition(const Handle_Materials_MaterialDefinition &aHandle);
		%feature("autodoc", "1");
		Handle_Materials_MaterialDefinition(const Materials_MaterialDefinition *anItem);
		%feature("autodoc", "1");
		Handle_Materials_MaterialDefinition & operator=(const Handle_Materials_MaterialDefinition &aHandle);
		%feature("autodoc", "1");
		Handle_Materials_MaterialDefinition & operator=(const Materials_MaterialDefinition *anItem);
		%feature("autodoc", "1");
		Handle_Materials_MaterialDefinition const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Materials_MaterialDefinition {
	Materials_MaterialDefinition* GetObject() {
	return (Materials_MaterialDefinition*)$self->Access();
	}
};
%feature("shadow") Handle_Materials_MaterialDefinition::~Handle_Materials_MaterialDefinition %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Materials_MaterialDefinition {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Materials_MaterialsDictionary;
class Handle_Materials_MaterialsDictionary : public Handle_Standard_Transient {
	public:
		%feature("autodoc", "1");
		Handle_Materials_MaterialsDictionary();
		%feature("autodoc", "1");
		Handle_Materials_MaterialsDictionary(const Handle_Materials_MaterialsDictionary &aHandle);
		%feature("autodoc", "1");
		Handle_Materials_MaterialsDictionary(const Materials_MaterialsDictionary *anItem);
		%feature("autodoc", "1");
		Handle_Materials_MaterialsDictionary & operator=(const Handle_Materials_MaterialsDictionary &aHandle);
		%feature("autodoc", "1");
		Handle_Materials_MaterialsDictionary & operator=(const Materials_MaterialsDictionary *anItem);
		%feature("autodoc", "1");
		Handle_Materials_MaterialsDictionary const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Materials_MaterialsDictionary {
	Materials_MaterialsDictionary* GetObject() {
	return (Materials_MaterialsDictionary*)$self->Access();
	}
};
%feature("shadow") Handle_Materials_MaterialsDictionary::~Handle_Materials_MaterialsDictionary %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Materials_MaterialsDictionary {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Materials_MaterialsDictionary;
class Materials_MaterialsDictionary : public Standard_Transient {
	public:
		%feature("autodoc", "1");
		Materials_MaterialsDictionary();
		%feature("autodoc", "1");
		Handle_Materials_Material Material(const char * amaterial) const;
		%feature("autodoc", "1");
		Standard_Boolean ExistMaterial(const char * aName) const;
		%feature("autodoc", "1");
		Standard_Integer NumberOfMaterials() const;
		%feature("autodoc", "1");
		Handle_Materials_Material Material(const Standard_Integer anindex) const;
		%feature("autodoc", "1");
		Standard_Boolean UpToDate() const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Materials_MaterialsDictionary {
	Handle_Materials_MaterialsDictionary GetHandle() {
	return *(Handle_Materials_MaterialsDictionary*) &$self;
	}
};
%extend Materials_MaterialsDictionary {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Materials_MaterialsDictionary::~Materials_MaterialsDictionary %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Materials_MaterialsDictionary {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Materials_SequenceNodeOfMtsSequence;
class Materials_SequenceNodeOfMtsSequence : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Materials_SequenceNodeOfMtsSequence(const Handle_Materials_Material &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_Materials_Material & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Materials_SequenceNodeOfMtsSequence {
	Handle_Materials_SequenceNodeOfMtsSequence GetHandle() {
	return *(Handle_Materials_SequenceNodeOfMtsSequence*) &$self;
	}
};
%extend Materials_SequenceNodeOfMtsSequence {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Materials_SequenceNodeOfMtsSequence::~Materials_SequenceNodeOfMtsSequence %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Materials_SequenceNodeOfMtsSequence {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Materials;
class Materials {
	public:
		%feature("autodoc", "1");
		Materials();
		%feature("autodoc", "1");
		void MaterialFile(const char * afile);
		%feature("autodoc", "1");
		void MaterialsFile(const char * afile);
		%feature("autodoc", "1");
		char * MaterialsFile();
		%feature("autodoc", "1");
		Handle_Materials_MaterialsDictionary DictionaryOfMaterials();
		%feature("autodoc", "1");
		Standard_Boolean ExistMaterial(const char * aName);
		%feature("autodoc", "1");
		Handle_Materials_Material Material(const char * amaterial);
		%feature("autodoc", "1");
		Standard_Integer NumberOfMaterials();
		%feature("autodoc", "1");
		Handle_Materials_Material Material(const Standard_Integer anindex);

};
%feature("shadow") Materials::~Materials %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Materials {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Materials_FuzzyInstance;
class Materials_FuzzyInstance : public Dynamic_FuzzyClass {
	public:
		%feature("autodoc", "1");
		Materials_FuzzyInstance(const char * atype);
		%feature("autodoc", "1");
		Materials_FuzzyInstance(const Handle_Materials_FuzzyInstance &afuzzyinstance);
		%feature("autodoc", "1");
		virtual		TCollection_AsciiString Type() const;
		%feature("autodoc", "1");
		Handle_Dynamic_FuzzyClass Definition() const;
		%feature("autodoc", "1");
		virtual		void Parameter(const char * aparameter, const Standard_Boolean avalue);
		%feature("autodoc", "1");
		virtual		void Parameter(const char * aparameter, const Standard_Integer avalue);
		%feature("autodoc", "1");
		virtual		void Parameter(const char * aparameter, const Standard_Real avalue);
		%feature("autodoc", "1");
		virtual		void Parameter(const char * aparameter, const char * astring);
		%feature("autodoc", "1");
		virtual		void Parameter(const char * aparameter, const Handle_Standard_Transient &anobject);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Value(const char * aparameter, Standard_Boolean & avalue) const;
		%feature("autodoc","Value(Standard_CString aparameter) -> Standard_Integer");

		virtual		Standard_Boolean Value(const char * aparameter, Standard_Integer &OutValue) const;
		%feature("autodoc","Value(Standard_CString aparameter) -> Standard_Real");

		virtual		Standard_Boolean Value(const char * aparameter, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Value(const char * aparameter, TCollection_AsciiString & avalue) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Value(const char * aparameter, Handle_Standard_Transient & avalue) const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Materials_FuzzyInstance {
	Handle_Materials_FuzzyInstance GetHandle() {
	return *(Handle_Materials_FuzzyInstance*) &$self;
	}
};
%extend Materials_FuzzyInstance {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Materials_FuzzyInstance::~Materials_FuzzyInstance %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Materials_FuzzyInstance {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Materials_MaterialDefinition;
class Materials_MaterialDefinition : public Dynamic_FuzzyDefinitionsDictionary {
	public:
		%feature("autodoc", "1");
		Materials_MaterialDefinition();
		%feature("autodoc", "1");
		virtual		Handle_Dynamic_Parameter Switch(const char * aname, const char * atype, const char * avalue) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Materials_MaterialDefinition {
	Handle_Materials_MaterialDefinition GetHandle() {
	return *(Handle_Materials_MaterialDefinition*) &$self;
	}
};
%extend Materials_MaterialDefinition {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Materials_MaterialDefinition::~Materials_MaterialDefinition %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Materials_MaterialDefinition {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Materials_Material;
class Materials_Material : public Materials_FuzzyInstance {
	public:
		%feature("autodoc", "1");
		Materials_Material(const char * amaterial);
		%feature("autodoc", "1");
		TCollection_AsciiString Name() const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string DumpToString() {
			std::stringstream s;
			self->Dump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Materials_Material {
	Handle_Materials_Material GetHandle() {
	return *(Handle_Materials_Material*) &$self;
	}
};
%extend Materials_Material {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Materials_Material::~Materials_Material %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Materials_Material {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Materials_MtsSequence;
class Materials_MtsSequence : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		Materials_MtsSequence();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const Materials_MtsSequence & Assign(const Materials_MtsSequence &Other);
		%feature("autodoc", "1");
		const Materials_MtsSequence & operator=(const Materials_MtsSequence &Other);
		%feature("autodoc", "1");
		void Append(const Handle_Materials_Material &T);
		%feature("autodoc", "1");
		void Append(Materials_MtsSequence & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_Materials_Material &T);
		%feature("autodoc", "1");
		void Prepend(Materials_MtsSequence & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_Materials_Material &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, Materials_MtsSequence & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_Materials_Material &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, Materials_MtsSequence & S);
		%feature("autodoc", "1");
		const Handle_Materials_Material & First() const;
		%feature("autodoc", "1");
		const Handle_Materials_Material & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, Materials_MtsSequence & S);
		%feature("autodoc", "1");
		const Handle_Materials_Material & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_Materials_Material & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_Materials_Material &I);
		%feature("autodoc", "1");
		Handle_Materials_Material & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_Materials_Material & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") Materials_MtsSequence::~Materials_MtsSequence %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Materials_MtsSequence {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Materials_MaterialsSequence;
class Materials_MaterialsSequence : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Materials_MaterialsSequence();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const Handle_Materials_Material &anItem);
		%feature("autodoc", "1");
		void Append(const Handle_Materials_MaterialsSequence &aSequence);
		%feature("autodoc", "1");
		void Prepend(const Handle_Materials_Material &anItem);
		%feature("autodoc", "1");
		void Prepend(const Handle_Materials_MaterialsSequence &aSequence);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_Materials_Material &anItem);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_Materials_MaterialsSequence &aSequence);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_Materials_Material &anItem);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_Materials_MaterialsSequence &aSequence);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer anIndex, const Standard_Integer anOtherIndex);
		%feature("autodoc", "1");
		Handle_Materials_MaterialsSequence Split(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer anIndex, const Handle_Materials_Material &anItem);
		%feature("autodoc", "1");
		const Handle_Materials_Material & Value(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		Handle_Materials_Material & ChangeValue(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer fromIndex, const Standard_Integer toIndex);
		%feature("autodoc", "1");
		const Materials_MtsSequence & Sequence() const;
		%feature("autodoc", "1");
		Materials_MtsSequence & ChangeSequence();
		%feature("autodoc", "1");
		Handle_Materials_MaterialsSequence ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Materials_MaterialsSequence {
	Handle_Materials_MaterialsSequence GetHandle() {
	return *(Handle_Materials_MaterialsSequence*) &$self;
	}
};
%extend Materials_MaterialsSequence {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Materials_MaterialsSequence::~Materials_MaterialsSequence %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Materials_MaterialsSequence {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Materials_Color;
class Materials_Color : public Standard_Transient {
	public:
		%feature("autodoc", "1");
		Materials_Color();
		%feature("autodoc", "1");
		Materials_Color(const Quantity_Color &acolor);
		%feature("autodoc", "1");
		void Color(const Quantity_Color &acolor);
		%feature("autodoc", "1");
		Quantity_Color Color() const;
		%feature("autodoc","Color(Quantity_TypeOfColor aTypeOfColor) -> [Standard_Real, Standard_Real, Standard_Real]");

		void Color(const Quantity_TypeOfColor aTypeOfColor, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","Color255(Quantity_TypeOfColor aTypeOfColor) -> [Standard_Real, Standard_Real, Standard_Real]");

		void Color255(const Quantity_TypeOfColor aTypeOfColor, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		void SetColor(const Quantity_TypeOfColor aTypeOfColor, const Standard_Real Reel1, const Standard_Real Reel2, const Standard_Real Reel3);
		%feature("autodoc", "1");
		void SetColor255(const Quantity_TypeOfColor aTypeOfColor, const Standard_Real Reel1, const Standard_Real Reel2, const Standard_Real Reel3);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Materials_Color {
	Handle_Materials_Color GetHandle() {
	return *(Handle_Materials_Color*) &$self;
	}
};
%extend Materials_Color {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") Materials_Color::~Materials_Color %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Materials_Color {
	void _kill_pointed() {
		delete $self;
	}
};
