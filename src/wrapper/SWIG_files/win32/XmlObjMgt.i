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

%module XmlObjMgt
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include XmlObjMgt_renames.i


%include XmlObjMgt_required_python_modules.i


%include XmlObjMgt_dependencies.i


%include XmlObjMgt_headers.i

typedef LDOM_Document XmlObjMgt_Document;
typedef TColStd_IndexedMapOfTransient XmlObjMgt_SRelocationTable;
typedef LDOMString XmlObjMgt_DOMString;
typedef LDOM_Element XmlObjMgt_Element;
typedef TColStd_DataMapOfIntegerTransient XmlObjMgt_RRelocationTable;



%nodefaultctor XmlObjMgt;
class XmlObjMgt {
	public:
		%feature("autodoc", "1");
		XmlObjMgt();
		%feature("autodoc", "1");
		static		const XmlObjMgt_DOMString & IdString();
		%feature("autodoc", "1");
		static		Standard_Boolean SetExtendedString(XmlObjMgt_Element & theElement, const TCollection_ExtendedString &theString);
		%feature("autodoc", "1");
		static		Standard_Boolean GetExtendedString(const XmlObjMgt_Element &theElement, TCollection_ExtendedString & theString);
		%feature("autodoc", "1");
		static		XmlObjMgt_DOMString GetStringValue(const XmlObjMgt_Element &theElement);
		%feature("autodoc", "1");
		static		void SetStringValue(XmlObjMgt_Element & theElement, const XmlObjMgt_DOMString &theData, const Standard_Boolean isClearText=0);
		%feature("autodoc", "1");
		static		Standard_Boolean GetTagEntryString(const XmlObjMgt_DOMString &theTarget, TCollection_AsciiString & theTagEntry);
		%feature("autodoc", "1");
		static		void SetTagEntryString(XmlObjMgt_DOMString & theSource, const TCollection_AsciiString &theTagEntry);
		%feature("autodoc", "1");
		static		XmlObjMgt_Element FindChildElement(const XmlObjMgt_Element &theSource, const Standard_Integer theObjId);
		%feature("autodoc", "1");
		static		XmlObjMgt_Element FindChildByRef(const XmlObjMgt_Element &theSource, const XmlObjMgt_DOMString &theRefName);
		%feature("autodoc", "1");
		static		XmlObjMgt_Element FindChildByName(const XmlObjMgt_Element &theSource, const XmlObjMgt_DOMString &theName);
		%feature("autodoc","GetReal() -> Standard_Real");

		static		Standard_Boolean GetReal(char * & theString, Standard_Real &OutValue);
		%feature("autodoc","GetReal(const theString) -> Standard_Real");

		static		Standard_Boolean GetReal(const XmlObjMgt_DOMString &theString, Standard_Real &OutValue);

};
%feature("shadow") XmlObjMgt::~XmlObjMgt %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XmlObjMgt {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XmlObjMgt_GP;
class XmlObjMgt_GP {
	public:
		%feature("autodoc", "1");
		XmlObjMgt_GP();
		%feature("autodoc", "1");
		static		XmlObjMgt_DOMString Translate(const gp_Trsf aTrsf);
		%feature("autodoc", "1");
		static		XmlObjMgt_DOMString Translate(const gp_Mat aMat);
		%feature("autodoc", "1");
		static		XmlObjMgt_DOMString Translate(const gp_XYZ anXYZ);
		%feature("autodoc", "1");
		static		Standard_Boolean Translate(const XmlObjMgt_DOMString &aStr, gp_Trsf & T);
		%feature("autodoc", "1");
		static		Standard_Boolean Translate(const XmlObjMgt_DOMString &aStr, gp_Mat & T);
		%feature("autodoc", "1");
		static		Standard_Boolean Translate(const XmlObjMgt_DOMString &aStr, gp_XYZ & T);

};
%feature("shadow") XmlObjMgt_GP::~XmlObjMgt_GP %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XmlObjMgt_GP {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XmlObjMgt_Persistent;
class XmlObjMgt_Persistent {
	public:
		%feature("autodoc", "1");
		XmlObjMgt_Persistent();
		%feature("autodoc", "1");
		XmlObjMgt_Persistent(const XmlObjMgt_Element &theElement);
		%feature("autodoc", "1");
		XmlObjMgt_Persistent(const XmlObjMgt_Element &theElement, const XmlObjMgt_DOMString &theRef);
		%feature("autodoc", "1");
		void CreateElement(XmlObjMgt_Element & theParent, const XmlObjMgt_DOMString &theType, const Standard_Integer theID);
		%feature("autodoc", "1");
		void SetId(const Standard_Integer theId);
		%feature("autodoc", "1");
		const XmlObjMgt_Element & Element() const;
		%feature("autodoc", "1");
		XmlObjMgt_Element & Element();
		%feature("autodoc", "1");
		Standard_Integer Id() const;

};
%feature("shadow") XmlObjMgt_Persistent::~XmlObjMgt_Persistent %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XmlObjMgt_Persistent {
	void _kill_pointed() {
		delete $self;
	}
};
