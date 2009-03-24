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
%module AIS

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
%{#include <cstdlib>%}
%{#include <iostream>%}
%{#include <string>%}
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


%include AIS_dependencies.i


%include AIS_headers.i

typedef AIS_InteractiveContext * AIS_PToContext;
typedef NCollection_BaseCollection<NCollection_TListIterator<Handle_Standard_Transient> > AIS_BaseCollItListTransient;
typedef NCollection_DataMap<Handle_Standard_Transient, NCollection_TListIterator<Handle_Standard_Transient> > AIS_NDataMapOfTransientIteratorOfListTransient;
typedef NCollection_List<Handle_Standard_Transient> AIS_NListTransient;
typedef NCollection_TListIterator<Handle_Standard_Transient> AIS_NListIteratorOfListTransient;

enum AIS_ConnectStatus {
	AIS_CS_None,
	AIS_CS_Connection,
	AIS_CS_Transform,
	AIS_CS_Both,
	};

enum AIS_StatusOfDetection {
	AIS_SOD_Error,
	AIS_SOD_Nothing,
	AIS_SOD_AllBad,
	AIS_SOD_Selected,
	AIS_SOD_OnlyOneDetected,
	AIS_SOD_OnlyOneGood,
	AIS_SOD_SeveralGood,
	};

enum AIS_StatusOfPick {
	AIS_SOP_Error,
	AIS_SOP_NothingSelected,
	AIS_SOP_Removed,
	AIS_SOP_OneSelected,
	AIS_SOP_SeveralSelected,
	};

enum AIS_TypeOfAxis {
	AIS_TOAX_Unknown,
	AIS_TOAX_XAxis,
	AIS_TOAX_YAxis,
	AIS_TOAX_ZAxis,
	};

enum AIS_TypeOfAttribute {
	AIS_TOA_Line,
	AIS_TOA_Angle,
	AIS_TOA_Wire,
	AIS_TOA_Plane,
	AIS_TOA_Vector,
	AIS_TOA_UIso,
	AIS_TOA_VIso,
	AIS_TOA_Free,
	AIS_TOA_UnFree,
	AIS_TOA_Section,
	AIS_TOA_Hidden,
	AIS_TOA_Seen,
	AIS_TOA_FirstAxis,
	AIS_TOA_SecondAxis,
	AIS_TOA_ThirdAxis,
	};

enum AIS_KindOfDimension {
	AIS_KOD_NONE,
	AIS_KOD_LENGTH,
	AIS_KOD_PLANEANGLE,
	AIS_KOD_SOLIDANGLE,
	AIS_KOD_AREA,
	AIS_KOD_VOLUME,
	AIS_KOD_MASS,
	AIS_KOD_TIME,
	AIS_KOD_RADIUS,
	AIS_KOD_DIAMETER,
	AIS_KOD_CHAMF2D,
	AIS_KOD_CHAMF3D,
	AIS_KOD_OFFSET,
	AIS_KOD_ELLIPSERADIUS,
	};

enum AIS_SelectStatus {
	AIS_SS_Added,
	AIS_SS_Removed,
	AIS_SS_NotDone,
	};

enum AIS_KindOfSurface {
	AIS_KOS_Plane,
	AIS_KOS_Cylinder,
	AIS_KOS_Cone,
	AIS_KOS_Sphere,
	AIS_KOS_Torus,
	AIS_KOS_Revolution,
	AIS_KOS_Extrusion,
	AIS_KOS_OtherSurface,
	};

enum AIS_StandardDatum {
	AIS_SD_None,
	AIS_SD_Point,
	AIS_SD_Axis,
	AIS_SD_Trihedron,
	AIS_SD_PlaneTrihedron,
	AIS_SD_Line,
	AIS_SD_Circle,
	AIS_SD_Plane,
	};

enum AIS_DisplayMode {
	AIS_WireFrame,
	AIS_Shaded,
	AIS_QuickHLR,
	AIS_ExactHLR,
	};

enum AIS_TypeOfPlane {
	AIS_TOPL_Unknown,
	AIS_TOPL_XYPlane,
	AIS_TOPL_XZPlane,
	AIS_TOPL_YZPlane,
	};

enum AIS_TypeOfDist {
	AIS_TOD_Unknown,
	AIS_TOD_Horizontal,
	AIS_TOD_Vertical,
	};

enum AIS_ClearMode {
	AIS_CM_All,
	AIS_CM_Interactive,
	AIS_CM_Filters,
	AIS_CM_StandardModes,
	AIS_CM_TemporaryShapePrs,
	};

enum AIS_KindOfUnit {
	AIS_TOU_LENGTH,
	AIS_TOU_SURFACE,
	AIS_TOU_VOLUME,
	AIS_TOU_PLANE_ANGLE,
	AIS_TOU_SOLID_ANGLE,
	AIS_TOU_MASS,
	AIS_TOU_FORCE,
	AIS_TOU_TIME,
	};

enum AIS_KindOfInteractive {
	AIS_KOI_None,
	AIS_KOI_Datum,
	AIS_KOI_Shape,
	AIS_KOI_Object,
	AIS_KOI_Relation,
	};

enum AIS_TypeOfIso {
	AIS_TOI_IsoU,
	AIS_TOI_IsoV,
	AIS_TOI_Both,
	};

enum AIS_DisplayStatus {
	AIS_DS_Displayed,
	AIS_DS_Erased,
	AIS_DS_FullErased,
	AIS_DS_Temporary,
	AIS_DS_None,
	};



%nodefaultctor Handle_AIS_SequenceNodeOfSequenceOfInteractive;
class Handle_AIS_SequenceNodeOfSequenceOfInteractive : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_AIS_SequenceNodeOfSequenceOfInteractive();
		%feature("autodoc", "1");
		Handle_AIS_SequenceNodeOfSequenceOfInteractive(const Handle_AIS_SequenceNodeOfSequenceOfInteractive &aHandle);
		%feature("autodoc", "1");
		Handle_AIS_SequenceNodeOfSequenceOfInteractive(const AIS_SequenceNodeOfSequenceOfInteractive *anItem);
		%feature("autodoc", "1");
		Handle_AIS_SequenceNodeOfSequenceOfInteractive const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AIS_SequenceNodeOfSequenceOfInteractive {
	AIS_SequenceNodeOfSequenceOfInteractive* GetObject() {
	return (AIS_SequenceNodeOfSequenceOfInteractive*)$self->Access();
	}
};
%extend Handle_AIS_SequenceNodeOfSequenceOfInteractive {
	~Handle_AIS_SequenceNodeOfSequenceOfInteractive() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_AIS_SequenceNodeOfSequenceOfInteractive\n");}
	}
};

%nodefaultctor Handle_AIS_C0RegularityFilter;
class Handle_AIS_C0RegularityFilter : public Handle_SelectMgr_Filter {
	public:
		%feature("autodoc", "1");
		Handle_AIS_C0RegularityFilter();
		%feature("autodoc", "1");
		Handle_AIS_C0RegularityFilter(const Handle_AIS_C0RegularityFilter &aHandle);
		%feature("autodoc", "1");
		Handle_AIS_C0RegularityFilter(const AIS_C0RegularityFilter *anItem);
		%feature("autodoc", "1");
		Handle_AIS_C0RegularityFilter const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AIS_C0RegularityFilter {
	AIS_C0RegularityFilter* GetObject() {
	return (AIS_C0RegularityFilter*)$self->Access();
	}
};
%extend Handle_AIS_C0RegularityFilter {
	~Handle_AIS_C0RegularityFilter() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_AIS_C0RegularityFilter\n");}
	}
};

%nodefaultctor Handle_AIS_InteractiveObject;
class Handle_AIS_InteractiveObject : public Handle_SelectMgr_SelectableObject {
	public:
		%feature("autodoc", "1");
		Handle_AIS_InteractiveObject();
		%feature("autodoc", "1");
		Handle_AIS_InteractiveObject(const Handle_AIS_InteractiveObject &aHandle);
		%feature("autodoc", "1");
		Handle_AIS_InteractiveObject(const AIS_InteractiveObject *anItem);
		%feature("autodoc", "1");
		Handle_AIS_InteractiveObject const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AIS_InteractiveObject {
	AIS_InteractiveObject* GetObject() {
	return (AIS_InteractiveObject*)$self->Access();
	}
};
%extend Handle_AIS_InteractiveObject {
	~Handle_AIS_InteractiveObject() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_AIS_InteractiveObject\n");}
	}
};

%nodefaultctor Handle_AIS_Relation;
class Handle_AIS_Relation : public Handle_AIS_InteractiveObject {
	public:
		%feature("autodoc", "1");
		Handle_AIS_Relation();
		%feature("autodoc", "1");
		Handle_AIS_Relation(const Handle_AIS_Relation &aHandle);
		%feature("autodoc", "1");
		Handle_AIS_Relation(const AIS_Relation *anItem);
		%feature("autodoc", "1");
		Handle_AIS_Relation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AIS_Relation {
	AIS_Relation* GetObject() {
	return (AIS_Relation*)$self->Access();
	}
};
%extend Handle_AIS_Relation {
	~Handle_AIS_Relation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_AIS_Relation\n");}
	}
};

%nodefaultctor Handle_AIS_OffsetDimension;
class Handle_AIS_OffsetDimension : public Handle_AIS_Relation {
	public:
		%feature("autodoc", "1");
		Handle_AIS_OffsetDimension();
		%feature("autodoc", "1");
		Handle_AIS_OffsetDimension(const Handle_AIS_OffsetDimension &aHandle);
		%feature("autodoc", "1");
		Handle_AIS_OffsetDimension(const AIS_OffsetDimension *anItem);
		%feature("autodoc", "1");
		Handle_AIS_OffsetDimension const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AIS_OffsetDimension {
	AIS_OffsetDimension* GetObject() {
	return (AIS_OffsetDimension*)$self->Access();
	}
};
%extend Handle_AIS_OffsetDimension {
	~Handle_AIS_OffsetDimension() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_AIS_OffsetDimension\n");}
	}
};

%nodefaultctor Handle_AIS_MidPointRelation;
class Handle_AIS_MidPointRelation : public Handle_AIS_Relation {
	public:
		%feature("autodoc", "1");
		Handle_AIS_MidPointRelation();
		%feature("autodoc", "1");
		Handle_AIS_MidPointRelation(const Handle_AIS_MidPointRelation &aHandle);
		%feature("autodoc", "1");
		Handle_AIS_MidPointRelation(const AIS_MidPointRelation *anItem);
		%feature("autodoc", "1");
		Handle_AIS_MidPointRelation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AIS_MidPointRelation {
	AIS_MidPointRelation* GetObject() {
	return (AIS_MidPointRelation*)$self->Access();
	}
};
%extend Handle_AIS_MidPointRelation {
	~Handle_AIS_MidPointRelation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_AIS_MidPointRelation\n");}
	}
};

%nodefaultctor Handle_AIS_DiameterDimension;
class Handle_AIS_DiameterDimension : public Handle_AIS_Relation {
	public:
		%feature("autodoc", "1");
		Handle_AIS_DiameterDimension();
		%feature("autodoc", "1");
		Handle_AIS_DiameterDimension(const Handle_AIS_DiameterDimension &aHandle);
		%feature("autodoc", "1");
		Handle_AIS_DiameterDimension(const AIS_DiameterDimension *anItem);
		%feature("autodoc", "1");
		Handle_AIS_DiameterDimension const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AIS_DiameterDimension {
	AIS_DiameterDimension* GetObject() {
	return (AIS_DiameterDimension*)$self->Access();
	}
};
%extend Handle_AIS_DiameterDimension {
	~Handle_AIS_DiameterDimension() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_AIS_DiameterDimension\n");}
	}
};

%nodefaultctor Handle_AIS_MultipleConnectedInteractive;
class Handle_AIS_MultipleConnectedInteractive : public Handle_AIS_InteractiveObject {
	public:
		%feature("autodoc", "1");
		Handle_AIS_MultipleConnectedInteractive();
		%feature("autodoc", "1");
		Handle_AIS_MultipleConnectedInteractive(const Handle_AIS_MultipleConnectedInteractive &aHandle);
		%feature("autodoc", "1");
		Handle_AIS_MultipleConnectedInteractive(const AIS_MultipleConnectedInteractive *anItem);
		%feature("autodoc", "1");
		Handle_AIS_MultipleConnectedInteractive const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AIS_MultipleConnectedInteractive {
	AIS_MultipleConnectedInteractive* GetObject() {
	return (AIS_MultipleConnectedInteractive*)$self->Access();
	}
};
%extend Handle_AIS_MultipleConnectedInteractive {
	~Handle_AIS_MultipleConnectedInteractive() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_AIS_MultipleConnectedInteractive\n");}
	}
};

%nodefaultctor Handle_AIS_LengthDimension;
class Handle_AIS_LengthDimension : public Handle_AIS_Relation {
	public:
		%feature("autodoc", "1");
		Handle_AIS_LengthDimension();
		%feature("autodoc", "1");
		Handle_AIS_LengthDimension(const Handle_AIS_LengthDimension &aHandle);
		%feature("autodoc", "1");
		Handle_AIS_LengthDimension(const AIS_LengthDimension *anItem);
		%feature("autodoc", "1");
		Handle_AIS_LengthDimension const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AIS_LengthDimension {
	AIS_LengthDimension* GetObject() {
	return (AIS_LengthDimension*)$self->Access();
	}
};
%extend Handle_AIS_LengthDimension {
	~Handle_AIS_LengthDimension() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_AIS_LengthDimension\n");}
	}
};

%nodefaultctor Handle_AIS_Point;
class Handle_AIS_Point : public Handle_AIS_InteractiveObject {
	public:
		%feature("autodoc", "1");
		Handle_AIS_Point();
		%feature("autodoc", "1");
		Handle_AIS_Point(const Handle_AIS_Point &aHandle);
		%feature("autodoc", "1");
		Handle_AIS_Point(const AIS_Point *anItem);
		%feature("autodoc", "1");
		Handle_AIS_Point const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AIS_Point {
	AIS_Point* GetObject() {
	return (AIS_Point*)$self->Access();
	}
};
%extend Handle_AIS_Point {
	~Handle_AIS_Point() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_AIS_Point\n");}
	}
};

%nodefaultctor Handle_AIS_LocalContext;
class Handle_AIS_LocalContext : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_AIS_LocalContext();
		%feature("autodoc", "1");
		Handle_AIS_LocalContext(const Handle_AIS_LocalContext &aHandle);
		%feature("autodoc", "1");
		Handle_AIS_LocalContext(const AIS_LocalContext *anItem);
		%feature("autodoc", "1");
		Handle_AIS_LocalContext const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AIS_LocalContext {
	AIS_LocalContext* GetObject() {
	return (AIS_LocalContext*)$self->Access();
	}
};
%extend Handle_AIS_LocalContext {
	~Handle_AIS_LocalContext() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_AIS_LocalContext\n");}
	}
};

%nodefaultctor Handle_AIS_DataMapNodeOfDataMapofIntegerListOfinteractive;
class Handle_AIS_DataMapNodeOfDataMapofIntegerListOfinteractive : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_AIS_DataMapNodeOfDataMapofIntegerListOfinteractive();
		%feature("autodoc", "1");
		Handle_AIS_DataMapNodeOfDataMapofIntegerListOfinteractive(const Handle_AIS_DataMapNodeOfDataMapofIntegerListOfinteractive &aHandle);
		%feature("autodoc", "1");
		Handle_AIS_DataMapNodeOfDataMapofIntegerListOfinteractive(const AIS_DataMapNodeOfDataMapofIntegerListOfinteractive *anItem);
		%feature("autodoc", "1");
		Handle_AIS_DataMapNodeOfDataMapofIntegerListOfinteractive const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AIS_DataMapNodeOfDataMapofIntegerListOfinteractive {
	AIS_DataMapNodeOfDataMapofIntegerListOfinteractive* GetObject() {
	return (AIS_DataMapNodeOfDataMapofIntegerListOfinteractive*)$self->Access();
	}
};
%extend Handle_AIS_DataMapNodeOfDataMapofIntegerListOfinteractive {
	~Handle_AIS_DataMapNodeOfDataMapofIntegerListOfinteractive() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_AIS_DataMapNodeOfDataMapofIntegerListOfinteractive\n");}
	}
};

%nodefaultctor Handle_AIS_StdMapNodeOfMapOfInteractive;
class Handle_AIS_StdMapNodeOfMapOfInteractive : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_AIS_StdMapNodeOfMapOfInteractive();
		%feature("autodoc", "1");
		Handle_AIS_StdMapNodeOfMapOfInteractive(const Handle_AIS_StdMapNodeOfMapOfInteractive &aHandle);
		%feature("autodoc", "1");
		Handle_AIS_StdMapNodeOfMapOfInteractive(const AIS_StdMapNodeOfMapOfInteractive *anItem);
		%feature("autodoc", "1");
		Handle_AIS_StdMapNodeOfMapOfInteractive const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AIS_StdMapNodeOfMapOfInteractive {
	AIS_StdMapNodeOfMapOfInteractive* GetObject() {
	return (AIS_StdMapNodeOfMapOfInteractive*)$self->Access();
	}
};
%extend Handle_AIS_StdMapNodeOfMapOfInteractive {
	~Handle_AIS_StdMapNodeOfMapOfInteractive() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_AIS_StdMapNodeOfMapOfInteractive\n");}
	}
};

%nodefaultctor Handle_AIS_Drawer;
class Handle_AIS_Drawer : public Handle_Prs3d_Drawer {
	public:
		%feature("autodoc", "1");
		Handle_AIS_Drawer();
		%feature("autodoc", "1");
		Handle_AIS_Drawer(const Handle_AIS_Drawer &aHandle);
		%feature("autodoc", "1");
		Handle_AIS_Drawer(const AIS_Drawer *anItem);
		%feature("autodoc", "1");
		Handle_AIS_Drawer const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AIS_Drawer {
	AIS_Drawer* GetObject() {
	return (AIS_Drawer*)$self->Access();
	}
};
%extend Handle_AIS_Drawer {
	~Handle_AIS_Drawer() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_AIS_Drawer\n");}
	}
};

%nodefaultctor Handle_AIS_EqualDistanceRelation;
class Handle_AIS_EqualDistanceRelation : public Handle_AIS_Relation {
	public:
		%feature("autodoc", "1");
		Handle_AIS_EqualDistanceRelation();
		%feature("autodoc", "1");
		Handle_AIS_EqualDistanceRelation(const Handle_AIS_EqualDistanceRelation &aHandle);
		%feature("autodoc", "1");
		Handle_AIS_EqualDistanceRelation(const AIS_EqualDistanceRelation *anItem);
		%feature("autodoc", "1");
		Handle_AIS_EqualDistanceRelation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AIS_EqualDistanceRelation {
	AIS_EqualDistanceRelation* GetObject() {
	return (AIS_EqualDistanceRelation*)$self->Access();
	}
};
%extend Handle_AIS_EqualDistanceRelation {
	~Handle_AIS_EqualDistanceRelation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_AIS_EqualDistanceRelation\n");}
	}
};

%nodefaultctor Handle_AIS_LocalStatus;
class Handle_AIS_LocalStatus : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_AIS_LocalStatus();
		%feature("autodoc", "1");
		Handle_AIS_LocalStatus(const Handle_AIS_LocalStatus &aHandle);
		%feature("autodoc", "1");
		Handle_AIS_LocalStatus(const AIS_LocalStatus *anItem);
		%feature("autodoc", "1");
		Handle_AIS_LocalStatus const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AIS_LocalStatus {
	AIS_LocalStatus* GetObject() {
	return (AIS_LocalStatus*)$self->Access();
	}
};
%extend Handle_AIS_LocalStatus {
	~Handle_AIS_LocalStatus() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_AIS_LocalStatus\n");}
	}
};

%nodefaultctor Handle_AIS_ParallelRelation;
class Handle_AIS_ParallelRelation : public Handle_AIS_Relation {
	public:
		%feature("autodoc", "1");
		Handle_AIS_ParallelRelation();
		%feature("autodoc", "1");
		Handle_AIS_ParallelRelation(const Handle_AIS_ParallelRelation &aHandle);
		%feature("autodoc", "1");
		Handle_AIS_ParallelRelation(const AIS_ParallelRelation *anItem);
		%feature("autodoc", "1");
		Handle_AIS_ParallelRelation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AIS_ParallelRelation {
	AIS_ParallelRelation* GetObject() {
	return (AIS_ParallelRelation*)$self->Access();
	}
};
%extend Handle_AIS_ParallelRelation {
	~Handle_AIS_ParallelRelation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_AIS_ParallelRelation\n");}
	}
};

%nodefaultctor Handle_AIS_ExclusionFilter;
class Handle_AIS_ExclusionFilter : public Handle_SelectMgr_Filter {
	public:
		%feature("autodoc", "1");
		Handle_AIS_ExclusionFilter();
		%feature("autodoc", "1");
		Handle_AIS_ExclusionFilter(const Handle_AIS_ExclusionFilter &aHandle);
		%feature("autodoc", "1");
		Handle_AIS_ExclusionFilter(const AIS_ExclusionFilter *anItem);
		%feature("autodoc", "1");
		Handle_AIS_ExclusionFilter const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AIS_ExclusionFilter {
	AIS_ExclusionFilter* GetObject() {
	return (AIS_ExclusionFilter*)$self->Access();
	}
};
%extend Handle_AIS_ExclusionFilter {
	~Handle_AIS_ExclusionFilter() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_AIS_ExclusionFilter\n");}
	}
};

%nodefaultctor Handle_AIS_ConnectedInteractive;
class Handle_AIS_ConnectedInteractive : public Handle_AIS_InteractiveObject {
	public:
		%feature("autodoc", "1");
		Handle_AIS_ConnectedInteractive();
		%feature("autodoc", "1");
		Handle_AIS_ConnectedInteractive(const Handle_AIS_ConnectedInteractive &aHandle);
		%feature("autodoc", "1");
		Handle_AIS_ConnectedInteractive(const AIS_ConnectedInteractive *anItem);
		%feature("autodoc", "1");
		Handle_AIS_ConnectedInteractive const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AIS_ConnectedInteractive {
	AIS_ConnectedInteractive* GetObject() {
	return (AIS_ConnectedInteractive*)$self->Access();
	}
};
%extend Handle_AIS_ConnectedInteractive {
	~Handle_AIS_ConnectedInteractive() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_AIS_ConnectedInteractive\n");}
	}
};

%nodefaultctor Handle_AIS_ConnectedShape;
class Handle_AIS_ConnectedShape : public Handle_AIS_ConnectedInteractive {
	public:
		%feature("autodoc", "1");
		Handle_AIS_ConnectedShape();
		%feature("autodoc", "1");
		Handle_AIS_ConnectedShape(const Handle_AIS_ConnectedShape &aHandle);
		%feature("autodoc", "1");
		Handle_AIS_ConnectedShape(const AIS_ConnectedShape *anItem);
		%feature("autodoc", "1");
		Handle_AIS_ConnectedShape const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AIS_ConnectedShape {
	AIS_ConnectedShape* GetObject() {
	return (AIS_ConnectedShape*)$self->Access();
	}
};
%extend Handle_AIS_ConnectedShape {
	~Handle_AIS_ConnectedShape() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_AIS_ConnectedShape\n");}
	}
};

%nodefaultctor Handle_AIS_Chamf3dDimension;
class Handle_AIS_Chamf3dDimension : public Handle_AIS_Relation {
	public:
		%feature("autodoc", "1");
		Handle_AIS_Chamf3dDimension();
		%feature("autodoc", "1");
		Handle_AIS_Chamf3dDimension(const Handle_AIS_Chamf3dDimension &aHandle);
		%feature("autodoc", "1");
		Handle_AIS_Chamf3dDimension(const AIS_Chamf3dDimension *anItem);
		%feature("autodoc", "1");
		Handle_AIS_Chamf3dDimension const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AIS_Chamf3dDimension {
	AIS_Chamf3dDimension* GetObject() {
	return (AIS_Chamf3dDimension*)$self->Access();
	}
};
%extend Handle_AIS_Chamf3dDimension {
	~Handle_AIS_Chamf3dDimension() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_AIS_Chamf3dDimension\n");}
	}
};

%nodefaultctor Handle_AIS_Trihedron;
class Handle_AIS_Trihedron : public Handle_AIS_InteractiveObject {
	public:
		%feature("autodoc", "1");
		Handle_AIS_Trihedron();
		%feature("autodoc", "1");
		Handle_AIS_Trihedron(const Handle_AIS_Trihedron &aHandle);
		%feature("autodoc", "1");
		Handle_AIS_Trihedron(const AIS_Trihedron *anItem);
		%feature("autodoc", "1");
		Handle_AIS_Trihedron const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AIS_Trihedron {
	AIS_Trihedron* GetObject() {
	return (AIS_Trihedron*)$self->Access();
	}
};
%extend Handle_AIS_Trihedron {
	~Handle_AIS_Trihedron() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_AIS_Trihedron\n");}
	}
};

%nodefaultctor Handle_AIS_DataMapNodeOfDataMapOfILC;
class Handle_AIS_DataMapNodeOfDataMapOfILC : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_AIS_DataMapNodeOfDataMapOfILC();
		%feature("autodoc", "1");
		Handle_AIS_DataMapNodeOfDataMapOfILC(const Handle_AIS_DataMapNodeOfDataMapOfILC &aHandle);
		%feature("autodoc", "1");
		Handle_AIS_DataMapNodeOfDataMapOfILC(const AIS_DataMapNodeOfDataMapOfILC *anItem);
		%feature("autodoc", "1");
		Handle_AIS_DataMapNodeOfDataMapOfILC const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AIS_DataMapNodeOfDataMapOfILC {
	AIS_DataMapNodeOfDataMapOfILC* GetObject() {
	return (AIS_DataMapNodeOfDataMapOfILC*)$self->Access();
	}
};
%extend Handle_AIS_DataMapNodeOfDataMapOfILC {
	~Handle_AIS_DataMapNodeOfDataMapOfILC() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_AIS_DataMapNodeOfDataMapOfILC\n");}
	}
};

%nodefaultctor Handle_AIS_RadiusDimension;
class Handle_AIS_RadiusDimension : public Handle_AIS_Relation {
	public:
		%feature("autodoc", "1");
		Handle_AIS_RadiusDimension();
		%feature("autodoc", "1");
		Handle_AIS_RadiusDimension(const Handle_AIS_RadiusDimension &aHandle);
		%feature("autodoc", "1");
		Handle_AIS_RadiusDimension(const AIS_RadiusDimension *anItem);
		%feature("autodoc", "1");
		Handle_AIS_RadiusDimension const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AIS_RadiusDimension {
	AIS_RadiusDimension* GetObject() {
	return (AIS_RadiusDimension*)$self->Access();
	}
};
%extend Handle_AIS_RadiusDimension {
	~Handle_AIS_RadiusDimension() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_AIS_RadiusDimension\n");}
	}
};

%nodefaultctor Handle_AIS_AngleDimension;
class Handle_AIS_AngleDimension : public Handle_AIS_Relation {
	public:
		%feature("autodoc", "1");
		Handle_AIS_AngleDimension();
		%feature("autodoc", "1");
		Handle_AIS_AngleDimension(const Handle_AIS_AngleDimension &aHandle);
		%feature("autodoc", "1");
		Handle_AIS_AngleDimension(const AIS_AngleDimension *anItem);
		%feature("autodoc", "1");
		Handle_AIS_AngleDimension const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AIS_AngleDimension {
	AIS_AngleDimension* GetObject() {
	return (AIS_AngleDimension*)$self->Access();
	}
};
%extend Handle_AIS_AngleDimension {
	~Handle_AIS_AngleDimension() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_AIS_AngleDimension\n");}
	}
};

%nodefaultctor Handle_AIS_SymmetricRelation;
class Handle_AIS_SymmetricRelation : public Handle_AIS_Relation {
	public:
		%feature("autodoc", "1");
		Handle_AIS_SymmetricRelation();
		%feature("autodoc", "1");
		Handle_AIS_SymmetricRelation(const Handle_AIS_SymmetricRelation &aHandle);
		%feature("autodoc", "1");
		Handle_AIS_SymmetricRelation(const AIS_SymmetricRelation *anItem);
		%feature("autodoc", "1");
		Handle_AIS_SymmetricRelation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AIS_SymmetricRelation {
	AIS_SymmetricRelation* GetObject() {
	return (AIS_SymmetricRelation*)$self->Access();
	}
};
%extend Handle_AIS_SymmetricRelation {
	~Handle_AIS_SymmetricRelation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_AIS_SymmetricRelation\n");}
	}
};

