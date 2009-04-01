/*

Copyright 2008-2009 Thomas Paviot (thomas.paviot@free.fr)

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
%module TPrsStd

%include typemaps.i
%include cmalloc.i
%include cpointer.i
%include carrays.i
%include exception.i

#ifndef _Standard_TypeDef_HeaderFile
#define _Standard_TypeDef_HeaderFile
#define Standard_False (Standard_Boolean) 0
#define Standard_True  (Standard_Boolean) 1
#endif

/*
Exception handling
*/
%{#include <Standard_Failure.hxx>%}
%exception
{
    try
    {
        $action
    } 
    catch(Standard_Failure)
    {
        SWIG_exception(SWIG_RuntimeError,Standard_Failure::Caught()->DynamicType()->Name());
    }
}

/*
Standard_Real & function transformation
*/
%typemap(argout) Standard_Real &OutValue {
    PyObject *o, *o2, *o3;
    o = PyFloat_FromDouble(*$1);
    if ((!$result) || ($result == Py_None)) {
        $result = o;
    } else {
        if (!PyTuple_Check($result)) {
            PyObject *o2 = $result;
            $result = PyTuple_New(1);
            PyTuple_SetItem($result,0,o2);
        }
        o3 = PyTuple_New(1);
        PyTuple_SetItem(o3,0,o);
        o2 = $result;
        $result = PySequence_Concat(o2,o3);
        Py_DECREF(o2);
        Py_DECREF(o3);
    }
}

%typemap(in,numinputs=0) Standard_Real &OutValue(Standard_Real temp) {
    $1 = &temp;
}

/*
Standard_Integer & function transformation
*/
%typemap(argout) Standard_Integer &OutValue {
    PyObject *o, *o2, *o3;
    o = PyInt_FromLong(*$1);
    if ((!$result) || ($result == Py_None)) {
        $result = o;
    } else {
        if (!PyTuple_Check($result)) {
            PyObject *o2 = $result;
            $result = PyTuple_New(1);
            PyTuple_SetItem($result,0,o2);
        }
        o3 = PyTuple_New(1);
        PyTuple_SetItem(o3,0,o);
        o2 = $result;
        $result = PySequence_Concat(o2,o3);
        Py_DECREF(o2);
        Py_DECREF(o3);
    }
}

%typemap(in,numinputs=0) Standard_Integer &OutValue(Standard_Integer temp) {
    $1 = &temp;
}


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
		Handle_TPrsStd_Driver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TPrsStd_Driver {
	TPrsStd_Driver* GetObject() {
	return (TPrsStd_Driver*)$self->Access();
	}
};
%extend Handle_TPrsStd_Driver {
	~Handle_TPrsStd_Driver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_TPrsStd_Driver\n");}
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
		Handle_TPrsStd_ConstraintDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TPrsStd_ConstraintDriver {
	TPrsStd_ConstraintDriver* GetObject() {
	return (TPrsStd_ConstraintDriver*)$self->Access();
	}
};
%extend Handle_TPrsStd_ConstraintDriver {
	~Handle_TPrsStd_ConstraintDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_TPrsStd_ConstraintDriver\n");}
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
		Handle_TPrsStd_PlaneDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TPrsStd_PlaneDriver {
	TPrsStd_PlaneDriver* GetObject() {
	return (TPrsStd_PlaneDriver*)$self->Access();
	}
};
%extend Handle_TPrsStd_PlaneDriver {
	~Handle_TPrsStd_PlaneDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_TPrsStd_PlaneDriver\n");}
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
		Handle_TPrsStd_NamedShapeDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TPrsStd_NamedShapeDriver {
	TPrsStd_NamedShapeDriver* GetObject() {
	return (TPrsStd_NamedShapeDriver*)$self->Access();
	}
};
%extend Handle_TPrsStd_NamedShapeDriver {
	~Handle_TPrsStd_NamedShapeDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_TPrsStd_NamedShapeDriver\n");}
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
		Handle_TPrsStd_DataMapNodeOfDataMapOfGUIDDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TPrsStd_DataMapNodeOfDataMapOfGUIDDriver {
	TPrsStd_DataMapNodeOfDataMapOfGUIDDriver* GetObject() {
	return (TPrsStd_DataMapNodeOfDataMapOfGUIDDriver*)$self->Access();
	}
};
%extend Handle_TPrsStd_DataMapNodeOfDataMapOfGUIDDriver {
	~Handle_TPrsStd_DataMapNodeOfDataMapOfGUIDDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_TPrsStd_DataMapNodeOfDataMapOfGUIDDriver\n");}
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
		Handle_TPrsStd_AxisDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TPrsStd_AxisDriver {
	TPrsStd_AxisDriver* GetObject() {
	return (TPrsStd_AxisDriver*)$self->Access();
	}
};
%extend Handle_TPrsStd_AxisDriver {
	~Handle_TPrsStd_AxisDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_TPrsStd_AxisDriver\n");}
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
		Handle_TPrsStd_DriverTable const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TPrsStd_DriverTable {
	TPrsStd_DriverTable* GetObject() {
	return (TPrsStd_DriverTable*)$self->Access();
	}
};
%extend Handle_TPrsStd_DriverTable {
	~Handle_TPrsStd_DriverTable() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_TPrsStd_DriverTable\n");}
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
		Handle_TPrsStd_PointDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TPrsStd_PointDriver {
	TPrsStd_PointDriver* GetObject() {
	return (TPrsStd_PointDriver*)$self->Access();
	}
};
%extend Handle_TPrsStd_PointDriver {
	~Handle_TPrsStd_PointDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_TPrsStd_PointDriver\n");}
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
		Handle_TPrsStd_AISViewer const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TPrsStd_AISViewer {
	TPrsStd_AISViewer* GetObject() {
	return (TPrsStd_AISViewer*)$self->Access();
	}
};
%extend Handle_TPrsStd_AISViewer {
	~Handle_TPrsStd_AISViewer() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_TPrsStd_AISViewer\n");}
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
		Handle_TPrsStd_AISPresentation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TPrsStd_AISPresentation {
	TPrsStd_AISPresentation* GetObject() {
	return (TPrsStd_AISPresentation*)$self->Access();
	}
};
%extend Handle_TPrsStd_AISPresentation {
	~Handle_TPrsStd_AISPresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_TPrsStd_AISPresentation\n");}
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
		Handle_TPrsStd_GeometryDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TPrsStd_GeometryDriver {
	TPrsStd_GeometryDriver* GetObject() {
	return (TPrsStd_GeometryDriver*)$self->Access();
	}
};
%extend Handle_TPrsStd_GeometryDriver {
	~Handle_TPrsStd_GeometryDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_TPrsStd_GeometryDriver\n");}
	}
};

%nodefaultctor TPrsStd_ConstraintTools;
class TPrsStd_ConstraintTools {
	public:
		%feature("autodoc", "1");
		TPrsStd_ConstraintTools();
		%feature("autodoc", "1");
		void UpdateOnlyValue(const Handle_TDataStd_Constraint &aConst, const Handle_AIS_InteractiveObject &anAIS);
		%feature("autodoc", "1");
		void ComputeDistance(const Handle_TDataStd_Constraint &aConst, Handle_AIS_InteractiveObject & anAIS);
		%feature("autodoc", "1");
		void ComputeParallel(const Handle_TDataStd_Constraint &aConst, Handle_AIS_InteractiveObject & anAIS);
		%feature("autodoc", "1");
		void ComputeTangent(const Handle_TDataStd_Constraint &aConst, Handle_AIS_InteractiveObject & anAIS);
		%feature("autodoc", "1");
		void ComputePerpendicular(const Handle_TDataStd_Constraint &aConst, Handle_AIS_InteractiveObject & anAIS);
		%feature("autodoc", "1");
		void ComputeConcentric(const Handle_TDataStd_Constraint &aConst, Handle_AIS_InteractiveObject & anAIS);
		%feature("autodoc", "1");
		void ComputeSymmetry(const Handle_TDataStd_Constraint &aConst, Handle_AIS_InteractiveObject & anAIS);
		%feature("autodoc", "1");
		void ComputeMidPoint(const Handle_TDataStd_Constraint &aConst, Handle_AIS_InteractiveObject & anAIS);
		%feature("autodoc", "1");
		void ComputeAngle(const Handle_TDataStd_Constraint &aConst, Handle_AIS_InteractiveObject & anAIS);
		%feature("autodoc", "1");
		void ComputeRadius(const Handle_TDataStd_Constraint &aConst, Handle_AIS_InteractiveObject & anAIS);
		%feature("autodoc", "1");
		void ComputeMinRadius(const Handle_TDataStd_Constraint &aConst, Handle_AIS_InteractiveObject & anAIS);
		%feature("autodoc", "1");
		void ComputeMaxRadius(const Handle_TDataStd_Constraint &aConst, Handle_AIS_InteractiveObject & anAIS);
		%feature("autodoc", "1");
		void ComputeEqualDistance(const Handle_TDataStd_Constraint &aConst, Handle_AIS_InteractiveObject & anAIS);
		%feature("autodoc", "1");
		void ComputeEqualRadius(const Handle_TDataStd_Constraint &aConst, Handle_AIS_InteractiveObject & anAIS);
		%feature("autodoc", "1");
		void ComputeFix(const Handle_TDataStd_Constraint &aConst, Handle_AIS_InteractiveObject & anAIS);
		%feature("autodoc", "1");
		void ComputeDiameter(const Handle_TDataStd_Constraint &aConst, Handle_AIS_InteractiveObject & anAIS);
		%feature("autodoc", "1");
		void ComputeOffset(const Handle_TDataStd_Constraint &aConst, Handle_AIS_InteractiveObject & anAIS);
		%feature("autodoc", "1");
		void ComputePlacement(const Handle_TDataStd_Constraint &aConst, Handle_AIS_InteractiveObject & anAIS);
		%feature("autodoc", "1");
		void ComputeCoincident(const Handle_TDataStd_Constraint &aConst, Handle_AIS_InteractiveObject & anAIS);
		%feature("autodoc", "1");
		void ComputeRound(const Handle_TDataStd_Constraint &aConst, Handle_AIS_InteractiveObject & anAIS);
		%feature("autodoc", "1");
		void ComputeOthers(const Handle_TDataStd_Constraint &aConst, Handle_AIS_InteractiveObject & anAIS);
		%feature("autodoc", "1");
		void ComputeTextAndValue(const Handle_TDataStd_Constraint &aConst, Standard_Real &OutValue, TCollection_ExtendedString & aText, const Standard_Boolean anIsAngle);
		%feature("autodoc", "1");
		void ComputeAngleForOneFace(const Handle_TDataStd_Constraint &aConst, Handle_AIS_InteractiveObject & anAIS);

};
%extend TPrsStd_ConstraintTools {
	~TPrsStd_ConstraintTools() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TPrsStd_ConstraintTools\n");}
	}
};

%nodefaultctor TPrsStd_AISPresentation;
class TPrsStd_AISPresentation : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		Handle_TPrsStd_AISPresentation Set(const TDF_Label &L, const Standard_GUID &driver);
		%feature("autodoc", "1");
		void Unset(const TDF_Label &L);
		%feature("autodoc", "1");
		Handle_TPrsStd_AISPresentation Set(const Handle_TDF_Attribute &master);
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
		void SetTransparency(const Standard_Real aValue=5.99999999999999977795539507496869191527366638184e-1);
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
	return $self->HashCode(LONG_MAX);
	}
};
%extend TPrsStd_AISPresentation {
	~TPrsStd_AISPresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TPrsStd_AISPresentation\n");}
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
	return $self->HashCode(LONG_MAX);
	}
};
%extend TPrsStd_Driver {
	~TPrsStd_Driver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TPrsStd_Driver\n");}
	}
};

%nodefaultctor TPrsStd_NamedShapeDriver;
class TPrsStd_NamedShapeDriver : public TPrsStd_Driver {
	public:
		%feature("autodoc", "1");
		TPrsStd_NamedShapeDriver();
		%feature("autodoc", "1");
		virtual		Standard_Boolean Update(const TDF_Label &aLabel, Handle_AIS_InteractiveObject & anAISObject);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TPrsStd_NamedShapeDriver {
	Handle_TPrsStd_NamedShapeDriver GetHandle() {
	return *(Handle_TPrsStd_NamedShapeDriver*) &$self;
	}
};
%extend TPrsStd_NamedShapeDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(LONG_MAX);
	}
};
%extend TPrsStd_NamedShapeDriver {
	~TPrsStd_NamedShapeDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TPrsStd_NamedShapeDriver\n");}
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
%extend TPrsStd_DataMapIteratorOfDataMapOfGUIDDriver {
	~TPrsStd_DataMapIteratorOfDataMapOfGUIDDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TPrsStd_DataMapIteratorOfDataMapOfGUIDDriver\n");}
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
	return $self->HashCode(LONG_MAX);
	}
};
%extend TPrsStd_PointDriver {
	~TPrsStd_PointDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TPrsStd_PointDriver\n");}
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
	return $self->HashCode(LONG_MAX);
	}
};
%extend TPrsStd_GeometryDriver {
	~TPrsStd_GeometryDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TPrsStd_GeometryDriver\n");}
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
	return $self->HashCode(LONG_MAX);
	}
};
%extend TPrsStd_AxisDriver {
	~TPrsStd_AxisDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TPrsStd_AxisDriver\n");}
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
	return $self->HashCode(LONG_MAX);
	}
};
%extend TPrsStd_PlaneDriver {
	~TPrsStd_PlaneDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TPrsStd_PlaneDriver\n");}
	}
};

