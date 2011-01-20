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

%module PTopLoc
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include PTopLoc_renames.i


%include PTopLoc_required_python_modules.i


%include PTopLoc_dependencies.i


%include PTopLoc_headers.i




%nodefaultctor Handle_PTopLoc_Datum3D;
class Handle_PTopLoc_Datum3D : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		Handle_PTopLoc_Datum3D();
		%feature("autodoc", "1");
		Handle_PTopLoc_Datum3D(const Handle_PTopLoc_Datum3D &aHandle);
		%feature("autodoc", "1");
		Handle_PTopLoc_Datum3D(const PTopLoc_Datum3D *anItem);
		%feature("autodoc", "1");
		Handle_PTopLoc_Datum3D & operator=(const Handle_PTopLoc_Datum3D &aHandle);
		%feature("autodoc", "1");
		Handle_PTopLoc_Datum3D & operator=(const PTopLoc_Datum3D *anItem);
		%feature("autodoc", "1");
		static		Handle_PTopLoc_Datum3D const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PTopLoc_Datum3D {
	PTopLoc_Datum3D* GetObject() {
	return (PTopLoc_Datum3D*)$self->Access();
	}
};
%feature("shadow") Handle_PTopLoc_Datum3D::~Handle_PTopLoc_Datum3D %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PTopLoc_Datum3D {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_PTopLoc_ItemLocation;
class Handle_PTopLoc_ItemLocation : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		Handle_PTopLoc_ItemLocation();
		%feature("autodoc", "1");
		Handle_PTopLoc_ItemLocation(const Handle_PTopLoc_ItemLocation &aHandle);
		%feature("autodoc", "1");
		Handle_PTopLoc_ItemLocation(const PTopLoc_ItemLocation *anItem);
		%feature("autodoc", "1");
		Handle_PTopLoc_ItemLocation & operator=(const Handle_PTopLoc_ItemLocation &aHandle);
		%feature("autodoc", "1");
		Handle_PTopLoc_ItemLocation & operator=(const PTopLoc_ItemLocation *anItem);
		%feature("autodoc", "1");
		static		Handle_PTopLoc_ItemLocation const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PTopLoc_ItemLocation {
	PTopLoc_ItemLocation* GetObject() {
	return (PTopLoc_ItemLocation*)$self->Access();
	}
};
%feature("shadow") Handle_PTopLoc_ItemLocation::~Handle_PTopLoc_ItemLocation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_PTopLoc_ItemLocation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PTopLoc_ItemLocation;
class PTopLoc_ItemLocation : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		PTopLoc_ItemLocation(const Handle_PTopLoc_Datum3D &D, const Standard_Integer P, const PTopLoc_Location &N);
		%feature("autodoc", "1");
		Handle_PTopLoc_Datum3D Datum3D() const;
		%feature("autodoc", "1");
		Standard_Integer Power() const;
		%feature("autodoc", "1");
		PTopLoc_Location Next() const;
		%feature("autodoc", "1");
		PTopLoc_ItemLocation();
		%feature("autodoc", "1");
		PTopLoc_ItemLocation(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Handle_PTopLoc_Datum3D _CSFDB_GetPTopLoc_ItemLocationmyDatum() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPTopLoc_ItemLocationmyDatum(const Handle_PTopLoc_Datum3D &p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPTopLoc_ItemLocationmyPower() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPTopLoc_ItemLocationmyPower(const Standard_Integer p);
		%feature("autodoc", "1");
		const PTopLoc_Location & _CSFDB_GetPTopLoc_ItemLocationmyNext() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PTopLoc_ItemLocation {
	Handle_PTopLoc_ItemLocation GetHandle() {
	return *(Handle_PTopLoc_ItemLocation*) &$self;
	}
};
%extend PTopLoc_ItemLocation {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") PTopLoc_ItemLocation::~PTopLoc_ItemLocation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PTopLoc_ItemLocation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PTopLoc_Datum3D;
class PTopLoc_Datum3D : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		PTopLoc_Datum3D(const gp_Trsf T);
		%feature("autodoc", "1");
		gp_Trsf Transformation() const;
		%feature("autodoc", "1");
		PTopLoc_Datum3D();
		%feature("autodoc", "1");
		PTopLoc_Datum3D(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		const gp_Trsf  _CSFDB_GetPTopLoc_Datum3DmyTrsf() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PTopLoc_Datum3D {
	Handle_PTopLoc_Datum3D GetHandle() {
	return *(Handle_PTopLoc_Datum3D*) &$self;
	}
};
%extend PTopLoc_Datum3D {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") PTopLoc_Datum3D::~PTopLoc_Datum3D %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PTopLoc_Datum3D {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor PTopLoc_Location;
class PTopLoc_Location {
	public:
		%feature("autodoc", "1");
		PTopLoc_Location();
		%feature("autodoc", "1");
		PTopLoc_Location(const Handle_PTopLoc_Datum3D &D, const Standard_Integer P, const PTopLoc_Location &N);
		%feature("autodoc", "1");
		Standard_Boolean IsIdentity() const;
		%feature("autodoc", "1");
		Handle_PTopLoc_Datum3D Datum3D() const;
		%feature("autodoc", "1");
		Standard_Integer Power() const;
		%feature("autodoc", "1");
		PTopLoc_Location Next() const;
		%feature("autodoc", "1");
		Handle_PTopLoc_ItemLocation _CSFDB_GetPTopLoc_LocationmyData() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPTopLoc_LocationmyData(const Handle_PTopLoc_ItemLocation &p);

};
%feature("shadow") PTopLoc_Location::~PTopLoc_Location %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend PTopLoc_Location {
	void _kill_pointed() {
		delete $self;
	}
};