%nodefaultctor Handle_AIS_BadEdgeFilter;
class Handle_AIS_BadEdgeFilter : public Handle_SelectMgr_Filter {
	public:
		%feature("autodoc", "1");
		Handle_AIS_BadEdgeFilter();
		%feature("autodoc", "1");
		Handle_AIS_BadEdgeFilter(const Handle_AIS_BadEdgeFilter &aHandle);
		%feature("autodoc", "1");
		Handle_AIS_BadEdgeFilter(const AIS_BadEdgeFilter *anItem);
		%feature("autodoc", "1");
		Handle_AIS_BadEdgeFilter const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AIS_BadEdgeFilter {
	AIS_BadEdgeFilter* GetObject() {
	return (AIS_BadEdgeFilter*)$self->Access();
	}
};
%extend Handle_AIS_BadEdgeFilter {
	~Handle_AIS_BadEdgeFilter() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_AIS_BadEdgeFilter\n");}
	}
};

%nodefaultctor Handle_AIS_Circle;
class Handle_AIS_Circle : public Handle_AIS_InteractiveObject {
	public:
		%feature("autodoc", "1");
		Handle_AIS_Circle();
		%feature("autodoc", "1");
		Handle_AIS_Circle(const Handle_AIS_Circle &aHandle);
		%feature("autodoc", "1");
		Handle_AIS_Circle(const AIS_Circle *anItem);
		%feature("autodoc", "1");
		Handle_AIS_Circle const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AIS_Circle {
	AIS_Circle* GetObject() {
	return (AIS_Circle*)$self->Access();
	}
};
%extend Handle_AIS_Circle {
	~Handle_AIS_Circle() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_AIS_Circle\n");}
	}
};

%nodefaultctor Handle_AIS_Shape;
class Handle_AIS_Shape : public Handle_AIS_InteractiveObject {
	public:
		%feature("autodoc", "1");
		Handle_AIS_Shape();
		%feature("autodoc", "1");
		Handle_AIS_Shape(const Handle_AIS_Shape &aHandle);
		%feature("autodoc", "1");
		Handle_AIS_Shape(const AIS_Shape *anItem);
		%feature("autodoc", "1");
		Handle_AIS_Shape const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AIS_Shape {
	AIS_Shape* GetObject() {
	return (AIS_Shape*)$self->Access();
	}
};
%extend Handle_AIS_Shape {
	~Handle_AIS_Shape() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_AIS_Shape\n");}
	}
};

%nodefaultctor Handle_AIS_TexturedShape;
class Handle_AIS_TexturedShape : public Handle_AIS_Shape {
	public:
		%feature("autodoc", "1");
		Handle_AIS_TexturedShape();
		%feature("autodoc", "1");
		Handle_AIS_TexturedShape(const Handle_AIS_TexturedShape &aHandle);
		%feature("autodoc", "1");
		Handle_AIS_TexturedShape(const AIS_TexturedShape *anItem);
		%feature("autodoc", "1");
		Handle_AIS_TexturedShape const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AIS_TexturedShape {
	AIS_TexturedShape* GetObject() {
	return (AIS_TexturedShape*)$self->Access();
	}
};
%extend Handle_AIS_TexturedShape {
	~Handle_AIS_TexturedShape() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_AIS_TexturedShape\n");}
	}
};

%nodefaultctor Handle_AIS_EllipseRadiusDimension;
class Handle_AIS_EllipseRadiusDimension : public Handle_AIS_Relation {
	public:
		%feature("autodoc", "1");
		Handle_AIS_EllipseRadiusDimension();
		%feature("autodoc", "1");
		Handle_AIS_EllipseRadiusDimension(const Handle_AIS_EllipseRadiusDimension &aHandle);
		%feature("autodoc", "1");
		Handle_AIS_EllipseRadiusDimension(const AIS_EllipseRadiusDimension *anItem);
		%feature("autodoc", "1");
		Handle_AIS_EllipseRadiusDimension const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AIS_EllipseRadiusDimension {
	AIS_EllipseRadiusDimension* GetObject() {
	return (AIS_EllipseRadiusDimension*)$self->Access();
	}
};
%extend Handle_AIS_EllipseRadiusDimension {
	~Handle_AIS_EllipseRadiusDimension() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_AIS_EllipseRadiusDimension\n");}
	}
};

%nodefaultctor Handle_AIS_MinRadiusDimension;
class Handle_AIS_MinRadiusDimension : public Handle_AIS_EllipseRadiusDimension {
	public:
		%feature("autodoc", "1");
		Handle_AIS_MinRadiusDimension();
		%feature("autodoc", "1");
		Handle_AIS_MinRadiusDimension(const Handle_AIS_MinRadiusDimension &aHandle);
		%feature("autodoc", "1");
		Handle_AIS_MinRadiusDimension(const AIS_MinRadiusDimension *anItem);
		%feature("autodoc", "1");
		Handle_AIS_MinRadiusDimension const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AIS_MinRadiusDimension {
	AIS_MinRadiusDimension* GetObject() {
	return (AIS_MinRadiusDimension*)$self->Access();
	}
};
%extend Handle_AIS_MinRadiusDimension {
	~Handle_AIS_MinRadiusDimension() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_AIS_MinRadiusDimension\n");}
	}
};

%nodefaultctor Handle_AIS_MultipleConnectedShape;
class Handle_AIS_MultipleConnectedShape : public Handle_AIS_MultipleConnectedInteractive {
	public:
		%feature("autodoc", "1");
		Handle_AIS_MultipleConnectedShape();
		%feature("autodoc", "1");
		Handle_AIS_MultipleConnectedShape(const Handle_AIS_MultipleConnectedShape &aHandle);
		%feature("autodoc", "1");
		Handle_AIS_MultipleConnectedShape(const AIS_MultipleConnectedShape *anItem);
		%feature("autodoc", "1");
		Handle_AIS_MultipleConnectedShape const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AIS_MultipleConnectedShape {
	AIS_MultipleConnectedShape* GetObject() {
	return (AIS_MultipleConnectedShape*)$self->Access();
	}
};
%extend Handle_AIS_MultipleConnectedShape {
	~Handle_AIS_MultipleConnectedShape() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_AIS_MultipleConnectedShape\n");}
	}
};

%nodefaultctor Handle_AIS_DataMapNodeOfDataMapOfTransientTransient;
class Handle_AIS_DataMapNodeOfDataMapOfTransientTransient : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_AIS_DataMapNodeOfDataMapOfTransientTransient();
		%feature("autodoc", "1");
		Handle_AIS_DataMapNodeOfDataMapOfTransientTransient(const Handle_AIS_DataMapNodeOfDataMapOfTransientTransient &aHandle);
		%feature("autodoc", "1");
		Handle_AIS_DataMapNodeOfDataMapOfTransientTransient(const AIS_DataMapNodeOfDataMapOfTransientTransient *anItem);
		%feature("autodoc", "1");
		Handle_AIS_DataMapNodeOfDataMapOfTransientTransient const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AIS_DataMapNodeOfDataMapOfTransientTransient {
	AIS_DataMapNodeOfDataMapOfTransientTransient* GetObject() {
	return (AIS_DataMapNodeOfDataMapOfTransientTransient*)$self->Access();
	}
};
%extend Handle_AIS_DataMapNodeOfDataMapOfTransientTransient {
	~Handle_AIS_DataMapNodeOfDataMapOfTransientTransient() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_AIS_DataMapNodeOfDataMapOfTransientTransient\n");}
	}
};

%nodefaultctor Handle_AIS_TangentRelation;
class Handle_AIS_TangentRelation : public Handle_AIS_Relation {
	public:
		%feature("autodoc", "1");
		Handle_AIS_TangentRelation();
		%feature("autodoc", "1");
		Handle_AIS_TangentRelation(const Handle_AIS_TangentRelation &aHandle);
		%feature("autodoc", "1");
		Handle_AIS_TangentRelation(const AIS_TangentRelation *anItem);
		%feature("autodoc", "1");
		Handle_AIS_TangentRelation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AIS_TangentRelation {
	AIS_TangentRelation* GetObject() {
	return (AIS_TangentRelation*)$self->Access();
	}
};
%extend Handle_AIS_TangentRelation {
	~Handle_AIS_TangentRelation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_AIS_TangentRelation\n");}
	}
};

%nodefaultctor Handle_AIS_Selection;
class Handle_AIS_Selection : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_AIS_Selection();
		%feature("autodoc", "1");
		Handle_AIS_Selection(const Handle_AIS_Selection &aHandle);
		%feature("autodoc", "1");
		Handle_AIS_Selection(const AIS_Selection *anItem);
		%feature("autodoc", "1");
		Handle_AIS_Selection const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AIS_Selection {
	AIS_Selection* GetObject() {
	return (AIS_Selection*)$self->Access();
	}
};
%extend Handle_AIS_Selection {
	~Handle_AIS_Selection() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_AIS_Selection\n");}
	}
};

%nodefaultctor Handle_AIS_FixRelation;
class Handle_AIS_FixRelation : public Handle_AIS_Relation {
	public:
		%feature("autodoc", "1");
		Handle_AIS_FixRelation();
		%feature("autodoc", "1");
		Handle_AIS_FixRelation(const Handle_AIS_FixRelation &aHandle);
		%feature("autodoc", "1");
		Handle_AIS_FixRelation(const AIS_FixRelation *anItem);
		%feature("autodoc", "1");
		Handle_AIS_FixRelation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AIS_FixRelation {
	AIS_FixRelation* GetObject() {
	return (AIS_FixRelation*)$self->Access();
	}
};
%extend Handle_AIS_FixRelation {
	~Handle_AIS_FixRelation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_AIS_FixRelation\n");}
	}
};

%nodefaultctor Handle_AIS_TypeFilter;
class Handle_AIS_TypeFilter : public Handle_SelectMgr_Filter {
	public:
		%feature("autodoc", "1");
		Handle_AIS_TypeFilter();
		%feature("autodoc", "1");
		Handle_AIS_TypeFilter(const Handle_AIS_TypeFilter &aHandle);
		%feature("autodoc", "1");
		Handle_AIS_TypeFilter(const AIS_TypeFilter *anItem);
		%feature("autodoc", "1");
		Handle_AIS_TypeFilter const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AIS_TypeFilter {
	AIS_TypeFilter* GetObject() {
	return (AIS_TypeFilter*)$self->Access();
	}
};
%extend Handle_AIS_TypeFilter {
	~Handle_AIS_TypeFilter() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_AIS_TypeFilter\n");}
	}
};

%nodefaultctor Handle_AIS_ConcentricRelation;
class Handle_AIS_ConcentricRelation : public Handle_AIS_Relation {
	public:
		%feature("autodoc", "1");
		Handle_AIS_ConcentricRelation();
		%feature("autodoc", "1");
		Handle_AIS_ConcentricRelation(const Handle_AIS_ConcentricRelation &aHandle);
		%feature("autodoc", "1");
		Handle_AIS_ConcentricRelation(const AIS_ConcentricRelation *anItem);
		%feature("autodoc", "1");
		Handle_AIS_ConcentricRelation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AIS_ConcentricRelation {
	AIS_ConcentricRelation* GetObject() {
	return (AIS_ConcentricRelation*)$self->Access();
	}
};
%extend Handle_AIS_ConcentricRelation {
	~Handle_AIS_ConcentricRelation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_AIS_ConcentricRelation\n");}
	}
};

%nodefaultctor Handle_AIS_IndexedDataMapNodeOfIndexedDataMapOfOwnerPrs;
class Handle_AIS_IndexedDataMapNodeOfIndexedDataMapOfOwnerPrs : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_AIS_IndexedDataMapNodeOfIndexedDataMapOfOwnerPrs();
		%feature("autodoc", "1");
		Handle_AIS_IndexedDataMapNodeOfIndexedDataMapOfOwnerPrs(const Handle_AIS_IndexedDataMapNodeOfIndexedDataMapOfOwnerPrs &aHandle);
		%feature("autodoc", "1");
		Handle_AIS_IndexedDataMapNodeOfIndexedDataMapOfOwnerPrs(const AIS_IndexedDataMapNodeOfIndexedDataMapOfOwnerPrs *anItem);
		%feature("autodoc", "1");
		Handle_AIS_IndexedDataMapNodeOfIndexedDataMapOfOwnerPrs const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AIS_IndexedDataMapNodeOfIndexedDataMapOfOwnerPrs {
	AIS_IndexedDataMapNodeOfIndexedDataMapOfOwnerPrs* GetObject() {
	return (AIS_IndexedDataMapNodeOfIndexedDataMapOfOwnerPrs*)$self->Access();
	}
};
%extend Handle_AIS_IndexedDataMapNodeOfIndexedDataMapOfOwnerPrs {
	~Handle_AIS_IndexedDataMapNodeOfIndexedDataMapOfOwnerPrs() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_AIS_IndexedDataMapNodeOfIndexedDataMapOfOwnerPrs\n");}
	}
};

%nodefaultctor Handle_AIS_Chamf2dDimension;
class Handle_AIS_Chamf2dDimension : public Handle_AIS_Relation {
	public:
		%feature("autodoc", "1");
		Handle_AIS_Chamf2dDimension();
		%feature("autodoc", "1");
		Handle_AIS_Chamf2dDimension(const Handle_AIS_Chamf2dDimension &aHandle);
		%feature("autodoc", "1");
		Handle_AIS_Chamf2dDimension(const AIS_Chamf2dDimension *anItem);
		%feature("autodoc", "1");
		Handle_AIS_Chamf2dDimension const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AIS_Chamf2dDimension {
	AIS_Chamf2dDimension* GetObject() {
	return (AIS_Chamf2dDimension*)$self->Access();
	}
};
%extend Handle_AIS_Chamf2dDimension {
	~Handle_AIS_Chamf2dDimension() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_AIS_Chamf2dDimension\n");}
	}
};

%nodefaultctor Handle_AIS_MaxRadiusDimension;
class Handle_AIS_MaxRadiusDimension : public Handle_AIS_EllipseRadiusDimension {
	public:
		%feature("autodoc", "1");
		Handle_AIS_MaxRadiusDimension();
		%feature("autodoc", "1");
		Handle_AIS_MaxRadiusDimension(const Handle_AIS_MaxRadiusDimension &aHandle);
		%feature("autodoc", "1");
		Handle_AIS_MaxRadiusDimension(const AIS_MaxRadiusDimension *anItem);
		%feature("autodoc", "1");
		Handle_AIS_MaxRadiusDimension const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AIS_MaxRadiusDimension {
	AIS_MaxRadiusDimension* GetObject() {
	return (AIS_MaxRadiusDimension*)$self->Access();
	}
};
%extend Handle_AIS_MaxRadiusDimension {
	~Handle_AIS_MaxRadiusDimension() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_AIS_MaxRadiusDimension\n");}
	}
};

%nodefaultctor Handle_AIS_DataMapNodeOfDataMapOfSelStat;
class Handle_AIS_DataMapNodeOfDataMapOfSelStat : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_AIS_DataMapNodeOfDataMapOfSelStat();
		%feature("autodoc", "1");
		Handle_AIS_DataMapNodeOfDataMapOfSelStat(const Handle_AIS_DataMapNodeOfDataMapOfSelStat &aHandle);
		%feature("autodoc", "1");
		Handle_AIS_DataMapNodeOfDataMapOfSelStat(const AIS_DataMapNodeOfDataMapOfSelStat *anItem);
		%feature("autodoc", "1");
		Handle_AIS_DataMapNodeOfDataMapOfSelStat const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AIS_DataMapNodeOfDataMapOfSelStat {
	AIS_DataMapNodeOfDataMapOfSelStat* GetObject() {
	return (AIS_DataMapNodeOfDataMapOfSelStat*)$self->Access();
	}
};
%extend Handle_AIS_DataMapNodeOfDataMapOfSelStat {
	~Handle_AIS_DataMapNodeOfDataMapOfSelStat() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_AIS_DataMapNodeOfDataMapOfSelStat\n");}
	}
};

%nodefaultctor Handle_AIS_Plane;
class Handle_AIS_Plane : public Handle_AIS_InteractiveObject {
	public:
		%feature("autodoc", "1");
		Handle_AIS_Plane();
		%feature("autodoc", "1");
		Handle_AIS_Plane(const Handle_AIS_Plane &aHandle);
		%feature("autodoc", "1");
		Handle_AIS_Plane(const AIS_Plane *anItem);
		%feature("autodoc", "1");
		Handle_AIS_Plane const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AIS_Plane {
	AIS_Plane* GetObject() {
	return (AIS_Plane*)$self->Access();
	}
};
%extend Handle_AIS_Plane {
	~Handle_AIS_Plane() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_AIS_Plane\n");}
	}
};

%nodefaultctor Handle_AIS_AttributeFilter;
class Handle_AIS_AttributeFilter : public Handle_SelectMgr_Filter {
	public:
		%feature("autodoc", "1");
		Handle_AIS_AttributeFilter();
		%feature("autodoc", "1");
		Handle_AIS_AttributeFilter(const Handle_AIS_AttributeFilter &aHandle);
		%feature("autodoc", "1");
		Handle_AIS_AttributeFilter(const AIS_AttributeFilter *anItem);
		%feature("autodoc", "1");
		Handle_AIS_AttributeFilter const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AIS_AttributeFilter {
	AIS_AttributeFilter* GetObject() {
	return (AIS_AttributeFilter*)$self->Access();
	}
};
%extend Handle_AIS_AttributeFilter {
	~Handle_AIS_AttributeFilter() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_AIS_AttributeFilter\n");}
	}
};

%nodefaultctor Handle_AIS_SequenceNodeOfSequenceOfDimension;
class Handle_AIS_SequenceNodeOfSequenceOfDimension : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_AIS_SequenceNodeOfSequenceOfDimension();
		%feature("autodoc", "1");
		Handle_AIS_SequenceNodeOfSequenceOfDimension(const Handle_AIS_SequenceNodeOfSequenceOfDimension &aHandle);
		%feature("autodoc", "1");
		Handle_AIS_SequenceNodeOfSequenceOfDimension(const AIS_SequenceNodeOfSequenceOfDimension *anItem);
		%feature("autodoc", "1");
		Handle_AIS_SequenceNodeOfSequenceOfDimension const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AIS_SequenceNodeOfSequenceOfDimension {
	AIS_SequenceNodeOfSequenceOfDimension* GetObject() {
	return (AIS_SequenceNodeOfSequenceOfDimension*)$self->Access();
	}
};
%extend Handle_AIS_SequenceNodeOfSequenceOfDimension {
	~Handle_AIS_SequenceNodeOfSequenceOfDimension() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_AIS_SequenceNodeOfSequenceOfDimension\n");}
	}
};

%nodefaultctor Handle_AIS_EqualRadiusRelation;
class Handle_AIS_EqualRadiusRelation : public Handle_AIS_Relation {
	public:
		%feature("autodoc", "1");
		Handle_AIS_EqualRadiusRelation();
		%feature("autodoc", "1");
		Handle_AIS_EqualRadiusRelation(const Handle_AIS_EqualRadiusRelation &aHandle);
		%feature("autodoc", "1");
		Handle_AIS_EqualRadiusRelation(const AIS_EqualRadiusRelation *anItem);
		%feature("autodoc", "1");
		Handle_AIS_EqualRadiusRelation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AIS_EqualRadiusRelation {
	AIS_EqualRadiusRelation* GetObject() {
	return (AIS_EqualRadiusRelation*)$self->Access();
	}
};
%extend Handle_AIS_EqualRadiusRelation {
	~Handle_AIS_EqualRadiusRelation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_AIS_EqualRadiusRelation\n");}
	}
};

%nodefaultctor Handle_AIS_GlobalStatus;
class Handle_AIS_GlobalStatus : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_AIS_GlobalStatus();
		%feature("autodoc", "1");
		Handle_AIS_GlobalStatus(const Handle_AIS_GlobalStatus &aHandle);
		%feature("autodoc", "1");
		Handle_AIS_GlobalStatus(const AIS_GlobalStatus *anItem);
		%feature("autodoc", "1");
		Handle_AIS_GlobalStatus const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AIS_GlobalStatus {
	AIS_GlobalStatus* GetObject() {
	return (AIS_GlobalStatus*)$self->Access();
	}
};
%extend Handle_AIS_GlobalStatus {
	~Handle_AIS_GlobalStatus() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_AIS_GlobalStatus\n");}
	}
};

%nodefaultctor Handle_AIS_Line;
class Handle_AIS_Line : public Handle_AIS_InteractiveObject {
	public:
		%feature("autodoc", "1");
		Handle_AIS_Line();
		%feature("autodoc", "1");
		Handle_AIS_Line(const Handle_AIS_Line &aHandle);
		%feature("autodoc", "1");
		Handle_AIS_Line(const AIS_Line *anItem);
		%feature("autodoc", "1");
		Handle_AIS_Line const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AIS_Line {
	AIS_Line* GetObject() {
	return (AIS_Line*)$self->Access();
	}
};
%extend Handle_AIS_Line {
	~Handle_AIS_Line() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_AIS_Line\n");}
	}
};

%nodefaultctor Handle_AIS_DimensionOwner;
class Handle_AIS_DimensionOwner : public Handle_SelectMgr_EntityOwner {
	public:
		%feature("autodoc", "1");
		Handle_AIS_DimensionOwner();
		%feature("autodoc", "1");
		Handle_AIS_DimensionOwner(const Handle_AIS_DimensionOwner &aHandle);
		%feature("autodoc", "1");
		Handle_AIS_DimensionOwner(const AIS_DimensionOwner *anItem);
		%feature("autodoc", "1");
		Handle_AIS_DimensionOwner const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AIS_DimensionOwner {
	AIS_DimensionOwner* GetObject() {
	return (AIS_DimensionOwner*)$self->Access();
	}
};
%extend Handle_AIS_DimensionOwner {
	~Handle_AIS_DimensionOwner() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_AIS_DimensionOwner\n");}
	}
};

%nodefaultctor Handle_AIS_PerpendicularRelation;
class Handle_AIS_PerpendicularRelation : public Handle_AIS_Relation {
	public:
		%feature("autodoc", "1");
		Handle_AIS_PerpendicularRelation();
		%feature("autodoc", "1");
		Handle_AIS_PerpendicularRelation(const Handle_AIS_PerpendicularRelation &aHandle);
		%feature("autodoc", "1");
		Handle_AIS_PerpendicularRelation(const AIS_PerpendicularRelation *anItem);
		%feature("autodoc", "1");
		Handle_AIS_PerpendicularRelation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AIS_PerpendicularRelation {
	AIS_PerpendicularRelation* GetObject() {
	return (AIS_PerpendicularRelation*)$self->Access();
	}
};
%extend Handle_AIS_PerpendicularRelation {
	~Handle_AIS_PerpendicularRelation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_AIS_PerpendicularRelation\n");}
	}
};

%nodefaultctor Handle_AIS_SignatureFilter;
class Handle_AIS_SignatureFilter : public Handle_AIS_TypeFilter {
	public:
		%feature("autodoc", "1");
		Handle_AIS_SignatureFilter();
		%feature("autodoc", "1");
		Handle_AIS_SignatureFilter(const Handle_AIS_SignatureFilter &aHandle);
		%feature("autodoc", "1");
		Handle_AIS_SignatureFilter(const AIS_SignatureFilter *anItem);
		%feature("autodoc", "1");
		Handle_AIS_SignatureFilter const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AIS_SignatureFilter {
	AIS_SignatureFilter* GetObject() {
	return (AIS_SignatureFilter*)$self->Access();
	}
};
%extend Handle_AIS_SignatureFilter {
	~Handle_AIS_SignatureFilter() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_AIS_SignatureFilter\n");}
	}
};

%nodefaultctor Handle_AIS_IdenticRelation;
class Handle_AIS_IdenticRelation : public Handle_AIS_Relation {
	public:
		%feature("autodoc", "1");
		Handle_AIS_IdenticRelation();
		%feature("autodoc", "1");
		Handle_AIS_IdenticRelation(const Handle_AIS_IdenticRelation &aHandle);
		%feature("autodoc", "1");
		Handle_AIS_IdenticRelation(const AIS_IdenticRelation *anItem);
		%feature("autodoc", "1");
		Handle_AIS_IdenticRelation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AIS_IdenticRelation {
	AIS_IdenticRelation* GetObject() {
	return (AIS_IdenticRelation*)$self->Access();
	}
};
%extend Handle_AIS_IdenticRelation {
	~Handle_AIS_IdenticRelation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_AIS_IdenticRelation\n");}
	}
};

%nodefaultctor Handle_AIS_InteractiveContext;
class Handle_AIS_InteractiveContext : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_AIS_InteractiveContext();
		%feature("autodoc", "1");
		Handle_AIS_InteractiveContext(const Handle_AIS_InteractiveContext &aHandle);
		%feature("autodoc", "1");
		Handle_AIS_InteractiveContext(const AIS_InteractiveContext *anItem);
		%feature("autodoc", "1");
		Handle_AIS_InteractiveContext const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AIS_InteractiveContext {
	AIS_InteractiveContext* GetObject() {
	return (AIS_InteractiveContext*)$self->Access();
	}
};
%extend Handle_AIS_InteractiveContext {
	~Handle_AIS_InteractiveContext() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_AIS_InteractiveContext\n");}
	}
};

%nodefaultctor Handle_AIS_ListNodeOfListOfInteractive;
class Handle_AIS_ListNodeOfListOfInteractive : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_AIS_ListNodeOfListOfInteractive();
		%feature("autodoc", "1");
		Handle_AIS_ListNodeOfListOfInteractive(const Handle_AIS_ListNodeOfListOfInteractive &aHandle);
		%feature("autodoc", "1");
		Handle_AIS_ListNodeOfListOfInteractive(const AIS_ListNodeOfListOfInteractive *anItem);
		%feature("autodoc", "1");
		Handle_AIS_ListNodeOfListOfInteractive const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AIS_ListNodeOfListOfInteractive {
	AIS_ListNodeOfListOfInteractive* GetObject() {
	return (AIS_ListNodeOfListOfInteractive*)$self->Access();
	}
};
%extend Handle_AIS_ListNodeOfListOfInteractive {
	~Handle_AIS_ListNodeOfListOfInteractive() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_AIS_ListNodeOfListOfInteractive\n");}
	}
};

%nodefaultctor Handle_AIS_PlaneTrihedron;
class Handle_AIS_PlaneTrihedron : public Handle_AIS_InteractiveObject {
	public:
		%feature("autodoc", "1");
		Handle_AIS_PlaneTrihedron();
		%feature("autodoc", "1");
		Handle_AIS_PlaneTrihedron(const Handle_AIS_PlaneTrihedron &aHandle);
		%feature("autodoc", "1");
		Handle_AIS_PlaneTrihedron(const AIS_PlaneTrihedron *anItem);
		%feature("autodoc", "1");
		Handle_AIS_PlaneTrihedron const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AIS_PlaneTrihedron {
	AIS_PlaneTrihedron* GetObject() {
	return (AIS_PlaneTrihedron*)$self->Access();
	}
};
%extend Handle_AIS_PlaneTrihedron {
	~Handle_AIS_PlaneTrihedron() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_AIS_PlaneTrihedron\n");}
	}
};

%nodefaultctor Handle_AIS_Axis;
class Handle_AIS_Axis : public Handle_AIS_InteractiveObject {
	public:
		%feature("autodoc", "1");
		Handle_AIS_Axis();
		%feature("autodoc", "1");
		Handle_AIS_Axis(const Handle_AIS_Axis &aHandle);
		%feature("autodoc", "1");
		Handle_AIS_Axis(const AIS_Axis *anItem);
		%feature("autodoc", "1");
		Handle_AIS_Axis const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AIS_Axis {
	AIS_Axis* GetObject() {
	return (AIS_Axis*)$self->Access();
	}
};
%extend Handle_AIS_Axis {
	~Handle_AIS_Axis() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_AIS_Axis\n");}
	}
};

%nodefaultctor Handle_AIS_DataMapNodeOfDataMapOfIOStatus;
class Handle_AIS_DataMapNodeOfDataMapOfIOStatus : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_AIS_DataMapNodeOfDataMapOfIOStatus();
		%feature("autodoc", "1");
		Handle_AIS_DataMapNodeOfDataMapOfIOStatus(const Handle_AIS_DataMapNodeOfDataMapOfIOStatus &aHandle);
		%feature("autodoc", "1");
		Handle_AIS_DataMapNodeOfDataMapOfIOStatus(const AIS_DataMapNodeOfDataMapOfIOStatus *anItem);
		%feature("autodoc", "1");
		Handle_AIS_DataMapNodeOfDataMapOfIOStatus const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AIS_DataMapNodeOfDataMapOfIOStatus {
	AIS_DataMapNodeOfDataMapOfIOStatus* GetObject() {
	return (AIS_DataMapNodeOfDataMapOfIOStatus*)$self->Access();
	}
};
%extend Handle_AIS_DataMapNodeOfDataMapOfIOStatus {
	~Handle_AIS_DataMapNodeOfDataMapOfIOStatus() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_AIS_DataMapNodeOfDataMapOfIOStatus\n");}
	}
};

