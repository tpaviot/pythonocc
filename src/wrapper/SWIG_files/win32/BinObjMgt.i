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

%module BinObjMgt
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include BinObjMgt_renames.i


%include BinObjMgt_required_python_modules.i


%include BinObjMgt_dependencies.i


%include BinObjMgt_headers.i

typedef Standard_Integer * BinObjMgt_PInteger;
typedef Standard_ExtCharacter * BinObjMgt_PExtChar;
typedef Standard_ShortReal * BinObjMgt_PShortReal;
typedef TColStd_DataMapOfIntegerTransient BinObjMgt_RRelocationTable;
typedef TColStd_IndexedMapOfTransient BinObjMgt_SRelocationTable;
typedef Standard_Character * BinObjMgt_PChar;
typedef Standard_Real * BinObjMgt_PReal;
typedef Standard_Byte * BinObjMgt_PByte;



%nodefaultctor BinObjMgt_Persistent;
class BinObjMgt_Persistent {
	public:
		%feature("autodoc", "1");
		BinObjMgt_Persistent();
		%feature("autodoc", "1");
		BinObjMgt_Persistent & PutCharacter(const Standard_Character theValue);
		%feature("autodoc", "1");
		BinObjMgt_Persistent & PutByte(const Standard_Byte theValue);
		%feature("autodoc", "1");
		BinObjMgt_Persistent & PutExtCharacter(const Standard_ExtCharacter theValue);
		%feature("autodoc", "1");
		BinObjMgt_Persistent & PutInteger(const Standard_Integer theValue);
		%feature("autodoc", "1");
		BinObjMgt_Persistent & PutBoolean(const Standard_Boolean theValue);
		%feature("autodoc", "1");
		BinObjMgt_Persistent & PutReal(const Standard_Real theValue);
		%feature("autodoc", "1");
		BinObjMgt_Persistent & PutShortReal(const Standard_ShortReal theValue);
		%feature("autodoc", "1");
		BinObjMgt_Persistent & PutCString(const char * theValue);
		%feature("autodoc", "1");
		BinObjMgt_Persistent & PutAsciiString(const TCollection_AsciiString &theValue);
		%feature("autodoc", "1");
		BinObjMgt_Persistent & PutExtendedString(const TCollection_ExtendedString &theValue);
		%feature("autodoc", "1");
		BinObjMgt_Persistent & PutLabel(const TDF_Label &theValue);
		%feature("autodoc", "1");
		BinObjMgt_Persistent & PutGUID(const Standard_GUID &theValue);
		%feature("autodoc", "1");
		BinObjMgt_Persistent & PutCharArray(const BinObjMgt_PChar theArray, const Standard_Integer theLength);
		%feature("autodoc", "1");
		BinObjMgt_Persistent & PutByteArray(const BinObjMgt_PByte theArray, const Standard_Integer theLength);
		%feature("autodoc", "1");
		BinObjMgt_Persistent & PutExtCharArray(const BinObjMgt_PExtChar theArray, const Standard_Integer theLength);
		%feature("autodoc", "1");
		BinObjMgt_Persistent & PutIntArray(const BinObjMgt_PInteger theArray, const Standard_Integer theLength);
		%feature("autodoc", "1");
		BinObjMgt_Persistent & PutRealArray(const BinObjMgt_PReal theArray, const Standard_Integer theLength);
		%feature("autodoc", "1");
		BinObjMgt_Persistent & PutShortRealArray(const BinObjMgt_PShortReal theArray, const Standard_Integer theLength);
		%feature("autodoc", "1");
		const BinObjMgt_Persistent & GetCharacter(Standard_Character & theValue) const;
		%feature("autodoc", "1");
		const BinObjMgt_Persistent & GetByte(Standard_Byte & theValue) const;
		%feature("autodoc", "1");
		const BinObjMgt_Persistent & GetExtCharacter(Standard_ExtCharacter & theValue) const;
		%feature("autodoc","GetInteger() -> Standard_Integer");

		const BinObjMgt_Persistent & GetInteger(Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		const BinObjMgt_Persistent & GetBoolean(Standard_Boolean & theValue) const;
		%feature("autodoc","GetReal() -> Standard_Real");

		const BinObjMgt_Persistent & GetReal(Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		const BinObjMgt_Persistent & GetShortReal(Standard_ShortReal & theValue) const;
		%feature("autodoc", "1");
		const BinObjMgt_Persistent & GetAsciiString(TCollection_AsciiString & theValue) const;
		%feature("autodoc", "1");
		const BinObjMgt_Persistent & GetExtendedString(TCollection_ExtendedString & theValue) const;
		%feature("autodoc", "1");
		const BinObjMgt_Persistent & GetLabel(const Handle_TDF_Data &theDS, TDF_Label & theValue) const;
		%feature("autodoc", "1");
		const BinObjMgt_Persistent & GetGUID(Standard_GUID & theValue) const;
		%feature("autodoc", "1");
		const BinObjMgt_Persistent & GetCharArray(const BinObjMgt_PChar theArray, const Standard_Integer theLength) const;
		%feature("autodoc", "1");
		const BinObjMgt_Persistent & GetByteArray(const BinObjMgt_PByte theArray, const Standard_Integer theLength) const;
		%feature("autodoc", "1");
		const BinObjMgt_Persistent & GetExtCharArray(const BinObjMgt_PExtChar theArray, const Standard_Integer theLength) const;
		%feature("autodoc", "1");
		const BinObjMgt_Persistent & GetIntArray(const BinObjMgt_PInteger theArray, const Standard_Integer theLength) const;
		%feature("autodoc", "1");
		const BinObjMgt_Persistent & GetRealArray(const BinObjMgt_PReal theArray, const Standard_Integer theLength) const;
		%feature("autodoc", "1");
		const BinObjMgt_Persistent & GetShortRealArray(const BinObjMgt_PShortReal theArray, const Standard_Integer theLength) const;
		%feature("autodoc", "1");
		Standard_Integer Position() const;
		%feature("autodoc", "1");
		Standard_Boolean SetPosition(const Standard_Integer thePos) const;
		%feature("autodoc", "1");
		void Truncate();
		%feature("autodoc", "1");
		Standard_Boolean IsError() const;
		%feature("autodoc", "1");
		Standard_Boolean operator!() const;
		%feature("autodoc", "1");
		Standard_Boolean IsOK() const;
		%feature("autodoc", "1");
		void Init();
		%feature("autodoc", "1");
		void SetId(const Standard_Integer theId);
		%feature("autodoc", "1");
		void SetTypeId(const Standard_Integer theTypeId);
		%feature("autodoc", "1");
		Standard_Integer Id() const;
		%feature("autodoc", "1");
		Standard_Integer TypeId() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string WriteToString() {
			std::stringstream s;
			self->Write(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			void ReadFromString(std::string src) {
			std::stringstream s(src);
			self->Read(s);}
		};
		%feature("autodoc", "1");
		void Destroy();

};
%feature("shadow") BinObjMgt_Persistent::~BinObjMgt_Persistent %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BinObjMgt_Persistent {
	void _kill_pointed() {
		delete $self;
	}
};
