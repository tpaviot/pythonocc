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

%module MFT
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include MFT_renames.i


%include MFT_required_python_modules.i


%include MFT_dependencies.i


%include MFT_headers.i

typedef Standard_Integer MFT_FileHandle;
typedef Standard_Integer MFT_FilePosition;
typedef _MFT_FileRecord MFT_FileRecord;
typedef TColStd_SequenceOfAsciiString MFT_ListOfFontName;
typedef TColStd_SequenceOfInteger MFT_ListOfFontReference;
typedef unsigned int MFT_CommandDescriptor;

enum MFT_TypeOfValue {
	MFT_TOV_UNKNOWN,
	MFT_TOV_INTEGER,
	MFT_TOV_FLOAT,
	MFT_TOV_STRING,
	};

enum MFT_TypeOfCommand {
	MFT_TOC_UNKNOWN,
	MFT_TOC_HSTEM,
	MFT_TOC_VSTEM,
	MFT_TOC_VMOVETO,
	MFT_TOC_RLINETO,
	MFT_TOC_HLINETO,
	MFT_TOC_VLINETO,
	MFT_TOC_RRCURVETO,
	MFT_TOC_CLOSEPATH,
	MFT_TOC_HSBW,
	MFT_TOC_ENDCHAR,
	MFT_TOC_RMOVETO,
	MFT_TOC_HMOVETO,
	MFT_TOC_VHCURVETO,
	MFT_TOC_HVCURVETO,
	MFT_TOC_DOTSECTION,
	MFT_TOC_VSTEM3,
	MFT_TOC_HSTEM3,
	MFT_TOC_SEAC,
	MFT_TOC_SBW,
	MFT_TOC_SETCURRENTPOINT,
	MFT_TOC_CHARSTRING,
	MFT_TOC_NUMERIC,
	MFT_TOC_MINMAX,
	};