%nodefaultctor TPrsStd_AISViewer;
class TPrsStd_AISViewer : public TDF_Attribute {
	public:
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		Standard_Boolean Has(const TDF_Label &acces);
		%feature("autodoc", "1");
		Handle_TPrsStd_AISViewer New(const TDF_Label &access, const Handle_AIS_InteractiveContext &selector);
		%feature("autodoc", "1");
		Handle_TPrsStd_AISViewer New(const TDF_Label &acces, const Handle_V3d_Viewer &viewer);
		%feature("autodoc", "1");
		Standard_Boolean Find(const TDF_Label &acces, Handle_TPrsStd_AISViewer & A);
		%feature("autodoc", "1");
		Standard_Boolean Find(const TDF_Label &acces, Handle_AIS_InteractiveContext & IC);
		%feature("autodoc", "1");
		Standard_Boolean Find(const TDF_Label &acces, Handle_V3d_Viewer & V);
		%feature("autodoc", "1");
		void Update(const TDF_Label &acces);
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
	return $self->HashCode(LONG_MAX);
	}
};
%extend TPrsStd_AISViewer {
	~TPrsStd_AISViewer() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TPrsStd_AISViewer\n");}
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
	return $self->HashCode(LONG_MAX);
	}
};
%extend TPrsStd_ConstraintDriver {
	~TPrsStd_ConstraintDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TPrsStd_ConstraintDriver\n");}
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
	return $self->HashCode(LONG_MAX);
	}
};
%extend TPrsStd_DataMapNodeOfDataMapOfGUIDDriver {
	~TPrsStd_DataMapNodeOfDataMapOfGUIDDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TPrsStd_DataMapNodeOfDataMapOfGUIDDriver\n");}
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

};
%extend TPrsStd_DataMapOfGUIDDriver {
	~TPrsStd_DataMapOfGUIDDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TPrsStd_DataMapOfGUIDDriver\n");}
	}
};

%nodefaultctor TPrsStd_DriverTable;
class TPrsStd_DriverTable : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TPrsStd_DriverTable Get();
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
	return $self->HashCode(LONG_MAX);
	}
};
%extend TPrsStd_DriverTable {
	~TPrsStd_DriverTable() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of TPrsStd_DriverTable\n");}
	}
};