%nodefaultctor AIS_Drawer;
class AIS_Drawer : public Prs3d_Drawer {
	public:
		%feature("autodoc", "1");
		AIS_Drawer();
		%feature("autodoc", "1");
		virtual		Aspect_TypeOfDeflection TypeOfDeflection() const;
		%feature("autodoc", "1");
		virtual		Quantity_Length MaximalChordialDeviation() const;
		%feature("autodoc", "1");
		void SetDeviationCoefficient();
		%feature("autodoc", "1");
		void SetHLRDeviationCoefficient();
		%feature("autodoc", "1");
		void SetDeviationAngle();
		%feature("autodoc", "1");
		void SetHLRAngle();
		%feature("autodoc", "1");
		virtual		void SetDeviationCoefficient(const Standard_Real aCoefficient);
		%feature("autodoc", "1");
		virtual		void SetHLRDeviationCoefficient(const Standard_Real aCoefficient);
		%feature("autodoc", "1");
		virtual		void SetDeviationAngle(const Standard_Real anAngle);
		%feature("autodoc", "1");
		virtual		void SetHLRAngle(const Standard_Real anAngle);
		%feature("autodoc", "1");
		virtual		Standard_Real DeviationCoefficient() const;
		%feature("autodoc", "1");
		virtual		Standard_Real HLRDeviationCoefficient() const;
		%feature("autodoc", "1");
		virtual		Standard_Real DeviationAngle() const;
		%feature("autodoc", "1");
		virtual		Standard_Real HLRAngle() const;
		%feature("autodoc", "1");
		Standard_Real PreviousDeviationCoefficient() const;
		%feature("autodoc", "1");
		Standard_Real PreviousHLRDeviationCoefficient() const;
		%feature("autodoc", "1");
		Standard_Real PreviousDeviationAngle() const;
		%feature("autodoc", "1");
		Standard_Real PreviousHLRDeviationAngle() const;
		%feature("autodoc", "1");
		Standard_Boolean IsOwnDeviationCoefficient() const;
		%feature("autodoc", "1");
		Standard_Boolean IsOwnHLRDeviationCoefficient() const;
		%feature("autodoc", "1");
		Standard_Boolean IsOwnDeviationAngle() const;
		%feature("autodoc", "1");
		Standard_Boolean IsOwnHLRDeviationAngle() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer Discretisation() const;
		%feature("autodoc", "1");
		virtual		Standard_Real MaximalParameterValue() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsoOnPlane() const;
		%feature("autodoc", "1");
		virtual		Handle_Prs3d_IsoAspect UIsoAspect();
		%feature("autodoc", "1");
		virtual		Handle_Prs3d_IsoAspect VIsoAspect();
		%feature("autodoc", "1");
		virtual		Handle_Prs3d_LineAspect FreeBoundaryAspect();
		%feature("autodoc", "1");
		virtual		Standard_Boolean FreeBoundaryDraw() const;
		%feature("autodoc", "1");
		virtual		Handle_Prs3d_LineAspect WireAspect();
		%feature("autodoc", "1");
		Standard_Boolean HasLineAspect() const;
		%feature("autodoc", "1");
		Standard_Boolean HasWireAspect() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean WireDraw() const;
		%feature("autodoc", "1");
		virtual		Handle_Prs3d_LineAspect UnFreeBoundaryAspect();
		%feature("autodoc", "1");
		virtual		Standard_Boolean UnFreeBoundaryDraw() const;
		%feature("autodoc", "1");
		virtual		Handle_Prs3d_LineAspect LineAspect();
		%feature("autodoc", "1");
		Standard_Boolean HasTextAspect() const;
		%feature("autodoc", "1");
		virtual		Handle_Prs3d_TextAspect TextAspect();
		%feature("autodoc", "1");
		virtual		Standard_Boolean LineArrowDraw() const;
		%feature("autodoc", "1");
		virtual		Handle_Prs3d_ArrowAspect ArrowAspect();
		%feature("autodoc", "1");
		virtual		Handle_Prs3d_PointAspect PointAspect();
		%feature("autodoc", "1");
		Standard_Boolean HasPointAspect() const;
		%feature("autodoc", "1");
		virtual		Handle_Prs3d_ShadingAspect ShadingAspect();
		%feature("autodoc", "1");
		Standard_Boolean HasShadingAspect() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean ShadingAspectGlobal() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean DrawHiddenLine() const;
		%feature("autodoc", "1");
		virtual		Handle_Prs3d_LineAspect HiddenLineAspect();
		%feature("autodoc", "1");
		virtual		Handle_Prs3d_LineAspect SeenLineAspect();
		%feature("autodoc", "1");
		Standard_Boolean HasPlaneAspect() const;
		%feature("autodoc", "1");
		virtual		Handle_Prs3d_PlaneAspect PlaneAspect();
		%feature("autodoc", "1");
		virtual		Handle_Prs3d_LineAspect VectorAspect();
		%feature("autodoc", "1");
		Standard_Boolean HasDatumAspect() const;
		%feature("autodoc", "1");
		virtual		Handle_Prs3d_DatumAspect DatumAspect();
		%feature("autodoc", "1");
		virtual		Handle_Prs3d_LengthAspect LengthAspect();
		%feature("autodoc", "1");
		Standard_Boolean HasLengthAspect() const;
		%feature("autodoc", "1");
		virtual		Handle_Prs3d_AngleAspect AngleAspect();
		%feature("autodoc", "1");
		Standard_Boolean HasAngleAspect() const;
		%feature("autodoc", "1");
		virtual		Handle_Prs3d_RadiusAspect RadiusAspect() const;
		%feature("autodoc", "1");
		virtual		Handle_Prs3d_LineAspect SectionAspect();
		%feature("autodoc", "1");
		const Handle_Prs3d_Drawer & Link();
		%feature("autodoc", "1");
		Standard_Boolean HasLink() const;
		%feature("autodoc", "1");
		void Link(const Handle_Prs3d_Drawer &aDrawer);
		%feature("autodoc", "1");
		virtual		void ClearLocalAttributes();
		%feature("autodoc", "1");
		Standard_Boolean WasLastLocal() const;
		%feature("autodoc", "1");
		Standard_Boolean HasLocalAttributes() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AIS_Drawer {
	Handle_AIS_Drawer GetHandle() {
	return *(Handle_AIS_Drawer*) &$self;
	}
};
%extend AIS_Drawer {
	~AIS_Drawer() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AIS_Drawer\n");}
	}
};

%nodefaultctor AIS_StdMapNodeOfMapOfInteractive;
class AIS_StdMapNodeOfMapOfInteractive : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		AIS_StdMapNodeOfMapOfInteractive(const Handle_AIS_InteractiveObject &K, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_AIS_InteractiveObject & Key() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AIS_StdMapNodeOfMapOfInteractive {
	Handle_AIS_StdMapNodeOfMapOfInteractive GetHandle() {
	return *(Handle_AIS_StdMapNodeOfMapOfInteractive*) &$self;
	}
};
%extend AIS_StdMapNodeOfMapOfInteractive {
	~AIS_StdMapNodeOfMapOfInteractive() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AIS_StdMapNodeOfMapOfInteractive\n");}
	}
};

%nodefaultctor AIS_DataMapIteratorOfDataMapOfILC;
class AIS_DataMapIteratorOfDataMapOfILC : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		AIS_DataMapIteratorOfDataMapOfILC();
		%feature("autodoc", "1");
		AIS_DataMapIteratorOfDataMapOfILC(const AIS_DataMapOfILC &aMap);
		%feature("autodoc", "1");
		void Initialize(const AIS_DataMapOfILC &aMap);
		%feature("autodoc", "1");
		const Standard_Integer & Key() const;
		%feature("autodoc", "1");
		const Handle_AIS_LocalContext & Value() const;

};
%extend AIS_DataMapIteratorOfDataMapOfILC {
	~AIS_DataMapIteratorOfDataMapOfILC() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AIS_DataMapIteratorOfDataMapOfILC\n");}
	}
};

%nodefaultctor AIS_DataMapIteratorOfDataMapOfTransientTransient;
class AIS_DataMapIteratorOfDataMapOfTransientTransient : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		AIS_DataMapIteratorOfDataMapOfTransientTransient();
		%feature("autodoc", "1");
		AIS_DataMapIteratorOfDataMapOfTransientTransient(const AIS_DataMapOfTransientTransient &aMap);
		%feature("autodoc", "1");
		void Initialize(const AIS_DataMapOfTransientTransient &aMap);
		%feature("autodoc", "1");
		const Handle_Standard_Transient & Key() const;
		%feature("autodoc", "1");
		const Handle_Standard_Transient & Value() const;

};
%extend AIS_DataMapIteratorOfDataMapOfTransientTransient {
	~AIS_DataMapIteratorOfDataMapOfTransientTransient() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AIS_DataMapIteratorOfDataMapOfTransientTransient\n");}
	}
};

%nodefaultctor AIS_InteractiveObject;
class AIS_InteractiveObject : public SelectMgr_SelectableObject {
	public:
		%feature("autodoc", "1");
		virtual		AIS_KindOfInteractive Type() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer Signature() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean AcceptShapeDecomposition() const;
		%feature("autodoc", "1");
		void SetCurrentFacingModel(const Aspect_TypeOfFacingModel aModel=Aspect_TOFM_BOTH_SIDE);
		%feature("autodoc", "1");
		Aspect_TypeOfFacingModel CurrentFacingModel() const;
		%feature("autodoc", "1");
		virtual		void SetColor(const Quantity_Color &aColor);
		%feature("autodoc", "1");
		virtual		void SetColor(const Quantity_NameOfColor aColor);
		%feature("autodoc", "1");
		virtual		void UnsetColor();
		%feature("autodoc", "1");
		virtual		void SetWidth(const Standard_Real aValue);
		%feature("autodoc", "1");
		virtual		void UnsetWidth();
		%feature("autodoc", "1");
		virtual		Standard_Boolean AcceptDisplayMode(const Standard_Integer aMode) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer DefaultDisplayMode() const;
		%feature("autodoc", "1");
		void Redisplay(const Standard_Boolean AllModes=0);
		%feature("autodoc", "1");
		void SetInfiniteState(const Standard_Boolean aFlag=1);
		%feature("autodoc", "1");
		Standard_Boolean IsInfinite() const;
		%feature("autodoc", "1");
		Standard_Boolean HasInteractiveContext() const;
		%feature("autodoc", "1");
		Handle_AIS_InteractiveContext GetContext() const;
		%feature("autodoc", "1");
		virtual		void SetContext(const Handle_AIS_InteractiveContext &aCtx);
		%feature("autodoc", "1");
		Standard_Boolean HasOwner() const;
		%feature("autodoc", "1");
		const Handle_Standard_Transient & GetOwner() const;
		%feature("autodoc", "1");
		void SetOwner(const Handle_Standard_Transient &ApplicativeEntity);
		%feature("autodoc", "1");
		void ClearOwner();
		%feature("autodoc", "1");
		Standard_Boolean HasUsers() const;
		%feature("autodoc", "1");
		const TColStd_ListOfTransient & Users() const;
		%feature("autodoc", "1");
		void AddUser(const Handle_Standard_Transient &aUser);
		%feature("autodoc", "1");
		void ClearUsers();
		%feature("autodoc", "1");
		Standard_Boolean HasDisplayMode() const;
		%feature("autodoc", "1");
		void SetDisplayMode(const Standard_Integer aMode);
		%feature("autodoc", "1");
		void UnsetDisplayMode();
		%feature("autodoc", "1");
		Standard_Integer DisplayMode() const;
		%feature("autodoc", "1");
		Standard_Boolean HasSelectionMode() const;
		%feature("autodoc", "1");
		Standard_Integer SelectionMode() const;
		%feature("autodoc", "1");
		void SetSelectionMode(const Standard_Integer aMode);
		%feature("autodoc", "1");
		void UnsetSelectionMode();
		%feature("autodoc", "1");
		Standard_Integer SelectionPriority() const;
		%feature("autodoc", "1");
		void SetSelectionPriority(const Standard_Integer P);
		%feature("autodoc", "1");
		void UnsetSelectionPriority();
		%feature("autodoc", "1");
		Standard_Boolean HasSelectionPriority() const;
		%feature("autodoc", "1");
		Standard_Boolean HasHilightMode() const;
		%feature("autodoc", "1");
		Standard_Integer HilightMode() const;
		%feature("autodoc", "1");
		void SetHilightMode(const Standard_Integer aMode);
		%feature("autodoc", "1");
		void UnsetHilightMode();
		%feature("autodoc", "1");
		Standard_Boolean HasColor() const;
		%feature("autodoc", "1");
		virtual		Quantity_NameOfColor Color() const;
		%feature("autodoc", "1");
		virtual		void Color(Quantity_Color & aColor) const;
		%feature("autodoc", "1");
		Standard_Boolean HasWidth() const;
		%feature("autodoc", "1");
		Standard_Real Width() const;
		%feature("autodoc", "1");
		Standard_Boolean HasMaterial() const;
		%feature("autodoc", "1");
		virtual		Graphic3d_NameOfMaterial Material() const;
		%feature("autodoc", "1");
		virtual		void SetMaterial(const Graphic3d_NameOfMaterial aName);
		%feature("autodoc", "1");
		virtual		void SetMaterial(const Graphic3d_MaterialAspect &aName);
		%feature("autodoc", "1");
		virtual		void UnsetMaterial();
		%feature("autodoc", "1");
		virtual		void SetTransparency(const Standard_Real aValue=5.99999999999999977795539507496869191527366638184e-1);
		%feature("autodoc", "1");
		Standard_Boolean IsTransparent() const;
		%feature("autodoc", "1");
		virtual		Standard_Real Transparency() const;
		%feature("autodoc", "1");
		virtual		void UnsetTransparency();
		%feature("autodoc", "1");
		virtual		void SetAttributes(const Handle_AIS_Drawer &aDrawer);
		%feature("autodoc", "1");
		const Handle_AIS_Drawer & Attributes() const;
		%feature("autodoc", "1");
		virtual		void UnsetAttributes();
		%feature("autodoc", "1");
		void State(const Standard_Integer TheState);
		%feature("autodoc", "1");
		Standard_Integer State() const;
		%feature("autodoc", "1");
		virtual		void SetDegenerateModel(const Aspect_TypeOfDegenerateModel aModel=Aspect_TDM_WIREFRAME, const Quantity_Ratio aRatio=0.0);
		%feature("autodoc", "1");
		virtual		Aspect_TypeOfDegenerateModel DegenerateModel(Quantity_Ratio & aRatio) const;
		%feature("autodoc", "1");
		void SetTransformation(const Handle_Geom_Transformation &aTranformation, const Standard_Boolean postConcatenate=0, const Standard_Boolean updateSelection=1);
		%feature("autodoc", "1");
		void UnsetTransformation();
		%feature("autodoc", "1");
		Handle_Geom_Transformation Transformation();
		%feature("autodoc", "1");
		Standard_Boolean HasTransformation() const;
		%feature("autodoc", "1");
		Standard_Boolean HasPresentation() const;
		%feature("autodoc", "1");
		Handle_Prs3d_Presentation Presentation() const;
		%feature("autodoc", "1");
		void SetAspect(const Handle_Prs3d_BasicAspect &anAspect, const Standard_Boolean globalChange=1);
		%feature("autodoc", "1");
		virtual		void SetPolygonOffsets(const Standard_Integer aMode, const Standard_Real aFactor=1.0e+0, const Standard_Real aUnits=0.0);
		%feature("autodoc", "1");
		virtual		Standard_Boolean HasPolygonOffsets() const;
		%feature("autodoc", "1");
		virtual		void PolygonOffsets(Standard_Integer & aMode, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AIS_InteractiveObject {
	Handle_AIS_InteractiveObject GetHandle() {
	return *(Handle_AIS_InteractiveObject*) &$self;
	}
};
%extend AIS_InteractiveObject {
	~AIS_InteractiveObject() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AIS_InteractiveObject\n");}
	}
};

%nodefaultctor AIS_Relation;
class AIS_Relation : public AIS_InteractiveObject {
	public:
		%feature("autodoc", "1");
		virtual		AIS_KindOfDimension KindOfDimension() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsMovable() const;
		%feature("autodoc", "1");
		const TopoDS_Shape & FirstShape() const;
		%feature("autodoc", "1");
		virtual		void SetFirstShape(const TopoDS_Shape &aFShape);
		%feature("autodoc", "1");
		const TopoDS_Shape & SecondShape() const;
		%feature("autodoc", "1");
		virtual		void SetSecondShape(const TopoDS_Shape &aSShape);
		%feature("autodoc", "1");
		void SetBndBox(const Standard_Real Xmin, const Standard_Real Ymin, const Standard_Real Zmin, const Standard_Real Xmax, const Standard_Real Ymax, const Standard_Real Zmax);
		%feature("autodoc", "1");
		void UnsetBndBox();
		%feature("autodoc", "1");
		const Handle_Geom_Plane & Plane() const;
		%feature("autodoc", "1");
		void SetPlane(const Handle_Geom_Plane &aPlane);
		%feature("autodoc", "1");
		Standard_Real Value() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Real aVal);
		%feature("autodoc", "1");
		const gp_Pnt & Position() const;
		%feature("autodoc", "1");
		void SetPosition(const gp_Pnt &aPosition);
		%feature("autodoc", "1");
		const TCollection_ExtendedString & Text() const;
		%feature("autodoc", "1");
		void SetText(const TCollection_ExtendedString &aText);
		%feature("autodoc", "1");
		Standard_Real ArrowSize() const;
		%feature("autodoc", "1");
		void SetArrowSize(const Standard_Real anArrowSize);
		%feature("autodoc", "1");
		DsgPrs_ArrowSide SymbolPrs() const;
		%feature("autodoc", "1");
		void SetSymbolPrs(const DsgPrs_ArrowSide aSymbolPrs);
		%feature("autodoc", "1");
		void SetExtShape(const Standard_Integer ExtSh);
		%feature("autodoc", "1");
		Standard_Integer ExtShape() const;
		%feature("autodoc", "1");
		void SetAutomaticPosition(const Standard_Boolean aStatus);
		%feature("autodoc", "1");
		Standard_Boolean AutomaticPosition() const;

};
%extend AIS_Relation {
	Handle_AIS_Relation GetHandle() {
	return *(Handle_AIS_Relation*) &$self;
	}
};
%extend AIS_Relation {
	~AIS_Relation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AIS_Relation\n");}
	}
};

%nodefaultctor AIS_DiameterDimension;
class AIS_DiameterDimension : public AIS_Relation {
	public:
		%feature("autodoc", "1");
		AIS_DiameterDimension(const TopoDS_Shape &aShape, const Standard_Real aVal, const TCollection_ExtendedString &aText);
		%feature("autodoc", "1");
		AIS_DiameterDimension(const TopoDS_Shape &aShape, const Standard_Real aVal, const TCollection_ExtendedString &aText, const gp_Pnt &aPosition, const DsgPrs_ArrowSide aSymbolPrs, const Standard_Boolean aDiamSymbol, const Standard_Real anArrowSize=0.0);
		%feature("autodoc", "1");
		Standard_Boolean DiamSymbol();
		%feature("autodoc", "1");
		void SetDiamSymbol(const Standard_Boolean aDiamSymbol);
		%feature("autodoc", "1");
		virtual		void Compute(const Handle_Prs3d_Projector &aProjector, const Handle_Geom_Transformation &aTrsf, const Handle_Prs3d_Presentation &aPresentation);

};
%extend AIS_DiameterDimension {
	Handle_AIS_DiameterDimension GetHandle() {
	return *(Handle_AIS_DiameterDimension*) &$self;
	}
};
%extend AIS_DiameterDimension {
	~AIS_DiameterDimension() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AIS_DiameterDimension\n");}
	}
};

%nodefaultctor AIS_DataMapNodeOfDataMapOfSelStat;
class AIS_DataMapNodeOfDataMapOfSelStat : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		AIS_DataMapNodeOfDataMapOfSelStat(const Handle_SelectMgr_SelectableObject &K, const Handle_AIS_LocalStatus &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_SelectMgr_SelectableObject & Key() const;
		%feature("autodoc", "1");
		Handle_AIS_LocalStatus & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AIS_DataMapNodeOfDataMapOfSelStat {
	Handle_AIS_DataMapNodeOfDataMapOfSelStat GetHandle() {
	return *(Handle_AIS_DataMapNodeOfDataMapOfSelStat*) &$self;
	}
};
%extend AIS_DataMapNodeOfDataMapOfSelStat {
	~AIS_DataMapNodeOfDataMapOfSelStat() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AIS_DataMapNodeOfDataMapOfSelStat\n");}
	}
};

%nodefaultctor AIS_DataMapOfSelStat;
class AIS_DataMapOfSelStat : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		AIS_DataMapOfSelStat(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		AIS_DataMapOfSelStat & Assign(const AIS_DataMapOfSelStat &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Handle_SelectMgr_SelectableObject &K, const Handle_AIS_LocalStatus &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Handle_SelectMgr_SelectableObject &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Handle_SelectMgr_SelectableObject &K);
		%feature("autodoc", "1");
		const Handle_AIS_LocalStatus & Find(const Handle_SelectMgr_SelectableObject &K) const;
		%feature("autodoc", "1");
		const Handle_AIS_LocalStatus & operator()(const Handle_SelectMgr_SelectableObject &K) const;
		%feature("autodoc", "1");
		Handle_AIS_LocalStatus & ChangeFind(const Handle_SelectMgr_SelectableObject &K);
		%feature("autodoc", "1");
		Handle_AIS_LocalStatus & operator()(const Handle_SelectMgr_SelectableObject &K);

};
%extend AIS_DataMapOfSelStat {
	~AIS_DataMapOfSelStat() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AIS_DataMapOfSelStat\n");}
	}
};

%nodefaultctor AIS_ExclusionFilter;
class AIS_ExclusionFilter : public SelectMgr_Filter {
	public:
		%feature("autodoc", "1");
		AIS_ExclusionFilter(const Standard_Boolean ExclusionFlagOn=1);
		%feature("autodoc", "1");
		AIS_ExclusionFilter(const AIS_KindOfInteractive TypeToExclude, const Standard_Boolean ExclusionFlagOn=1);
		%feature("autodoc", "1");
		AIS_ExclusionFilter(const AIS_KindOfInteractive TypeToExclude, const Standard_Integer SignatureInType, const Standard_Boolean ExclusionFlagOn=1);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsOk(const Handle_SelectMgr_EntityOwner &anObj) const;
		%feature("autodoc", "1");
		Standard_Boolean Add(const AIS_KindOfInteractive TypeToExclude);
		%feature("autodoc", "1");
		Standard_Boolean Add(const AIS_KindOfInteractive TypeToExclude, const Standard_Integer SignatureInType);
		%feature("autodoc", "1");
		Standard_Boolean Remove(const AIS_KindOfInteractive TypeToExclude);
		%feature("autodoc", "1");
		Standard_Boolean Remove(const AIS_KindOfInteractive TypeToExclude, const Standard_Integer SignatureInType);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsExclusionFlagOn() const;
		%feature("autodoc", "1");
		void SetExclusionFlag(const Standard_Boolean Status);
		%feature("autodoc", "1");
		Standard_Boolean IsStored(const AIS_KindOfInteractive aType) const;
		%feature("autodoc", "1");
		void ListOfStoredTypes(TColStd_ListOfInteger & TheList) const;
		%feature("autodoc", "1");
		void ListOfSignature(const AIS_KindOfInteractive aType, TColStd_ListOfInteger & TheStoredList) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AIS_ExclusionFilter {
	Handle_AIS_ExclusionFilter GetHandle() {
	return *(Handle_AIS_ExclusionFilter*) &$self;
	}
};
%extend AIS_ExclusionFilter {
	~AIS_ExclusionFilter() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AIS_ExclusionFilter\n");}
	}
};

%nodefaultctor AIS_IndexedDataMapNodeOfIndexedDataMapOfOwnerPrs;
class AIS_IndexedDataMapNodeOfIndexedDataMapOfOwnerPrs : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		AIS_IndexedDataMapNodeOfIndexedDataMapOfOwnerPrs(const Handle_SelectMgr_EntityOwner &K1, const Standard_Integer K2, const Handle_Prs3d_Presentation &I, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
		%feature("autodoc", "1");
		Handle_SelectMgr_EntityOwner & Key1() const;
		%feature("autodoc", "1");
		Standard_Integer & Key2() const;
		%feature("autodoc", "1");
		TCollection_MapNodePtr & Next2() const;
		%feature("autodoc", "1");
		Handle_Prs3d_Presentation & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AIS_IndexedDataMapNodeOfIndexedDataMapOfOwnerPrs {
	Handle_AIS_IndexedDataMapNodeOfIndexedDataMapOfOwnerPrs GetHandle() {
	return *(Handle_AIS_IndexedDataMapNodeOfIndexedDataMapOfOwnerPrs*) &$self;
	}
};
%extend AIS_IndexedDataMapNodeOfIndexedDataMapOfOwnerPrs {
	~AIS_IndexedDataMapNodeOfIndexedDataMapOfOwnerPrs() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AIS_IndexedDataMapNodeOfIndexedDataMapOfOwnerPrs\n");}
	}
};

%nodefaultctor AIS_SequenceNodeOfSequenceOfDimension;
class AIS_SequenceNodeOfSequenceOfDimension : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		AIS_SequenceNodeOfSequenceOfDimension(const Handle_AIS_Relation &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_AIS_Relation & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AIS_SequenceNodeOfSequenceOfDimension {
	Handle_AIS_SequenceNodeOfSequenceOfDimension GetHandle() {
	return *(Handle_AIS_SequenceNodeOfSequenceOfDimension*) &$self;
	}
};
%extend AIS_SequenceNodeOfSequenceOfDimension {
	~AIS_SequenceNodeOfSequenceOfDimension() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AIS_SequenceNodeOfSequenceOfDimension\n");}
	}
};

%nodefaultctor AIS_EllipseRadiusDimension;
class AIS_EllipseRadiusDimension : public AIS_Relation {
	public:
		%feature("autodoc", "1");
		virtual		AIS_KindOfDimension KindOfDimension() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsMovable() const;
		%feature("autodoc", "1");
		void ComputeGeometry();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AIS_EllipseRadiusDimension {
	Handle_AIS_EllipseRadiusDimension GetHandle() {
	return *(Handle_AIS_EllipseRadiusDimension*) &$self;
	}
};
%extend AIS_EllipseRadiusDimension {
	~AIS_EllipseRadiusDimension() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AIS_EllipseRadiusDimension\n");}
	}
};

%nodefaultctor AIS_MaxRadiusDimension;
class AIS_MaxRadiusDimension : public AIS_EllipseRadiusDimension {
	public:
		%feature("autodoc", "1");
		AIS_MaxRadiusDimension(const TopoDS_Shape &aShape, const Standard_Real aVal, const TCollection_ExtendedString &aText);
		%feature("autodoc", "1");
		AIS_MaxRadiusDimension(const TopoDS_Shape &aShape, const Standard_Real aVal, const TCollection_ExtendedString &aText, const gp_Pnt &aPosition, const DsgPrs_ArrowSide aSymbolPrs, const Standard_Real anArrowSize=0.0);
		%feature("autodoc", "1");
		virtual		void Compute(const Handle_Prs3d_Projector &aProjector, const Handle_Geom_Transformation &aTrsf, const Handle_Prs3d_Presentation &aPresentation);

};
%extend AIS_MaxRadiusDimension {
	Handle_AIS_MaxRadiusDimension GetHandle() {
	return *(Handle_AIS_MaxRadiusDimension*) &$self;
	}
};
%extend AIS_MaxRadiusDimension {
	~AIS_MaxRadiusDimension() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AIS_MaxRadiusDimension\n");}
	}
};

