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
%module PShort

%include PShort_renames.i
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include PShort_dependencies.i


%include PShort_headers.i




%nodefaultctor Handle_PShort_VArrayNodeOfFieldOfHArray2OfShortReal;
class Handle_PShort_VArrayNodeOfFieldOfHArray2OfShortReal : public Handle_PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		Handle_PShort_VArrayNodeOfFieldOfHArray2OfShortReal();
		%feature("autodoc", "1");
		Handle_PShort_VArrayNodeOfFieldOfHArray2OfShortReal(const Handle_PShort_VArrayNodeOfFieldOfHArray2OfShortReal &aHandle);
		%feature("autodoc", "1");
		Handle_PShort_VArrayNodeOfFieldOfHArray2OfShortReal(const PShort_VArrayNodeOfFieldOfHArray2OfShortReal *anItem);
		%feature("autodoc", "1");
		Handle_PShort_VArrayNodeOfFieldOfHArray2OfShortReal & operator=(const Handle_PShort_VArrayNodeOfFieldOfHArray2OfShortReal &aHandle);
		%feature("autodoc", "1");
		Handle_PShort_VArrayNodeOfFieldOfHArray2OfShortReal & operator=(const PShort_VArrayNodeOfFieldOfHArray2OfShortReal *anItem);
		%feature("autodoc", "1");
		Handle_PShort_VArrayNodeOfFieldOfHArray2OfShortReal const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PShort_VArrayNodeOfFieldOfHArray2OfShortReal {
	PShort_VArrayNodeOfFieldOfHArray2OfShortReal* GetObject() {
	return (PShort_VArrayNodeOfFieldOfHArray2OfShortReal*)$self->Access();
	}
};
%extend Handle_PShort_VArrayNodeOfFieldOfHArray2OfShortReal {
	~Handle_PShort_VArrayNodeOfFieldOfHArray2OfShortReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_PShort_VArrayNodeOfFieldOfHArray2OfShortReal\n");}
	}
};


%nodefaultctor Handle_PShort_HArray2OfShortReal;
class Handle_PShort_HArray2OfShortReal : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		Handle_PShort_HArray2OfShortReal();
		%feature("autodoc", "1");
		Handle_PShort_HArray2OfShortReal(const Handle_PShort_HArray2OfShortReal &aHandle);
		%feature("autodoc", "1");
		Handle_PShort_HArray2OfShortReal(const PShort_HArray2OfShortReal *anItem);
		%feature("autodoc", "1");
		Handle_PShort_HArray2OfShortReal & operator=(const Handle_PShort_HArray2OfShortReal &aHandle);
		%feature("autodoc", "1");
		Handle_PShort_HArray2OfShortReal & operator=(const PShort_HArray2OfShortReal *anItem);
		%feature("autodoc", "1");
		Handle_PShort_HArray2OfShortReal const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PShort_HArray2OfShortReal {
	PShort_HArray2OfShortReal* GetObject() {
	return (PShort_HArray2OfShortReal*)$self->Access();
	}
};
%extend Handle_PShort_HArray2OfShortReal {
	~Handle_PShort_HArray2OfShortReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_PShort_HArray2OfShortReal\n");}
	}
};


%nodefaultctor Handle_PShort_HSequenceOfShortReal;
class Handle_PShort_HSequenceOfShortReal : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		Handle_PShort_HSequenceOfShortReal();
		%feature("autodoc", "1");
		Handle_PShort_HSequenceOfShortReal(const Handle_PShort_HSequenceOfShortReal &aHandle);
		%feature("autodoc", "1");
		Handle_PShort_HSequenceOfShortReal(const PShort_HSequenceOfShortReal *anItem);
		%feature("autodoc", "1");
		Handle_PShort_HSequenceOfShortReal & operator=(const Handle_PShort_HSequenceOfShortReal &aHandle);
		%feature("autodoc", "1");
		Handle_PShort_HSequenceOfShortReal & operator=(const PShort_HSequenceOfShortReal *anItem);
		%feature("autodoc", "1");
		Handle_PShort_HSequenceOfShortReal const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PShort_HSequenceOfShortReal {
	PShort_HSequenceOfShortReal* GetObject() {
	return (PShort_HSequenceOfShortReal*)$self->Access();
	}
};
%extend Handle_PShort_HSequenceOfShortReal {
	~Handle_PShort_HSequenceOfShortReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_PShort_HSequenceOfShortReal\n");}
	}
};


