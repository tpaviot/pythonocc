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

%module TPrsStd
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include TPrsStd_renames.i


%include TPrsStd_required_python_modules.i


%include TPrsStd_dependencies.i


%include TPrsStd_headers.i




%nodefaultctor Handle_TPrsStd_Driver;
class Handle_TPrsStd_Driver : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TPrsStd_Driver();
		%feature("autodoc", "1");
		Handle_TPrsStd_Driver(const Handle_TPrsStd_Driver &aHandle);
		%feature("autodoc", "1");
		Handle_TPrsStd_Driver(const TPrsStd_Driver *anItem);
		%feature("autodoc", "1");
		Handle_TPrsStd_Driver & operator=(const Handle_TPrsStd_Driver &aHandle);
		%feature("autodoc", "1");
		Handle_TPrsStd_Driver & operator=(const TPrsStd_Driver *anItem);
		%feature("autodoc", "1");
		static		Handle_TPrsStd_Driver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TPrsStd_Driver {
	TPrsStd_Driver* GetObject() {
	return (TPrsStd_Driver*)$self->Access();
	}
};
%feature("shadow") Handle_TPrsStd_Driver::~Handle_TPrsStd_Driver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TPrsStd_Driver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TPrsStd_ConstraintDriver;
class Handle_TPrsStd_ConstraintDriver : public Handle_TPrsStd_Driver {
	public:
		%feature("autodoc", "1");
		Handle_TPrsStd_ConstraintDriver();
		%feature("autodoc", "1");
		Handle_TPrsStd_ConstraintDriver(const Handle_TPrsStd_ConstraintDriver &aHandle);
		%feature("autodoc", "1");
		Handle_TPrsStd_ConstraintDriver(const TPrsStd_ConstraintDriver *anItem);
		%feature("autodoc", "1");
		Handle_TPrsStd_ConstraintDriver & operator=(const Handle_TPrsStd_ConstraintDriver &aHandle);
		%feature("autodoc", "1");
		Handle_TPrsStd_ConstraintDriver & operator=(const TPrsStd_ConstraintDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_TPrsStd_ConstraintDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TPrsStd_ConstraintDriver {
	TPrsStd_ConstraintDriver* GetObject() {
	return (TPrsStd_ConstraintDriver*)$self->Access();
	}
};
%feature("shadow") Handle_TPrsStd_ConstraintDriver::~Handle_TPrsStd_ConstraintDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TPrsStd_ConstraintDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TPrsStd_DriverTable;
class Handle_TPrsStd_DriverTable : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TPrsStd_DriverTable();
		%feature("autodoc", "1");
		Handle_TPrsStd_DriverTable(const Handle_TPrsStd_DriverTable &aHandle);
		%feature("autodoc", "1");
		Handle_TPrsStd_DriverTable(const TPrsStd_DriverTable *anItem);
		%feature("autodoc", "1");
		Handle_TPrsStd_DriverTable & operator=(const Handle_TPrsStd_DriverTable &aHandle);
		%feature("autodoc", "1");
		Handle_TPrsStd_DriverTable & operator=(const TPrsStd_DriverTable *anItem);
		%feature("autodoc", "1");
		static		Handle_TPrsStd_DriverTable DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TPrsStd_DriverTable {
	TPrsStd_DriverTable* GetObject() {
	return (TPrsStd_DriverTable*)$self->Access();
	}
};
%feature("shadow") Handle_TPrsStd_DriverTable::~Handle_TPrsStd_DriverTable %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TPrsStd_DriverTable {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TPrsStd_PlaneDriver;
class Handle_TPrsStd_PlaneDriver : public Handle_TPrsStd_Driver {
	public:
		%feature("autodoc", "1");
		Handle_TPrsStd_PlaneDriver();
		%feature("autodoc", "1");
		Handle_TPrsStd_PlaneDriver(const Handle_TPrsStd_PlaneDriver &aHandle);
		%feature("autodoc", "1");
		Handle_TPrsStd_PlaneDriver(const TPrsStd_PlaneDriver *anItem);
		%feature("autodoc", "1");
		Handle_TPrsStd_PlaneDriver & operator=(const Handle_TPrsStd_PlaneDriver &aHandle);
		%feature("autodoc", "1");
		Handle_TPrsStd_PlaneDriver & operator=(const TPrsStd_PlaneDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_TPrsStd_PlaneDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TPrsStd_PlaneDriver {
	TPrsStd_PlaneDriver* GetObject() {
	return (TPrsStd_PlaneDriver*)$self->Access();
	}
};
%feature("shadow") Handle_TPrsStd_PlaneDriver::~Handle_TPrsStd_PlaneDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TPrsStd_PlaneDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TPrsStd_AISPresentation;
class Handle_TPrsStd_AISPresentation : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_TPrsStd_AISPresentation();
		%feature("autodoc", "1");
		Handle_TPrsStd_AISPresentation(const Handle_TPrsStd_AISPresentation &aHandle);
		%feature("autodoc", "1");
		Handle_TPrsStd_AISPresentation(const TPrsStd_AISPresentation *anItem);
		%feature("autodoc", "1");
		Handle_TPrsStd_AISPresentation & operator=(const Handle_TPrsStd_AISPresentation &aHandle);
		%feature("autodoc", "1");
		Handle_TPrsStd_AISPresentation & operator=(const TPrsStd_AISPresentation *anItem);
		%feature("autodoc", "1");
		static		Handle_TPrsStd_AISPresentation DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TPrsStd_AISPresentation {
	TPrsStd_AISPresentation* GetObject() {
	return (TPrsStd_AISPresentation*)$self->Access();
	}
};
%feature("shadow") Handle_TPrsStd_AISPresentation::~Handle_TPrsStd_AISPresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TPrsStd_AISPresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TPrsStd_DataMapNodeOfDataMapOfGUIDDriver;
class Handle_TPrsStd_DataMapNodeOfDataMapOfGUIDDriver : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TPrsStd_DataMapNodeOfDataMapOfGUIDDriver();
		%feature("autodoc", "1");
		Handle_TPrsStd_DataMapNodeOfDataMapOfGUIDDriver(const Handle_TPrsStd_DataMapNodeOfDataMapOfGUIDDriver &aHandle);
		%feature("autodoc", "1");
		Handle_TPrsStd_DataMapNodeOfDataMapOfGUIDDriver(const TPrsStd_DataMapNodeOfDataMapOfGUIDDriver *anItem);
		%feature("autodoc", "1");
		Handle_TPrsStd_DataMapNodeOfDataMapOfGUIDDriver & operator=(const Handle_TPrsStd_DataMapNodeOfDataMapOfGUIDDriver &aHandle);
		%feature("autodoc", "1");
		Handle_TPrsStd_DataMapNodeOfDataMapOfGUIDDriver & operator=(const TPrsStd_DataMapNodeOfDataMapOfGUIDDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_TPrsStd_DataMapNodeOfDataMapOfGUIDDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TPrsStd_DataMapNodeOfDataMapOfGUIDDriver {
	TPrsStd_DataMapNodeOfDataMapOfGUIDDriver* GetObject() {
	return (TPrsStd_DataMapNodeOfDataMapOfGUIDDriver*)$self->Access();
	}
};
%feature("shadow") Handle_TPrsStd_DataMapNodeOfDataMapOfGUIDDriver::~Handle_TPrsStd_DataMapNodeOfDataMapOfGUIDDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TPrsStd_DataMapNodeOfDataMapOfGUIDDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TPrsStd_AxisDriver;
class Handle_TPrsStd_AxisDriver : public Handle_TPrsStd_Driver {
	public:
		%feature("autodoc", "1");
		Handle_TPrsStd_AxisDriver();
		%feature("autodoc", "1");
		Handle_TPrsStd_AxisDriver(const Handle_TPrsStd_AxisDriver &aHandle);
		%feature("autodoc", "1");
		Handle_TPrsStd_AxisDriver(const TPrsStd_AxisDriver *anItem);
		%feature("autodoc", "1");
		Handle_TPrsStd_AxisDriver & operator=(const Handle_TPrsStd_AxisDriver &aHandle);
		%feature("autodoc", "1");
		Handle_TPrsStd_AxisDriver & operator=(const TPrsStd_AxisDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_TPrsStd_AxisDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TPrsStd_AxisDriver {
	TPrsStd_AxisDriver* GetObject() {
	return (TPrsStd_AxisDriver*)$self->Access();
	}
};
%feature("shadow") Handle_TPrsStd_AxisDriver::~Handle_TPrsStd_AxisDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TPrsStd_AxisDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TPrsStd_PointDriver;
class Handle_TPrsStd_PointDriver : public Handle_TPrsStd_Driver {
	public:
		%feature("autodoc", "1");
		Handle_TPrsStd_PointDriver();
		%feature("autodoc", "1");
		Handle_TPrsStd_PointDriver(const Handle_TPrsStd_PointDriver &aHandle);
		%feature("autodoc", "1");
		Handle_TPrsStd_PointDriver(const TPrsStd_PointDriver *anItem);
		%feature("autodoc", "1");
		Handle_TPrsStd_PointDriver & operator=(const Handle_TPrsStd_PointDriver &aHandle);
		%feature("autodoc", "1");
		Handle_TPrsStd_PointDriver & operator=(const TPrsStd_PointDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_TPrsStd_PointDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TPrsStd_PointDriver {
	TPrsStd_PointDriver* GetObject() {
	return (TPrsStd_PointDriver*)$self->Access();
	}
};
%feature("shadow") Handle_TPrsStd_PointDriver::~Handle_TPrsStd_PointDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TPrsStd_PointDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TPrsStd_AISViewer;
class Handle_TPrsStd_AISViewer : public Handle_TDF_Attribute {
	public:
		%feature("autodoc", "1");
		Handle_TPrsStd_AISViewer();
		%feature("autodoc", "1");
		Handle_TPrsStd_AISViewer(const Handle_TPrsStd_AISViewer &aHandle);
		%feature("autodoc", "1");
		Handle_TPrsStd_AISViewer(const TPrsStd_AISViewer *anItem);
		%feature("autodoc", "1");
		Handle_TPrsStd_AISViewer & operator=(const Handle_TPrsStd_AISViewer &aHandle);
		%feature("autodoc", "1");
		Handle_TPrsStd_AISViewer & operator=(const TPrsStd_AISViewer *anItem);
		%feature("autodoc", "1");
		static		Handle_TPrsStd_AISViewer DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TPrsStd_AISViewer {
	TPrsStd_AISViewer* GetObject() {
	return (TPrsStd_AISViewer*)$self->Access();
	}
};
%feature("shadow") Handle_TPrsStd_AISViewer::~Handle_TPrsStd_AISViewer %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TPrsStd_AISViewer {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TPrsStd_GeometryDriver;
class Handle_TPrsStd_GeometryDriver : public Handle_TPrsStd_Driver {
	public:
		%feature("autodoc", "1");
		Handle_TPrsStd_GeometryDriver();
		%feature("autodoc", "1");
		Handle_TPrsStd_GeometryDriver(const Handle_TPrsStd_GeometryDriver &aHandle);
		%feature("autodoc", "1");
		Handle_TPrsStd_GeometryDriver(const TPrsStd_GeometryDriver *anItem);
		%feature("autodoc", "1");
		Handle_TPrsStd_GeometryDriver & operator=(const Handle_TPrsStd_GeometryDriver &aHandle);
		%feature("autodoc", "1");
		Handle_TPrsStd_GeometryDriver & operator=(const TPrsStd_GeometryDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_TPrsStd_GeometryDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TPrsStd_GeometryDriver {
	TPrsStd_GeometryDriver* GetObject() {
	return (TPrsStd_GeometryDriver*)$self->Access();
	}
};
%feature("shadow") Handle_TPrsStd_GeometryDriver::~Handle_TPrsStd_GeometryDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TPrsStd_GeometryDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TPrsStd_NamedShapeDriver;
class Handle_TPrsStd_NamedShapeDriver : public Handle_TPrsStd_Driver {
	public:
		%feature("autodoc", "1");
		Handle_TPrsStd_NamedShapeDriver();
		%feature("autodoc", "1");
		Handle_TPrsStd_NamedShapeDriver(const Handle_TPrsStd_NamedShapeDriver &aHandle);
		%feature("autodoc", "1");
		Handle_TPrsStd_NamedShapeDriver(const TPrsStd_NamedShapeDriver *anItem);
		%feature("autodoc", "1");
		Handle_TPrsStd_NamedShapeDriver & operator=(const Handle_TPrsStd_NamedShapeDriver &aHandle);
		%feature("autodoc", "1");
		Handle_TPrsStd_NamedShapeDriver & operator=(const TPrsStd_NamedShapeDriver *anItem);
		%feature("autodoc", "1");
		static		Handle_TPrsStd_NamedShapeDriver DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TPrsStd_NamedShapeDriver {
	TPrsStd_NamedShapeDriver* GetObject() {
	return (TPrsStd_NamedShapeDriver*)$self->Access();
	}
};
%feature("shadow") Handle_TPrsStd_NamedShapeDriver::~Handle_TPrsStd_NamedShapeDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TPrsStd_NamedShapeDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TPrsStd_ConstraintTools;
class TPrsStd_ConstraintTools {
	public:
		%feature("autodoc", "1");
		TPrsStd_ConstraintTools();
		%feature("autodoc", "1");
		static		void UpdateOnlyValue(const Handle_TDataXtd_Constraint &aConst, const Handle_AIS_InteractiveObject &anAIS);
		%feature("autodoc", "1");
		static		void ComputeDistance(const Handle_TDataXtd_Constraint &aConst, Handle_AIS_InteractiveObject & anAIS);
		%feature("autodoc", "1");
		static		void ComputeParallel(const Handle_TDataXtd_Constraint &aConst, Handle_AIS_InteractiveObject & anAIS);
		%feature("autodoc", "1");
		static		void ComputeTangent(const Handle_TDataXtd_Constraint &aConst, Handle_AIS_InteractiveObject & anAIS);
		%feature("autodoc", "1");
		static		void ComputePerpendicular(const Handle_TDataXtd_Constraint &aConst, Handle_AIS_InteractiveObject & anAIS);
		%feature("autodoc", "1");
		static		void ComputeConcentric(const Handle_TDataXtd_Constraint &aConst, Handle_AIS_InteractiveObject & anAIS);
		%feature("autodoc", "1");
		static		void ComputeSymmetry(const Handle_TDataXtd_Constraint &aConst, Handle_AIS_InteractiveObject & anAIS);
		%feature("autodoc", "1");
		static		void ComputeMidPoint(const Handle_TDataXtd_Constraint &aConst, Handle_AIS_InteractiveObject & anAIS);
		%feature("autodoc", "1");
		static		void ComputeAngle(const Handle_TDataXtd_Constraint &aConst, Handle_AIS_InteractiveObject & anAIS);
		%feature("autodoc", "1");
		static		void ComputeRadius(const Handle_TDataXtd_Constraint &aConst, Handle_AIS_InteractiveObject & anAIS);
		%feature("autodoc", "1");
		static		void ComputeMinRadius(const Handle_TDataXtd_Constraint &aConst, Handle_AIS_InteractiveObject & anAIS);
		%feature("autodoc", "1");
		static		void ComputeMaxRadius(const Handle_TDataXtd_Constraint &aConst, Handle_AIS_InteractiveObject & anAIS);
		%feature("autodoc", "1");
		static		void ComputeEqualDistance(const Handle_TDataXtd_Constraint &aConst, Handle_AIS_InteractiveObject & anAIS);
		%feature("autodoc", "1");
		static		void ComputeEqualRadius(const Handle_TDataXtd_Constraint &aConst, Handle_AIS_InteractiveObject & anAIS);
		%feature("autodoc", "1");
		static		void ComputeFix(const Handle_TDataXtd_Constraint &aConst, Handle_AIS_InteractiveObject & anAIS);
		%feature("autodoc", "1");
		static		void ComputeDiameter(const Handle_TDataXtd_Constraint &aConst, Handle_AIS_InteractiveObject & anAIS);
		%feature("autodoc", "1");
		static		void ComputeOffset(const Handle_TDataXtd_Constraint &aConst, Handle_AIS_InteractiveObject & anAIS);
		%feature("autodoc", "1");
		static		void ComputePlacement(const Handle_TDataXtd_Constraint &aConst, Handle_AIS_InteractiveObject & anAIS);
		%feature("autodoc", "1");
		static		void ComputeCoincident(const Handle_TDataXtd_Constraint &aConst, Handle_AIS_InteractiveObject & anAIS);
		%feature("autodoc", "1");
		static		void ComputeRound(const Handle_TDataXtd_Constraint &aConst, Handle_AIS_InteractiveObject & anAIS);
		%feature("autodoc", "1");
		static		void ComputeOthers(const Handle_TDataXtd_Constraint &aConst, Handle_AIS_InteractiveObject & anAIS);
		%feature("autodoc","ComputeTextAndValue(const aConst, Standard_Boolean anIsAngle) -> Standard_Real");

		static		void ComputeTextAndValue(const Handle_TDataXtd_Constraint &aConst, Standard_Real &OutValue, TCollection_ExtendedString & aText, const Standard_Boolean anIsAngle);
		%feature("autodoc", "1");
		static		void ComputeAngleForOneFace(const Handle_TDataXtd_Constraint &aConst, Handle_AIS_InteractiveObject & anAIS);

};
%feature("shadow") TPrsStd_ConstraintTools::~TPrsStd_ConstraintTools %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TPrsStd_ConstraintTools {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TPrsStd_Driver;
class TPrsStd_Driver : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		virtual		Standard_Boolean Update(const TDF_Label &L, Handle_AIS_InteractiveObject & ais);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TPrsStd_Driver {
	Handle_TPrsStd_Driver GetHandle() {
	return *(Handle_TPrsStd_Driver*) &$self;
	}
};
%extend TPrsStd_Driver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") TPrsStd_Driver::~TPrsStd_Driver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TPrsStd_Driver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TPrsStd_NamedShapeDriver;
class TPrsStd_NamedShapeDriver : public TPrsStd_Driver {
	public:
		%feature("autodoc", "1");
		TPrsStd_NamedShapeDriver();
		%feature("autodoc", "1");
		virtual		Standard_Boolean Update(const TDF_Label &aLabel, Handle_AIS_InteractiveObject & anAISObject);

};
%extend TPrsStd_NamedShapeDriver {
	Handle_TPrsStd_NamedShapeDriver GetHandle() {
	return *(Handle_TPrsStd_NamedShapeDriver*) &$self;
	}
};
%extend TPrsStd_NamedShapeDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") TPrsStd_NamedShapeDriver::~TPrsStd_NamedShapeDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TPrsStd_NamedShapeDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TPrsStd_DataMapIteratorOfDataMapOfGUIDDriver;
class TPrsStd_DataMapIteratorOfDataMapOfGUIDDriver : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		TPrsStd_DataMapIteratorOfDataMapOfGUIDDriver();
		%feature("autodoc", "1");
		TPrsStd_DataMapIteratorOfDataMapOfGUIDDriver(const TPrsStd_DataMapOfGUIDDriver &aMap);
		%feature("autodoc", "1");
		void Initialize(const TPrsStd_DataMapOfGUIDDriver &aMap);
		%feature("autodoc", "1");
		const Standard_GUID & Key() const;
		%feature("autodoc", "1");
		const Handle_TPrsStd_Driver & Value() const;

};
%feature("shadow") TPrsStd_DataMapIteratorOfDataMapOfGUIDDriver::~TPrsStd_DataMapIteratorOfDataMapOfGUIDDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TPrsStd_DataMapIteratorOfDataMapOfGUIDDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TPrsStd_AxisDriver;
class TPrsStd_AxisDriver : public TPrsStd_Driver {
	public:
		%feature("autodoc", "1");
		TPrsStd_AxisDriver();
		%feature("autodoc", "1");
		virtual		Standard_Boolean Update(const TDF_Label &aLabel, Handle_AIS_InteractiveObject & anAISObject);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TPrsStd_AxisDriver {
	Handle_TPrsStd_AxisDriver GetHandle() {
	return *(Handle_TPrsStd_AxisDriver*) &$self;
	}
};
%extend TPrsStd_AxisDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") TPrsStd_AxisDriver::~TPrsStd_AxisDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TPrsStd_AxisDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TPrsStd_AISViewer;
class TPrsStd_AISViewer : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		static		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		static		Standard_Boolean Has(const TDF_Label &acces);
		%feature("autodoc", "1");
		static		Handle_TPrsStd_AISViewer New(const TDF_Label &access, const Handle_AIS_InteractiveContext &selector);
		%feature("autodoc", "1");
		static		Handle_TPrsStd_AISViewer New(const TDF_Label &acces, const Handle_V3d_Viewer &viewer);
		%feature("autodoc", "1");
		static		Standard_Boolean Find(const TDF_Label &acces, Handle_TPrsStd_AISViewer & A);
		%feature("autodoc", "1");
		static		Standard_Boolean Find(const TDF_Label &acces, Handle_AIS_InteractiveContext & IC);
		%feature("autodoc", "1");
		static		Standard_Boolean Find(const TDF_Label &acces, Handle_V3d_Viewer & V);
		%feature("autodoc", "1");
		static		void Update(const TDF_Label &acces);
		%feature("autodoc", "1");
		TPrsStd_AISViewer();
		%feature("autodoc", "1");
		void Update() const;
		%feature("autodoc", "1");
		void SetInteractiveContext(const Handle_AIS_InteractiveContext &ctx);
		%feature("autodoc", "1");
		Handle_AIS_InteractiveContext GetInteractiveContext() const;
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &with);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &into, const Handle_TDF_RelocationTable &RT) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TPrsStd_AISViewer {
	Handle_TPrsStd_AISViewer GetHandle() {
	return *(Handle_TPrsStd_AISViewer*) &$self;
	}
};
%extend TPrsStd_AISViewer {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") TPrsStd_AISViewer::~TPrsStd_AISViewer %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TPrsStd_AISViewer {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TPrsStd_PointDriver;
class TPrsStd_PointDriver : public TPrsStd_Driver {
	public:
		%feature("autodoc", "1");
		TPrsStd_PointDriver();
		%feature("autodoc", "1");
		virtual		Standard_Boolean Update(const TDF_Label &aLabel, Handle_AIS_InteractiveObject & anAISObject);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TPrsStd_PointDriver {
	Handle_TPrsStd_PointDriver GetHandle() {
	return *(Handle_TPrsStd_PointDriver*) &$self;
	}
};
%extend TPrsStd_PointDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") TPrsStd_PointDriver::~TPrsStd_PointDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TPrsStd_PointDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TPrsStd_ConstraintDriver;
class TPrsStd_ConstraintDriver : public TPrsStd_Driver {
	public:
		%feature("autodoc", "1");
		TPrsStd_ConstraintDriver();
		%feature("autodoc", "1");
		virtual		Standard_Boolean Update(const TDF_Label &aLabel, Handle_AIS_InteractiveObject & anAISObject);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TPrsStd_ConstraintDriver {
	Handle_TPrsStd_ConstraintDriver GetHandle() {
	return *(Handle_TPrsStd_ConstraintDriver*) &$self;
	}
};
%extend TPrsStd_ConstraintDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") TPrsStd_ConstraintDriver::~TPrsStd_ConstraintDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TPrsStd_ConstraintDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TPrsStd_DataMapNodeOfDataMapOfGUIDDriver;
class TPrsStd_DataMapNodeOfDataMapOfGUIDDriver : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TPrsStd_DataMapNodeOfDataMapOfGUIDDriver(const Standard_GUID &K, const Handle_TPrsStd_Driver &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Standard_GUID & Key() const;
		%feature("autodoc", "1");
		Handle_TPrsStd_Driver & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TPrsStd_DataMapNodeOfDataMapOfGUIDDriver {
	Handle_TPrsStd_DataMapNodeOfDataMapOfGUIDDriver GetHandle() {
	return *(Handle_TPrsStd_DataMapNodeOfDataMapOfGUIDDriver*) &$self;
	}
};
%extend TPrsStd_DataMapNodeOfDataMapOfGUIDDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") TPrsStd_DataMapNodeOfDataMapOfGUIDDriver::~TPrsStd_DataMapNodeOfDataMapOfGUIDDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TPrsStd_DataMapNodeOfDataMapOfGUIDDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TPrsStd_AISPresentation;
class TPrsStd_AISPresentation : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		static		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		static		Handle_TPrsStd_AISPresentation Set(const TDF_Label &L, const Standard_GUID &driver);
		%feature("autodoc", "1");
		static		void Unset(const TDF_Label &L);
		%feature("autodoc", "1");
		static		Handle_TPrsStd_AISPresentation Set(const Handle_TDF_Attribute &master);
		%feature("autodoc", "1");
		TPrsStd_AISPresentation();
		%feature("autodoc", "1");
		void SetDisplayed(const Standard_Boolean B);
		%feature("autodoc", "1");
		void Display(const Standard_Boolean update=0);
		%feature("autodoc", "1");
		void Erase(const Standard_Boolean remove=0);
		%feature("autodoc", "1");
		void Update();
		%feature("autodoc", "1");
		Standard_GUID GetDriverGUID() const;
		%feature("autodoc", "1");
		void SetDriverGUID(const Standard_GUID &guid);
		%feature("autodoc", "1");
		Standard_Boolean IsDisplayed() const;
		%feature("autodoc", "1");
		Handle_AIS_InteractiveObject GetAIS() const;
		%feature("autodoc", "1");
		Graphic3d_NameOfMaterial Material() const;
		%feature("autodoc", "1");
		void SetMaterial(const Graphic3d_NameOfMaterial aName);
		%feature("autodoc", "1");
		Standard_Boolean HasOwnMaterial() const;
		%feature("autodoc", "1");
		void UnsetMaterial();
		%feature("autodoc", "1");
		void SetTransparency(const Standard_Real aValue=5.9999999999999997779553950749686919152736663818359375e-1);
		%feature("autodoc", "1");
		Standard_Real Transparency() const;
		%feature("autodoc", "1");
		Standard_Boolean HasOwnTransparency() const;
		%feature("autodoc", "1");
		void UnsetTransparency();
		%feature("autodoc", "1");
		Quantity_NameOfColor Color() const;
		%feature("autodoc", "1");
		void SetColor(const Quantity_NameOfColor aColor);
		%feature("autodoc", "1");
		Standard_Boolean HasOwnColor() const;
		%feature("autodoc", "1");
		void UnsetColor();
		%feature("autodoc", "1");
		Standard_Real Width() const;
		%feature("autodoc", "1");
		void SetWidth(const Standard_Real aWidth);
		%feature("autodoc", "1");
		Standard_Boolean HasOwnWidth() const;
		%feature("autodoc", "1");
		void UnsetWidth();
		%feature("autodoc", "1");
		Standard_Integer Mode() const;
		%feature("autodoc", "1");
		void SetMode(const Standard_Integer theMode);
		%feature("autodoc", "1");
		Standard_Boolean HasOwnMode() const;
		%feature("autodoc", "1");
		void UnsetMode();
		%feature("autodoc", "1");
		Standard_Integer SelectionMode() const;
		%feature("autodoc", "1");
		void SetSelectionMode(const Standard_Integer theSelectionMode);
		%feature("autodoc", "1");
		Standard_Boolean HasOwnSelectionMode() const;
		%feature("autodoc", "1");
		void UnsetSelectionMode();
		%feature("autodoc", "1");
		virtual		const Standard_GUID & ID() const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		void Restore(const Handle_TDF_Attribute &with);
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &into, const Handle_TDF_RelocationTable &RT) const;
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute BackupCopy() const;
		%feature("autodoc", "1");
		virtual		void AfterAddition();
		%feature("autodoc", "1");
		virtual		void BeforeRemoval();
		%feature("autodoc", "1");
		virtual		void BeforeForget();
		%feature("autodoc", "1");
		virtual		void AfterResume();
		%feature("autodoc", "1");
		virtual		Standard_Boolean BeforeUndo(const Handle_TDF_AttributeDelta &anAttDelta, const Standard_Boolean forceIt=0);
		%feature("autodoc", "1");
		virtual		Standard_Boolean AfterUndo(const Handle_TDF_AttributeDelta &anAttDelta, const Standard_Boolean forceIt=0);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TPrsStd_AISPresentation {
	Handle_TPrsStd_AISPresentation GetHandle() {
	return *(Handle_TPrsStd_AISPresentation*) &$self;
	}
};
%extend TPrsStd_AISPresentation {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") TPrsStd_AISPresentation::~TPrsStd_AISPresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TPrsStd_AISPresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TPrsStd_PlaneDriver;
class TPrsStd_PlaneDriver : public TPrsStd_Driver {
	public:
		%feature("autodoc", "1");
		TPrsStd_PlaneDriver();
		%feature("autodoc", "1");
		virtual		Standard_Boolean Update(const TDF_Label &aLabel, Handle_AIS_InteractiveObject & anAISObject);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TPrsStd_PlaneDriver {
	Handle_TPrsStd_PlaneDriver GetHandle() {
	return *(Handle_TPrsStd_PlaneDriver*) &$self;
	}
};
%extend TPrsStd_PlaneDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") TPrsStd_PlaneDriver::~TPrsStd_PlaneDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TPrsStd_PlaneDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TPrsStd_GeometryDriver;
class TPrsStd_GeometryDriver : public TPrsStd_Driver {
	public:
		%feature("autodoc", "1");
		TPrsStd_GeometryDriver();
		%feature("autodoc", "1");
		virtual		Standard_Boolean Update(const TDF_Label &aLabel, Handle_AIS_InteractiveObject & anAISObject);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TPrsStd_GeometryDriver {
	Handle_TPrsStd_GeometryDriver GetHandle() {
	return *(Handle_TPrsStd_GeometryDriver*) &$self;
	}
};
%extend TPrsStd_GeometryDriver {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") TPrsStd_GeometryDriver::~TPrsStd_GeometryDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TPrsStd_GeometryDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TPrsStd_DataMapOfGUIDDriver;
class TPrsStd_DataMapOfGUIDDriver : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TPrsStd_DataMapOfGUIDDriver(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TPrsStd_DataMapOfGUIDDriver & Assign(const TPrsStd_DataMapOfGUIDDriver &Other);
		%feature("autodoc", "1");
		TPrsStd_DataMapOfGUIDDriver & operator=(const TPrsStd_DataMapOfGUIDDriver &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Standard_GUID &K, const Handle_TPrsStd_Driver &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Standard_GUID &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Standard_GUID &K);
		%feature("autodoc", "1");
		const Handle_TPrsStd_Driver & Find(const Standard_GUID &K) const;
		%feature("autodoc", "1");
		const Handle_TPrsStd_Driver & operator()(const Standard_GUID &K) const;
		%feature("autodoc", "1");
		Handle_TPrsStd_Driver & ChangeFind(const Standard_GUID &K);
		%feature("autodoc", "1");
		Handle_TPrsStd_Driver & operator()(const Standard_GUID &K);
		%feature("autodoc", "1");
		Standard_Address Find1(const Standard_GUID &K) const;
		%feature("autodoc", "1");
		Standard_Address ChangeFind1(const Standard_GUID &K);

};
%feature("shadow") TPrsStd_DataMapOfGUIDDriver::~TPrsStd_DataMapOfGUIDDriver %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TPrsStd_DataMapOfGUIDDriver {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TPrsStd_DriverTable;
class TPrsStd_DriverTable : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		static		Handle_TPrsStd_DriverTable Get();
		%feature("autodoc", "1");
		TPrsStd_DriverTable();
		%feature("autodoc", "1");
		void InitStandardDrivers();
		%feature("autodoc", "1");
		Standard_Boolean AddDriver(const Standard_GUID &guid, const Handle_TPrsStd_Driver &driver);
		%feature("autodoc", "1");
		Standard_Boolean FindDriver(const Standard_GUID &guid, Handle_TPrsStd_Driver & driver) const;
		%feature("autodoc", "1");
		Standard_Boolean RemoveDriver(const Standard_GUID &guid);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TPrsStd_DriverTable {
	Handle_TPrsStd_DriverTable GetHandle() {
	return *(Handle_TPrsStd_DriverTable*) &$self;
	}
};
%extend TPrsStd_DriverTable {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") TPrsStd_DriverTable::~TPrsStd_DriverTable %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TPrsStd_DriverTable {
	void _kill_pointed() {
		delete $self;
	}
};