%nodefaultctor AIS_Trihedron;
class AIS_Trihedron : public AIS_InteractiveObject {
	public:
		%feature("autodoc", "1");
		AIS_Trihedron(const Handle_Geom_Axis2Placement &aComponent);
		%feature("autodoc", "1");
		const Handle_Geom_Axis2Placement & Component() const;
		%feature("autodoc", "1");
		void SetComponent(const Handle_Geom_Axis2Placement &aComponent);
		%feature("autodoc", "1");
		Standard_Boolean HasOwnSize() const;
		%feature("autodoc", "1");
		void SetSize(const Standard_Real aValue);
		%feature("autodoc", "1");
		void UnsetSize();
		%feature("autodoc", "1");
		Standard_Real Size() const;
		%feature("autodoc", "1");
		Handle_AIS_Axis XAxis() const;
		%feature("autodoc", "1");
		Handle_AIS_Axis YAxis() const;
		%feature("autodoc", "1");
		Handle_AIS_Axis Axis() const;
		%feature("autodoc", "1");
		Handle_AIS_Point Position() const;
		%feature("autodoc", "1");
		Handle_AIS_Plane XYPlane() const;
		%feature("autodoc", "1");
		Handle_AIS_Plane XZPlane() const;
		%feature("autodoc", "1");
		Handle_AIS_Plane YZPlane() const;
		%feature("autodoc", "1");
		virtual		void SetContext(const Handle_AIS_InteractiveContext &aCtx);
		%feature("autodoc", "1");
		virtual		Standard_Boolean AcceptDisplayMode(const Standard_Integer aMode) const;
		%feature("autodoc", "1");
		virtual		void Compute(const Handle_Prs3d_Projector &aProjector, const Handle_Geom_Transformation &aTrsf, const Handle_Prs3d_Presentation &aPresentation);
		%feature("autodoc", "1");
		virtual		Standard_Integer Signature() const;
		%feature("autodoc", "1");
		virtual		AIS_KindOfInteractive Type() const;
		%feature("autodoc", "1");
		virtual		void SetColor(const Quantity_NameOfColor aColor);
		%feature("autodoc", "1");
		virtual		void SetColor(const Quantity_Color &aColor);
		%feature("autodoc", "1");
		void SetTextColor(const Quantity_NameOfColor aColor);
		%feature("autodoc", "1");
		Standard_Boolean HasTextColor() const;
		%feature("autodoc", "1");
		Quantity_NameOfColor TextColor() const;
		%feature("autodoc", "1");
		void SetArrowColor(const Quantity_NameOfColor aColor);
		%feature("autodoc", "1");
		Standard_Boolean HasArrowColor() const;
		%feature("autodoc", "1");
		Quantity_NameOfColor ArrowColor() const;
		%feature("autodoc", "1");
		void ExtremityPoints(TColgp_Array1OfPnt & TheExtrem) const;
		%feature("autodoc", "1");
		virtual		void UnsetColor();
		%feature("autodoc", "1");
		virtual		void UnsetWidth();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AIS_Trihedron {
	Handle_AIS_Trihedron GetHandle() {
	return *(Handle_AIS_Trihedron*) &$self;
	}
};
%extend AIS_Trihedron {
	~AIS_Trihedron() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AIS_Trihedron\n");}
	}
};

%nodefaultctor AIS_RadiusDimension;
class AIS_RadiusDimension : public AIS_Relation {
	public:
		%feature("autodoc", "1");
		AIS_RadiusDimension(const TopoDS_Shape &aShape, const Standard_Real aVal, const TCollection_ExtendedString &aText);
		%feature("autodoc", "1");
		AIS_RadiusDimension(const TopoDS_Shape &aShape, const Standard_Real aVal, const TCollection_ExtendedString &aText, const gp_Pnt &aPosition, const DsgPrs_ArrowSide aSymbolPrs, const Standard_Real anArrowSize=0.0);
		%feature("autodoc", "1");
		virtual		void SetFirstShape(const TopoDS_Shape &aFShape);
		%feature("autodoc", "1");
		virtual		AIS_KindOfDimension KindOfDimension() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsMovable() const;
		%feature("autodoc", "1");
		Standard_Boolean DrawFromCenter() const;
		%feature("autodoc", "1");
		void SetDrawFromCenter(const Standard_Boolean drawfromcenter);
		%feature("autodoc", "1");
		virtual		void Compute(const Handle_Prs3d_Projector &aProjector, const Handle_Geom_Transformation &aTrsf, const Handle_Prs3d_Presentation &aPresentation);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AIS_RadiusDimension {
	Handle_AIS_RadiusDimension GetHandle() {
	return *(Handle_AIS_RadiusDimension*) &$self;
	}
};
%extend AIS_RadiusDimension {
	~AIS_RadiusDimension() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AIS_RadiusDimension\n");}
	}
};

%nodefaultctor AIS_SequenceOfInteractive;
class AIS_SequenceOfInteractive : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		AIS_SequenceOfInteractive();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const AIS_SequenceOfInteractive & Assign(const AIS_SequenceOfInteractive &Other);
		%feature("autodoc", "1");
		void Append(const Handle_AIS_InteractiveObject &T);
		%feature("autodoc", "1");
		void Append(AIS_SequenceOfInteractive & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_AIS_InteractiveObject &T);
		%feature("autodoc", "1");
		void Prepend(AIS_SequenceOfInteractive & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_AIS_InteractiveObject &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, AIS_SequenceOfInteractive & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_AIS_InteractiveObject &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, AIS_SequenceOfInteractive & S);
		%feature("autodoc", "1");
		const Handle_AIS_InteractiveObject & First() const;
		%feature("autodoc", "1");
		const Handle_AIS_InteractiveObject & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, AIS_SequenceOfInteractive & S);
		%feature("autodoc", "1");
		const Handle_AIS_InteractiveObject & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_AIS_InteractiveObject & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_AIS_InteractiveObject &I);
		%feature("autodoc", "1");
		Handle_AIS_InteractiveObject & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_AIS_InteractiveObject & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%extend AIS_SequenceOfInteractive {
	~AIS_SequenceOfInteractive() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AIS_SequenceOfInteractive\n");}
	}
};

%nodefaultctor AIS_Line;
class AIS_Line : public AIS_InteractiveObject {
	public:
		%feature("autodoc", "1");
		AIS_Line(const Handle_Geom_Line &aLine);
		%feature("autodoc", "1");
		AIS_Line(const Handle_Geom_Point &aStartPoint, const Handle_Geom_Point &aEndPoint);
		%feature("autodoc", "1");
		virtual		void Compute(const Handle_Prs3d_Projector &aProjector, const Handle_Geom_Transformation &aTrsf, const Handle_Prs3d_Presentation &aPresentation);
		%feature("autodoc", "1");
		virtual		Standard_Integer Signature() const;
		%feature("autodoc", "1");
		virtual		AIS_KindOfInteractive Type() const;
		%feature("autodoc", "1");
		const Handle_Geom_Line & Line() const;
		%feature("autodoc", "1");
		void Points(Handle_Geom_Point & PStart, Handle_Geom_Point & PEnd) const;
		%feature("autodoc", "1");
		void SetLine(const Handle_Geom_Line &L);
		%feature("autodoc", "1");
		void SetPoints(const Handle_Geom_Point &PStart, const Handle_Geom_Point &PEnd);
		%feature("autodoc", "1");
		virtual		void SetColor(const Quantity_NameOfColor aColor);
		%feature("autodoc", "1");
		virtual		void SetColor(const Quantity_Color &aColor);
		%feature("autodoc", "1");
		virtual		void SetWidth(const Standard_Real aValue);
		%feature("autodoc", "1");
		virtual		void UnsetColor();
		%feature("autodoc", "1");
		virtual		void UnsetWidth();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AIS_Line {
	Handle_AIS_Line GetHandle() {
	return *(Handle_AIS_Line*) &$self;
	}
};
%extend AIS_Line {
	~AIS_Line() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AIS_Line\n");}
	}
};

%nodefaultctor AIS_DataMapOfILC;
class AIS_DataMapOfILC : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		AIS_DataMapOfILC(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		AIS_DataMapOfILC & Assign(const AIS_DataMapOfILC &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Standard_Integer &K, const Handle_AIS_LocalContext &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Standard_Integer &K);
		%feature("autodoc", "1");
		const Handle_AIS_LocalContext & Find(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		const Handle_AIS_LocalContext & operator()(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Handle_AIS_LocalContext & ChangeFind(const Standard_Integer &K);
		%feature("autodoc", "1");
		Handle_AIS_LocalContext & operator()(const Standard_Integer &K);

};
%extend AIS_DataMapOfILC {
	~AIS_DataMapOfILC() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AIS_DataMapOfILC\n");}
	}
};

%nodefaultctor AIS_OffsetDimension;
class AIS_OffsetDimension : public AIS_Relation {
	public:
		%feature("autodoc", "1");
		AIS_OffsetDimension(const TopoDS_Shape &FistShape, const TopoDS_Shape &SecondShape, const Standard_Real aVal, const TCollection_ExtendedString &aText);
		%feature("autodoc", "1");
		virtual		void Compute(const Handle_Prs3d_Projector &aProjector, const Handle_Geom_Transformation &aTrsf, const Handle_Prs3d_Presentation &aPresentation);
		%feature("autodoc", "1");
		virtual		AIS_KindOfDimension KindOfDimension() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsMovable() const;
		%feature("autodoc", "1");
		void SetRelativePos(const gp_Trsf &aTrsf);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AIS_OffsetDimension {
	Handle_AIS_OffsetDimension GetHandle() {
	return *(Handle_AIS_OffsetDimension*) &$self;
	}
};
%extend AIS_OffsetDimension {
	~AIS_OffsetDimension() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AIS_OffsetDimension\n");}
	}
};

%nodefaultctor AIS_ConnectedInteractive;
class AIS_ConnectedInteractive : public AIS_InteractiveObject {
	public:
		%feature("autodoc", "1");
		AIS_ConnectedInteractive(const PrsMgr_TypeOfPresentation3d aTypeOfPresentation3d=PrsMgr_TOP_AllView);
		%feature("autodoc", "1");
		virtual		AIS_KindOfInteractive Type() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer Signature() const;
		%feature("autodoc", "1");
		virtual		void Connect(const Handle_AIS_InteractiveObject &anotherIObj);
		%feature("autodoc", "1");
		virtual		void Connect(const Handle_AIS_InteractiveObject &anotherIobj, const TopLoc_Location &aLocation);
		%feature("autodoc", "1");
		Standard_Boolean HasConnection() const;
		%feature("autodoc", "1");
		const Handle_AIS_InteractiveObject & ConnectedTo() const;
		%feature("autodoc", "1");
		void Disconnect();
		%feature("autodoc", "1");
		virtual		void Compute(const Handle_Prs3d_Projector &aProjector, const Handle_Geom_Transformation &aTrsf, const Handle_Prs3d_Presentation &aPresentation);
		%feature("autodoc", "1");
		virtual		void Compute(const Handle_Prs3d_Projector &aProjector, const Handle_Prs3d_Presentation &aPresentation);
		%feature("autodoc", "1");
		virtual		void Compute(const Handle_PrsMgr_PresentationManager2d &aPresentationManager, const Handle_Graphic2d_GraphicObject &aPresentation, const Standard_Integer aMode=0);
		%feature("autodoc", "1");
		virtual		Standard_Boolean AcceptShapeDecomposition() const;
		%feature("autodoc", "1");
		virtual		void UpdateLocation();
		%feature("autodoc", "1");
		virtual		void UpdateLocation(const Handle_SelectMgr_Selection &aSel);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AIS_ConnectedInteractive {
	Handle_AIS_ConnectedInteractive GetHandle() {
	return *(Handle_AIS_ConnectedInteractive*) &$self;
	}
};
%extend AIS_ConnectedInteractive {
	~AIS_ConnectedInteractive() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AIS_ConnectedInteractive\n");}
	}
};

%nodefaultctor AIS_DataMapNodeOfDataMapOfTransientTransient;
class AIS_DataMapNodeOfDataMapOfTransientTransient : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		AIS_DataMapNodeOfDataMapOfTransientTransient(const Handle_Standard_Transient &K, const Handle_Standard_Transient &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_Standard_Transient & Key() const;
		%feature("autodoc", "1");
		Handle_Standard_Transient & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AIS_DataMapNodeOfDataMapOfTransientTransient {
	Handle_AIS_DataMapNodeOfDataMapOfTransientTransient GetHandle() {
	return *(Handle_AIS_DataMapNodeOfDataMapOfTransientTransient*) &$self;
	}
};
%extend AIS_DataMapNodeOfDataMapOfTransientTransient {
	~AIS_DataMapNodeOfDataMapOfTransientTransient() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AIS_DataMapNodeOfDataMapOfTransientTransient\n");}
	}
};

%nodefaultctor AIS_Selection;
class AIS_Selection : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		AIS_Selection(const char * aName);
		%feature("autodoc", "1");
		void Remove(const char * aName);
		%feature("autodoc", "1");
		Standard_Boolean Find(const char * aName);
		%feature("autodoc", "1");
		Standard_Boolean CreateSelection(const char * aName);
		%feature("autodoc", "1");
		Handle_AIS_Selection Selection(const char * aName);
		%feature("autodoc", "1");
		Standard_Boolean SetCurrentSelection(const char * aName);
		%feature("autodoc", "1");
		Handle_AIS_Selection CurrentSelection();
		%feature("autodoc", "1");
		void Select();
		%feature("autodoc", "1");
		AIS_SelectStatus Select(const Handle_Standard_Transient &anObject);
		%feature("autodoc", "1");
		AIS_SelectStatus AddSelect(const Handle_Standard_Transient &anObject);
		%feature("autodoc", "1");
		void ClearAndSelect(const Handle_Standard_Transient &anObject);
		%feature("autodoc", "1");
		Standard_Boolean IsSelected(const Handle_Standard_Transient &anObject);
		%feature("autodoc", "1");
		Standard_Integer Extent();
		%feature("autodoc", "1");
		Handle_Standard_Transient Single();
		%feature("autodoc", "1");
		void Init();
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		const Handle_Standard_Transient & Value() const;
		%feature("autodoc", "1");
		Standard_Integer NbStored() const;
		%feature("autodoc", "1");
		const AIS_NListTransient & Objects() const;
		%feature("autodoc", "1");
		Standard_Integer Index(const char * aName);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AIS_Selection {
	Handle_AIS_Selection GetHandle() {
	return *(Handle_AIS_Selection*) &$self;
	}
};
%extend AIS_Selection {
	~AIS_Selection() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AIS_Selection\n");}
	}
};

%nodefaultctor AIS_ConcentricRelation;
class AIS_ConcentricRelation : public AIS_Relation {
	public:
		%feature("autodoc", "1");
		AIS_ConcentricRelation(const TopoDS_Shape &aFShape, const TopoDS_Shape &aSShape, const Handle_Geom_Plane &aPlane);
		%feature("autodoc", "1");
		virtual		void Compute(const Handle_Prs3d_Projector &aProjector, const Handle_Geom_Transformation &aTrsf, const Handle_Prs3d_Presentation &aPresentation);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AIS_ConcentricRelation {
	Handle_AIS_ConcentricRelation GetHandle() {
	return *(Handle_AIS_ConcentricRelation*) &$self;
	}
};
%extend AIS_ConcentricRelation {
	~AIS_ConcentricRelation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AIS_ConcentricRelation\n");}
	}
};

%nodefaultctor AIS_BadEdgeFilter;
class AIS_BadEdgeFilter : public SelectMgr_Filter {
	public:
		%feature("autodoc", "1");
		AIS_BadEdgeFilter();
		%feature("autodoc", "1");
		virtual		Standard_Boolean ActsOn(const TopAbs_ShapeEnum aType) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsOk(const Handle_SelectMgr_EntityOwner &EO) const;
		%feature("autodoc", "1");
		void SetContour(const Standard_Integer Index);
		%feature("autodoc", "1");
		void AddEdge(const TopoDS_Edge &anEdge, const Standard_Integer Index);
		%feature("autodoc", "1");
		void RemoveEdges(const Standard_Integer Index);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AIS_BadEdgeFilter {
	Handle_AIS_BadEdgeFilter GetHandle() {
	return *(Handle_AIS_BadEdgeFilter*) &$self;
	}
};
%extend AIS_BadEdgeFilter {
	~AIS_BadEdgeFilter() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AIS_BadEdgeFilter\n");}
	}
};

