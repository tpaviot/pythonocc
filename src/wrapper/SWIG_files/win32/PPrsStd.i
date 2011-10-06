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

%module PPrsStd
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include PPrsStd_renames.i


%include PPrsStd_required_python_modules.i


%include PPrsStd_dependencies.i


%include PPrsStd_headers.i




%nodefaultctor Handle_PPrsStd_AISPresentation;
class Handle_PPrsStd_AISPresentation : public Handle_PDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_PPrsStd_AISPresentation();
		%feature("autodoc", "1");
		Handle_PPrsStd_AISPresentation(const Handle_PPrsStd_AISPresentation &aHandle);
		%feature("autodoc", "1");
		Handle_PPrsStd_AISPresentation(const PPrsStd_AISPresentation *anItem);
		%feature("autodoc", "1");
		Handle_PPrsStd_AISPresentation & operator=(const Handle_PPrsStd_AISPresentation &aHandle);
		%feature("autodoc", "1");
		Handle_PPrsStd_AISPresentation & operator=(const PPrsStd_AISPresentation *anItem);
		%feature("autodoc", "1");
		static		Handle_PPrsStd_AISPresentation DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PPrsStd_AISPresentation {
	PPrsStd_AISPresentation* GetObject() {
	return (PPrsStd_AISPresentation*)$self->Access();
	}
};
%feature("shadow") Handle_PPrsStd_AISPresentation::~Handle_PPrsStd_AISPresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PPrsStd_AISPresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PPrsStd_AISPresentation_1;
class Handle_PPrsStd_AISPresentation_1 : public Handle_PDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_PPrsStd_AISPresentation_1();
		%feature("autodoc", "1");
		Handle_PPrsStd_AISPresentation_1(const Handle_PPrsStd_AISPresentation_1 &aHandle);
		%feature("autodoc", "1");
		Handle_PPrsStd_AISPresentation_1(const PPrsStd_AISPresentation_1 *anItem);
		%feature("autodoc", "1");
		Handle_PPrsStd_AISPresentation_1 & operator=(const Handle_PPrsStd_AISPresentation_1 &aHandle);
		%feature("autodoc", "1");
		Handle_PPrsStd_AISPresentation_1 & operator=(const PPrsStd_AISPresentation_1 *anItem);
		%feature("autodoc", "1");
		static		Handle_PPrsStd_AISPresentation_1 DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PPrsStd_AISPresentation_1 {
	PPrsStd_AISPresentation_1* GetObject() {
	return (PPrsStd_AISPresentation_1*)$self->Access();
	}
};
%feature("shadow") Handle_PPrsStd_AISPresentation_1::~Handle_PPrsStd_AISPresentation_1 %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PPrsStd_AISPresentation_1 {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PPrsStd_AISPresentation_1;
class PPrsStd_AISPresentation_1 : public PDF_Attribute {
	public:
		%feature("autodoc", "1");
		PPrsStd_AISPresentation_1();
		%feature("autodoc", "1");
		Standard_Boolean IsDisplayed() const;
		%feature("autodoc", "1");
		void SetDisplayed(const Standard_Boolean B);
		%feature("autodoc", "1");
		void SetDriverGUID(const Handle_PCollection_HExtendedString &guid);
		%feature("autodoc", "1");
		Handle_PCollection_HExtendedString GetDriverGUID() const;
		%feature("autodoc", "1");
		Standard_Integer Color() const;
		%feature("autodoc", "1");
		void SetColor(const Standard_Integer C);
		%feature("autodoc", "1");
		Standard_Real Transparency() const;
		%feature("autodoc", "1");
		void SetTransparency(const Standard_Real T);
		%feature("autodoc", "1");
		Standard_Integer Material() const;
		%feature("autodoc", "1");
		void SetMaterial(const Standard_Integer M);
		%feature("autodoc", "1");
		Standard_Real Width() const;
		%feature("autodoc", "1");
		void SetWidth(const Standard_Real W);
		%feature("autodoc", "1");
		Standard_Integer Mode() const;
		%feature("autodoc", "1");
		void SetMode(const Standard_Integer M);
		%feature("autodoc", "1");
		PPrsStd_AISPresentation_1(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Boolean _CSFDB_GetPPrsStd_AISPresentation_1myIsDisplayed() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPPrsStd_AISPresentation_1myIsDisplayed(const Standard_Boolean p);
		%feature("autodoc", "1");
		Handle_PCollection_HExtendedString _CSFDB_GetPPrsStd_AISPresentation_1myDriverGUID() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPPrsStd_AISPresentation_1myDriverGUID(const Handle_PCollection_HExtendedString &p);
		%feature("autodoc", "1");
		Standard_Real _CSFDB_GetPPrsStd_AISPresentation_1myTransparency() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPPrsStd_AISPresentation_1myTransparency(const Standard_Real p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPPrsStd_AISPresentation_1myColor() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPPrsStd_AISPresentation_1myColor(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPPrsStd_AISPresentation_1myMaterial() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPPrsStd_AISPresentation_1myMaterial(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Real _CSFDB_GetPPrsStd_AISPresentation_1myWidth() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPPrsStd_AISPresentation_1myWidth(const Standard_Real p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPPrsStd_AISPresentation_1myMode() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPPrsStd_AISPresentation_1myMode(const Standard_Integer p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PPrsStd_AISPresentation_1 {
	Handle_PPrsStd_AISPresentation_1 GetHandle() {
	return *(Handle_PPrsStd_AISPresentation_1*) &$self;
	}
};
%extend PPrsStd_AISPresentation_1 {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") PPrsStd_AISPresentation_1::~PPrsStd_AISPresentation_1 %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PPrsStd_AISPresentation_1 {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PPrsStd_AISPresentation;
class PPrsStd_AISPresentation : public PDF_Attribute {
	public:
		%feature("autodoc", "1");
		PPrsStd_AISPresentation();
		%feature("autodoc", "1");
		Standard_Boolean IsDisplayed() const;
		%feature("autodoc", "1");
		void SetDisplayed(const Standard_Boolean B);
		%feature("autodoc", "1");
		void SetDriverGUID(const Handle_PCollection_HExtendedString &guid);
		%feature("autodoc", "1");
		Handle_PCollection_HExtendedString GetDriverGUID() const;
		%feature("autodoc", "1");
		Standard_Integer Color() const;
		%feature("autodoc", "1");
		void SetColor(const Standard_Integer C);
		%feature("autodoc", "1");
		Standard_Real Transparency() const;
		%feature("autodoc", "1");
		void SetTransparency(const Standard_Real T);
		%feature("autodoc", "1");
		Standard_Integer Material() const;
		%feature("autodoc", "1");
		void SetMaterial(const Standard_Integer M);
		%feature("autodoc", "1");
		Standard_Real Width() const;
		%feature("autodoc", "1");
		void SetWidth(const Standard_Real W);
		%feature("autodoc", "1");
		PPrsStd_AISPresentation(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Boolean _CSFDB_GetPPrsStd_AISPresentationmyIsDisplayed() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPPrsStd_AISPresentationmyIsDisplayed(const Standard_Boolean p);
		%feature("autodoc", "1");
		Handle_PCollection_HExtendedString _CSFDB_GetPPrsStd_AISPresentationmyDriverGUID() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPPrsStd_AISPresentationmyDriverGUID(const Handle_PCollection_HExtendedString &p);
		%feature("autodoc", "1");
		Standard_Real _CSFDB_GetPPrsStd_AISPresentationmyTransparency() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPPrsStd_AISPresentationmyTransparency(const Standard_Real p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPPrsStd_AISPresentationmyColor() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPPrsStd_AISPresentationmyColor(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPPrsStd_AISPresentationmyMaterial() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPPrsStd_AISPresentationmyMaterial(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Real _CSFDB_GetPPrsStd_AISPresentationmyWidth() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPPrsStd_AISPresentationmyWidth(const Standard_Real p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PPrsStd_AISPresentation {
	Handle_PPrsStd_AISPresentation GetHandle() {
	return *(Handle_PPrsStd_AISPresentation*) &$self;
	}
};
%extend PPrsStd_AISPresentation {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") PPrsStd_AISPresentation::~PPrsStd_AISPresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PPrsStd_AISPresentation {
	void _kill_pointed() {
		delete $self;
	}
};
