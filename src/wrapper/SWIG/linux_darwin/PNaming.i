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

$Revision
$Date
$Author
$HeaderURL

*/


%{
#ifdef WNT
#pragma warning(disable : 4716)
#endif
%}

%module PNaming
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include PNaming_renames.i


%include PNaming_required_python_modules.i


%include PNaming_dependencies.i


%include PNaming_headers.i




%nodefaultctor Handle_PNaming_Name;
class Handle_PNaming_Name : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		Handle_PNaming_Name();
		%feature("autodoc", "1");
		Handle_PNaming_Name(const Handle_PNaming_Name &aHandle);
		%feature("autodoc", "1");
		Handle_PNaming_Name(const PNaming_Name *anItem);
		%feature("autodoc", "1");
		Handle_PNaming_Name & operator=(const Handle_PNaming_Name &aHandle);
		%feature("autodoc", "1");
		Handle_PNaming_Name & operator=(const PNaming_Name *anItem);
		%feature("autodoc", "1");
		static		Handle_PNaming_Name const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PNaming_Name {
	PNaming_Name* GetObject() {
	return (PNaming_Name*)$self->Access();
	}
};
%feature("shadow") Handle_PNaming_Name::~Handle_PNaming_Name %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PNaming_Name {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PNaming_NamedShape;
class Handle_PNaming_NamedShape : public Handle_PDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_PNaming_NamedShape();
		%feature("autodoc", "1");
		Handle_PNaming_NamedShape(const Handle_PNaming_NamedShape &aHandle);
		%feature("autodoc", "1");
		Handle_PNaming_NamedShape(const PNaming_NamedShape *anItem);
		%feature("autodoc", "1");
		Handle_PNaming_NamedShape & operator=(const Handle_PNaming_NamedShape &aHandle);
		%feature("autodoc", "1");
		Handle_PNaming_NamedShape & operator=(const PNaming_NamedShape *anItem);
		%feature("autodoc", "1");
		static		Handle_PNaming_NamedShape const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PNaming_NamedShape {
	PNaming_NamedShape* GetObject() {
	return (PNaming_NamedShape*)$self->Access();
	}
};
%feature("shadow") Handle_PNaming_NamedShape::~Handle_PNaming_NamedShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PNaming_NamedShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PNaming_HArray1OfNamedShape;
class Handle_PNaming_HArray1OfNamedShape : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		Handle_PNaming_HArray1OfNamedShape();
		%feature("autodoc", "1");
		Handle_PNaming_HArray1OfNamedShape(const Handle_PNaming_HArray1OfNamedShape &aHandle);
		%feature("autodoc", "1");
		Handle_PNaming_HArray1OfNamedShape(const PNaming_HArray1OfNamedShape *anItem);
		%feature("autodoc", "1");
		Handle_PNaming_HArray1OfNamedShape & operator=(const Handle_PNaming_HArray1OfNamedShape &aHandle);
		%feature("autodoc", "1");
		Handle_PNaming_HArray1OfNamedShape & operator=(const PNaming_HArray1OfNamedShape *anItem);
		%feature("autodoc", "1");
		static		Handle_PNaming_HArray1OfNamedShape const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PNaming_HArray1OfNamedShape {
	PNaming_HArray1OfNamedShape* GetObject() {
	return (PNaming_HArray1OfNamedShape*)$self->Access();
	}
};
%feature("shadow") Handle_PNaming_HArray1OfNamedShape::~Handle_PNaming_HArray1OfNamedShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PNaming_HArray1OfNamedShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PNaming_VArrayNodeOfFieldOfHArray1OfNamedShape;
class Handle_PNaming_VArrayNodeOfFieldOfHArray1OfNamedShape : public Handle_PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		Handle_PNaming_VArrayNodeOfFieldOfHArray1OfNamedShape();
		%feature("autodoc", "1");
		Handle_PNaming_VArrayNodeOfFieldOfHArray1OfNamedShape(const Handle_PNaming_VArrayNodeOfFieldOfHArray1OfNamedShape &aHandle);
		%feature("autodoc", "1");
		Handle_PNaming_VArrayNodeOfFieldOfHArray1OfNamedShape(const PNaming_VArrayNodeOfFieldOfHArray1OfNamedShape *anItem);
		%feature("autodoc", "1");
		Handle_PNaming_VArrayNodeOfFieldOfHArray1OfNamedShape & operator=(const Handle_PNaming_VArrayNodeOfFieldOfHArray1OfNamedShape &aHandle);
		%feature("autodoc", "1");
		Handle_PNaming_VArrayNodeOfFieldOfHArray1OfNamedShape & operator=(const PNaming_VArrayNodeOfFieldOfHArray1OfNamedShape *anItem);
		%feature("autodoc", "1");
		static		Handle_PNaming_VArrayNodeOfFieldOfHArray1OfNamedShape const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PNaming_VArrayNodeOfFieldOfHArray1OfNamedShape {
	PNaming_VArrayNodeOfFieldOfHArray1OfNamedShape* GetObject() {
	return (PNaming_VArrayNodeOfFieldOfHArray1OfNamedShape*)$self->Access();
	}
};
%feature("shadow") Handle_PNaming_VArrayNodeOfFieldOfHArray1OfNamedShape::~Handle_PNaming_VArrayNodeOfFieldOfHArray1OfNamedShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PNaming_VArrayNodeOfFieldOfHArray1OfNamedShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PNaming_Naming;
class Handle_PNaming_Naming : public Handle_PDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_PNaming_Naming();
		%feature("autodoc", "1");
		Handle_PNaming_Naming(const Handle_PNaming_Naming &aHandle);
		%feature("autodoc", "1");
		Handle_PNaming_Naming(const PNaming_Naming *anItem);
		%feature("autodoc", "1");
		Handle_PNaming_Naming & operator=(const Handle_PNaming_Naming &aHandle);
		%feature("autodoc", "1");
		Handle_PNaming_Naming & operator=(const PNaming_Naming *anItem);
		%feature("autodoc", "1");
		static		Handle_PNaming_Naming const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PNaming_Naming {
	PNaming_Naming* GetObject() {
	return (PNaming_Naming*)$self->Access();
	}
};
%feature("shadow") Handle_PNaming_Naming::~Handle_PNaming_Naming %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PNaming_Naming {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PNaming_Naming;
class PNaming_Naming : public PDF_Attribute {
	public:
		%feature("autodoc", "1");
		PNaming_Naming();
		%feature("autodoc", "1");
		void SetName(const Handle_PNaming_Name &aName);
		%feature("autodoc", "1");
		Handle_PNaming_Name GetName() const;
		%feature("autodoc", "1");
		PNaming_Naming(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Handle_PNaming_Name _CSFDB_GetPNaming_NamingmyName() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPNaming_NamingmyName(const Handle_PNaming_Name &p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PNaming_Naming {
	Handle_PNaming_Naming GetHandle() {
	return *(Handle_PNaming_Naming*) &$self;
	}
};
%extend PNaming_Naming {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") PNaming_Naming::~PNaming_Naming %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PNaming_Naming {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PNaming_NamedShape;
class PNaming_NamedShape : public PDF_Attribute {
	public:
		%feature("autodoc", "1");
		PNaming_NamedShape();
		%feature("autodoc", "1");
		Standard_Integer NbShapes() const;
		%feature("autodoc", "1");
		void OldShapes(const Handle_PTopoDS_HArray1OfShape1 &theShapes);
		%feature("autodoc", "1");
		Handle_PTopoDS_HArray1OfShape1 OldShapes() const;
		%feature("autodoc", "1");
		void NewShapes(const Handle_PTopoDS_HArray1OfShape1 &theShapes);
		%feature("autodoc", "1");
		Handle_PTopoDS_HArray1OfShape1 NewShapes() const;
		%feature("autodoc", "1");
		void ShapeStatus(const Standard_Integer theShapeStatus);
		%feature("autodoc", "1");
		Standard_Integer ShapeStatus() const;
		%feature("autodoc", "1");
		void Version(const Standard_Integer theVersion);
		%feature("autodoc", "1");
		Standard_Integer Version() const;
		%feature("autodoc", "1");
		PNaming_NamedShape(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Handle_PTopoDS_HArray1OfShape1 _CSFDB_GetPNaming_NamedShapemyOldShapes() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPNaming_NamedShapemyOldShapes(const Handle_PTopoDS_HArray1OfShape1 &p);
		%feature("autodoc", "1");
		Handle_PTopoDS_HArray1OfShape1 _CSFDB_GetPNaming_NamedShapemyNewShapes() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPNaming_NamedShapemyNewShapes(const Handle_PTopoDS_HArray1OfShape1 &p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPNaming_NamedShapemyShapeStatus() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPNaming_NamedShapemyShapeStatus(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPNaming_NamedShapemyVersion() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPNaming_NamedShapemyVersion(const Standard_Integer p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PNaming_NamedShape {
	Handle_PNaming_NamedShape GetHandle() {
	return *(Handle_PNaming_NamedShape*) &$self;
	}
};
%extend PNaming_NamedShape {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") PNaming_NamedShape::~PNaming_NamedShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PNaming_NamedShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PNaming_VArrayTNodeOfFieldOfHArray1OfNamedShape;
class PNaming_VArrayTNodeOfFieldOfHArray1OfNamedShape {
	public:
		%feature("autodoc", "1");
		PNaming_VArrayTNodeOfFieldOfHArray1OfNamedShape();
		%feature("autodoc", "1");
		PNaming_VArrayTNodeOfFieldOfHArray1OfNamedShape(const Handle_PNaming_NamedShape &aValue);
		%feature("autodoc", "1");
		void SetValue(const Handle_PNaming_NamedShape &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;

};
%feature("shadow") PNaming_VArrayTNodeOfFieldOfHArray1OfNamedShape::~PNaming_VArrayTNodeOfFieldOfHArray1OfNamedShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PNaming_VArrayTNodeOfFieldOfHArray1OfNamedShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PNaming_FieldOfHArray1OfNamedShape;
class PNaming_FieldOfHArray1OfNamedShape : public DBC_BaseArray {
	public:
		%feature("autodoc", "1");
		PNaming_FieldOfHArray1OfNamedShape();
		%feature("autodoc", "1");
		PNaming_FieldOfHArray1OfNamedShape(const Standard_Integer Size);
		%feature("autodoc", "1");
		PNaming_FieldOfHArray1OfNamedShape(const PNaming_FieldOfHArray1OfNamedShape &Varray);
		%feature("autodoc", "1");
		void Resize(const Standard_Integer Size);
		%feature("autodoc", "1");
		void Assign(const PNaming_FieldOfHArray1OfNamedShape &Other);
		%feature("autodoc", "1");
		void operator=(const PNaming_FieldOfHArray1OfNamedShape &Other);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_PNaming_NamedShape &Value);
		%feature("autodoc", "1");
		Handle_PNaming_NamedShape & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_PNaming_NamedShape & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void Destroy();

};
%feature("shadow") PNaming_FieldOfHArray1OfNamedShape::~PNaming_FieldOfHArray1OfNamedShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PNaming_FieldOfHArray1OfNamedShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PNaming_HArray1OfNamedShape;
class PNaming_HArray1OfNamedShape : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		PNaming_HArray1OfNamedShape(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		PNaming_HArray1OfNamedShape(const Standard_Integer Low, const Standard_Integer Up, const Handle_PNaming_NamedShape &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_PNaming_NamedShape &Value);
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		Handle_PNaming_NamedShape Value(const Standard_Integer Index) const;
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
		PNaming_HArray1OfNamedShape();
		%feature("autodoc", "1");
		PNaming_HArray1OfNamedShape(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPNaming_HArray1OfNamedShapeLowerBound() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPNaming_HArray1OfNamedShapeLowerBound(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPNaming_HArray1OfNamedShapeUpperBound() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPNaming_HArray1OfNamedShapeUpperBound(const Standard_Integer p);
		%feature("autodoc", "1");
		const PNaming_FieldOfHArray1OfNamedShape & _CSFDB_GetPNaming_HArray1OfNamedShapeData() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PNaming_HArray1OfNamedShape {
	Handle_PNaming_HArray1OfNamedShape GetHandle() {
	return *(Handle_PNaming_HArray1OfNamedShape*) &$self;
	}
};
%extend PNaming_HArray1OfNamedShape {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") PNaming_HArray1OfNamedShape::~PNaming_HArray1OfNamedShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PNaming_HArray1OfNamedShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PNaming_Name;
class PNaming_Name : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		PNaming_Name();
		%feature("autodoc", "1");
		void Type(const Standard_Integer T);
		%feature("autodoc", "1");
		void ShapeType(const Standard_Integer T);
		%feature("autodoc", "1");
		void Arguments(const Handle_PNaming_HArray1OfNamedShape &Args);
		%feature("autodoc", "1");
		void StopNamedShape(const Handle_PNaming_NamedShape &NS);
		%feature("autodoc", "1");
		Standard_Integer Type() const;
		%feature("autodoc", "1");
		Standard_Integer ShapeType() const;
		%feature("autodoc", "1");
		Handle_PNaming_HArray1OfNamedShape Arguments() const;
		%feature("autodoc", "1");
		Handle_PNaming_NamedShape StopNamedShape() const;
		%feature("autodoc", "1");
		void Index(const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_Integer Index() const;
		%feature("autodoc", "1");
		PNaming_Name(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPNaming_NamemyType() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPNaming_NamemyType(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPNaming_NamemyShapeType() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPNaming_NamemyShapeType(const Standard_Integer p);
		%feature("autodoc", "1");
		Handle_PNaming_HArray1OfNamedShape _CSFDB_GetPNaming_NamemyArgs() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPNaming_NamemyArgs(const Handle_PNaming_HArray1OfNamedShape &p);
		%feature("autodoc", "1");
		Handle_PNaming_NamedShape _CSFDB_GetPNaming_NamemyStop() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPNaming_NamemyStop(const Handle_PNaming_NamedShape &p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPNaming_NamemyIndex() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPNaming_NamemyIndex(const Standard_Integer p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PNaming_Name {
	Handle_PNaming_Name GetHandle() {
	return *(Handle_PNaming_Name*) &$self;
	}
};
%extend PNaming_Name {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") PNaming_Name::~PNaming_Name %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PNaming_Name {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PNaming_VArrayNodeOfFieldOfHArray1OfNamedShape;
class PNaming_VArrayNodeOfFieldOfHArray1OfNamedShape : public PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		PNaming_VArrayNodeOfFieldOfHArray1OfNamedShape();
		%feature("autodoc", "1");
		PNaming_VArrayNodeOfFieldOfHArray1OfNamedShape(const Handle_PNaming_NamedShape &aValue);
		%feature("autodoc", "1");
		void SetValue(const Handle_PNaming_NamedShape &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;
		%feature("autodoc", "1");
		PNaming_VArrayNodeOfFieldOfHArray1OfNamedShape(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Handle_PNaming_NamedShape _CSFDB_GetPNaming_VArrayNodeOfFieldOfHArray1OfNamedShapemyValue() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPNaming_VArrayNodeOfFieldOfHArray1OfNamedShapemyValue(const Handle_PNaming_NamedShape &p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PNaming_VArrayNodeOfFieldOfHArray1OfNamedShape {
	Handle_PNaming_VArrayNodeOfFieldOfHArray1OfNamedShape GetHandle() {
	return *(Handle_PNaming_VArrayNodeOfFieldOfHArray1OfNamedShape*) &$self;
	}
};
%extend PNaming_VArrayNodeOfFieldOfHArray1OfNamedShape {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") PNaming_VArrayNodeOfFieldOfHArray1OfNamedShape::~PNaming_VArrayNodeOfFieldOfHArray1OfNamedShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PNaming_VArrayNodeOfFieldOfHArray1OfNamedShape {
	void _kill_pointed() {
		delete $self;
	}
};