%nodefaultctor AIS_Circle;
class AIS_Circle : public AIS_InteractiveObject {
	public:
		%feature("autodoc", "1");
		AIS_Circle(const Handle_Geom_Circle &aCircle);
		%feature("autodoc", "1");
		AIS_Circle(const Handle_Geom_Circle &aCircle, const Standard_Real aUStart, const Standard_Real aUEnd, const Standard_Boolean aSens=1);
		%feature("autodoc", "1");
		virtual		void Compute(const Handle_Prs3d_Projector &aProjector, const Handle_Geom_Transformation &aTrsf, const Handle_Prs3d_Presentation &aPresentation);
		%feature("autodoc", "1");
		virtual		Standard_Integer Signature() const;
		%feature("autodoc", "1");
		virtual		AIS_KindOfInteractive Type() const;
		%feature("autodoc", "1");
		const Handle_Geom_Circle & Circle() const;
		%feature("autodoc", "1");
		void Parameters(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		void SetCircle(const Handle_Geom_Circle &C);
		%feature("autodoc", "1");
		void SetFirstParam(const Standard_Real U);
		%feature("autodoc", "1");
		void SetLastParam(const Standard_Real U);
		%feature("autodoc", "1");
		virtual		void SetColor(const Quantity_NameOfColor aColor);
		%feature("autodoc", "1");
		virtual		void SetColor(const Quantity_Color &aColor);
		%feature("autodoc", "1");
		virtual		void SetWidth(const Standard_Real aValue);
		%feature("autodoc", "1");
		virtual		void UnsetColor();
		%feature("autodoc", "1");
		virtual		void UnsetWidth();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AIS_Circle {
	Handle_AIS_Circle GetHandle() {
	return *(Handle_AIS_Circle*) &$self;
	}
};
%extend AIS_Circle {
	~AIS_Circle() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AIS_Circle\n");}
	}
};

%nodefaultctor AIS_IdenticRelation;
class AIS_IdenticRelation : public AIS_Relation {
	public:
		%feature("autodoc", "1");
		AIS_IdenticRelation(const TopoDS_Shape &FirstShape, const TopoDS_Shape &SecondShape, const Handle_Geom_Plane &aPlane);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsMovable() const;
		%feature("autodoc", "1");
		virtual		void Compute(const Handle_Prs3d_Projector &aProjector, const Handle_Geom_Transformation &aTrsf, const Handle_Prs3d_Presentation &aPresentation);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AIS_IdenticRelation {
	Handle_AIS_IdenticRelation GetHandle() {
	return *(Handle_AIS_IdenticRelation*) &$self;
	}
};
%extend AIS_IdenticRelation {
	~AIS_IdenticRelation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AIS_IdenticRelation\n");}
	}
};

%nodefaultctor AIS_ListIteratorOfListOfInteractive;
class AIS_ListIteratorOfListOfInteractive {
	public:
		%feature("autodoc", "1");
		AIS_ListIteratorOfListOfInteractive();
		%feature("autodoc", "1");
		AIS_ListIteratorOfListOfInteractive(const AIS_ListOfInteractive &L);
		%feature("autodoc", "1");
		void Initialize(const AIS_ListOfInteractive &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		Handle_AIS_InteractiveObject & Value() const;

};
%extend AIS_ListIteratorOfListOfInteractive {
	~AIS_ListIteratorOfListOfInteractive() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AIS_ListIteratorOfListOfInteractive\n");}
	}
};

%nodefaultctor AIS_IndexedDataMapOfOwnerPrs;
class AIS_IndexedDataMapOfOwnerPrs : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		AIS_IndexedDataMapOfOwnerPrs(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		AIS_IndexedDataMapOfOwnerPrs & Assign(const AIS_IndexedDataMapOfOwnerPrs &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Integer Add(const Handle_SelectMgr_EntityOwner &K, const Handle_Prs3d_Presentation &I);
		%feature("autodoc", "1");
		void Substitute(const Standard_Integer I, const Handle_SelectMgr_EntityOwner &K, const Handle_Prs3d_Presentation &T);
		%feature("autodoc", "1");
		void RemoveLast();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Handle_SelectMgr_EntityOwner &K) const;
		%feature("autodoc", "1");
		const Handle_SelectMgr_EntityOwner & FindKey(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const Handle_Prs3d_Presentation & FindFromIndex(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const Handle_Prs3d_Presentation & operator()(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Handle_Prs3d_Presentation & ChangeFromIndex(const Standard_Integer I);
		%feature("autodoc", "1");
		Handle_Prs3d_Presentation & operator()(const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_Integer FindIndex(const Handle_SelectMgr_EntityOwner &K) const;
		%feature("autodoc", "1");
		const Handle_Prs3d_Presentation & FindFromKey(const Handle_SelectMgr_EntityOwner &K) const;
		%feature("autodoc", "1");
		Handle_Prs3d_Presentation & ChangeFromKey(const Handle_SelectMgr_EntityOwner &K);

};
%extend AIS_IndexedDataMapOfOwnerPrs {
	~AIS_IndexedDataMapOfOwnerPrs() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AIS_IndexedDataMapOfOwnerPrs\n");}
	}
};

%nodefaultctor AIS_Axis;
class AIS_Axis : public AIS_InteractiveObject {
	public:
		%feature("autodoc", "1");
		AIS_Axis(const Handle_Geom_Line &aComponent);
		%feature("autodoc", "1");
		AIS_Axis(const Handle_Geom_Axis2Placement &aComponent, const AIS_TypeOfAxis anAxisType);
		%feature("autodoc", "1");
		AIS_Axis(const Handle_Geom_Axis1Placement &anAxis);
		%feature("autodoc", "1");
		const Handle_Geom_Line & Component() const;
		%feature("autodoc", "1");
		void SetComponent(const Handle_Geom_Line &aComponent);
		%feature("autodoc", "1");
		const Handle_Geom_Axis2Placement & Axis2Placement() const;
		%feature("autodoc", "1");
		void SetAxis2Placement(const Handle_Geom_Axis2Placement &aComponent, const AIS_TypeOfAxis anAxisType);
		%feature("autodoc", "1");
		void SetAxis1Placement(const Handle_Geom_Axis1Placement &anAxis);
		%feature("autodoc", "1");
		AIS_TypeOfAxis TypeOfAxis() const;
		%feature("autodoc", "1");
		void SetTypeOfAxis(const AIS_TypeOfAxis aTypeAxis);
		%feature("autodoc", "1");
		Standard_Boolean IsXYZAxis() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean AcceptDisplayMode(const Standard_Integer aMode) const;
		%feature("autodoc", "1");
		virtual		void Compute(const Handle_Prs3d_Projector &aProjector, const Handle_Geom_Transformation &aTrsf, const Handle_Prs3d_Presentation &aPresentation);
		%feature("autodoc", "1");
		virtual		Standard_Integer Signature() const;
		%feature("autodoc", "1");
		virtual		AIS_KindOfInteractive Type() const;
		%feature("autodoc", "1");
		virtual		void SetColor(const Quantity_NameOfColor aColor);
		%feature("autodoc", "1");
		virtual		void SetColor(const Quantity_Color &aColor);
		%feature("autodoc", "1");
		virtual		void SetWidth(const Standard_Real aValue);
		%feature("autodoc", "1");
		virtual		void UnsetColor();
		%feature("autodoc", "1");
		virtual		void UnsetWidth();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AIS_Axis {
	Handle_AIS_Axis GetHandle() {
	return *(Handle_AIS_Axis*) &$self;
	}
};
%extend AIS_Axis {
	~AIS_Axis() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AIS_Axis\n");}
	}
};

%nodefaultctor AIS_LocalStatus;
class AIS_LocalStatus : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		AIS_LocalStatus(const Standard_Boolean IsTemporary=1, const Standard_Boolean Decompose=0, const Standard_Integer DisplayMode=-0x000000001, const Standard_Integer SelectionMode=-0x000000001, const Standard_Integer HilightMode=0, const Standard_Boolean SubIntensity=0, const Quantity_NameOfColor TheHiCol=Quantity_NOC_WHITE);
		%feature("autodoc", "1");
		Standard_Boolean Decomposed() const;
		%feature("autodoc", "1");
		Standard_Boolean IsTemporary() const;
		%feature("autodoc", "1");
		Standard_Integer DisplayMode() const;
		%feature("autodoc", "1");
		const TColStd_ListOfInteger & SelectionModes() const;
		%feature("autodoc", "1");
		Standard_Boolean IsActivated(const Standard_Integer aSelMode) const;
		%feature("autodoc", "1");
		Standard_Integer HilightMode() const;
		%feature("autodoc", "1");
		Standard_Boolean IsSubIntensityOn() const;
		%feature("autodoc", "1");
		Quantity_NameOfColor HilightColor() const;
		%feature("autodoc", "1");
		void SetDecomposition(const Standard_Boolean astatus);
		%feature("autodoc", "1");
		void SetTemporary(const Standard_Boolean astatus);
		%feature("autodoc", "1");
		void SetDisplayMode(const Standard_Integer aMode);
		%feature("autodoc", "1");
		void SetFirstDisplay(const Standard_Boolean aStat);
		%feature("autodoc", "1");
		Standard_Boolean IsFirstDisplay() const;
		%feature("autodoc", "1");
		void AddSelectionMode(const Standard_Integer aMode);
		%feature("autodoc", "1");
		void RemoveSelectionMode(const Standard_Integer aMode);
		%feature("autodoc", "1");
		void ClearSelectionModes();
		%feature("autodoc", "1");
		Standard_Boolean IsSelModeIn(const Standard_Integer aMode) const;
		%feature("autodoc", "1");
		void SetHilightMode(const Standard_Integer aMode);
		%feature("autodoc", "1");
		void SetHilightColor(const Quantity_NameOfColor aCol);
		%feature("autodoc", "1");
		void SubIntensityOn();
		%feature("autodoc", "1");
		void SubIntensityOff();
		%feature("autodoc", "1");
		void SetPreviousState(const Handle_Standard_Transient &stat);
		%feature("autodoc", "1");
		const Handle_Standard_Transient & PreviousState() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AIS_LocalStatus {
	Handle_AIS_LocalStatus GetHandle() {
	return *(Handle_AIS_LocalStatus*) &$self;
	}
};
%extend AIS_LocalStatus {
	~AIS_LocalStatus() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AIS_LocalStatus\n");}
	}
};

%nodefaultctor AIS_FixRelation;
class AIS_FixRelation : public AIS_Relation {
	public:
		%feature("autodoc", "1");
		AIS_FixRelation(const TopoDS_Shape &aShape, const Handle_Geom_Plane &aPlane, const TopoDS_Wire &aWire);
		%feature("autodoc", "1");
		AIS_FixRelation(const TopoDS_Shape &aShape, const Handle_Geom_Plane &aPlane, const TopoDS_Wire &aWire, const gp_Pnt &aPosition, const Standard_Real anArrowSize=1.0000000000000000208166817117216851329430937767e-2);
		%feature("autodoc", "1");
		AIS_FixRelation(const TopoDS_Shape &aShape, const Handle_Geom_Plane &aPlane);
		%feature("autodoc", "1");
		AIS_FixRelation(const TopoDS_Shape &aShape, const Handle_Geom_Plane &aPlane, const gp_Pnt &aPosition, const Standard_Real anArrowSize=1.0000000000000000208166817117216851329430937767e-2);
		%feature("autodoc", "1");
		TopoDS_Wire Wire();
		%feature("autodoc", "1");
		void SetWire(const TopoDS_Wire &aWire);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsMovable() const;
		%feature("autodoc", "1");
		virtual		void Compute(const Handle_Prs3d_Projector &aProjector, const Handle_Geom_Transformation &aTrsf, const Handle_Prs3d_Presentation &aPresentation);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AIS_FixRelation {
	Handle_AIS_FixRelation GetHandle() {
	return *(Handle_AIS_FixRelation*) &$self;
	}
};
%extend AIS_FixRelation {
	~AIS_FixRelation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AIS_FixRelation\n");}
	}
};

%nodefaultctor AIS_ParallelRelation;
class AIS_ParallelRelation : public AIS_Relation {
	public:
		%feature("autodoc", "1");
		AIS_ParallelRelation(const TopoDS_Shape &aFShape, const TopoDS_Shape &aSShape, const Handle_Geom_Plane &aPlane);
		%feature("autodoc", "1");
		AIS_ParallelRelation(const TopoDS_Shape &aFShape, const TopoDS_Shape &aSShape, const Handle_Geom_Plane &aPlane, const gp_Pnt &aPosition, const DsgPrs_ArrowSide aSymbolPrs, const Standard_Real anArrowSize=1.0000000000000000208166817117216851329430937767e-2);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsMovable() const;
		%feature("autodoc", "1");
		virtual		void Compute(const Handle_Prs3d_Projector &aProjector, const Handle_Geom_Transformation &aTrsf, const Handle_Prs3d_Presentation &aPresentation);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AIS_ParallelRelation {
	Handle_AIS_ParallelRelation GetHandle() {
	return *(Handle_AIS_ParallelRelation*) &$self;
	}
};
%extend AIS_ParallelRelation {
	~AIS_ParallelRelation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AIS_ParallelRelation\n");}
	}
};

%nodefaultctor AIS_DataMapIteratorOfDataMapOfSelStat;
class AIS_DataMapIteratorOfDataMapOfSelStat : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		AIS_DataMapIteratorOfDataMapOfSelStat();
		%feature("autodoc", "1");
		AIS_DataMapIteratorOfDataMapOfSelStat(const AIS_DataMapOfSelStat &aMap);
		%feature("autodoc", "1");
		void Initialize(const AIS_DataMapOfSelStat &aMap);
		%feature("autodoc", "1");
		const Handle_SelectMgr_SelectableObject & Key() const;
		%feature("autodoc", "1");
		const Handle_AIS_LocalStatus & Value() const;

};
%extend AIS_DataMapIteratorOfDataMapOfSelStat {
	~AIS_DataMapIteratorOfDataMapOfSelStat() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AIS_DataMapIteratorOfDataMapOfSelStat\n");}
	}
};

%nodefaultctor AIS_Plane;
class AIS_Plane : public AIS_InteractiveObject {
	public:
		%feature("autodoc", "1");
		AIS_Plane(const Handle_Geom_Plane &aComponent, const Standard_Boolean aCurrentMode=0);
		%feature("autodoc", "1");
		AIS_Plane(const Handle_Geom_Plane &aComponent, const gp_Pnt &aCenter, const Standard_Boolean aCurrentMode=0);
		%feature("autodoc", "1");
		AIS_Plane(const Handle_Geom_Plane &aComponent, const gp_Pnt &aCenter, const gp_Pnt &aPmin, const gp_Pnt &aPmax, const Standard_Boolean aCurrentMode=0);
		%feature("autodoc", "1");
		AIS_Plane(const Handle_Geom_Axis2Placement &aComponent, const AIS_TypeOfPlane aPlaneType, const Standard_Boolean aCurrentMode=0);
		%feature("autodoc", "1");
		void SetSize(const Standard_Real aValue);
		%feature("autodoc", "1");
		void SetSize(const Standard_Real Xval, const Standard_Real YVal);
		%feature("autodoc", "1");
		void UnsetSize();
		%feature("autodoc", "1");
		Standard_Boolean Size(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Boolean HasOwnSize() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer Signature() const;
		%feature("autodoc", "1");
		virtual		AIS_KindOfInteractive Type() const;
		%feature("autodoc", "1");
		const Handle_Geom_Plane & Component();
		%feature("autodoc", "1");
		void SetComponent(const Handle_Geom_Plane &aComponent);
		%feature("autodoc", "1");
		Standard_Boolean PlaneAttributes(Handle_Geom_Plane & aComponent, gp_Pnt & aCenter, gp_Pnt & aPmin, gp_Pnt & aPmax);
		%feature("autodoc", "1");
		void SetPlaneAttributes(const Handle_Geom_Plane &aComponent, const gp_Pnt &aCenter, const gp_Pnt &aPmin, const gp_Pnt &aPmax);
		%feature("autodoc", "1");
		const gp_Pnt & Center() const;
		%feature("autodoc", "1");
		void SetCenter(const gp_Pnt &aCenter);
		%feature("autodoc", "1");
		void SetAxis2Placement(const Handle_Geom_Axis2Placement &aComponent, const AIS_TypeOfPlane aPlaneType);
		%feature("autodoc", "1");
		Handle_Geom_Axis2Placement Axis2Placement();
		%feature("autodoc", "1");
		AIS_TypeOfPlane TypeOfPlane();
		%feature("autodoc", "1");
		Standard_Boolean IsXYZPlane();
		%feature("autodoc", "1");
		Standard_Boolean CurrentMode();
		%feature("autodoc", "1");
		void SetCurrentMode(const Standard_Boolean aCurrentMode);
		%feature("autodoc", "1");
		virtual		Standard_Boolean AcceptDisplayMode(const Standard_Integer aMode) const;
		%feature("autodoc", "1");
		virtual		void SetContext(const Handle_AIS_InteractiveContext &aCtx);
		%feature("autodoc", "1");
		virtual		void Compute(const Handle_Prs3d_Projector &aProjector, const Handle_Geom_Transformation &aTrsf, const Handle_Prs3d_Presentation &aPresentation);
		%feature("autodoc", "1");
		virtual		void ComputeSelection(const Handle_SelectMgr_Selection &aSelection, const Standard_Integer aMode);
		%feature("autodoc", "1");
		virtual		void SetColor(const Quantity_NameOfColor aColor);
		%feature("autodoc", "1");
		virtual		void SetColor(const Quantity_Color &aColor);
		%feature("autodoc", "1");
		virtual		void UnsetColor();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AIS_Plane {
	Handle_AIS_Plane GetHandle() {
	return *(Handle_AIS_Plane*) &$self;
	}
};
%extend AIS_Plane {
	~AIS_Plane() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AIS_Plane\n");}
	}
};

%nodefaultctor AIS_PerpendicularRelation;
class AIS_PerpendicularRelation : public AIS_Relation {
	public:
		%feature("autodoc", "1");
		AIS_PerpendicularRelation(const TopoDS_Shape &aFShape, const TopoDS_Shape &aSShape, const Handle_Geom_Plane &aPlane);
		%feature("autodoc", "1");
		AIS_PerpendicularRelation(const TopoDS_Shape &aFShape, const TopoDS_Shape &aSShape);
		%feature("autodoc", "1");
		virtual		void Compute(const Handle_Prs3d_Projector &aProjector, const Handle_Geom_Transformation &aTrsf, const Handle_Prs3d_Presentation &aPresentation);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AIS_PerpendicularRelation {
	Handle_AIS_PerpendicularRelation GetHandle() {
	return *(Handle_AIS_PerpendicularRelation*) &$self;
	}
};
%extend AIS_PerpendicularRelation {
	~AIS_PerpendicularRelation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AIS_PerpendicularRelation\n");}
	}
};

%nodefaultctor AIS_Chamf3dDimension;
class AIS_Chamf3dDimension : public AIS_Relation {
	public:
		%feature("autodoc", "1");
		AIS_Chamf3dDimension(const TopoDS_Shape &aFShape, const Standard_Real aVal, const TCollection_ExtendedString &aText);
		%feature("autodoc", "1");
		AIS_Chamf3dDimension(const TopoDS_Shape &aFShape, const Standard_Real aVal, const TCollection_ExtendedString &aText, const gp_Pnt &aPosition, const DsgPrs_ArrowSide aSymbolPrs, const Standard_Real anArrowSize=0.0);
		%feature("autodoc", "1");
		virtual		AIS_KindOfDimension KindOfDimension() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsMovable() const;
		%feature("autodoc", "1");
		virtual		void Compute(const Handle_Prs3d_Projector &aProjector, const Handle_Geom_Transformation &aTrsf, const Handle_Prs3d_Presentation &aPresentation);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AIS_Chamf3dDimension {
	Handle_AIS_Chamf3dDimension GetHandle() {
	return *(Handle_AIS_Chamf3dDimension*) &$self;
	}
};
%extend AIS_Chamf3dDimension {
	~AIS_Chamf3dDimension() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AIS_Chamf3dDimension\n");}
	}
};

%nodefaultctor AIS_SequenceNodeOfSequenceOfInteractive;
class AIS_SequenceNodeOfSequenceOfInteractive : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		AIS_SequenceNodeOfSequenceOfInteractive(const Handle_AIS_InteractiveObject &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_AIS_InteractiveObject & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AIS_SequenceNodeOfSequenceOfInteractive {
	Handle_AIS_SequenceNodeOfSequenceOfInteractive GetHandle() {
	return *(Handle_AIS_SequenceNodeOfSequenceOfInteractive*) &$self;
	}
};
%extend AIS_SequenceNodeOfSequenceOfInteractive {
	~AIS_SequenceNodeOfSequenceOfInteractive() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AIS_SequenceNodeOfSequenceOfInteractive\n");}
	}
};

%nodefaultctor AIS_SymmetricRelation;
class AIS_SymmetricRelation : public AIS_Relation {
	public:
		%feature("autodoc", "1");
		AIS_SymmetricRelation(const TopoDS_Shape &aSymmTool, const TopoDS_Shape &FirstShape, const TopoDS_Shape &SecondShape, const Handle_Geom_Plane &aPlane);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsMovable() const;
		%feature("autodoc", "1");
		void SetTool(const TopoDS_Shape &aSymmetricTool);
		%feature("autodoc", "1");
		const TopoDS_Shape & GetTool() const;
		%feature("autodoc", "1");
		virtual		void Compute(const Handle_Prs3d_Projector &aProjector, const Handle_Geom_Transformation &aTrsf, const Handle_Prs3d_Presentation &aPresentation);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AIS_SymmetricRelation {
	Handle_AIS_SymmetricRelation GetHandle() {
	return *(Handle_AIS_SymmetricRelation*) &$self;
	}
};
%extend AIS_SymmetricRelation {
	~AIS_SymmetricRelation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AIS_SymmetricRelation\n");}
	}
};

%nodefaultctor AIS_AttributeFilter;
class AIS_AttributeFilter : public SelectMgr_Filter {
	public:
		%feature("autodoc", "1");
		AIS_AttributeFilter();
		%feature("autodoc", "1");
		AIS_AttributeFilter(const Quantity_NameOfColor aCol);
		%feature("autodoc", "1");
		AIS_AttributeFilter(const Standard_Real aWidth);
		%feature("autodoc", "1");
		Standard_Boolean HasColor() const;
		%feature("autodoc", "1");
		Standard_Boolean HasWidth() const;
		%feature("autodoc", "1");
		void SetColor(const Quantity_NameOfColor aCol);
		%feature("autodoc", "1");
		void SetWidth(const Standard_Real aWid);
		%feature("autodoc", "1");
		void UnsetColor();
		%feature("autodoc", "1");
		void UnsetWidth();
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsOk(const Handle_SelectMgr_EntityOwner &anObj) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AIS_AttributeFilter {
	Handle_AIS_AttributeFilter GetHandle() {
	return *(Handle_AIS_AttributeFilter*) &$self;
	}
};
%extend AIS_AttributeFilter {
	~AIS_AttributeFilter() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AIS_AttributeFilter\n");}
	}
};

%nodefaultctor AIS_DataMapOfTransientTransient;
class AIS_DataMapOfTransientTransient : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		AIS_DataMapOfTransientTransient(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		AIS_DataMapOfTransientTransient & Assign(const AIS_DataMapOfTransientTransient &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Handle_Standard_Transient &K, const Handle_Standard_Transient &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Handle_Standard_Transient &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Handle_Standard_Transient &K);
		%feature("autodoc", "1");
		const Handle_Standard_Transient & Find(const Handle_Standard_Transient &K) const;
		%feature("autodoc", "1");
		const Handle_Standard_Transient & operator()(const Handle_Standard_Transient &K) const;
		%feature("autodoc", "1");
		Handle_Standard_Transient & ChangeFind(const Handle_Standard_Transient &K);
		%feature("autodoc", "1");
		Handle_Standard_Transient & operator()(const Handle_Standard_Transient &K);

};
%extend AIS_DataMapOfTransientTransient {
	~AIS_DataMapOfTransientTransient() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AIS_DataMapOfTransientTransient\n");}
	}
};

%nodefaultctor AIS_MultipleConnectedInteractive;
class AIS_MultipleConnectedInteractive : public AIS_InteractiveObject {
	public:
		%feature("autodoc", "1");
		AIS_MultipleConnectedInteractive(const PrsMgr_TypeOfPresentation3d aTypeOfPresentation3d=PrsMgr_TOP_AllView);
		%feature("autodoc", "1");
		void Connect(const Handle_AIS_InteractiveObject &anotherIObj);
		%feature("autodoc", "1");
		virtual		AIS_KindOfInteractive Type() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer Signature() const;
		%feature("autodoc", "1");
		Standard_Boolean HasConnection() const;
		%feature("autodoc", "1");
		const AIS_SequenceOfInteractive & ConnectedTo() const;
		%feature("autodoc", "1");
		void Disconnect(const Handle_AIS_InteractiveObject &anotherIObj);
		%feature("autodoc", "1");
		void DisconnectAll();
		%feature("autodoc", "1");
		virtual		void Compute(const Handle_PrsMgr_PresentationManager2d &aPresentationManager, const Handle_Graphic2d_GraphicObject &aPresentation, const Standard_Integer aMode=0);
		%feature("autodoc", "1");
		virtual		void Compute(const Handle_Prs3d_Projector &aProjector, const Handle_Geom_Transformation &aTrsf, const Handle_Prs3d_Presentation &aPresentation);
		%feature("autodoc", "1");
		virtual		void Compute(const Handle_Prs3d_Projector &aProjector, const Handle_Prs3d_Presentation &aPresentation);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AIS_MultipleConnectedInteractive {
	Handle_AIS_MultipleConnectedInteractive GetHandle() {
	return *(Handle_AIS_MultipleConnectedInteractive*) &$self;
	}
};
%extend AIS_MultipleConnectedInteractive {
	~AIS_MultipleConnectedInteractive() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AIS_MultipleConnectedInteractive\n");}
	}
};

%nodefaultctor AIS_Shape;
class AIS_Shape : public AIS_InteractiveObject {
	public:
		%feature("autodoc", "1");
		AIS_Shape(const TopoDS_Shape &shap);
		%feature("autodoc", "1");
		virtual		Standard_Integer Signature() const;
		%feature("autodoc", "1");
		virtual		AIS_KindOfInteractive Type() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean AcceptShapeDecomposition() const;
		%feature("autodoc", "1");
		void Set(const TopoDS_Shape &ashap);
		%feature("autodoc", "1");
		const TopoDS_Shape & Shape() const;
		%feature("autodoc", "1");
		Standard_Boolean SetOwnDeviationCoefficient();
		%feature("autodoc", "1");
		Standard_Boolean SetOwnHLRDeviationCoefficient();
		%feature("autodoc", "1");
		Standard_Boolean SetOwnDeviationAngle();
		%feature("autodoc", "1");
		Standard_Boolean SetOwnHLRDeviationAngle();
		%feature("autodoc", "1");
		void SetOwnDeviationCoefficient(const Standard_Real aCoefficient);
		%feature("autodoc", "1");
		void SetOwnHLRDeviationCoefficient(const Standard_Real aCoefficient);
		%feature("autodoc", "1");
		void SetAngleAndDeviation(const Standard_Real anAngle);
		%feature("autodoc", "1");
		Standard_Real UserAngle() const;
		%feature("autodoc", "1");
		void SetOwnDeviationAngle(const Standard_Real anAngle);
		%feature("autodoc", "1");
		void SetHLRAngleAndDeviation(const Standard_Real anAngle);
		%feature("autodoc", "1");
		void SetOwnHLRDeviationAngle(const Standard_Real anAngle);
		%feature("autodoc", "1");
		Standard_Boolean OwnDeviationCoefficient(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Boolean OwnHLRDeviationCoefficient(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Boolean OwnDeviationAngle(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Boolean OwnHLRDeviationAngle(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		virtual		void SetColor(const Quantity_NameOfColor aColor);
		%feature("autodoc", "1");
		virtual		void SetColor(const Quantity_Color &aColor);
		%feature("autodoc", "1");
		virtual		void UnsetColor();
		%feature("autodoc", "1");
		virtual		void SetWidth(const Standard_Real aValue);
		%feature("autodoc", "1");
		virtual		void UnsetWidth();
		%feature("autodoc", "1");
		virtual		void SetMaterial(const Graphic3d_NameOfMaterial aName);
		%feature("autodoc", "1");
		virtual		void SetMaterial(const Graphic3d_MaterialAspect &aName);
		%feature("autodoc", "1");
		virtual		void UnsetMaterial();
		%feature("autodoc", "1");
		virtual		void SetTransparency(const Standard_Real aValue=5.99999999999999977795539507496869191527366638184e-1);
		%feature("autodoc", "1");
		virtual		void UnsetTransparency();
		%feature("autodoc", "1");
		virtual		const Bnd_Box & BoundingBox();
		%feature("autodoc", "1");
		virtual		Quantity_NameOfColor Color() const;
		%feature("autodoc", "1");
		virtual		void Color(Quantity_Color & aColor) const;
		%feature("autodoc", "1");
		virtual		Graphic3d_NameOfMaterial Material() const;
		%feature("autodoc", "1");
		virtual		Standard_Real Transparency() const;
		%feature("autodoc", "1");
		TopAbs_ShapeEnum SelectionType(const Standard_Integer aDecompositionMode);
		%feature("autodoc", "1");
		Standard_Integer SelectionMode(const TopAbs_ShapeEnum aShapeType);
		%feature("autodoc", "1");
		Standard_Real GetDeflection(const TopoDS_Shape &aShape, const Handle_Prs3d_Drawer &aDrawer);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AIS_Shape {
	Handle_AIS_Shape GetHandle() {
	return *(Handle_AIS_Shape*) &$self;
	}
};
%extend AIS_Shape {
	~AIS_Shape() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AIS_Shape\n");}
	}
};

%nodefaultctor AIS_DataMapIteratorOfDataMapofIntegerListOfinteractive;
class AIS_DataMapIteratorOfDataMapofIntegerListOfinteractive : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		AIS_DataMapIteratorOfDataMapofIntegerListOfinteractive();
		%feature("autodoc", "1");
		AIS_DataMapIteratorOfDataMapofIntegerListOfinteractive(const AIS_DataMapofIntegerListOfinteractive &aMap);
		%feature("autodoc", "1");
		void Initialize(const AIS_DataMapofIntegerListOfinteractive &aMap);
		%feature("autodoc", "1");
		const Standard_Integer & Key() const;
		%feature("autodoc", "1");
		const AIS_ListOfInteractive & Value() const;

};
%extend AIS_DataMapIteratorOfDataMapofIntegerListOfinteractive {
	~AIS_DataMapIteratorOfDataMapofIntegerListOfinteractive() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AIS_DataMapIteratorOfDataMapofIntegerListOfinteractive\n");}
	}
};

%nodefaultctor AIS_MidPointRelation;
class AIS_MidPointRelation : public AIS_Relation {
	public:
		%feature("autodoc", "1");
		AIS_MidPointRelation(const TopoDS_Shape &aSymmTool, const TopoDS_Shape &FirstShape, const TopoDS_Shape &SecondShape, const Handle_Geom_Plane &aPlane);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsMovable() const;
		%feature("autodoc", "1");
		void SetTool(const TopoDS_Shape &aMidPointTool);
		%feature("autodoc", "1");
		const TopoDS_Shape & GetTool() const;
		%feature("autodoc", "1");
		virtual		void Compute(const Handle_Prs3d_Projector &aProjector, const Handle_Geom_Transformation &aTrsf, const Handle_Prs3d_Presentation &aPresentation);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AIS_MidPointRelation {
	Handle_AIS_MidPointRelation GetHandle() {
	return *(Handle_AIS_MidPointRelation*) &$self;
	}
};
%extend AIS_MidPointRelation {
	~AIS_MidPointRelation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AIS_MidPointRelation\n");}
	}
};

%nodefaultctor AIS_ListOfInteractive;
class AIS_ListOfInteractive {
	public:
		%feature("autodoc", "1");
		AIS_ListOfInteractive();
		%feature("autodoc", "1");
		void Assign(const AIS_ListOfInteractive &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const Handle_AIS_InteractiveObject &I);
		%feature("autodoc", "1");
		void Prepend(const Handle_AIS_InteractiveObject &I, AIS_ListIteratorOfListOfInteractive & theIt);
		%feature("autodoc", "1");
		void Prepend(AIS_ListOfInteractive & Other);
		%feature("autodoc", "1");
		void Append(const Handle_AIS_InteractiveObject &I);
		%feature("autodoc", "1");
		void Append(const Handle_AIS_InteractiveObject &I, AIS_ListIteratorOfListOfInteractive & theIt);
		%feature("autodoc", "1");
		void Append(AIS_ListOfInteractive & Other);
		%feature("autodoc", "1");
		Handle_AIS_InteractiveObject & First() const;
		%feature("autodoc", "1");
		Handle_AIS_InteractiveObject & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(AIS_ListIteratorOfListOfInteractive & It);
		%feature("autodoc", "1");
		void InsertBefore(const Handle_AIS_InteractiveObject &I, AIS_ListIteratorOfListOfInteractive & It);
		%feature("autodoc", "1");
		void InsertBefore(AIS_ListOfInteractive & Other, AIS_ListIteratorOfListOfInteractive & It);
		%feature("autodoc", "1");
		void InsertAfter(const Handle_AIS_InteractiveObject &I, AIS_ListIteratorOfListOfInteractive & It);
		%feature("autodoc", "1");
		void InsertAfter(AIS_ListOfInteractive & Other, AIS_ListIteratorOfListOfInteractive & It);

};
%extend AIS_ListOfInteractive {
	~AIS_ListOfInteractive() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AIS_ListOfInteractive\n");}
	}
};

%nodefaultctor AIS_InteractiveContext;
class AIS_InteractiveContext : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		AIS_InteractiveContext(const Handle_V3d_Viewer &MainViewer);
		%feature("autodoc", "1");
		AIS_InteractiveContext(const Handle_V3d_Viewer &MainViewer, const Handle_V3d_Viewer &Collector);
		%feature("autodoc", "1");
		virtual		void Delete() const;
		%feature("autodoc", "1");
		Standard_Boolean IsCollectorClosed() const;
		%feature("autodoc", "1");
		void CloseCollector();
		%feature("autodoc", "1");
		void OpenCollector();
		%feature("autodoc", "1");
		void SetAutoActivateSelection(const Standard_Boolean Auto);
		%feature("autodoc", "1");
		Standard_Boolean GetAutoActivateSelection() const;
		%feature("autodoc", "1");
		void Display(const Handle_AIS_InteractiveObject &anIobj, const Standard_Boolean updateviewer=1);
		%feature("autodoc", "1");
		void Display(const Handle_AIS_InteractiveObject &anIobj, const Standard_Integer amode, const Standard_Integer aSelectionMode, const Standard_Boolean updateviewer=1, const Standard_Boolean allowdecomposition=1);
		%feature("autodoc", "1");
		void Load(const Handle_AIS_InteractiveObject &aniobj, const Standard_Integer SelectionMode=-0x000000001, const Standard_Boolean AllowDecomp=0);
		%feature("autodoc", "1");
		void Erase(const Handle_AIS_InteractiveObject &aniobj, const Standard_Boolean updateviewer=1, const Standard_Boolean PutInCollector=1);
		%feature("autodoc", "1");
		void EraseMode(const Handle_AIS_InteractiveObject &aniobj, const Standard_Integer aMode, const Standard_Boolean updateviewer=1);
		%feature("autodoc", "1");
		void EraseAll(const Standard_Boolean PutInCollector=1, const Standard_Boolean updateviewer=1);
		%feature("autodoc", "1");
		void DisplayAll(const Standard_Boolean OnlyFromCollector=1, const Standard_Boolean updateviewer=1);
		%feature("autodoc", "1");
		void DisplayFromCollector(const Handle_AIS_InteractiveObject &anIObj, const Standard_Boolean updateviewer=1);
		%feature("autodoc", "1");
		void EraseSelected(const Standard_Boolean PutInCollector=1, const Standard_Boolean updateviewer=1);
		%feature("autodoc", "1");
		void DisplaySelected(const Standard_Boolean updateviewer=1);
		%feature("autodoc", "1");
		Standard_Boolean KeepTemporary(const Handle_AIS_InteractiveObject &anIObj, const Standard_Integer InWhichLocal=-0x000000001);
		%feature("autodoc", "1");
		void Clear(const Handle_AIS_InteractiveObject &aniobj, const Standard_Boolean updateviewer=1);
		%feature("autodoc", "1");
		void ClearPrs(const Handle_AIS_InteractiveObject &aniobj, const Standard_Integer aMode=0, const Standard_Boolean updateviewer=1);
		%feature("autodoc", "1");
		void Remove(const Handle_AIS_InteractiveObject &aniobj, const Standard_Boolean updateviewer=1);
		%feature("autodoc", "1");
		void RemoveAll(const Standard_Boolean updateviewer=1);
		%feature("autodoc", "1");
		void Hilight(const Handle_AIS_InteractiveObject &aniobj, const Standard_Boolean updateviewer=1);
		%feature("autodoc", "1");
		void HilightWithColor(const Handle_AIS_InteractiveObject &aniobj, const Quantity_NameOfColor aCol, const Standard_Boolean updateviewer=1);
		%feature("autodoc", "1");
		void Unhilight(const Handle_AIS_InteractiveObject &aniobj, const Standard_Boolean updateviewer=1);
		%feature("autodoc", "1");
		void SetDisplayPriority(const Handle_AIS_InteractiveObject &anIobj, const Standard_Integer aPriority);
		%feature("autodoc", "1");
		void Redisplay(const Handle_AIS_InteractiveObject &aniobj, const Standard_Boolean updateviewer=1, const Standard_Boolean allmodes=0);
		%feature("autodoc", "1");
		void Redisplay(const AIS_KindOfInteractive aTypeOfObject, const Standard_Integer Signature=-0x000000001, const Standard_Boolean updateviewer=1);
		%feature("autodoc", "1");
		void RecomputePrsOnly(const Handle_AIS_InteractiveObject &anIobj, const Standard_Boolean updateviewer=1, const Standard_Boolean allmodes=0);
		%feature("autodoc", "1");
		void RecomputeSelectionOnly(const Handle_AIS_InteractiveObject &anIObj);
		%feature("autodoc", "1");
		void Update(const Handle_AIS_InteractiveObject &anIobj, const Standard_Boolean updateviewer=1);
		%feature("autodoc", "1");
		void SetDisplayMode(const Handle_AIS_InteractiveObject &aniobj, const Standard_Integer aMode, const Standard_Boolean updateviewer=1);
		%feature("autodoc", "1");
		void UnsetDisplayMode(const Handle_AIS_InteractiveObject &aniobj, const Standard_Boolean updateviewer=1);
		%feature("autodoc", "1");
		void SetSelectionMode(const Handle_AIS_InteractiveObject &aniobj, const Standard_Integer aMode);
		%feature("autodoc", "1");
		void UnsetSelectionMode(const Handle_AIS_InteractiveObject &aniobj);
		%feature("autodoc", "1");
		void SetSensitivity(const Standard_Real aPrecision);
		%feature("autodoc", "1");
		void SetSensitivity(const Standard_Integer aPrecision=4);
		%feature("autodoc", "1");
		void SetLocation(const Handle_AIS_InteractiveObject &aniobj, const TopLoc_Location &aLocation);
		%feature("autodoc", "1");
		void ResetLocation(const Handle_AIS_InteractiveObject &aniobj);
		%feature("autodoc", "1");
		Standard_Boolean HasLocation(const Handle_AIS_InteractiveObject &aniobj) const;
		%feature("autodoc", "1");
		const TopLoc_Location & Location(const Handle_AIS_InteractiveObject &aniobj) const;
		%feature("autodoc", "1");
		void SetCurrentFacingModel(const Handle_AIS_InteractiveObject &aniobj, const Aspect_TypeOfFacingModel aModel=Aspect_TOFM_BOTH_SIDE);
		%feature("autodoc", "1");
		void SetColor(const Handle_AIS_InteractiveObject &aniobj, const Quantity_NameOfColor aColor, const Standard_Boolean updateviewer=1);
		%feature("autodoc", "1");
		void SetColor(const Handle_AIS_InteractiveObject &aniobj, const Quantity_Color &aColor, const Standard_Boolean updateviewer=1);
		%feature("autodoc", "1");
		void UnsetColor(const Handle_AIS_InteractiveObject &aniobj, const Standard_Boolean updateviewer=1);
		%feature("autodoc", "1");
		virtual		void SetWidth(const Handle_AIS_InteractiveObject &aniobj, const Standard_Real aValue, const Standard_Boolean updateviewer=1);
		%feature("autodoc", "1");
		virtual		void UnsetWidth(const Handle_AIS_InteractiveObject &aniobj, const Standard_Boolean updateviewer=1);
		%feature("autodoc", "1");
		void SetMaterial(const Handle_AIS_InteractiveObject &aniobj, const Graphic3d_NameOfMaterial aName, const Standard_Boolean updateviewer=1);
		%feature("autodoc", "1");
		void UnsetMaterial(const Handle_AIS_InteractiveObject &anObj, const Standard_Boolean updateviewer=1);
		%feature("autodoc", "1");
		void SetTransparency(const Handle_AIS_InteractiveObject &aniobj, const Standard_Real aValue=5.99999999999999977795539507496869191527366638184e-1, const Standard_Boolean updateviewer=1);
		%feature("autodoc", "1");
		void UnsetTransparency(const Handle_AIS_InteractiveObject &aniobj, const Standard_Boolean updateviewer=1);
		%feature("autodoc", "1");
		void SetDegenerateModel(const Handle_AIS_InteractiveObject &aniobj, const Aspect_TypeOfDegenerateModel aModel=Aspect_TDM_WIREFRAME, const Quantity_Ratio aRatio=0.0);
		%feature("autodoc", "1");
		void SetDegenerateModel(const Aspect_TypeOfDegenerateModel aModel, const Quantity_Ratio aSkipRatio=0.0);
		%feature("autodoc", "1");
		void SetLocalAttributes(const Handle_AIS_InteractiveObject &aniobj, const Handle_AIS_Drawer &aDrawer, const Standard_Boolean updateviewer=1);
		%feature("autodoc", "1");
		void UnsetLocalAttributes(const Handle_AIS_InteractiveObject &anObj, const Standard_Boolean updateviewer=1);
		%feature("autodoc", "1");
		void SetPolygonOffsets(const Handle_AIS_InteractiveObject &anObj, const Standard_Integer aMode, const Standard_Real aFactor=1.0e+0, const Standard_Real aUnits=0.0, const Standard_Boolean updateviewer=1);
		%feature("autodoc", "1");
		Standard_Boolean HasPolygonOffsets(const Handle_AIS_InteractiveObject &anObj) const;
		%feature("autodoc", "1");
		void PolygonOffsets(const Handle_AIS_InteractiveObject &anObj, Standard_Integer & aMode, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		void SetTrihedronSize(const Standard_Real aSize, const Standard_Boolean updateviewer=1);
		%feature("autodoc", "1");
		Standard_Real TrihedronSize() const;
		%feature("autodoc", "1");
		void SetPlaneSize(const Standard_Real aSizeX, const Standard_Real aSizeY, const Standard_Boolean updateviewer=1);
		%feature("autodoc", "1");
		void SetPlaneSize(const Standard_Real aSize, const Standard_Boolean updateviewer=1);
		%feature("autodoc", "1");
		Standard_Boolean PlaneSize(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		AIS_DisplayStatus DisplayStatus(const Handle_AIS_InteractiveObject &anIobj) const;
		%feature("autodoc", "1");
		const TColStd_ListOfInteger & DisplayedModes(const Handle_AIS_InteractiveObject &aniobj) const;
		%feature("autodoc", "1");
		Standard_Boolean IsDisplayed(const Handle_AIS_InteractiveObject &anIobj) const;
		%feature("autodoc", "1");
		Standard_Boolean IsDisplayed(const Handle_AIS_InteractiveObject &aniobj, const Standard_Integer aMode) const;
		%feature("autodoc", "1");
		Standard_Boolean IsHilighted(const Handle_AIS_InteractiveObject &aniobj) const;
		%feature("autodoc", "1");
		Standard_Boolean IsHilighted(const Handle_AIS_InteractiveObject &anIobj, Standard_Boolean & WithColor, Quantity_NameOfColor & theHiCol) const;
		%feature("autodoc", "1");
		Standard_Boolean IsInCollector(const Handle_AIS_InteractiveObject &anIObj) const;
		%feature("autodoc", "1");
		Standard_Integer DisplayPriority(const Handle_AIS_InteractiveObject &anIobj) const;
		%feature("autodoc", "1");
		Standard_Boolean HasColor(const Handle_AIS_InteractiveObject &aniobj) const;
		%feature("autodoc", "1");
		Quantity_NameOfColor Color(const Handle_AIS_InteractiveObject &aniobj) const;
		%feature("autodoc", "1");
		void Color(const Handle_AIS_InteractiveObject &aniobj, Quantity_Color & acolor) const;
		%feature("autodoc", "1");
		virtual		Standard_Real Width(const Handle_AIS_InteractiveObject &aniobj) const;
		%feature("autodoc", "1");
		void Status(const Handle_AIS_InteractiveObject &anObj, TCollection_ExtendedString & astatus) const;
		%feature("autodoc", "1");
		void UpdateCurrentViewer();
		%feature("autodoc", "1");
		void UpdateCollector();
		%feature("autodoc", "1");
		Standard_Integer DisplayMode() const;
		%feature("autodoc", "1");
		Quantity_NameOfColor HilightColor() const;
		%feature("autodoc", "1");
		Quantity_NameOfColor SelectionColor() const;
		%feature("autodoc", "1");
		Quantity_NameOfColor PreSelectionColor() const;
		%feature("autodoc", "1");
		Quantity_NameOfColor DefaultColor() const;
		%feature("autodoc", "1");
		Quantity_NameOfColor SubIntensityColor() const;
		%feature("autodoc", "1");
		void SetHilightColor(const Quantity_NameOfColor aHiCol);
		%feature("autodoc", "1");
		void SelectionColor(const Quantity_NameOfColor aCol);
		%feature("autodoc", "1");
		void SetPreselectionColor(const Quantity_NameOfColor aCol);
		%feature("autodoc", "1");
		void SetSubIntensityColor(const Quantity_NameOfColor aCol);
		%feature("autodoc", "1");
		void SetDisplayMode(const AIS_DisplayMode AMode, const Standard_Boolean updateviewer=1);
		%feature("autodoc", "1");
		void SetDeviationCoefficient(const Handle_AIS_InteractiveObject &aniobj, const Standard_Real aCoefficient, const Standard_Boolean updateviewer=1);
		%feature("autodoc", "1");
		void SetDeviationAngle(const Handle_AIS_InteractiveObject &aniobj, const Standard_Real anAngle, const Standard_Boolean updateviewer=1);
		%feature("autodoc", "1");
		void SetAngleAndDeviation(const Handle_AIS_InteractiveObject &aniobj, const Standard_Real anAngle, const Standard_Boolean updateviewer=1);
		%feature("autodoc", "1");
		void SetHLRDeviationCoefficient(const Handle_AIS_InteractiveObject &aniobj, const Standard_Real aCoefficient, const Standard_Boolean updateviewer=1);
		%feature("autodoc", "1");
		void SetHLRDeviationAngle(const Handle_AIS_InteractiveObject &aniobj, const Standard_Real anAngle, const Standard_Boolean updateviewer=1);
		%feature("autodoc", "1");
		void SetHLRAngleAndDeviation(const Handle_AIS_InteractiveObject &aniobj, const Standard_Real anAngle, const Standard_Boolean updateviewer=1);
		%feature("autodoc", "1");
		void SetDeviationCoefficient(const Standard_Real aCoefficient);
		%feature("autodoc", "1");
		Standard_Real DeviationCoefficient() const;
		%feature("autodoc", "1");
		void SetDeviationAngle(const Standard_Real anAngle);
		%feature("autodoc", "1");
		Standard_Real DeviationAngle() const;
		%feature("autodoc", "1");
		void SetHLRDeviationCoefficient(const Standard_Real aCoefficient);
		%feature("autodoc", "1");
		Standard_Real HLRDeviationCoefficient() const;
		%feature("autodoc", "1");
		void SetHLRAngle(const Standard_Real anAngle);
		%feature("autodoc", "1");
		Standard_Real HLRAngle() const;
		%feature("autodoc", "1");
		void SetHLRAngleAndDeviation(const Standard_Real anAngle);
		%feature("autodoc", "1");
		Handle_Prs3d_LineAspect HiddenLineAspect() const;
		%feature("autodoc", "1");
		void SetHiddenLineAspect(const Handle_Prs3d_LineAspect &anAspect) const;
		%feature("autodoc", "1");
		Standard_Boolean DrawHiddenLine() const;
		%feature("autodoc", "1");
		void EnableDrawHiddenLine() const;
		%feature("autodoc", "1");
		void DisableDrawHiddenLine() const;
		%feature("autodoc", "1");
		void SetIsoNumber(const Standard_Integer NbIsos, const AIS_TypeOfIso WhichIsos=AIS_TOI_Both);
		%feature("autodoc", "1");
		Standard_Integer IsoNumber(const AIS_TypeOfIso WhichIsos=AIS_TOI_Both);
		%feature("autodoc", "1");
		void IsoOnPlane(const Standard_Boolean SwitchOn);
		%feature("autodoc", "1");
		Standard_Boolean IsoOnPlane() const;
		%feature("autodoc", "1");
		void SetSelectedAspect(const Handle_Prs3d_BasicAspect &anAspect, const Standard_Boolean globalChange=1, const Standard_Boolean updateViewer=1);
		%feature("autodoc", "1");
		AIS_StatusOfDetection MoveTo(const Standard_Integer XPix, const Standard_Integer YPix, const Handle_V3d_View &aView);
		%feature("autodoc", "1");
		Standard_Boolean HasNextDetected() const;
		%feature("autodoc", "1");
		Standard_Integer HilightNextDetected(const Handle_V3d_View &aView);
		%feature("autodoc", "1");
		Standard_Integer HilightPreviousDetected(const Handle_V3d_View &aView);
		%feature("autodoc", "1");
		AIS_StatusOfPick Select(const Standard_Integer XPMin, const Standard_Integer YPMin, const Standard_Integer XPMax, const Standard_Integer YPMax, const Handle_V3d_View &aView, const Standard_Boolean updateviewer=1);
		%feature("autodoc", "1");
		AIS_StatusOfPick Select(const TColgp_Array1OfPnt2d &Polyline, const Handle_V3d_View &aView, const Standard_Boolean updateviewer=1);
		%feature("autodoc", "1");
		AIS_StatusOfPick Select(const Standard_Boolean updateviewer=1);
		%feature("autodoc", "1");
		AIS_StatusOfPick ShiftSelect(const Standard_Boolean updateviewer=1);
		%feature("autodoc", "1");
		AIS_StatusOfPick ShiftSelect(const TColgp_Array1OfPnt2d &Polyline, const Handle_V3d_View &aView, const Standard_Boolean updateviewer=1);
		%feature("autodoc", "1");
		AIS_StatusOfPick ShiftSelect(const Standard_Integer XPMin, const Standard_Integer YPMin, const Standard_Integer XPMax, const Standard_Integer YPMax, const Handle_V3d_View &aView, const Standard_Boolean updateviewer=1);
		%feature("autodoc", "1");
		void SetToHilightSelected(const Standard_Boolean toHilight);
		%feature("autodoc", "1");
		Standard_Boolean ToHilightSelected() const;
		%feature("autodoc", "1");
		void SetCurrentObject(const Handle_AIS_InteractiveObject &aniobj, const Standard_Boolean updateviewer=1);
		%feature("autodoc", "1");
		void AddOrRemoveCurrentObject(const Handle_AIS_InteractiveObject &aniobj, const Standard_Boolean updateviewer=1);
		%feature("autodoc", "1");
		void UpdateCurrent();
		%feature("autodoc", "1");
		Standard_Boolean WasCurrentTouched() const;
		%feature("autodoc", "1");
		void SetOkCurrent();
		%feature("autodoc", "1");
		Standard_Boolean IsCurrent(const Handle_AIS_InteractiveObject &aniobj) const;
		%feature("autodoc", "1");
		void InitCurrent();
		%feature("autodoc", "1");
		Standard_Boolean MoreCurrent() const;
		%feature("autodoc", "1");
		void NextCurrent();
		%feature("autodoc", "1");
		Handle_AIS_InteractiveObject Current() const;
		%feature("autodoc", "1");
		Standard_Integer NbCurrents();
		%feature("autodoc", "1");
		Handle_AIS_InteractiveObject FirstCurrentObject();
		%feature("autodoc", "1");
		void HilightCurrents(const Standard_Boolean updateviewer=1);
		%feature("autodoc", "1");
		void UnhilightCurrents(const Standard_Boolean updateviewer=1);
		%feature("autodoc", "1");
		void ClearCurrents(const Standard_Boolean updateviewer=1);
		%feature("autodoc", "1");
		void SetSelected(const Handle_AIS_InteractiveObject &aniObj, const Standard_Boolean updateviewer=1);
		%feature("autodoc", "1");
		void SetSelectedCurrent();
		%feature("autodoc", "1");
		void UpdateSelected(const Standard_Boolean updateviewer=1);
		%feature("autodoc", "1");
		void AddOrRemoveSelected(const Handle_AIS_InteractiveObject &aniobj, const Standard_Boolean updateviewer=1);
		%feature("autodoc", "1");
		void HilightSelected(const Standard_Boolean updateviewer=1);
		%feature("autodoc", "1");
		void UnhilightSelected(const Standard_Boolean updateviewer=1);
		%feature("autodoc", "1");
		void ClearSelected(const Standard_Boolean updateviewer=1);
		%feature("autodoc", "1");
		void AddOrRemoveSelected(const TopoDS_Shape &aShape, const Standard_Boolean updateviewer=1);
		%feature("autodoc", "1");
		void AddOrRemoveSelected(const Handle_SelectMgr_EntityOwner &anOwner, const Standard_Boolean updateviewer=1);
		%feature("autodoc", "1");
		Standard_Boolean IsSelected(const Handle_AIS_InteractiveObject &aniobj) const;
		%feature("autodoc", "1");
		void InitSelected();
		%feature("autodoc", "1");
		Standard_Boolean MoreSelected() const;
		%feature("autodoc", "1");
		void NextSelected();
		%feature("autodoc", "1");
		Standard_Integer NbSelected();
		%feature("autodoc", "1");
		Standard_Boolean HasSelectedShape() const;
		%feature("autodoc", "1");
		TopoDS_Shape SelectedShape() const;
		%feature("autodoc", "1");
		Handle_SelectMgr_EntityOwner SelectedOwner() const;
		%feature("autodoc", "1");
		void EntityOwners(SelectMgr_IndexedMapOfOwner & theOwners, const Handle_AIS_InteractiveObject &theIObj, const Standard_Integer theMode=-0x000000001) const;
		%feature("autodoc", "1");
		Handle_AIS_InteractiveObject Interactive() const;
		%feature("autodoc", "1");
		Handle_AIS_InteractiveObject SelectedInteractive() const;
		%feature("autodoc", "1");
		Standard_Boolean HasApplicative() const;
		%feature("autodoc", "1");
		Handle_Standard_Transient Applicative() const;
		%feature("autodoc", "1");
		Standard_Boolean HasDetected() const;
		%feature("autodoc", "1");
		Standard_Boolean HasDetectedShape() const;
		%feature("autodoc", "1");
		const TopoDS_Shape & DetectedShape() const;
		%feature("autodoc", "1");
		Handle_AIS_InteractiveObject DetectedInteractive() const;
		%feature("autodoc", "1");
		Handle_SelectMgr_EntityOwner DetectedOwner() const;
		%feature("autodoc", "1");
		void InitDetected();
		%feature("autodoc", "1");
		Standard_Boolean MoreDetected() const;
		%feature("autodoc", "1");
		void NextDetected();
		%feature("autodoc", "1");
		const TopoDS_Shape & DetectedCurrentShape() const;
		%feature("autodoc", "1");
		Handle_AIS_InteractiveObject DetectedCurrentObject() const;
		%feature("autodoc", "1");
		Standard_Integer OpenLocalContext(const Standard_Boolean UseDisplayedObjects=1, const Standard_Boolean AllowShapeDecomposition=1, const Standard_Boolean AcceptEraseOfObjects=0, const Standard_Boolean BothViewers=0);
		%feature("autodoc", "1");
		void CloseLocalContext(const Standard_Integer Index=-0x000000001, const Standard_Boolean updateviewer=1);
		%feature("autodoc", "1");
		Standard_Integer IndexOfCurrentLocal() const;
		%feature("autodoc", "1");
		void CloseAllContexts(const Standard_Boolean updateviewer=1);
		%feature("autodoc", "1");
		void ResetOriginalState(const Standard_Boolean updateviewer=1);
		%feature("autodoc", "1");
		void ClearLocalContext(const AIS_ClearMode TheMode=AIS_CM_All);
		%feature("autodoc", "1");
		void UseDisplayedObjects();
		%feature("autodoc", "1");
		void NotUseDisplayedObjects();
		%feature("autodoc", "1");
		Standard_Boolean BeginImmediateDraw();
		%feature("autodoc", "1");
		Standard_Boolean ImmediateAdd(const Handle_AIS_InteractiveObject &anIObj, const Standard_Integer aMode=0);
		%feature("autodoc", "1");
		Standard_Boolean ImmediateRemove(const Handle_AIS_InteractiveObject &anIObj, const Standard_Integer aMode=0);
		%feature("autodoc", "1");
		Standard_Boolean EndImmediateDraw(const Handle_V3d_View &aView, const Standard_Boolean DoubleBuf=0);
		%feature("autodoc", "1");
		Standard_Boolean EndImmediateDraw(const Standard_Boolean DoubleBuf=0);
		%feature("autodoc", "1");
		Standard_Boolean IsImmediateModeOn() const;
		%feature("autodoc", "1");
		void Drag(const Handle_V3d_View &aView, const Handle_AIS_InteractiveObject &anObject, const Handle_Geom_Transformation &aTranformation, const Standard_Boolean postConcatenate=0, const Standard_Boolean update=0, const Standard_Boolean zBuffer=0);
		%feature("autodoc", "1");
		void SetAutomaticHilight(const Standard_Boolean aStatus);
		%feature("autodoc", "1");
		Standard_Boolean AutomaticHilight() const;
		%feature("autodoc", "1");
		void SetZDetection(const Standard_Boolean aStatus=0);
		%feature("autodoc", "1");
		Standard_Boolean ZDetection() const;
		%feature("autodoc", "1");
		void Activate(const Handle_AIS_InteractiveObject &anIobj, const Standard_Integer aMode=0);
		%feature("autodoc", "1");
		void Deactivate(const Handle_AIS_InteractiveObject &anIObj);
		%feature("autodoc", "1");
		void Deactivate(const Handle_AIS_InteractiveObject &anIobj, const Standard_Integer aMode);
		%feature("autodoc", "1");
		void ActivatedModes(const Handle_AIS_InteractiveObject &anIobj, TColStd_ListOfInteger & theList) const;
		%feature("autodoc", "1");
		void SetShapeDecomposition(const Handle_AIS_InteractiveObject &anIobj, const Standard_Boolean aStatus);
		%feature("autodoc", "1");
		void SetTemporaryAttributes(const Handle_AIS_InteractiveObject &anObj, const Handle_Prs3d_Drawer &aDrawer, const Standard_Boolean updateviewer=1);
		%feature("autodoc", "1");
		void SubIntensityOn(const Handle_AIS_InteractiveObject &aniobj, const Standard_Boolean updateviewer=1);
		%feature("autodoc", "1");
		void SubIntensityOff(const Handle_AIS_InteractiveObject &aniobj, const Standard_Boolean updateviewer=1);
		%feature("autodoc", "1");
		void SubIntensityOn(const Standard_Boolean updateviewer=1);
		%feature("autodoc", "1");
		void SubIntensityOff(const Standard_Boolean updateviewer=1);
		%feature("autodoc", "1");
		void AddFilter(const Handle_SelectMgr_Filter &aFilter);
		%feature("autodoc", "1");
		void RemoveFilter(const Handle_SelectMgr_Filter &aFilter);
		%feature("autodoc", "1");
		void RemoveFilters();
		%feature("autodoc", "1");
		void ActivateStandardMode(const TopAbs_ShapeEnum aStandardActivation);
		%feature("autodoc", "1");
		void DeactivateStandardMode(const TopAbs_ShapeEnum aStandardActivation);
		%feature("autodoc", "1");
		const TColStd_ListOfInteger & ActivatedStandardModes() const;
		%feature("autodoc", "1");
		const SelectMgr_ListOfFilter & Filters() const;
		%feature("autodoc", "1");
		const Handle_Prs3d_Drawer & DefaultDrawer() const;
		%feature("autodoc", "1");
		const Handle_V3d_Viewer & CurrentViewer() const;
		%feature("autodoc", "1");
		void DisplayedObjects(AIS_ListOfInteractive & aListOfIO, const Standard_Boolean OnlyFromNeutral=0) const;
		%feature("autodoc", "1");
		void DisplayedObjects(const AIS_KindOfInteractive WhichKind, const Standard_Integer WhichSignature, AIS_ListOfInteractive & aListOfIO, const Standard_Boolean OnlyFromNeutral=0) const;
		%feature("autodoc", "1");
		const Handle_V3d_Viewer & Collector() const;
		%feature("autodoc", "1");
		void ObjectsInCollector(AIS_ListOfInteractive & aListOfIO) const;
		%feature("autodoc", "1");
		void ObjectsInCollector(const AIS_KindOfInteractive WhichKind, const Standard_Integer WhichSignature, AIS_ListOfInteractive & aListOfIO) const;
		%feature("autodoc", "1");
		void ErasedObjects(AIS_ListOfInteractive & theListOfIO) const;
		%feature("autodoc", "1");
		void ErasedObjects(const AIS_KindOfInteractive WhichKind, const Standard_Integer WhichSignature, AIS_ListOfInteractive & theListOfIO) const;
		%feature("autodoc", "1");
		void ObjectsByDisplayStatus(const AIS_DisplayStatus theStatus, AIS_ListOfInteractive & theListOfIO) const;
		%feature("autodoc", "1");
		void ObjectsByDisplayStatus(const AIS_KindOfInteractive WhichKind, const Standard_Integer WhichSignature, const AIS_DisplayStatus theStatus, AIS_ListOfInteractive & theListOfIO) const;
		%feature("autodoc", "1");
		void ObjectsInside(AIS_ListOfInteractive & aListOfIO, const AIS_KindOfInteractive WhichKind=AIS_KOI_None, const Standard_Integer WhichSignature=-0x000000001) const;
		%feature("autodoc", "1");
		Standard_Boolean HasOpenedContext() const;
		%feature("autodoc", "1");
		const TCollection_AsciiString & CurrentName() const;
		%feature("autodoc", "1");
		const TCollection_AsciiString & SelectionName() const;
		%feature("autodoc", "1");
		Standard_CString DomainOfMainViewer() const;
		%feature("autodoc", "1");
		Standard_CString DomainOfCollector() const;
		%feature("autodoc", "1");
		const Handle_SelectMgr_SelectionManager & SelectionManager() const;
		%feature("autodoc", "1");
		const Handle_PrsMgr_PresentationManager3d & MainPrsMgr() const;
		%feature("autodoc", "1");
		const Handle_PrsMgr_PresentationManager3d & CollectorPrsMgr() const;
		%feature("autodoc", "1");
		const Handle_StdSelect_ViewerSelector3d & MainSelector() const;
		%feature("autodoc", "1");
		Handle_StdSelect_ViewerSelector3d LocalSelector() const;
		%feature("autodoc", "1");
		const Handle_StdSelect_ViewerSelector3d & CollectorSelector() const;
		%feature("autodoc", "1");
		Standard_Integer PurgeDisplay(const Standard_Boolean CollectorToo=0);
		%feature("autodoc", "1");
		Standard_Integer HighestIndex() const;
		%feature("autodoc", "1");
		void DisplayActiveAreas(const Handle_V3d_View &aView);
		%feature("autodoc", "1");
		void ClearActiveAreas(const Handle_V3d_View &aView);
		%feature("autodoc", "1");
		void DisplayActiveSensitive(const Handle_V3d_View &aView);
		%feature("autodoc", "1");
		void ClearActiveSensitive(const Handle_V3d_View &aView);
		%feature("autodoc", "1");
		void DisplayActiveSensitive(const Handle_AIS_InteractiveObject &anObject, const Handle_V3d_View &aView);
		%feature("autodoc", "1");
		void DisplayActiveAreas(const Handle_AIS_InteractiveObject &anObject, const Handle_V3d_View &aView);
		%feature("autodoc", "1");
		Standard_Boolean IsInLocal(const Handle_AIS_InteractiveObject &anObject, Standard_Integer & TheIndex) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AIS_InteractiveContext {
	Handle_AIS_InteractiveContext GetHandle() {
	return *(Handle_AIS_InteractiveContext*) &$self;
	}
};
%extend AIS_InteractiveContext {
	~AIS_InteractiveContext() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AIS_InteractiveContext\n");}
	}
};

%nodefaultctor AIS_GraphicTool;
class AIS_GraphicTool {
	public:
		%feature("autodoc", "1");
		AIS_GraphicTool();
		%feature("autodoc", "1");
		Quantity_NameOfColor GetLineColor(const Handle_Prs3d_Drawer &aDrawer, const AIS_TypeOfAttribute TheTypeOfAttributes);
		%feature("autodoc", "1");
		void GetLineColor(const Handle_Prs3d_Drawer &aDrawer, const AIS_TypeOfAttribute TheTypeOfAttributes, Quantity_Color & TheLineColor);
		%feature("autodoc", "1");
		Standard_Real GetLineWidth(const Handle_Prs3d_Drawer &aDrawer, const AIS_TypeOfAttribute TheTypeOfAttributes);
		%feature("autodoc", "1");
		Aspect_TypeOfLine GetLineType(const Handle_Prs3d_Drawer &aDrawer, const AIS_TypeOfAttribute TheTypeOfAttributes);
		%feature("autodoc", "1");
		void GetLineAtt(const Handle_Prs3d_Drawer &aDrawer, const AIS_TypeOfAttribute TheTypeOfAttributes, Quantity_NameOfColor & aCol, Standard_Real &OutValue, Aspect_TypeOfLine & aTyp);
		%feature("autodoc", "1");
		Quantity_NameOfColor GetInteriorColor(const Handle_Prs3d_Drawer &aDrawer);
		%feature("autodoc", "1");
		void GetInteriorColor(const Handle_Prs3d_Drawer &aDrawer, Quantity_Color & aColor);
		%feature("autodoc", "1");
		Graphic3d_MaterialAspect GetMaterial(const Handle_Prs3d_Drawer &aDrawer);

};
%extend AIS_GraphicTool {
	~AIS_GraphicTool() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AIS_GraphicTool\n");}
	}
};

%nodefaultctor AIS_TypeFilter;
class AIS_TypeFilter : public SelectMgr_Filter {
	public:
		%feature("autodoc", "1");
		AIS_TypeFilter(const AIS_KindOfInteractive aGivenKind);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsOk(const Handle_SelectMgr_EntityOwner &anobj) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AIS_TypeFilter {
	Handle_AIS_TypeFilter GetHandle() {
	return *(Handle_AIS_TypeFilter*) &$self;
	}
};
%extend AIS_TypeFilter {
	~AIS_TypeFilter() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AIS_TypeFilter\n");}
	}
};

%nodefaultctor AIS_DataMapofIntegerListOfinteractive;
class AIS_DataMapofIntegerListOfinteractive : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		AIS_DataMapofIntegerListOfinteractive(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		AIS_DataMapofIntegerListOfinteractive & Assign(const AIS_DataMapofIntegerListOfinteractive &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Standard_Integer &K, const AIS_ListOfInteractive &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Standard_Integer &K);
		%feature("autodoc", "1");
		const AIS_ListOfInteractive & Find(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		const AIS_ListOfInteractive & operator()(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		AIS_ListOfInteractive & ChangeFind(const Standard_Integer &K);
		%feature("autodoc", "1");
		AIS_ListOfInteractive & operator()(const Standard_Integer &K);

};
%extend AIS_DataMapofIntegerListOfinteractive {
	~AIS_DataMapofIntegerListOfinteractive() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AIS_DataMapofIntegerListOfinteractive\n");}
	}
};

%nodefaultctor AIS_DataMapIteratorOfDataMapOfIOStatus;
class AIS_DataMapIteratorOfDataMapOfIOStatus : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		AIS_DataMapIteratorOfDataMapOfIOStatus();
		%feature("autodoc", "1");
		AIS_DataMapIteratorOfDataMapOfIOStatus(const AIS_DataMapOfIOStatus &aMap);
		%feature("autodoc", "1");
		void Initialize(const AIS_DataMapOfIOStatus &aMap);
		%feature("autodoc", "1");
		const Handle_AIS_InteractiveObject & Key() const;
		%feature("autodoc", "1");
		const Handle_AIS_GlobalStatus & Value() const;

};
%extend AIS_DataMapIteratorOfDataMapOfIOStatus {
	~AIS_DataMapIteratorOfDataMapOfIOStatus() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AIS_DataMapIteratorOfDataMapOfIOStatus\n");}
	}
};

%nodefaultctor AIS_Chamf2dDimension;
class AIS_Chamf2dDimension : public AIS_Relation {
	public:
		%feature("autodoc", "1");
		AIS_Chamf2dDimension(const TopoDS_Shape &aFShape, const Handle_Geom_Plane &aPlane, const Standard_Real aVal, const TCollection_ExtendedString &aText);
		%feature("autodoc", "1");
		AIS_Chamf2dDimension(const TopoDS_Shape &aFShape, const Handle_Geom_Plane &aPlane, const Standard_Real aVal, const TCollection_ExtendedString &aText, const gp_Pnt &aPosition, const DsgPrs_ArrowSide aSymbolPrs, const Standard_Real anArrowSize=0.0);
		%feature("autodoc", "1");
		virtual		AIS_KindOfDimension KindOfDimension() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsMovable() const;
		%feature("autodoc", "1");
		virtual		void Compute(const Handle_Prs3d_Projector &aProjector, const Handle_Geom_Transformation &aTrsf, const Handle_Prs3d_Presentation &aPresentation);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AIS_Chamf2dDimension {
	Handle_AIS_Chamf2dDimension GetHandle() {
	return *(Handle_AIS_Chamf2dDimension*) &$self;
	}
};
%extend AIS_Chamf2dDimension {
	~AIS_Chamf2dDimension() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AIS_Chamf2dDimension\n");}
	}
};

%nodefaultctor AIS_TexturedShape;
class AIS_TexturedShape : public AIS_Shape {
	public:
		%feature("autodoc", "1");
		AIS_TexturedShape(const TopoDS_Shape &shap);
		%feature("autodoc", "1");
		virtual		void SetTextureFileName(const TCollection_AsciiString &TextureFileName);
		%feature("autodoc", "1");
		virtual		void SetTextureRepeat(const Standard_Boolean RepeatYN, const Standard_Real URepeat=1.0e+0, const Standard_Real VRepeat=1.0e+0);
		%feature("autodoc", "1");
		virtual		void SetTextureOrigin(const Standard_Boolean SetTextureOriginYN, const Standard_Real UOrigin=0.0, const Standard_Real VOrigin=0.0);
		%feature("autodoc", "1");
		virtual		void SetTextureScale(const Standard_Boolean SetTextureScaleYN, const Standard_Real ScaleU=1.0e+0, const Standard_Real ScaleV=1.0e+0);
		%feature("autodoc", "1");
		virtual		void ShowTriangles(const Standard_Boolean ShowTrianglesYN=0);
		%feature("autodoc", "1");
		void SetTextureMapOn();
		%feature("autodoc", "1");
		void SetTextureMapOff();
		%feature("autodoc", "1");
		void EnableTextureModulate();
		%feature("autodoc", "1");
		void DisableTextureModulate();
		%feature("autodoc", "1");
		void UpdateAttributes();
		%feature("autodoc", "1");
		Standard_Boolean TextureMapState() const;
		%feature("autodoc", "1");
		Standard_Real URepeat() const;
		%feature("autodoc", "1");
		Standard_Boolean TextureRepeat() const;
		%feature("autodoc", "1");
		Standard_Real Deflection() const;
		%feature("autodoc", "1");
		Standard_CString TextureFile() const;
		%feature("autodoc", "1");
		Standard_Real VRepeat() const;
		%feature("autodoc", "1");
		Standard_Boolean ShowTriangles() const;
		%feature("autodoc", "1");
		Standard_Real TextureUOrigin() const;
		%feature("autodoc", "1");
		Standard_Real TextureVOrigin() const;
		%feature("autodoc", "1");
		Standard_Real TextureScaleU() const;
		%feature("autodoc", "1");
		Standard_Real TextureScaleV() const;
		%feature("autodoc", "1");
		Standard_Boolean TextureScale() const;
		%feature("autodoc", "1");
		Standard_Boolean TextureOrigin() const;
		%feature("autodoc", "1");
		Standard_Boolean TextureModulate() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AIS_TexturedShape {
	Handle_AIS_TexturedShape GetHandle() {
	return *(Handle_AIS_TexturedShape*) &$self;
	}
};
%extend AIS_TexturedShape {
	~AIS_TexturedShape() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AIS_TexturedShape\n");}
	}
};

%nodefaultctor AIS_DataMapOfIOStatus;
class AIS_DataMapOfIOStatus : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		AIS_DataMapOfIOStatus(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		AIS_DataMapOfIOStatus & Assign(const AIS_DataMapOfIOStatus &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Handle_AIS_InteractiveObject &K, const Handle_AIS_GlobalStatus &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Handle_AIS_InteractiveObject &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Handle_AIS_InteractiveObject &K);
		%feature("autodoc", "1");
		const Handle_AIS_GlobalStatus & Find(const Handle_AIS_InteractiveObject &K) const;
		%feature("autodoc", "1");
		const Handle_AIS_GlobalStatus & operator()(const Handle_AIS_InteractiveObject &K) const;
		%feature("autodoc", "1");
		Handle_AIS_GlobalStatus & ChangeFind(const Handle_AIS_InteractiveObject &K);
		%feature("autodoc", "1");
		Handle_AIS_GlobalStatus & operator()(const Handle_AIS_InteractiveObject &K);

};
%extend AIS_DataMapOfIOStatus {
	~AIS_DataMapOfIOStatus() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AIS_DataMapOfIOStatus\n");}
	}
};