%nodefaultctor Handle_MFT_SequenceNodeOfListOfFontHandle;
class Handle_MFT_SequenceNodeOfListOfFontHandle : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_MFT_SequenceNodeOfListOfFontHandle();
		%feature("autodoc", "1");
		Handle_MFT_SequenceNodeOfListOfFontHandle(const Handle_MFT_SequenceNodeOfListOfFontHandle &aHandle);
		%feature("autodoc", "1");
		Handle_MFT_SequenceNodeOfListOfFontHandle(const MFT_SequenceNodeOfListOfFontHandle *anItem);
		%feature("autodoc", "1");
		Handle_MFT_SequenceNodeOfListOfFontHandle & operator=(const Handle_MFT_SequenceNodeOfListOfFontHandle &aHandle);
		%feature("autodoc", "1");
		Handle_MFT_SequenceNodeOfListOfFontHandle & operator=(const MFT_SequenceNodeOfListOfFontHandle *anItem);
		%feature("autodoc", "1");
		static		Handle_MFT_SequenceNodeOfListOfFontHandle DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MFT_SequenceNodeOfListOfFontHandle {
	MFT_SequenceNodeOfListOfFontHandle* GetObject() {
	return (MFT_SequenceNodeOfListOfFontHandle*)$self->Access();
	}
};
%feature("shadow") Handle_MFT_SequenceNodeOfListOfFontHandle::~Handle_MFT_SequenceNodeOfListOfFontHandle %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MFT_SequenceNodeOfListOfFontHandle {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MFT_TextManager;
class Handle_MFT_TextManager : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_MFT_TextManager();
		%feature("autodoc", "1");
		Handle_MFT_TextManager(const Handle_MFT_TextManager &aHandle);
		%feature("autodoc", "1");
		Handle_MFT_TextManager(const MFT_TextManager *anItem);
		%feature("autodoc", "1");
		Handle_MFT_TextManager & operator=(const Handle_MFT_TextManager &aHandle);
		%feature("autodoc", "1");
		Handle_MFT_TextManager & operator=(const MFT_TextManager *anItem);
		%feature("autodoc", "1");
		static		Handle_MFT_TextManager DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MFT_TextManager {
	MFT_TextManager* GetObject() {
	return (MFT_TextManager*)$self->Access();
	}
};
%feature("shadow") Handle_MFT_TextManager::~Handle_MFT_TextManager %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MFT_TextManager {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MFT_FontManager;
class Handle_MFT_FontManager : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_MFT_FontManager();
		%feature("autodoc", "1");
		Handle_MFT_FontManager(const Handle_MFT_FontManager &aHandle);
		%feature("autodoc", "1");
		Handle_MFT_FontManager(const MFT_FontManager *anItem);
		%feature("autodoc", "1");
		Handle_MFT_FontManager & operator=(const Handle_MFT_FontManager &aHandle);
		%feature("autodoc", "1");
		Handle_MFT_FontManager & operator=(const MFT_FontManager *anItem);
		%feature("autodoc", "1");
		static		Handle_MFT_FontManager DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MFT_FontManager {
	MFT_FontManager* GetObject() {
	return (MFT_FontManager*)$self->Access();
	}
};
%feature("shadow") Handle_MFT_FontManager::~Handle_MFT_FontManager %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MFT_FontManager {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MFT_FontManagerError;
class Handle_MFT_FontManagerError : public Handle_Standard_TypeMismatch {
	public:
		%feature("autodoc", "1");
		Handle_MFT_FontManagerError();
		%feature("autodoc", "1");
		Handle_MFT_FontManagerError(const Handle_MFT_FontManagerError &aHandle);
		%feature("autodoc", "1");
		Handle_MFT_FontManagerError(const MFT_FontManagerError *anItem);
		%feature("autodoc", "1");
		Handle_MFT_FontManagerError & operator=(const Handle_MFT_FontManagerError &aHandle);
		%feature("autodoc", "1");
		Handle_MFT_FontManagerError & operator=(const MFT_FontManagerError *anItem);
		%feature("autodoc", "1");
		static		Handle_MFT_FontManagerError DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MFT_FontManagerError {
	MFT_FontManagerError* GetObject() {
	return (MFT_FontManagerError*)$self->Access();
	}
};
%feature("shadow") Handle_MFT_FontManagerError::~Handle_MFT_FontManagerError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MFT_FontManagerError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MFT_FontManagerDefinitionError;
class Handle_MFT_FontManagerDefinitionError : public Handle_Standard_NoSuchObject {
	public:
		%feature("autodoc", "1");
		Handle_MFT_FontManagerDefinitionError();
		%feature("autodoc", "1");
		Handle_MFT_FontManagerDefinitionError(const Handle_MFT_FontManagerDefinitionError &aHandle);
		%feature("autodoc", "1");
		Handle_MFT_FontManagerDefinitionError(const MFT_FontManagerDefinitionError *anItem);
		%feature("autodoc", "1");
		Handle_MFT_FontManagerDefinitionError & operator=(const Handle_MFT_FontManagerDefinitionError &aHandle);
		%feature("autodoc", "1");
		Handle_MFT_FontManagerDefinitionError & operator=(const MFT_FontManagerDefinitionError *anItem);
		%feature("autodoc", "1");
		static		Handle_MFT_FontManagerDefinitionError DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MFT_FontManagerDefinitionError {
	MFT_FontManagerDefinitionError* GetObject() {
	return (MFT_FontManagerDefinitionError*)$self->Access();
	}
};
%feature("shadow") Handle_MFT_FontManagerDefinitionError::~Handle_MFT_FontManagerDefinitionError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MFT_FontManagerDefinitionError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MFT_FontManagerError;
class MFT_FontManagerError : public Standard_TypeMismatch {
	public:
		%feature("autodoc", "1");
		MFT_FontManagerError();
		%feature("autodoc", "1");
		MFT_FontManagerError(const char * AString);
		%feature("autodoc", "1");
		static		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		static		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		static		Handle_MFT_FontManagerError NewInstance(const char * aMessage="");
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MFT_FontManagerError {
	Handle_MFT_FontManagerError GetHandle() {
	return *(Handle_MFT_FontManagerError*) &$self;
	}
};
%extend MFT_FontManagerError {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") MFT_FontManagerError::~MFT_FontManagerError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MFT_FontManagerError {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MFT;
class MFT {
	public:
		%feature("autodoc", "1");
		MFT();

};
%feature("shadow") MFT::~MFT %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MFT {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MFT_FontManager;
class MFT_FontManager : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		MFT_FontManager(const char * anAliasName);
		%feature("autodoc", "1");
		MFT_FontManager(const Aspect_FontStyle &aFont, const OSD_OpenMode aFileMode=OSD_ReadOnly, const Standard_Boolean isComposite=0);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		void SetFont(const Aspect_FontStyle &aFont);
		%feature("autodoc", "1");
		void SetChar(const Standard_Character aChar);
		%feature("autodoc", "1");
		void SetAccentChar(const Standard_Character aChar);
		%feature("autodoc", "1");
		void SetChar(const Standard_ExtCharacter aChar);
		%feature("autodoc", "1");
		void SetEncoding(const Standard_Integer aPosition, const char * anEncoding);
		%feature("autodoc", "1");
		void DelChar(const Standard_Character aChar);
		%feature("autodoc", "1");
		void DelChar(const Standard_ExtCharacter aChar);
		%feature("autodoc", "1");
		void AddCommand(const MFT_TypeOfCommand aCommand);
		%feature("autodoc", "1");
		void AddValue(const Standard_Integer aValue);
		%feature("autodoc", "1");
		void AddValue(const Standard_Real aValue);
		%feature("autodoc", "1");
		void AddValue(const char * aValue);
		%feature("autodoc", "1");
		void SetBoundingBox(const Standard_Integer aMinX=0, const Standard_Integer aMinY=0, const Standard_Integer aMaxX=1000, const Standard_Integer aMaxY=1000);
		%feature("autodoc", "1");
		void SetFontMatrix(const Standard_Real M1=1.0000000000000000208166817117216851329430937767e-3, const Standard_Real M2=0.0, const Standard_Real M3=0.0, const Standard_Real M4=1.0000000000000000208166817117216851329430937767e-3, const Standard_Real M5=0.0, const Standard_Real M6=0.0);
		%feature("autodoc", "1");
		void SetPaintType(const Standard_Integer aValue=0);
		%feature("autodoc", "1");
		void SetFixedPitch(const Standard_Boolean aFlag=0);
		%feature("autodoc", "1");
		void SetItalicAngle(const Quantity_PlaneAngle anAngle=0.0);
		%feature("autodoc", "1");
		void ComputeBoundingBox();
		%feature("autodoc", "1");
		void SetFontAttribs(const Quantity_Length aWidth, const Quantity_Length aHeight, const Quantity_PlaneAngle aSlant=0.0, const Quantity_Factor aPrecision=2.00000000000000004163336342344337026588618755341e-2, const Standard_Boolean aCapsHeight=0);
		%feature("autodoc", "1");
		void DrawText(const Handle_MFT_TextManager &aTextManager, const char * aString, const Quantity_Length anX, const Quantity_Length anY, const Quantity_PlaneAngle anOrientation=0.0);
		%feature("autodoc", "1");
		void DrawText(const Handle_MFT_TextManager &aTextManager, const Standard_ExtString aString, const Quantity_Length anX, const Quantity_Length anY, const Quantity_PlaneAngle anOrientation=0.0);
		%feature("autodoc","BoundingBox() -> [Standard_Integer, Standard_Integer, Standard_Integer, Standard_Integer]");

		void BoundingBox(Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc","CharBoundingBox(Standard_Integer aPosition) -> [Standard_Integer, Standard_Integer, Standard_Integer, Standard_Integer]");

		void CharBoundingBox(const Standard_Integer aPosition, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue);
		%feature("autodoc", "1");
		Standard_Integer PaintType() const;
		%feature("autodoc", "1");
		Standard_Boolean FixedPitch() const;
		%feature("autodoc", "1");
		Quantity_PlaneAngle ItalicAngle() const;
		%feature("autodoc","FontAttribs() -> [Standard_Real, Standard_Real, Standard_Real]");

		char * FontAttribs(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Quantity_PlaneAngle & aSlant, Quantity_Factor & aPrecision, Standard_Boolean & aCapsHeight);
		%feature("autodoc","TextSize(Standard_CString aString) -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real]");

		void TextSize(const char * aString, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc","TextSize(Standard_ExtString aString) -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real]");

		void TextSize(const Standard_ExtString aString, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc","CharSize(Standard_Character aChar) -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real]");

		Standard_Boolean CharSize(const Standard_Character aChar, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc","CharSize(Standard_ExtCharacter aChar) -> [Standard_Real, Standard_Real, Standard_Real, Standard_Real, Standard_Real]");

		Standard_Boolean CharSize(const Standard_ExtCharacter aChar, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		Aspect_FontStyle Font() const;
		%feature("autodoc", "1");
		Standard_Boolean IsComposite() const;
		%feature("autodoc", "1");
		static		Standard_Boolean IsKnown(const char * anAliasName);
		%feature("autodoc", "1");
		static		Aspect_FontStyle Font(const char * anAliasName);
		%feature("autodoc", "1");
		static		Standard_Integer FontNumber(const char * aFilter="*");
		%feature("autodoc", "1");
		static		Aspect_FontStyle Font(const Standard_Integer aRank);
		%feature("autodoc", "1");
		static		Standard_Integer MaxCommandValues();
		%feature("autodoc", "1");
		char * Encoding(const Standard_Integer aPosition);
		%feature("autodoc", "1");
		Standard_Integer Encoding(const char * anEncoding);
		%feature("autodoc", "1");
		void Dump();
		%feature("autodoc", "1");
		void Dump(const Standard_Character aChar);
		%feature("autodoc", "1");
		void Dump(const Standard_ExtCharacter aChar);
		%feature("autodoc", "1");
		Standard_Boolean Save();
		%feature("autodoc", "1");
		static		Standard_Boolean Restore(const char * anAliasName);
		%feature("autodoc", "1");
		Quantity_Length UnderlinePosition() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MFT_FontManager {
	Handle_MFT_FontManager GetHandle() {
	return *(Handle_MFT_FontManager*) &$self;
	}
};
%extend MFT_FontManager {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") MFT_FontManager::~MFT_FontManager %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MFT_FontManager {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MFT_ListOfFontHandle;
class MFT_ListOfFontHandle : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		MFT_ListOfFontHandle();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const MFT_ListOfFontHandle & Assign(const MFT_ListOfFontHandle &Other);
		%feature("autodoc", "1");
		const MFT_ListOfFontHandle & operator=(const MFT_ListOfFontHandle &Other);
		%feature("autodoc", "1");
		void Append(const MFT_FileHandle &T);
		%feature("autodoc", "1");
		void Append(MFT_ListOfFontHandle & S);
		%feature("autodoc", "1");
		void Prepend(const MFT_FileHandle &T);
		%feature("autodoc", "1");
		void Prepend(MFT_ListOfFontHandle & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const MFT_FileHandle &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, MFT_ListOfFontHandle & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const MFT_FileHandle &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, MFT_ListOfFontHandle & S);
		%feature("autodoc", "1");
		const MFT_FileHandle & First() const;
		%feature("autodoc", "1");
		const MFT_FileHandle & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, MFT_ListOfFontHandle & S);
		%feature("autodoc", "1");
		const MFT_FileHandle & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const MFT_FileHandle & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const MFT_FileHandle &I);
		%feature("autodoc", "1");
		MFT_FileHandle & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		MFT_FileHandle & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") MFT_ListOfFontHandle::~MFT_ListOfFontHandle %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MFT_ListOfFontHandle {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MFT_SequenceNodeOfListOfFontHandle;
class MFT_SequenceNodeOfListOfFontHandle : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		MFT_SequenceNodeOfListOfFontHandle(const MFT_FileHandle &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		MFT_FileHandle & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MFT_SequenceNodeOfListOfFontHandle {
	Handle_MFT_SequenceNodeOfListOfFontHandle GetHandle() {
	return *(Handle_MFT_SequenceNodeOfListOfFontHandle*) &$self;
	}
};
%extend MFT_SequenceNodeOfListOfFontHandle {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") MFT_SequenceNodeOfListOfFontHandle::~MFT_SequenceNodeOfListOfFontHandle %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MFT_SequenceNodeOfListOfFontHandle {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MFT_TextManager;
class MFT_TextManager : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		MFT_TextManager();
		%feature("autodoc", "1");
		virtual		void BeginString(const Quantity_Length X, const Quantity_Length Y, const Quantity_PlaneAngle anOrientation, const Quantity_Length aWidth, const Quantity_Length aHeight, const Quantity_PlaneAngle aSlant, const Standard_Integer aPaintType);
		%feature("autodoc", "1");
		virtual		Standard_Boolean BeginChar(const Standard_Integer aCharCode, const Quantity_Length X, const Quantity_Length Y);
		%feature("autodoc", "1");
		virtual		Standard_Boolean SetCharBoundingBox(const Quantity_Length X1, const Quantity_Length Y1, const Quantity_Length X2, const Quantity_Length Y2, const Quantity_Length X3, const Quantity_Length Y3, const Quantity_Length X4, const Quantity_Length Y4);
		%feature("autodoc", "1");
		virtual		Standard_Boolean SetCharEncoding(const char * anEncoding);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Moveto(const Quantity_Length X, const Quantity_Length Y);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Lineto(const Quantity_Length X, const Quantity_Length Y);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Curveto(const Quantity_Length X1, const Quantity_Length Y1, const Quantity_Length X2, const Quantity_Length Y2, const Quantity_Length X3, const Quantity_Length Y3, const Quantity_Length X4, const Quantity_Length Y4);
		%feature("autodoc", "1");
		virtual		void ClosePath();
		%feature("autodoc", "1");
		virtual		Standard_Boolean EndChar(const Quantity_Length X, const Quantity_Length Y);
		%feature("autodoc", "1");
		virtual		void EndString();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MFT_TextManager {
	Handle_MFT_TextManager GetHandle() {
	return *(Handle_MFT_TextManager*) &$self;
	}
};
%extend MFT_TextManager {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") MFT_TextManager::~MFT_TextManager %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MFT_TextManager {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MFT_FontManagerDefinitionError;
class MFT_FontManagerDefinitionError : public Standard_NoSuchObject {
	public:
		%feature("autodoc", "1");
		MFT_FontManagerDefinitionError();
		%feature("autodoc", "1");
		MFT_FontManagerDefinitionError(const char * AString);
		%feature("autodoc", "1");
		static		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		static		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		static		Handle_MFT_FontManagerDefinitionError NewInstance(const char * aMessage="");
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MFT_FontManagerDefinitionError {
	Handle_MFT_FontManagerDefinitionError GetHandle() {
	return *(Handle_MFT_FontManagerDefinitionError*) &$self;
	}
};
%extend MFT_FontManagerDefinitionError {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") MFT_FontManagerDefinitionError::~MFT_FontManagerDefinitionError %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MFT_FontManagerDefinitionError {
	void _kill_pointed() {
		delete $self;
	}
};