%nodefaultctor Handle_PShort_VArrayNodeOfFieldOfHArray1OfShortReal;
class Handle_PShort_VArrayNodeOfFieldOfHArray1OfShortReal : public Handle_PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		Handle_PShort_VArrayNodeOfFieldOfHArray1OfShortReal();
		%feature("autodoc", "1");
		Handle_PShort_VArrayNodeOfFieldOfHArray1OfShortReal(const Handle_PShort_VArrayNodeOfFieldOfHArray1OfShortReal &aHandle);
		%feature("autodoc", "1");
		Handle_PShort_VArrayNodeOfFieldOfHArray1OfShortReal(const PShort_VArrayNodeOfFieldOfHArray1OfShortReal *anItem);
		%feature("autodoc", "1");
		Handle_PShort_VArrayNodeOfFieldOfHArray1OfShortReal & operator=(const Handle_PShort_VArrayNodeOfFieldOfHArray1OfShortReal &aHandle);
		%feature("autodoc", "1");
		Handle_PShort_VArrayNodeOfFieldOfHArray1OfShortReal & operator=(const PShort_VArrayNodeOfFieldOfHArray1OfShortReal *anItem);
		%feature("autodoc", "1");
		Handle_PShort_VArrayNodeOfFieldOfHArray1OfShortReal const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PShort_VArrayNodeOfFieldOfHArray1OfShortReal {
	PShort_VArrayNodeOfFieldOfHArray1OfShortReal* GetObject() {
	return (PShort_VArrayNodeOfFieldOfHArray1OfShortReal*)$self->Access();
	}
};
%extend Handle_PShort_VArrayNodeOfFieldOfHArray1OfShortReal {
	~Handle_PShort_VArrayNodeOfFieldOfHArray1OfShortReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_PShort_VArrayNodeOfFieldOfHArray1OfShortReal\n");}
	}
};


%nodefaultctor Handle_PShort_HArray1OfShortReal;
class Handle_PShort_HArray1OfShortReal : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		Handle_PShort_HArray1OfShortReal();
		%feature("autodoc", "1");
		Handle_PShort_HArray1OfShortReal(const Handle_PShort_HArray1OfShortReal &aHandle);
		%feature("autodoc", "1");
		Handle_PShort_HArray1OfShortReal(const PShort_HArray1OfShortReal *anItem);
		%feature("autodoc", "1");
		Handle_PShort_HArray1OfShortReal & operator=(const Handle_PShort_HArray1OfShortReal &aHandle);
		%feature("autodoc", "1");
		Handle_PShort_HArray1OfShortReal & operator=(const PShort_HArray1OfShortReal *anItem);
		%feature("autodoc", "1");
		Handle_PShort_HArray1OfShortReal const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PShort_HArray1OfShortReal {
	PShort_HArray1OfShortReal* GetObject() {
	return (PShort_HArray1OfShortReal*)$self->Access();
	}
};
%extend Handle_PShort_HArray1OfShortReal {
	~Handle_PShort_HArray1OfShortReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_PShort_HArray1OfShortReal\n");}
	}
};


%nodefaultctor Handle_PShort_SeqNodeOfHSequenceOfShortReal;
class Handle_PShort_SeqNodeOfHSequenceOfShortReal : public Handle_PMMgt_PManaged {
	public:
		%feature("autodoc", "1");
		Handle_PShort_SeqNodeOfHSequenceOfShortReal();
		%feature("autodoc", "1");
		Handle_PShort_SeqNodeOfHSequenceOfShortReal(const Handle_PShort_SeqNodeOfHSequenceOfShortReal &aHandle);
		%feature("autodoc", "1");
		Handle_PShort_SeqNodeOfHSequenceOfShortReal(const PShort_SeqNodeOfHSequenceOfShortReal *anItem);
		%feature("autodoc", "1");
		Handle_PShort_SeqNodeOfHSequenceOfShortReal & operator=(const Handle_PShort_SeqNodeOfHSequenceOfShortReal &aHandle);
		%feature("autodoc", "1");
		Handle_PShort_SeqNodeOfHSequenceOfShortReal & operator=(const PShort_SeqNodeOfHSequenceOfShortReal *anItem);
		%feature("autodoc", "1");
		Handle_PShort_SeqNodeOfHSequenceOfShortReal const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PShort_SeqNodeOfHSequenceOfShortReal {
	PShort_SeqNodeOfHSequenceOfShortReal* GetObject() {
	return (PShort_SeqNodeOfHSequenceOfShortReal*)$self->Access();
	}
};
%extend Handle_PShort_SeqNodeOfHSequenceOfShortReal {
	~Handle_PShort_SeqNodeOfHSequenceOfShortReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_PShort_SeqNodeOfHSequenceOfShortReal\n");}
	}
};