%nodefaultctor AIS_MultipleConnectedShape;
class AIS_MultipleConnectedShape : public AIS_MultipleConnectedInteractive {
	public:
		%feature("autodoc", "1");
		AIS_MultipleConnectedShape(const TopoDS_Shape &aShape);
		%feature("autodoc", "1");
		virtual		AIS_KindOfInteractive Type() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer Signature() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean AcceptShapeDecomposition() const;
		%feature("autodoc", "1");
		void Set(const TopoDS_Shape &ashap);
		%feature("autodoc", "1");
		const TopoDS_Shape & Shape() const;
		%feature("autodoc", "1");
		virtual		void Compute(const Handle_PrsMgr_PresentationManager2d &aPresentationManager, const Handle_Graphic2d_GraphicObject &aPresentation, const Standard_Integer aMode=0);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AIS_MultipleConnectedShape {
	Handle_AIS_MultipleConnectedShape GetHandle() {
	return *(Handle_AIS_MultipleConnectedShape*) &$self;
	}
};
%extend AIS_MultipleConnectedShape {
	~AIS_MultipleConnectedShape() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AIS_MultipleConnectedShape\n");}
	}
};

%nodefaultctor AIS;
class AIS {
	public:
		%feature("autodoc", "1");
		AIS();
		%feature("autodoc", "1");
		gp_Pnt Nearest(const TopoDS_Shape &aShape, const gp_Pnt &aPoint);
		%feature("autodoc", "1");
		gp_Pnt Farest(const TopoDS_Shape &aShape, const gp_Pnt &aPoint);
		%feature("autodoc", "1");
		Standard_Boolean ComputeGeometry(const TopoDS_Edge &anEdge, Handle_Geom_Curve & aCurve, gp_Pnt & FirstPnt, gp_Pnt & LastPnt);
		%feature("autodoc", "1");
		Standard_Boolean ComputeGeometry(const TopoDS_Edge &anEdge, Handle_Geom_Curve & aCurve, gp_Pnt & FirstPnt, gp_Pnt & LastPnt, Handle_Geom_Curve & extCurve, Standard_Boolean & isinfinite, Standard_Boolean & isOnPlane, const Handle_Geom_Plane &aPlane);
		%feature("autodoc", "1");
		Standard_Boolean ComputeGeometry(const TopoDS_Edge &anEdge1, const TopoDS_Edge &anEdge2, Handle_Geom_Curve & aCurve1, Handle_Geom_Curve & aCurve2, gp_Pnt & FirstPnt1, gp_Pnt & LastPnt1, gp_Pnt & FirstPnt2, gp_Pnt & LastPnt2, const Handle_Geom_Plane &aPlane);
		%feature("autodoc", "1");
		Standard_Boolean ComputeGeometry(const TopoDS_Edge &anEdge1, const TopoDS_Edge &anEdge2, Standard_Integer & indexExt, Handle_Geom_Curve & aCurve1, Handle_Geom_Curve & aCurve2, gp_Pnt & FirstPnt1, gp_Pnt & LastPnt1, gp_Pnt & FirstPnt2, gp_Pnt & LastPnt2, Handle_Geom_Curve & ExtCurve, Standard_Boolean & isinfinite1, Standard_Boolean & isinfinite2, const Handle_Geom_Plane &aPlane);
		%feature("autodoc", "1");
		Standard_Boolean ComputeGeomCurve(Handle_Geom_Curve & aCurve, const Standard_Real first1, const Standard_Real last1, gp_Pnt & FirstPnt1, gp_Pnt & LastPnt1, const Handle_Geom_Plane &aPlane, Standard_Boolean & isOnPlane);
		%feature("autodoc", "1");
		Standard_Boolean ComputeGeometry(const TopoDS_Vertex &aVertex, gp_Pnt & point, const Handle_Geom_Plane &aPlane, Standard_Boolean & isOnPlane);
		%feature("autodoc", "1");
		Standard_Boolean GetPlaneFromFace(const TopoDS_Face &aFace, gp_Pln & aPlane, Handle_Geom_Surface & aSurf, AIS_KindOfSurface & aSurfType, Standard_Real &OutValue);
		%feature("autodoc", "1");
		void InitFaceLength(const TopoDS_Face &aFace, gp_Pln & aPlane, Handle_Geom_Surface & aSurface, AIS_KindOfSurface & aSurfaceType, Standard_Real &OutValue);
		%feature("autodoc", "1");
		void ComputeLengthBetweenPlanarFaces(const TopoDS_Face &FirstFace, const TopoDS_Face &SecondFace, const gp_Pln &Plane1, const gp_Pln &Plane2, Standard_Real &OutValue, gp_Pnt & FirstAttach, gp_Pnt & SecondAttach, gp_Dir & DirAttach, const Standard_Boolean AutomaticPos, gp_Pnt & Position);
		%feature("autodoc", "1");
		void ComputeLengthBetweenCurvilinearFaces(const TopoDS_Face &FirstFace, const TopoDS_Face &SecondFace, Handle_Geom_Surface & FirstSurf, Handle_Geom_Surface & SecondSurf, const Standard_Boolean AutomaticPos, Standard_Real &OutValue, gp_Pnt & Position, gp_Pnt & FirstAttach, gp_Pnt & SecondAttach, gp_Dir & DirAttach);
		%feature("autodoc", "1");
		void ComputeAngleBetweenPlanarFaces(const TopoDS_Face &FirstFace, const TopoDS_Face &SecondFace, const Handle_Geom_Surface &Surf2, const gp_Ax1 &Axis, const Standard_Real Value, const Standard_Boolean AutomaticPos, gp_Pnt & Position, gp_Pnt & Center, gp_Pnt & FirstAttach, gp_Pnt & SecondAttach, gp_Dir & FirstDir, gp_Dir & SecondDir);
		%feature("autodoc", "1");
		void ComputeAngleBetweenCurvilinearFaces(const TopoDS_Face &FirstFace, const TopoDS_Face &SecondFace, const Handle_Geom_Surface &FirstSurf, const Handle_Geom_Surface &SecondSurf, const AIS_KindOfSurface FirstSurfType, const AIS_KindOfSurface SecondSurfType, const gp_Ax1 &Axis, const Standard_Real Value, const Standard_Boolean AutomaticPos, gp_Pnt & Position, gp_Pnt & Center, gp_Pnt & FirstAttach, gp_Pnt & SecondAttach, gp_Dir & FirstDir, gp_Dir & SecondDir, Handle_Geom_Plane & Plane);
		%feature("autodoc", "1");
		gp_Pnt ProjectPointOnPlane(const gp_Pnt &aPoint, const gp_Pln &aPlane);
		%feature("autodoc", "1");
		gp_Pnt ProjectPointOnLine(const gp_Pnt &aPoint, const gp_Lin &aLine);
		%feature("autodoc", "1");
		gp_Pnt TranslatePointToBound(const gp_Pnt &aPoint, const gp_Dir &aDir, const Bnd_Box &aBndBox);
		%feature("autodoc", "1");
		Standard_Boolean InDomain(const Standard_Real aFirstPar, const Standard_Real aLastPar, const Standard_Real anAttachPar);
		%feature("autodoc", "1");
		gp_Pnt NearestApex(const gp_Elips &elips, const gp_Pnt &pApex, const gp_Pnt &nApex, const Standard_Real fpara, const Standard_Real lpara, Standard_Boolean & IsInDomain);
		%feature("autodoc", "1");
		Standard_Real DistanceFromApex(const gp_Elips &elips, const gp_Pnt &Apex, const Standard_Real par);
		%feature("autodoc", "1");
		void ComputeProjEdgePresentation(const Handle_Prs3d_Presentation &aPres, const Handle_AIS_Drawer &aDrawer, const TopoDS_Edge &anEdge, const Handle_Geom_Curve &ProjCurve, const gp_Pnt &FirstP, const gp_Pnt &LastP, const Quantity_NameOfColor aColor=Quantity_NOC_PURPLE, const Standard_Real aWidth=2, const Aspect_TypeOfLine aProjTOL=Aspect_TOL_DASH, const Aspect_TypeOfLine aCallTOL=Aspect_TOL_DOT);
		%feature("autodoc", "1");
		void ComputeProjVertexPresentation(const Handle_Prs3d_Presentation &aPres, const Handle_AIS_Drawer &aDrawer, const TopoDS_Vertex &aVertex, const gp_Pnt &ProjPoint, const Quantity_NameOfColor aColor=Quantity_NOC_PURPLE, const Standard_Real aWidth=2, const Aspect_TypeOfMarker aProjTOM=Aspect_TOM_PLUS, const Aspect_TypeOfLine aCallTOL=Aspect_TOL_DOT);

};
%extend AIS {
	~AIS() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AIS\n");}
	}
};

