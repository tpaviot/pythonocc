/*

Copyright 2008-2014 Thomas Paviot (tpaviot@gmail.com)

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

*/


%{
#ifdef WNT
#pragma warning(disable : 4716)
#endif
%}

%module Font
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include Font_renames.i


%include Font_required_python_modules.i


%include Font_dependencies.i


%include Font_headers.i

typedef NCollection_List<Handle_Font_SystemFont> Font_NListOfSystemFont;

enum Font_FontAspect {
	Font_FA_Undefined,
	Font_FA_Regular,
	Font_FA_Bold,
	Font_FA_Italic,
	Font_FA_BoldItalic,
	};



%nodefaultctor Handle_Font_FontMgr;
class Handle_Font_FontMgr : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Font_FontMgr();
		%feature("autodoc", "1");
		Handle_Font_FontMgr(const Handle_Font_FontMgr &aHandle);
		%feature("autodoc", "1");
		Handle_Font_FontMgr(const Font_FontMgr *anItem);
		%feature("autodoc", "1");
		Handle_Font_FontMgr & operator=(const Handle_Font_FontMgr &aHandle);
		%feature("autodoc", "1");
		Handle_Font_FontMgr & operator=(const Font_FontMgr *anItem);
		%feature("autodoc", "1");
		static		Handle_Font_FontMgr DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Font_FontMgr {
	Font_FontMgr* GetObject() {
	return (Font_FontMgr*)$self->Access();
	}
};
%feature("shadow") Handle_Font_FontMgr::~Handle_Font_FontMgr %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Font_FontMgr {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_Font_SystemFont;
class Handle_Font_SystemFont : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Font_SystemFont();
		%feature("autodoc", "1");
		Handle_Font_SystemFont(const Handle_Font_SystemFont &aHandle);
		%feature("autodoc", "1");
		Handle_Font_SystemFont(const Font_SystemFont *anItem);
		%feature("autodoc", "1");
		Handle_Font_SystemFont & operator=(const Handle_Font_SystemFont &aHandle);
		%feature("autodoc", "1");
		Handle_Font_SystemFont & operator=(const Font_SystemFont *anItem);
		%feature("autodoc", "1");
		static		Handle_Font_SystemFont DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Font_SystemFont {
	Font_SystemFont* GetObject() {
	return (Font_SystemFont*)$self->Access();
	}
};
%feature("shadow") Handle_Font_SystemFont::~Handle_Font_SystemFont %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_Font_SystemFont {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Font_FontMgr;
class Font_FontMgr : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		static		Handle_Font_FontMgr GetInstance();
		%feature("autodoc", "1");
		const Font_NListOfSystemFont & GetAvailableFonts() const;
		%feature("autodoc", "1");
		void GetAvailableFontsNames(TColStd_SequenceOfHAsciiString & theFontsNames) const;
		%feature("autodoc", "1");
		Handle_Font_SystemFont GetFont(const Handle_TCollection_HAsciiString &theFontName, const Font_FontAspect theFontAspect, const Standard_Integer theFontSize) const;
		%feature("autodoc", "1");
		Handle_Font_SystemFont FindFont(const Handle_TCollection_HAsciiString &theFontName, const Font_FontAspect theFontAspect, const Standard_Integer theFontSize) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Font_FontMgr {
	Handle_Font_FontMgr GetHandle() {
	return *(Handle_Font_FontMgr*) &$self;
	}
};
%extend Font_FontMgr {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Font_FontMgr::~Font_FontMgr %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Font_FontMgr {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Font_SystemFont;
class Font_SystemFont : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Font_SystemFont();
		%feature("autodoc", "1");
		Font_SystemFont(const Handle_TCollection_HAsciiString &theFontName, const Font_FontAspect theFontAspect, const Handle_TCollection_HAsciiString &theFilePath);
		%feature("autodoc", "1");
		Font_SystemFont(const Handle_TCollection_HAsciiString &theXLFD, const Handle_TCollection_HAsciiString &theFilePath);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString FontName() const;
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString FontPath() const;
		%feature("autodoc", "1");
		Font_FontAspect FontAspect() const;
		%feature("autodoc", "1");
		Standard_Integer FontHeight() const;
		%feature("autodoc", "1");
		Standard_Boolean IsValid() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const Handle_Font_SystemFont &theOtherFont) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Font_SystemFont {
	Handle_Font_SystemFont GetHandle() {
	return *(Handle_Font_SystemFont*) &$self;
	}
};
%extend Font_SystemFont {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") Font_SystemFont::~Font_SystemFont %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Font_SystemFont {
	void _kill_pointed() {
		delete $self;
	}
};