%nodefaultctor PShort_VArrayTNodeOfFieldOfHArray2OfShortReal;
class PShort_VArrayTNodeOfFieldOfHArray2OfShortReal {
	public:
		%feature("autodoc", "1");
		PShort_VArrayTNodeOfFieldOfHArray2OfShortReal();
		%feature("autodoc", "1");
		PShort_VArrayTNodeOfFieldOfHArray2OfShortReal(const Standard_ShortReal &aValue);
		%feature("autodoc", "1");
		void SetValue(const Standard_ShortReal &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;

};
%extend PShort_VArrayTNodeOfFieldOfHArray2OfShortReal {
	~PShort_VArrayTNodeOfFieldOfHArray2OfShortReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PShort_VArrayTNodeOfFieldOfHArray2OfShortReal\n");}
	}
};


%nodefaultctor PShort_VArrayNodeOfFieldOfHArray1OfShortReal;
class PShort_VArrayNodeOfFieldOfHArray1OfShortReal : public PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		PShort_VArrayNodeOfFieldOfHArray1OfShortReal();
		%feature("autodoc", "1");
		PShort_VArrayNodeOfFieldOfHArray1OfShortReal(const Standard_ShortReal &aValue);
		%feature("autodoc", "1");
		void SetValue(const Standard_ShortReal &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;
		%feature("autodoc", "1");
		PShort_VArrayNodeOfFieldOfHArray1OfShortReal(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_ShortReal _CSFDB_GetPShort_VArrayNodeOfFieldOfHArray1OfShortRealmyValue() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPShort_VArrayNodeOfFieldOfHArray1OfShortRealmyValue(const Standard_ShortReal p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PShort_VArrayNodeOfFieldOfHArray1OfShortReal {
	Handle_PShort_VArrayNodeOfFieldOfHArray1OfShortReal GetHandle() {
	return *(Handle_PShort_VArrayNodeOfFieldOfHArray1OfShortReal*) &$self;
	}
};
%extend PShort_VArrayNodeOfFieldOfHArray1OfShortReal {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend PShort_VArrayNodeOfFieldOfHArray1OfShortReal {
	~PShort_VArrayNodeOfFieldOfHArray1OfShortReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PShort_VArrayNodeOfFieldOfHArray1OfShortReal\n");}
	}
};


%nodefaultctor PShort_FieldOfHArray1OfShortReal;
class PShort_FieldOfHArray1OfShortReal : public DBC_BaseArray {
	public:
		%feature("autodoc", "1");
		PShort_FieldOfHArray1OfShortReal();
		%feature("autodoc", "1");
		PShort_FieldOfHArray1OfShortReal(const Standard_Integer Size);
		%feature("autodoc", "1");
		PShort_FieldOfHArray1OfShortReal(const PShort_FieldOfHArray1OfShortReal &Varray);
		%feature("autodoc", "1");
		void Resize(const Standard_Integer Size);
		%feature("autodoc", "1");
		void Assign(const PShort_FieldOfHArray1OfShortReal &Other);
		%feature("autodoc", "1");
		void operator=(const PShort_FieldOfHArray1OfShortReal &Other);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Standard_ShortReal &Value);
		%feature("autodoc", "1");
		Standard_ShortReal & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_ShortReal & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void Destroy();

};
%extend PShort_FieldOfHArray1OfShortReal {
	~PShort_FieldOfHArray1OfShortReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PShort_FieldOfHArray1OfShortReal\n");}
	}
};


%nodefaultctor PShort_VArrayNodeOfFieldOfHArray2OfShortReal;
class PShort_VArrayNodeOfFieldOfHArray2OfShortReal : public PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		PShort_VArrayNodeOfFieldOfHArray2OfShortReal();
		%feature("autodoc", "1");
		PShort_VArrayNodeOfFieldOfHArray2OfShortReal(const Standard_ShortReal &aValue);
		%feature("autodoc", "1");
		void SetValue(const Standard_ShortReal &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;
		%feature("autodoc", "1");
		PShort_VArrayNodeOfFieldOfHArray2OfShortReal(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_ShortReal _CSFDB_GetPShort_VArrayNodeOfFieldOfHArray2OfShortRealmyValue() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPShort_VArrayNodeOfFieldOfHArray2OfShortRealmyValue(const Standard_ShortReal p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PShort_VArrayNodeOfFieldOfHArray2OfShortReal {
	Handle_PShort_VArrayNodeOfFieldOfHArray2OfShortReal GetHandle() {
	return *(Handle_PShort_VArrayNodeOfFieldOfHArray2OfShortReal*) &$self;
	}
};
%extend PShort_VArrayNodeOfFieldOfHArray2OfShortReal {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend PShort_VArrayNodeOfFieldOfHArray2OfShortReal {
	~PShort_VArrayNodeOfFieldOfHArray2OfShortReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PShort_VArrayNodeOfFieldOfHArray2OfShortReal\n");}
	}
};


%nodefaultctor PShort_SeqExplorerOfHSequenceOfShortReal;
class PShort_SeqExplorerOfHSequenceOfShortReal {
	public:
		%feature("autodoc", "1");
		PShort_SeqExplorerOfHSequenceOfShortReal(const Handle_PShort_HSequenceOfShortReal &S);
		%feature("autodoc", "1");
		Standard_ShortReal Value(const Standard_Integer Index);
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Standard_ShortReal &T);
		%feature("autodoc", "1");
		Standard_Integer Location(const Standard_Integer N, const Standard_ShortReal &T, const Standard_Integer FromIndex, const Standard_Integer ToIndex);
		%feature("autodoc", "1");
		Standard_Integer Location(const Standard_Integer N, const Standard_ShortReal &T);

};
%extend PShort_SeqExplorerOfHSequenceOfShortReal {
	~PShort_SeqExplorerOfHSequenceOfShortReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PShort_SeqExplorerOfHSequenceOfShortReal\n");}
	}
};


%nodefaultctor PShort_VArrayTNodeOfFieldOfHArray1OfShortReal;
class PShort_VArrayTNodeOfFieldOfHArray1OfShortReal {
	public:
		%feature("autodoc", "1");
		PShort_VArrayTNodeOfFieldOfHArray1OfShortReal();
		%feature("autodoc", "1");
		PShort_VArrayTNodeOfFieldOfHArray1OfShortReal(const Standard_ShortReal &aValue);
		%feature("autodoc", "1");
		void SetValue(const Standard_ShortReal &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;

};
%extend PShort_VArrayTNodeOfFieldOfHArray1OfShortReal {
	~PShort_VArrayTNodeOfFieldOfHArray1OfShortReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PShort_VArrayTNodeOfFieldOfHArray1OfShortReal\n");}
	}
};


%nodefaultctor PShort_SeqNodeOfHSequenceOfShortReal;
class PShort_SeqNodeOfHSequenceOfShortReal : public PMMgt_PManaged {
	public:
		%feature("autodoc", "1");
		PShort_SeqNodeOfHSequenceOfShortReal(const Handle_PShort_SeqNodeOfHSequenceOfShortReal &TheLast, const Standard_ShortReal &TheItem);
		%feature("autodoc", "1");
		PShort_SeqNodeOfHSequenceOfShortReal(const Standard_ShortReal &TheItem, const Handle_PShort_SeqNodeOfHSequenceOfShortReal &TheFirst);
		%feature("autodoc", "1");
		PShort_SeqNodeOfHSequenceOfShortReal(const Handle_PShort_SeqNodeOfHSequenceOfShortReal &ThePrevious, const Handle_PShort_SeqNodeOfHSequenceOfShortReal &TheNext, const Standard_ShortReal &TheItem);
		%feature("autodoc", "1");
		Standard_ShortReal Value() const;
		%feature("autodoc", "1");
		Handle_PShort_SeqNodeOfHSequenceOfShortReal Next() const;
		%feature("autodoc", "1");
		Handle_PShort_SeqNodeOfHSequenceOfShortReal Previous() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_ShortReal &AnItem);
		%feature("autodoc", "1");
		void SetNext(const Handle_PShort_SeqNodeOfHSequenceOfShortReal &ANode);
		%feature("autodoc", "1");
		void SetPrevious(const Handle_PShort_SeqNodeOfHSequenceOfShortReal &ANode);
		%feature("autodoc", "1");
		PShort_SeqNodeOfHSequenceOfShortReal();
		%feature("autodoc", "1");
		PShort_SeqNodeOfHSequenceOfShortReal(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Handle_PShort_SeqNodeOfHSequenceOfShortReal _CSFDB_GetPShort_SeqNodeOfHSequenceOfShortRealMyPrevious() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPShort_SeqNodeOfHSequenceOfShortRealMyPrevious(const Handle_PShort_SeqNodeOfHSequenceOfShortReal &p);
		%feature("autodoc", "1");
		Standard_ShortReal _CSFDB_GetPShort_SeqNodeOfHSequenceOfShortRealMyItem() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPShort_SeqNodeOfHSequenceOfShortRealMyItem(const Standard_ShortReal p);
		%feature("autodoc", "1");
		Handle_PShort_SeqNodeOfHSequenceOfShortReal _CSFDB_GetPShort_SeqNodeOfHSequenceOfShortRealMyNext() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPShort_SeqNodeOfHSequenceOfShortRealMyNext(const Handle_PShort_SeqNodeOfHSequenceOfShortReal &p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PShort_SeqNodeOfHSequenceOfShortReal {
	Handle_PShort_SeqNodeOfHSequenceOfShortReal GetHandle() {
	return *(Handle_PShort_SeqNodeOfHSequenceOfShortReal*) &$self;
	}
};
%extend PShort_SeqNodeOfHSequenceOfShortReal {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend PShort_SeqNodeOfHSequenceOfShortReal {
	~PShort_SeqNodeOfHSequenceOfShortReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PShort_SeqNodeOfHSequenceOfShortReal\n");}
	}
};


%nodefaultctor PShort_HArray2OfShortReal;
class PShort_HArray2OfShortReal : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		PShort_HArray2OfShortReal(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		PShort_HArray2OfShortReal(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2, const Standard_ShortReal &V);
		%feature("autodoc", "1");
		Standard_Integer ColLength() const;
		%feature("autodoc", "1");
		Standard_Integer LowerCol() const;
		%feature("autodoc", "1");
		Standard_Integer LowerRow() const;
		%feature("autodoc", "1");
		Standard_Integer RowLength() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const Standard_ShortReal &Value);
		%feature("autodoc", "1");
		Standard_Integer UpperCol() const;
		%feature("autodoc", "1");
		Standard_Integer UpperRow() const;
		%feature("autodoc", "1");
		Standard_ShortReal Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Persistent ShallowCopy() const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string ShallowDumpToString() {
			std::stringstream s;
			self->ShallowDump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		PShort_HArray2OfShortReal();
		%feature("autodoc", "1");
		PShort_HArray2OfShortReal(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPShort_HArray2OfShortRealmyLowerRow() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPShort_HArray2OfShortRealmyLowerRow(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPShort_HArray2OfShortRealmyLowerCol() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPShort_HArray2OfShortRealmyLowerCol(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPShort_HArray2OfShortRealmyUpperRow() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPShort_HArray2OfShortRealmyUpperRow(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPShort_HArray2OfShortRealmyUpperCol() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPShort_HArray2OfShortRealmyUpperCol(const Standard_Integer p);
		%feature("autodoc", "1");
		const PShort_FieldOfHArray2OfShortReal & _CSFDB_GetPShort_HArray2OfShortRealData() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PShort_HArray2OfShortReal {
	Handle_PShort_HArray2OfShortReal GetHandle() {
	return *(Handle_PShort_HArray2OfShortReal*) &$self;
	}
};
%extend PShort_HArray2OfShortReal {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend PShort_HArray2OfShortReal {
	~PShort_HArray2OfShortReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PShort_HArray2OfShortReal\n");}
	}
};


%nodefaultctor PShort_FieldOfHArray2OfShortReal;
class PShort_FieldOfHArray2OfShortReal : public DBC_BaseArray {
	public:
		%feature("autodoc", "1");
		PShort_FieldOfHArray2OfShortReal();
		%feature("autodoc", "1");
		PShort_FieldOfHArray2OfShortReal(const Standard_Integer Size);
		%feature("autodoc", "1");
		PShort_FieldOfHArray2OfShortReal(const PShort_FieldOfHArray2OfShortReal &Varray);
		%feature("autodoc", "1");
		void Resize(const Standard_Integer Size);
		%feature("autodoc", "1");
		void Assign(const PShort_FieldOfHArray2OfShortReal &Other);
		%feature("autodoc", "1");
		void operator=(const PShort_FieldOfHArray2OfShortReal &Other);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Standard_ShortReal &Value);
		%feature("autodoc", "1");
		Standard_ShortReal & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_ShortReal & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void Destroy();

};
%extend PShort_FieldOfHArray2OfShortReal {
	~PShort_FieldOfHArray2OfShortReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PShort_FieldOfHArray2OfShortReal\n");}
	}
};


%nodefaultctor PShort_HArray1OfShortReal;
class PShort_HArray1OfShortReal : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		PShort_HArray1OfShortReal(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		PShort_HArray1OfShortReal(const Standard_Integer Low, const Standard_Integer Up, const Standard_ShortReal &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Standard_ShortReal &Value);
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		Standard_ShortReal Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Persistent ShallowCopy() const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string ShallowDumpToString() {
			std::stringstream s;
			self->ShallowDump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		PShort_HArray1OfShortReal();
		%feature("autodoc", "1");
		PShort_HArray1OfShortReal(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPShort_HArray1OfShortRealLowerBound() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPShort_HArray1OfShortRealLowerBound(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPShort_HArray1OfShortRealUpperBound() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPShort_HArray1OfShortRealUpperBound(const Standard_Integer p);
		%feature("autodoc", "1");
		const PShort_FieldOfHArray1OfShortReal & _CSFDB_GetPShort_HArray1OfShortRealData() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PShort_HArray1OfShortReal {
	Handle_PShort_HArray1OfShortReal GetHandle() {
	return *(Handle_PShort_HArray1OfShortReal*) &$self;
	}
};
%extend PShort_HArray1OfShortReal {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend PShort_HArray1OfShortReal {
	~PShort_HArray1OfShortReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PShort_HArray1OfShortReal\n");}
	}
};


%nodefaultctor PShort_HSequenceOfShortReal;
class PShort_HSequenceOfShortReal : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		PShort_HSequenceOfShortReal();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_ShortReal First() const;
		%feature("autodoc", "1");
		Standard_ShortReal Last() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const Standard_ShortReal &T);
		%feature("autodoc", "1");
		void Append(const Handle_PShort_HSequenceOfShortReal &S);
		%feature("autodoc", "1");
		void Prepend(const Standard_ShortReal &T);
		%feature("autodoc", "1");
		void Prepend(const Handle_PShort_HSequenceOfShortReal &S);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Standard_ShortReal &T);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_PShort_HSequenceOfShortReal &S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Standard_ShortReal &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_PShort_HSequenceOfShortReal &S);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer I, const Standard_Integer J);
		%feature("autodoc", "1");
		Handle_PShort_HSequenceOfShortReal SubSequence(const Standard_Integer FromIndex, const Standard_Integer ToIndex) const;
		%feature("autodoc", "1");
		Handle_PShort_HSequenceOfShortReal Split(const Standard_Integer Index);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Standard_ShortReal &T);
		%feature("autodoc", "1");
		Standard_ShortReal Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Standard_ShortReal &T) const;
		%feature("autodoc", "1");
		Standard_Integer Location(const Standard_Integer N, const Standard_ShortReal &T, const Standard_Integer FromIndex, const Standard_Integer ToIndex) const;
		%feature("autodoc", "1");
		Standard_Integer Location(const Standard_Integer N, const Standard_ShortReal &T) const;
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);
		%feature("autodoc", "1");
		virtual		Handle_Standard_Persistent ShallowCopy() const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string ShallowDumpToString() {
			std::stringstream s;
			self->ShallowDump(s);
			return s.str();}
		};
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		PShort_HSequenceOfShortReal(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Handle_PShort_SeqNodeOfHSequenceOfShortReal _CSFDB_GetPShort_HSequenceOfShortRealFirstItem() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPShort_HSequenceOfShortRealFirstItem(const Handle_PShort_SeqNodeOfHSequenceOfShortReal &p);
		%feature("autodoc", "1");
		Handle_PShort_SeqNodeOfHSequenceOfShortReal _CSFDB_GetPShort_HSequenceOfShortRealLastItem() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPShort_HSequenceOfShortRealLastItem(const Handle_PShort_SeqNodeOfHSequenceOfShortReal &p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPShort_HSequenceOfShortRealSize() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPShort_HSequenceOfShortRealSize(const Standard_Integer p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PShort_HSequenceOfShortReal {
	Handle_PShort_HSequenceOfShortReal GetHandle() {
	return *(Handle_PShort_HSequenceOfShortReal*) &$self;
	}
};
%extend PShort_HSequenceOfShortReal {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend PShort_HSequenceOfShortReal {
	~PShort_HSequenceOfShortReal() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PShort_HSequenceOfShortReal\n");}
	}
};