%nodefaultctor AIS_DataMapNodeOfDataMapofIntegerListOfinteractive;
class AIS_DataMapNodeOfDataMapofIntegerListOfinteractive : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		AIS_DataMapNodeOfDataMapofIntegerListOfinteractive(const Standard_Integer &K, const AIS_ListOfInteractive &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Standard_Integer & Key() const;
		%feature("autodoc", "1");
		AIS_ListOfInteractive & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AIS_DataMapNodeOfDataMapofIntegerListOfinteractive {
	Handle_AIS_DataMapNodeOfDataMapofIntegerListOfinteractive GetHandle() {
	return *(Handle_AIS_DataMapNodeOfDataMapofIntegerListOfinteractive*) &$self;
	}
};
%extend AIS_DataMapNodeOfDataMapofIntegerListOfinteractive {
	~AIS_DataMapNodeOfDataMapofIntegerListOfinteractive() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AIS_DataMapNodeOfDataMapofIntegerListOfinteractive\n");}
	}
};

%nodefaultctor AIS_AngleDimension;
class AIS_AngleDimension : public AIS_Relation {
	public:
		%feature("autodoc", "1");
		AIS_AngleDimension(const TopoDS_Edge &aFirstEdge, const TopoDS_Edge &aSecondEdge, const Handle_Geom_Plane &aPlane, const Standard_Real aVal, const TCollection_ExtendedString &aText);
		%feature("autodoc", "1");
		AIS_AngleDimension(const TopoDS_Edge &aFirstEdge, const TopoDS_Edge &aSecondEdge, const Handle_Geom_Plane &aPlane, const Standard_Real aVal, const TCollection_ExtendedString &aText, const gp_Pnt &aPosition, const DsgPrs_ArrowSide aSymbolPrs, const Standard_Real anArrowSize=0.0);
		%feature("autodoc", "1");
		AIS_AngleDimension(const TopoDS_Face &aCone, const Standard_Real aVal, const TCollection_ExtendedString &aText);
		%feature("autodoc", "1");
		AIS_AngleDimension(const TopoDS_Face &aCone, const Standard_Real aVal, const TCollection_ExtendedString &aText, const gp_Pnt &aPosition, const DsgPrs_ArrowSide aSymbolPrs, const Standard_Real anArrowSize=1.0000000000000000208166817117216851329430937767e-2);
		%feature("autodoc", "1");
		AIS_AngleDimension(const TopoDS_Face &aFirstFace, const TopoDS_Face &aSecondFace, const gp_Ax1 &anAxis, const Standard_Real aVal, const TCollection_ExtendedString &aText);
		%feature("autodoc", "1");
		AIS_AngleDimension(const TopoDS_Face &aFirstFace, const TopoDS_Face &aSecondFace, const gp_Ax1 &anAxis, const Standard_Real aVal, const TCollection_ExtendedString &aText, const gp_Pnt &aPosition, const DsgPrs_ArrowSide aSymbolPrs, const Standard_Real anArrowSize=0.0);
		%feature("autodoc", "1");
		AIS_AngleDimension(const TopoDS_Face &aFFace, const TopoDS_Face &aSFace, const Standard_Real aVal, const TCollection_ExtendedString &aText);
		%feature("autodoc", "1");
		AIS_AngleDimension(const TopoDS_Face &aFFace, const TopoDS_Face &aSFace, const Standard_Real aVal, const TCollection_ExtendedString &aText, const gp_Pnt &aPosition, const DsgPrs_ArrowSide aSymbolPrs, const Standard_Real anArrowSize=1.0000000000000000208166817117216851329430937767e-3);
		%feature("autodoc", "1");
		const gp_Ax1 & Axis() const;
		%feature("autodoc", "1");
		void SetAxis(const gp_Ax1 &anAxis);
		%feature("autodoc", "1");
		void SetConeFace(const TopoDS_Face &aConeFace);
		%feature("autodoc", "1");
		virtual		void SetFirstShape(const TopoDS_Shape &aFShape);
		%feature("autodoc", "1");
		virtual		void SetSecondShape(const TopoDS_Shape &aSShape);
		%feature("autodoc", "1");
		virtual		AIS_KindOfDimension KindOfDimension() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsMovable() const;
		%feature("autodoc", "1");
		virtual		void Compute(const Handle_Prs3d_Projector &aProjector, const Handle_Geom_Transformation &aTrsf, const Handle_Prs3d_Presentation &aPresentation);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AIS_AngleDimension {
	Handle_AIS_AngleDimension GetHandle() {
	return *(Handle_AIS_AngleDimension*) &$self;
	}
};
%extend AIS_AngleDimension {
	~AIS_AngleDimension() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AIS_AngleDimension\n");}
	}
};

%nodefaultctor AIS_ListNodeOfListOfInteractive;
class AIS_ListNodeOfListOfInteractive : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		AIS_ListNodeOfListOfInteractive(const Handle_AIS_InteractiveObject &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_AIS_InteractiveObject & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AIS_ListNodeOfListOfInteractive {
	Handle_AIS_ListNodeOfListOfInteractive GetHandle() {
	return *(Handle_AIS_ListNodeOfListOfInteractive*) &$self;
	}
};
%extend AIS_ListNodeOfListOfInteractive {
	~AIS_ListNodeOfListOfInteractive() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AIS_ListNodeOfListOfInteractive\n");}
	}
};

%nodefaultctor AIS_TangentRelation;
class AIS_TangentRelation : public AIS_Relation {
	public:
		%feature("autodoc", "1");
		AIS_TangentRelation(const TopoDS_Shape &aFShape, const TopoDS_Shape &aSShape, const Handle_Geom_Plane &aPlane, const Standard_Integer anExternRef=0);
		%feature("autodoc", "1");
		Standard_Integer ExternRef();
		%feature("autodoc", "1");
		void SetExternRef(const Standard_Integer aRef);
		%feature("autodoc", "1");
		virtual		void Compute(const Handle_Prs3d_Projector &aProjector, const Handle_Geom_Transformation &aTrsf, const Handle_Prs3d_Presentation &aPresentation);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AIS_TangentRelation {
	Handle_AIS_TangentRelation GetHandle() {
	return *(Handle_AIS_TangentRelation*) &$self;
	}
};
%extend AIS_TangentRelation {
	~AIS_TangentRelation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AIS_TangentRelation\n");}
	}
};

%nodefaultctor AIS_C0RegularityFilter;
class AIS_C0RegularityFilter : public SelectMgr_Filter {
	public:
		%feature("autodoc", "1");
		AIS_C0RegularityFilter(const TopoDS_Shape &aShape);
		%feature("autodoc", "1");
		virtual		Standard_Boolean ActsOn(const TopAbs_ShapeEnum aType) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsOk(const Handle_SelectMgr_EntityOwner &EO) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AIS_C0RegularityFilter {
	Handle_AIS_C0RegularityFilter GetHandle() {
	return *(Handle_AIS_C0RegularityFilter*) &$self;
	}
};
%extend AIS_C0RegularityFilter {
	~AIS_C0RegularityFilter() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AIS_C0RegularityFilter\n");}
	}
};

%nodefaultctor AIS_EqualRadiusRelation;
class AIS_EqualRadiusRelation : public AIS_Relation {
	public:
		%feature("autodoc", "1");
		AIS_EqualRadiusRelation(const TopoDS_Edge &aFirstEdge, const TopoDS_Edge &aSecondEdge, const Handle_Geom_Plane &aPlane);
		%feature("autodoc", "1");
		virtual		void Compute(const Handle_Prs3d_Projector &aProjector, const Handle_Geom_Transformation &aTrsf, const Handle_Prs3d_Presentation &aPresentation);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AIS_EqualRadiusRelation {
	Handle_AIS_EqualRadiusRelation GetHandle() {
	return *(Handle_AIS_EqualRadiusRelation*) &$self;
	}
};
%extend AIS_EqualRadiusRelation {
	~AIS_EqualRadiusRelation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AIS_EqualRadiusRelation\n");}
	}
};

%nodefaultctor AIS_Point;
class AIS_Point : public AIS_InteractiveObject {
	public:
		%feature("autodoc", "1");
		AIS_Point(const Handle_Geom_Point &aComponent);
		%feature("autodoc", "1");
		virtual		Standard_Integer Signature() const;
		%feature("autodoc", "1");
		virtual		AIS_KindOfInteractive Type() const;
		%feature("autodoc", "1");
		Handle_Geom_Point Component();
		%feature("autodoc", "1");
		void SetComponent(const Handle_Geom_Point &aComponent);
		%feature("autodoc", "1");
		virtual		Standard_Boolean AcceptDisplayMode(const Standard_Integer aMode) const;
		%feature("autodoc", "1");
		virtual		void Compute(const Handle_Prs3d_Projector &aProjector, const Handle_Geom_Transformation &aTrsf, const Handle_Prs3d_Presentation &aPresentation);
		%feature("autodoc", "1");
		virtual		void SetColor(const Quantity_NameOfColor aColor);
		%feature("autodoc", "1");
		virtual		void SetColor(const Quantity_Color &aColor);
		%feature("autodoc", "1");
		virtual		void UnsetColor();
		%feature("autodoc", "1");
		void SetMarker(const Aspect_TypeOfMarker aType);
		%feature("autodoc", "1");
		void UnsetMarker();
		%feature("autodoc", "1");
		Standard_Boolean HasMarker() const;
		%feature("autodoc", "1");
		TopoDS_Vertex Vertex() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AIS_Point {
	Handle_AIS_Point GetHandle() {
	return *(Handle_AIS_Point*) &$self;
	}
};
%extend AIS_Point {
	~AIS_Point() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AIS_Point\n");}
	}
};

%nodefaultctor AIS_MapIteratorOfMapOfInteractive;
class AIS_MapIteratorOfMapOfInteractive : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		AIS_MapIteratorOfMapOfInteractive();
		%feature("autodoc", "1");
		AIS_MapIteratorOfMapOfInteractive(const AIS_MapOfInteractive &aMap);
		%feature("autodoc", "1");
		void Initialize(const AIS_MapOfInteractive &aMap);
		%feature("autodoc", "1");
		const Handle_AIS_InteractiveObject & Key() const;

};
%extend AIS_MapIteratorOfMapOfInteractive {
	~AIS_MapIteratorOfMapOfInteractive() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AIS_MapIteratorOfMapOfInteractive\n");}
	}
};

%nodefaultctor AIS_EqualDistanceRelation;
class AIS_EqualDistanceRelation : public AIS_Relation {
	public:
		%feature("autodoc", "1");
		AIS_EqualDistanceRelation(const TopoDS_Shape &aShape1, const TopoDS_Shape &aShape2, const TopoDS_Shape &aShape3, const TopoDS_Shape &aShape4, const Handle_Geom_Plane &aPlane);
		%feature("autodoc", "1");
		void SetShape3(const TopoDS_Shape &aShape);
		%feature("autodoc", "1");
		const TopoDS_Shape & Shape3() const;
		%feature("autodoc", "1");
		void SetShape4(const TopoDS_Shape &aShape);
		%feature("autodoc", "1");
		const TopoDS_Shape & Shape4() const;
		%feature("autodoc", "1");
		virtual		void Compute(const Handle_Prs3d_Projector &aProjector, const Handle_Geom_Transformation &aTrsf, const Handle_Prs3d_Presentation &aPresentation);
		%feature("autodoc", "1");
		void ComputeTwoEdgesLength(const Handle_Prs3d_Presentation &aPresentation, const Handle_AIS_Drawer &aDrawer, const Standard_Real ArrowSize, const TopoDS_Edge &FirstEdge, const TopoDS_Edge &SecondEdge, const Handle_Geom_Plane &Plane, const Standard_Boolean AutomaticPos, const Standard_Boolean IsSetBndBox, const Bnd_Box &BndBox, gp_Pnt & Position, gp_Pnt & FirstAttach, gp_Pnt & SecondAttach, gp_Pnt & FirstExtreme, gp_Pnt & SecondExtreme, DsgPrs_ArrowSide & SymbolPrs);
		%feature("autodoc", "1");
		void ComputeTwoVerticesLength(const Handle_Prs3d_Presentation &aPresentation, const Handle_AIS_Drawer &aDrawer, const Standard_Real ArrowSize, const TopoDS_Vertex &FirstVertex, const TopoDS_Vertex &SecondVertex, const Handle_Geom_Plane &Plane, const Standard_Boolean AutomaticPos, const Standard_Boolean IsSetBndBox, const Bnd_Box &BndBox, const AIS_TypeOfDist TypeDist, gp_Pnt & Position, gp_Pnt & FirstAttach, gp_Pnt & SecondAttach, gp_Pnt & FirstExtreme, gp_Pnt & SecondExtreme, DsgPrs_ArrowSide & SymbolPrs);
		%feature("autodoc", "1");
		void ComputeOneEdgeOneVertexLength(const Handle_Prs3d_Presentation &aPresentation, const Handle_AIS_Drawer &aDrawer, const Standard_Real ArrowSize, const TopoDS_Shape &FirstShape, const TopoDS_Shape &SecondShape, const Handle_Geom_Plane &Plane, const Standard_Boolean AutomaticPos, const Standard_Boolean IsSetBndBox, const Bnd_Box &BndBox, gp_Pnt & Position, gp_Pnt & FirstAttach, gp_Pnt & SecondAttach, gp_Pnt & FirstExtreme, gp_Pnt & SecondExtreme, DsgPrs_ArrowSide & SymbolPrs);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AIS_EqualDistanceRelation {
	Handle_AIS_EqualDistanceRelation GetHandle() {
	return *(Handle_AIS_EqualDistanceRelation*) &$self;
	}
};
%extend AIS_EqualDistanceRelation {
	~AIS_EqualDistanceRelation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AIS_EqualDistanceRelation\n");}
	}
};

%nodefaultctor AIS_ConnectedShape;
class AIS_ConnectedShape : public AIS_ConnectedInteractive {
	public:
		%feature("autodoc", "1");
		AIS_ConnectedShape(const PrsMgr_TypeOfPresentation3d aTypeOfPresentation=PrsMgr_TOP_ProjectorDependant);
		%feature("autodoc", "1");
		AIS_ConnectedShape(const Handle_AIS_Shape &aInteractiveShape, const PrsMgr_TypeOfPresentation3d aTypeOfPresentation=PrsMgr_TOP_ProjectorDependant);
		%feature("autodoc", "1");
		AIS_ConnectedShape(const Handle_AIS_ConnectedShape &aConnectedShape, const PrsMgr_TypeOfPresentation3d aTypeOfPresentation=PrsMgr_TOP_ProjectorDependant);
		%feature("autodoc", "1");
		virtual		AIS_KindOfInteractive Type() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer Signature() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean AcceptShapeDecomposition() const;
		%feature("autodoc", "1");
		virtual		void Connect(const Handle_AIS_InteractiveObject &anotherIObj);
		%feature("autodoc", "1");
		virtual		void Connect(const Handle_AIS_InteractiveObject &anotherIobj, const TopLoc_Location &aLocation);
		%feature("autodoc", "1");
		virtual		void Compute(const Handle_PrsMgr_PresentationManager3d &aPresentationManager, const Handle_Prs3d_Presentation &aPresentation, const Standard_Integer aMode=0);
		%feature("autodoc", "1");
		virtual		void Compute(const Handle_PrsMgr_PresentationManager2d &aPresentationManager, const Handle_Graphic2d_GraphicObject &aPresentation, const Standard_Integer aMode=0);
		%feature("autodoc", "1");
		const TopoDS_Shape & Shape();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AIS_ConnectedShape {
	Handle_AIS_ConnectedShape GetHandle() {
	return *(Handle_AIS_ConnectedShape*) &$self;
	}
};
%extend AIS_ConnectedShape {
	~AIS_ConnectedShape() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AIS_ConnectedShape\n");}
	}
};

%nodefaultctor AIS_DataMapNodeOfDataMapOfIOStatus;
class AIS_DataMapNodeOfDataMapOfIOStatus : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		AIS_DataMapNodeOfDataMapOfIOStatus(const Handle_AIS_InteractiveObject &K, const Handle_AIS_GlobalStatus &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_AIS_InteractiveObject & Key() const;
		%feature("autodoc", "1");
		Handle_AIS_GlobalStatus & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AIS_DataMapNodeOfDataMapOfIOStatus {
	Handle_AIS_DataMapNodeOfDataMapOfIOStatus GetHandle() {
	return *(Handle_AIS_DataMapNodeOfDataMapOfIOStatus*) &$self;
	}
};
%extend AIS_DataMapNodeOfDataMapOfIOStatus {
	~AIS_DataMapNodeOfDataMapOfIOStatus() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AIS_DataMapNodeOfDataMapOfIOStatus\n");}
	}
};

%nodefaultctor AIS_DimensionOwner;
class AIS_DimensionOwner : public SelectMgr_EntityOwner {
	public:
		%feature("autodoc", "1");
		AIS_DimensionOwner(const Handle_SelectMgr_SelectableObject &aSO, const Standard_Integer aPriority=0);
		%feature("autodoc", "1");
		void SetShape(const TopoDS_Shape &aShape);
		%feature("autodoc", "1");
		const TopoDS_Shape & FixedShape() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AIS_DimensionOwner {
	Handle_AIS_DimensionOwner GetHandle() {
	return *(Handle_AIS_DimensionOwner*) &$self;
	}
};
%extend AIS_DimensionOwner {
	~AIS_DimensionOwner() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AIS_DimensionOwner\n");}
	}
};

%nodefaultctor AIS_LengthDimension;
class AIS_LengthDimension : public AIS_Relation {
	public:
		%feature("autodoc", "1");
		AIS_LengthDimension(const TopoDS_Face &aFirstFace, const TopoDS_Face &aSecondFace, const Standard_Real aVal, const TCollection_ExtendedString &aText);
		%feature("autodoc", "1");
		AIS_LengthDimension(const TopoDS_Face &aFirstFace, const TopoDS_Face &aSecondFace, const Standard_Real aVal, const TCollection_ExtendedString &aText, const gp_Pnt &aPosition, const DsgPrs_ArrowSide aSymbolPrs, const Standard_Real anArrowSize=0.0);
		%feature("autodoc", "1");
		AIS_LengthDimension(const TopoDS_Face &Face, const TopoDS_Edge &Edge, const Standard_Real Val, const TCollection_ExtendedString &Text);
		%feature("autodoc", "1");
		AIS_LengthDimension(const TopoDS_Shape &aFShape, const TopoDS_Shape &aSShape, const Handle_Geom_Plane &aPlane, const Standard_Real aVal, const TCollection_ExtendedString &aText);
		%feature("autodoc", "1");
		AIS_LengthDimension(const TopoDS_Shape &aFShape, const TopoDS_Shape &aSShape, const Handle_Geom_Plane &aPlane, const Standard_Real aVal, const TCollection_ExtendedString &aText, const gp_Pnt &aPosition, const DsgPrs_ArrowSide aSymbolPrs, const AIS_TypeOfDist aTypeDist, const Standard_Real anArrowSize=0.0);
		%feature("autodoc", "1");
		virtual		void SetFirstShape(const TopoDS_Shape &aFShape);
		%feature("autodoc", "1");
		virtual		void SetSecondShape(const TopoDS_Shape &aSShape);
		%feature("autodoc", "1");
		virtual		AIS_KindOfDimension KindOfDimension() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsMovable() const;
		%feature("autodoc", "1");
		AIS_TypeOfDist TypeOfDist() const;
		%feature("autodoc", "1");
		void SetTypeOfDist(const AIS_TypeOfDist aTypeDist);
		%feature("autodoc", "1");
		virtual		void Compute(const Handle_Prs3d_Projector &aProjector, const Handle_Geom_Transformation &aTrsf, const Handle_Prs3d_Presentation &aPresentation);
		%feature("autodoc", "1");
		void ComputeTwoEdgesLength(const Handle_Prs3d_Presentation &aPresentation, const Handle_AIS_Drawer &aDrawer, const TCollection_ExtendedString &aText, const Standard_Real ArrowSize, const TopoDS_Edge &FirstEdge, const TopoDS_Edge &SecondEdge, const Handle_Geom_Plane &Plane, const Standard_Boolean AutomaticPos, const Standard_Boolean IsSetBndBox, const Bnd_Box &BndBox, Standard_Integer & ExtShape, Standard_Real &OutValue, gp_Dir & DirAttach, gp_Pnt & Position, gp_Pnt & FirstAttach, gp_Pnt & SecondAttach, DsgPrs_ArrowSide & SymbolPrs);
		%feature("autodoc", "1");
		void ComputeOneEdgeOneVertexLength(const Handle_Prs3d_Presentation &aPresentation, const Handle_AIS_Drawer &aDrawer, const TCollection_ExtendedString &aText, const Standard_Real ArrowSize, const TopoDS_Shape &FirstShape, const TopoDS_Shape &SecondShape, const Handle_Geom_Plane &Plane, const Standard_Boolean AutomaticPos, const Standard_Boolean IsSetBndBox, const Bnd_Box &BndBox, Standard_Integer & ExtShape, Standard_Real &OutValue, gp_Dir & DirAttach, gp_Pnt & Position, gp_Pnt & FirstAttach, gp_Pnt & SecondAttach, DsgPrs_ArrowSide & SymbolPrs);
		%feature("autodoc", "1");
		void ComputeTwoVerticesLength(const Handle_Prs3d_Presentation &aPresentation, const Handle_AIS_Drawer &aDrawer, const TCollection_ExtendedString &aText, const Standard_Real ArrowSize, const TopoDS_Vertex &FirstVertex, const TopoDS_Vertex &SecondVertex, const Handle_Geom_Plane &Plane, const Standard_Boolean AutomaticPos, const Standard_Boolean IsSetBndBox, const Bnd_Box &BndBox, const AIS_TypeOfDist TypeDist, Standard_Integer & ExtShape, Standard_Real &OutValue, gp_Dir & DirAttach, gp_Pnt & Position, gp_Pnt & FirstAttach, gp_Pnt & SecondAttach, DsgPrs_ArrowSide & SymbolPrs);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AIS_LengthDimension {
	Handle_AIS_LengthDimension GetHandle() {
	return *(Handle_AIS_LengthDimension*) &$self;
	}
};
%extend AIS_LengthDimension {
	~AIS_LengthDimension() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AIS_LengthDimension\n");}
	}
};

%nodefaultctor AIS_PlaneTrihedron;
class AIS_PlaneTrihedron : public AIS_InteractiveObject {
	public:
		%feature("autodoc", "1");
		AIS_PlaneTrihedron(const Handle_Geom_Plane &aPlane);
		%feature("autodoc", "1");
		Handle_Geom_Plane Component();
		%feature("autodoc", "1");
		void SetComponent(const Handle_Geom_Plane &aPlane);
		%feature("autodoc", "1");
		Handle_AIS_Line XAxis() const;
		%feature("autodoc", "1");
		Handle_AIS_Line YAxis() const;
		%feature("autodoc", "1");
		Handle_AIS_Point Position() const;
		%feature("autodoc", "1");
		void SetLength(const Standard_Real theLength);
		%feature("autodoc", "1");
		Standard_Real GetLength() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean AcceptDisplayMode(const Standard_Integer aMode) const;
		%feature("autodoc", "1");
		virtual		void Compute(const Handle_Prs3d_Projector &aProjector, const Handle_Geom_Transformation &aTrsf, const Handle_Prs3d_Presentation &aPresentation);
		%feature("autodoc", "1");
		virtual		Standard_Integer Signature() const;
		%feature("autodoc", "1");
		virtual		AIS_KindOfInteractive Type() const;
		%feature("autodoc", "1");
		virtual		void SetColor(const Quantity_NameOfColor aColor);
		%feature("autodoc", "1");
		virtual		void SetColor(const Quantity_Color &aColor);
		%feature("autodoc", "1");
		void SetXLabel(const TCollection_AsciiString &aLabel);
		%feature("autodoc", "1");
		void SetYLabel(const TCollection_AsciiString &aLabel);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AIS_PlaneTrihedron {
	Handle_AIS_PlaneTrihedron GetHandle() {
	return *(Handle_AIS_PlaneTrihedron*) &$self;
	}
};
%extend AIS_PlaneTrihedron {
	~AIS_PlaneTrihedron() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AIS_PlaneTrihedron\n");}
	}
};

%nodefaultctor AIS_SequenceOfDimension;
class AIS_SequenceOfDimension : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		AIS_SequenceOfDimension();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const AIS_SequenceOfDimension & Assign(const AIS_SequenceOfDimension &Other);
		%feature("autodoc", "1");
		void Append(const Handle_AIS_Relation &T);
		%feature("autodoc", "1");
		void Append(AIS_SequenceOfDimension & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_AIS_Relation &T);
		%feature("autodoc", "1");
		void Prepend(AIS_SequenceOfDimension & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_AIS_Relation &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, AIS_SequenceOfDimension & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_AIS_Relation &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, AIS_SequenceOfDimension & S);
		%feature("autodoc", "1");
		const Handle_AIS_Relation & First() const;
		%feature("autodoc", "1");
		const Handle_AIS_Relation & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, AIS_SequenceOfDimension & S);
		%feature("autodoc", "1");
		const Handle_AIS_Relation & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_AIS_Relation & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_AIS_Relation &I);
		%feature("autodoc", "1");
		Handle_AIS_Relation & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_AIS_Relation & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%extend AIS_SequenceOfDimension {
	~AIS_SequenceOfDimension() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AIS_SequenceOfDimension\n");}
	}
};

%nodefaultctor AIS_LocalContext;
class AIS_LocalContext : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		AIS_LocalContext();
		%feature("autodoc", "1");
		AIS_LocalContext(const Handle_AIS_InteractiveContext &aCtx, const Standard_Integer anIndex, const Standard_Boolean LoadDisplayed=1, const Standard_Boolean AcceptStandardModes=1, const Standard_Boolean AcceptErase=0, const Standard_Boolean UseBothViewers=0);
		%feature("autodoc", "1");
		void AcceptErase(const Standard_Boolean aStatus);
		%feature("autodoc", "1");
		Standard_Boolean AcceptErase() const;
		%feature("autodoc", "1");
		void SetContext(const Handle_AIS_InteractiveContext &aCtx);
		%feature("autodoc", "1");
		const TCollection_AsciiString & SelectionName() const;
		%feature("autodoc", "1");
		void Terminate(const Standard_Boolean updateviewer=1);
		%feature("autodoc", "1");
		Standard_Boolean HasSameProjector(const Select3D_Projector &aPrj) const;
		%feature("autodoc", "1");
		Standard_Boolean Display(const Handle_AIS_InteractiveObject &anInteractive, const Standard_Integer DisplayMode=0, const Standard_Boolean AllowShapeDecomposition=1, const Standard_Integer ActivationMode=0);
		%feature("autodoc", "1");
		Standard_Boolean Load(const Handle_AIS_InteractiveObject &anInteractive, const Standard_Boolean AllowShapeDecomposition=1, const Standard_Integer ActivationMode=0);
		%feature("autodoc", "1");
		Standard_Boolean Erase(const Handle_AIS_InteractiveObject &anInteractive);
		%feature("autodoc", "1");
		Standard_Boolean Remove(const Handle_AIS_InteractiveObject &aSelectable);
		%feature("autodoc", "1");
		Standard_Boolean ClearPrs(const Handle_AIS_InteractiveObject &anInteractive, const Standard_Integer aMode);
		%feature("autodoc", "1");
		void SetShapeDecomposition(const Handle_AIS_InteractiveObject &aStoredObject, const Standard_Boolean aStatus);
		%feature("autodoc", "1");
		void Clear(const AIS_ClearMode atype=AIS_CM_All);
		%feature("autodoc", "1");
		void ActivateMode(const Handle_AIS_InteractiveObject &aSelectable, const Standard_Integer aMode);
		%feature("autodoc", "1");
		void DeactivateMode(const Handle_AIS_InteractiveObject &aSelectable, const Standard_Integer aMode);
		%feature("autodoc", "1");
		void Deactivate(const Handle_AIS_InteractiveObject &aSelectable);
		%feature("autodoc", "1");
		void ActivateStandardMode(const TopAbs_ShapeEnum aType);
		%feature("autodoc", "1");
		void DeactivateStandardMode(const TopAbs_ShapeEnum aType);
		%feature("autodoc", "1");
		const TColStd_ListOfInteger & StandardModes() const;
		%feature("autodoc", "1");
		void AddFilter(const Handle_SelectMgr_Filter &aFilter);
		%feature("autodoc", "1");
		void RemoveFilter(const Handle_SelectMgr_Filter &aFilter);
		%feature("autodoc", "1");
		const SelectMgr_ListOfFilter & ListOfFilter() const;
		%feature("autodoc", "1");
		const Handle_SelectMgr_OrFilter & Filter() const;
		%feature("autodoc", "1");
		void SetAutomaticHilight(const Standard_Boolean aStatus);
		%feature("autodoc", "1");
		Standard_Boolean AutomaticHilight() const;
		%feature("autodoc", "1");
		AIS_StatusOfDetection MoveTo(const Standard_Integer Xpix, const Standard_Integer Ypix, const Handle_V3d_View &aview);
		%feature("autodoc", "1");
		Standard_Boolean HasNextDetected() const;
		%feature("autodoc", "1");
		Standard_Integer HilightNextDetected(const Handle_V3d_View &aView);
		%feature("autodoc", "1");
		Standard_Integer HilightPreviousDetected(const Handle_V3d_View &aView);
		%feature("autodoc", "1");
		Standard_Boolean UnhilightLastDetected(const Handle_V3d_View &aView);
		%feature("autodoc", "1");
		AIS_StatusOfPick Select(const Standard_Boolean updateviewer=1);
		%feature("autodoc", "1");
		AIS_StatusOfPick ShiftSelect(const Standard_Boolean updateviewer=1);
		%feature("autodoc", "1");
		AIS_StatusOfPick Select(const Standard_Integer XPMin, const Standard_Integer YPMin, const Standard_Integer XPMax, const Standard_Integer YPMax, const Handle_V3d_View &aView, const Standard_Boolean updateviewer=1);
		%feature("autodoc", "1");
		AIS_StatusOfPick ShiftSelect(const Standard_Integer XPMin, const Standard_Integer YPMin, const Standard_Integer XPMax, const Standard_Integer YPMax, const Handle_V3d_View &aView, const Standard_Boolean updateviewer=1);
		%feature("autodoc", "1");
		AIS_StatusOfPick Select(const TColgp_Array1OfPnt2d &Polyline, const Handle_V3d_View &aView, const Standard_Boolean updateviewer=1);
		%feature("autodoc", "1");
		AIS_StatusOfPick ShiftSelect(const TColgp_Array1OfPnt2d &Polyline, const Handle_V3d_View &aView, const Standard_Boolean updateviewer=1);
		%feature("autodoc", "1");
		void HilightPicked(const Standard_Boolean updateviewer=1);
		%feature("autodoc", "1");
		void UnhilightPicked(const Standard_Boolean updateviewer=1);
		%feature("autodoc", "1");
		void UpdateSelected(const Standard_Boolean updateviewer=1);
		%feature("autodoc", "1");
		void UpdateSelected(const Handle_AIS_InteractiveObject &anobj, const Standard_Boolean updateviewer=1);
		%feature("autodoc", "1");
		void SetSelected(const Handle_AIS_InteractiveObject &anobj, const Standard_Boolean updateviewer=1);
		%feature("autodoc", "1");
		void AddOrRemoveSelected(const Handle_AIS_InteractiveObject &anobj, const Standard_Boolean updateviewer=1);
		%feature("autodoc", "1");
		void AddOrRemoveSelected(const TopoDS_Shape &aShape, const Standard_Boolean updateviewer=1);
		%feature("autodoc", "1");
		void AddOrRemoveSelected(const Handle_SelectMgr_EntityOwner &Ownr, const Standard_Boolean updateviewer=1);
		%feature("autodoc", "1");
		void ClearSelected(const Standard_Boolean updateviewer=1);
		%feature("autodoc", "1");
		Standard_Boolean HasDetected() const;
		%feature("autodoc", "1");
		void InitDetected();
		%feature("autodoc", "1");
		Standard_Boolean MoreDetected() const;
		%feature("autodoc", "1");
		void NextDetected();
		%feature("autodoc", "1");
		const TopoDS_Shape & DetectedCurrentShape() const;
		%feature("autodoc", "1");
		Handle_AIS_InteractiveObject DetectedCurrentObject() const;
		%feature("autodoc", "1");
		Standard_Boolean HasDetectedShape() const;
		%feature("autodoc", "1");
		const TopoDS_Shape & DetectedShape() const;
		%feature("autodoc", "1");
		Handle_AIS_InteractiveObject DetectedInteractive() const;
		%feature("autodoc", "1");
		Handle_SelectMgr_EntityOwner DetectedOwner() const;
		%feature("autodoc", "1");
		void InitSelected();
		%feature("autodoc", "1");
		Standard_Boolean MoreSelected() const;
		%feature("autodoc", "1");
		void NextSelected();
		%feature("autodoc", "1");
		Standard_Boolean HasShape() const;
		%feature("autodoc", "1");
		const TopoDS_Shape & SelectedShape() const;
		%feature("autodoc", "1");
		Handle_SelectMgr_EntityOwner SelectedOwner() const;
		%feature("autodoc", "1");
		Standard_Boolean IsSelected(const Handle_AIS_InteractiveObject &aniobj) const;
		%feature("autodoc", "1");
		Standard_Boolean IsSelected(const Handle_SelectMgr_EntityOwner &anOwner) const;
		%feature("autodoc", "1");
		Handle_AIS_InteractiveObject SelectedInteractive() const;
		%feature("autodoc", "1");
		Standard_Boolean HasApplicative() const;
		%feature("autodoc", "1");
		const Handle_Standard_Transient & SelectedApplicative() const;
		%feature("autodoc", "1");
		void SetDisplayPriority(const Handle_AIS_InteractiveObject &anObject, const Standard_Integer Prior);
		%feature("autodoc", "1");
		Standard_Integer DisplayedObjects(TColStd_MapOfTransient & theMapToFill) const;
		%feature("autodoc", "1");
		Standard_Boolean IsIn(const Handle_AIS_InteractiveObject &anObject) const;
		%feature("autodoc", "1");
		Standard_Boolean IsDisplayed(const Handle_AIS_InteractiveObject &anObject) const;
		%feature("autodoc", "1");
		Standard_Boolean IsDisplayed(const Handle_AIS_InteractiveObject &anObject, const Standard_Integer aMode) const;
		%feature("autodoc", "1");
		const TColStd_ListOfInteger & SelectionModes(const Handle_AIS_InteractiveObject &anObject) const;
		%feature("autodoc", "1");
		void SubIntensityOn(const Handle_AIS_InteractiveObject &anObject);
		%feature("autodoc", "1");
		void SubIntensityOff(const Handle_AIS_InteractiveObject &anObject);
		%feature("autodoc", "1");
		void Hilight(const Handle_AIS_InteractiveObject &anObject);
		%feature("autodoc", "1");
		void Hilight(const Handle_AIS_InteractiveObject &anObject, const Quantity_NameOfColor aCol);
		%feature("autodoc", "1");
		void Unhilight(const Handle_AIS_InteractiveObject &anObject);
		%feature("autodoc", "1");
		Standard_Boolean IsHilighted(const Handle_AIS_InteractiveObject &anObject) const;
		%feature("autodoc", "1");
		Standard_Boolean IsHilighted(const Handle_AIS_InteractiveObject &anObject, Standard_Boolean & WithColor, Quantity_NameOfColor & HiCol) const;
		%feature("autodoc", "1");
		void SetSensitivity(const Standard_Real aPrecision);
		%feature("autodoc", "1");
		void SetSensitivity(const Standard_Integer aPrecision=2);
		%feature("autodoc", "1");
		Standard_Boolean BeginImmediateDraw();
		%feature("autodoc", "1");
		Standard_Boolean ImmediateAdd(const Handle_AIS_InteractiveObject &anIObj, const Standard_Integer aMode=0);
		%feature("autodoc", "1");
		Standard_Boolean ImmediateRemove(const Handle_AIS_InteractiveObject &anIObj, const Standard_Integer aMode=0);
		%feature("autodoc", "1");
		Standard_Boolean EndImmediateDraw(const Handle_V3d_View &aView, const Standard_Boolean DoubleBuf=0);
		%feature("autodoc", "1");
		Standard_Boolean IsImmediateModeOn() const;
		%feature("autodoc", "1");
		void UpdateConversion();
		%feature("autodoc", "1");
		void UpdateSort();
		%feature("autodoc", "1");
		void LoadContextObjects();
		%feature("autodoc", "1");
		void UnloadContextObjects();
		%feature("autodoc", "1");
		void DisplayAreas(const Handle_V3d_View &aviou);
		%feature("autodoc", "1");
		void ClearAreas(const Handle_V3d_View &aView);
		%feature("autodoc", "1");
		void DisplaySensitive(const Handle_V3d_View &aView);
		%feature("autodoc", "1");
		void ClearSensitive(const Handle_V3d_View &aView);
		%feature("autodoc", "1");
		const Handle_StdSelect_ViewerSelector3d & MainSelector() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AIS_LocalContext {
	Handle_AIS_LocalContext GetHandle() {
	return *(Handle_AIS_LocalContext*) &$self;
	}
};
%extend AIS_LocalContext {
	~AIS_LocalContext() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AIS_LocalContext\n");}
	}
};

%nodefaultctor AIS_SignatureFilter;
class AIS_SignatureFilter : public AIS_TypeFilter {
	public:
		%feature("autodoc", "1");
		AIS_SignatureFilter(const AIS_KindOfInteractive aGivenKind, const Standard_Integer aGivenSignature);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsOk(const Handle_SelectMgr_EntityOwner &anobj) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AIS_SignatureFilter {
	Handle_AIS_SignatureFilter GetHandle() {
	return *(Handle_AIS_SignatureFilter*) &$self;
	}
};
%extend AIS_SignatureFilter {
	~AIS_SignatureFilter() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AIS_SignatureFilter\n");}
	}
};

%nodefaultctor AIS_GlobalStatus;
class AIS_GlobalStatus : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		AIS_GlobalStatus();
		%feature("autodoc", "1");
		AIS_GlobalStatus(const AIS_DisplayStatus aStat, const Standard_Integer aDispMode, const Standard_Integer aSelMode, const Standard_Boolean ishilighted=0, const Quantity_NameOfColor TheHiCol=Quantity_NOC_WHITE, const Standard_Integer aLayerIndex=0);
		%feature("autodoc", "1");
		void SetGraphicStatus(const AIS_DisplayStatus aStat);
		%feature("autodoc", "1");
		void AddDisplayMode(const Standard_Integer aMode);
		%feature("autodoc", "1");
		void AddSelectionMode(const Standard_Integer aMode);
		%feature("autodoc", "1");
		void SetLayerIndex(const Standard_Integer AnIndex);
		%feature("autodoc", "1");
		void SetHilightStatus(const Standard_Boolean aStat);
		%feature("autodoc", "1");
		void SetHilightColor(const Quantity_NameOfColor aCol);
		%feature("autodoc", "1");
		Standard_Boolean IsSubIntensityOn() const;
		%feature("autodoc", "1");
		void SubIntensityOn();
		%feature("autodoc", "1");
		void SubIntensityOff();
		%feature("autodoc", "1");
		void RemoveDisplayMode(const Standard_Integer aMode);
		%feature("autodoc", "1");
		void RemoveSelectionMode(const Standard_Integer aMode);
		%feature("autodoc", "1");
		void ClearSelectionModes();
		%feature("autodoc", "1");
		AIS_DisplayStatus GraphicStatus() const;
		%feature("autodoc", "1");
		const TColStd_ListOfInteger & DisplayedModes() const;
		%feature("autodoc", "1");
		const TColStd_ListOfInteger & SelectionModes() const;
		%feature("autodoc", "1");
		Standard_Boolean IsHilighted() const;
		%feature("autodoc", "1");
		Quantity_NameOfColor HilightColor() const;
		%feature("autodoc", "1");
		Standard_Boolean IsDModeIn(const Standard_Integer aMode) const;
		%feature("autodoc", "1");
		Standard_Boolean IsSModeIn(const Standard_Integer aMode) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AIS_GlobalStatus {
	Handle_AIS_GlobalStatus GetHandle() {
	return *(Handle_AIS_GlobalStatus*) &$self;
	}
};
%extend AIS_GlobalStatus {
	~AIS_GlobalStatus() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AIS_GlobalStatus\n");}
	}
};

%nodefaultctor AIS_MinRadiusDimension;
class AIS_MinRadiusDimension : public AIS_EllipseRadiusDimension {
	public:
		%feature("autodoc", "1");
		AIS_MinRadiusDimension(const TopoDS_Shape &aShape, const Standard_Real aVal, const TCollection_ExtendedString &aText);
		%feature("autodoc", "1");
		AIS_MinRadiusDimension(const TopoDS_Shape &aShape, const Standard_Real aVal, const TCollection_ExtendedString &aText, const gp_Pnt &aPosition, const DsgPrs_ArrowSide aSymbolPrs, const Standard_Real anArrowSize=0.0);
		%feature("autodoc", "1");
		virtual		void Compute(const Handle_Prs3d_Projector &aProjector, const Handle_Geom_Transformation &aTrsf, const Handle_Prs3d_Presentation &aPresentation);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AIS_MinRadiusDimension {
	Handle_AIS_MinRadiusDimension GetHandle() {
	return *(Handle_AIS_MinRadiusDimension*) &$self;
	}
};
%extend AIS_MinRadiusDimension {
	~AIS_MinRadiusDimension() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AIS_MinRadiusDimension\n");}
	}
};

%nodefaultctor AIS_DataMapNodeOfDataMapOfILC;
class AIS_DataMapNodeOfDataMapOfILC : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		AIS_DataMapNodeOfDataMapOfILC(const Standard_Integer &K, const Handle_AIS_LocalContext &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Standard_Integer & Key() const;
		%feature("autodoc", "1");
		Handle_AIS_LocalContext & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AIS_DataMapNodeOfDataMapOfILC {
	Handle_AIS_DataMapNodeOfDataMapOfILC GetHandle() {
	return *(Handle_AIS_DataMapNodeOfDataMapOfILC*) &$self;
	}
};
%extend AIS_DataMapNodeOfDataMapOfILC {
	~AIS_DataMapNodeOfDataMapOfILC() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AIS_DataMapNodeOfDataMapOfILC\n");}
	}
};

%nodefaultctor AIS_MapOfInteractive;
class AIS_MapOfInteractive : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		AIS_MapOfInteractive(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		AIS_MapOfInteractive & Assign(const AIS_MapOfInteractive &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Add(const Handle_AIS_InteractiveObject &aKey);
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Handle_AIS_InteractiveObject &aKey) const;
		%feature("autodoc", "1");
		Standard_Boolean Remove(const Handle_AIS_InteractiveObject &aKey);

};
%extend AIS_MapOfInteractive {
	~AIS_MapOfInteractive() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of AIS_MapOfInteractive\n");}
	}
};