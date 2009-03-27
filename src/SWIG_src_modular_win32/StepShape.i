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
%module StepShape

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
%typemap(in,numinputs=0) Standard_Real &OutValue(Standard_Real temp) {
    $1 = &temp;
}


%include StepShape_dependencies.i


%include StepShape_headers.i


enum StepShape_BooleanOperator {
	StepShape_boDifference,
	StepShape_boIntersection,
	StepShape_boUnion,
	};

enum StepShape_AngleRelator {
	StepShape_Equal,
	StepShape_Large,
	StepShape_Small,
	};



%nodefaultctor Handle_StepShape_DimensionalLocation;
class Handle_StepShape_DimensionalLocation : public Handle_StepRepr_ShapeAspectRelationship {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_DimensionalLocation();
		%feature("autodoc", "1");
		Handle_StepShape_DimensionalLocation(const Handle_StepShape_DimensionalLocation &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_DimensionalLocation(const StepShape_DimensionalLocation *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_DimensionalLocation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_DimensionalLocation {
	StepShape_DimensionalLocation* GetObject() {
	return (StepShape_DimensionalLocation*)$self->Access();
	}
};
%extend Handle_StepShape_DimensionalLocation {
	~Handle_StepShape_DimensionalLocation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_DimensionalLocation\n");}
	}
};

%nodefaultctor Handle_StepShape_DimensionalLocationWithPath;
class Handle_StepShape_DimensionalLocationWithPath : public Handle_StepShape_DimensionalLocation {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_DimensionalLocationWithPath();
		%feature("autodoc", "1");
		Handle_StepShape_DimensionalLocationWithPath(const Handle_StepShape_DimensionalLocationWithPath &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_DimensionalLocationWithPath(const StepShape_DimensionalLocationWithPath *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_DimensionalLocationWithPath const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_DimensionalLocationWithPath {
	StepShape_DimensionalLocationWithPath* GetObject() {
	return (StepShape_DimensionalLocationWithPath*)$self->Access();
	}
};
%extend Handle_StepShape_DimensionalLocationWithPath {
	~Handle_StepShape_DimensionalLocationWithPath() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_DimensionalLocationWithPath\n");}
	}
};

%nodefaultctor Handle_StepShape_HArray1OfConnectedEdgeSet;
class Handle_StepShape_HArray1OfConnectedEdgeSet : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfConnectedEdgeSet();
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfConnectedEdgeSet(const Handle_StepShape_HArray1OfConnectedEdgeSet &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfConnectedEdgeSet(const StepShape_HArray1OfConnectedEdgeSet *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfConnectedEdgeSet const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_HArray1OfConnectedEdgeSet {
	StepShape_HArray1OfConnectedEdgeSet* GetObject() {
	return (StepShape_HArray1OfConnectedEdgeSet*)$self->Access();
	}
};
%extend Handle_StepShape_HArray1OfConnectedEdgeSet {
	~Handle_StepShape_HArray1OfConnectedEdgeSet() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_HArray1OfConnectedEdgeSet\n");}
	}
};

%nodefaultctor Handle_StepShape_TypeQualifier;
class Handle_StepShape_TypeQualifier : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_TypeQualifier();
		%feature("autodoc", "1");
		Handle_StepShape_TypeQualifier(const Handle_StepShape_TypeQualifier &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_TypeQualifier(const StepShape_TypeQualifier *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_TypeQualifier const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_TypeQualifier {
	StepShape_TypeQualifier* GetObject() {
	return (StepShape_TypeQualifier*)$self->Access();
	}
};
%extend Handle_StepShape_TypeQualifier {
	~Handle_StepShape_TypeQualifier() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_TypeQualifier\n");}
	}
};

%nodefaultctor Handle_StepShape_RightCircularCone;
class Handle_StepShape_RightCircularCone : public Handle_StepGeom_GeometricRepresentationItem {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_RightCircularCone();
		%feature("autodoc", "1");
		Handle_StepShape_RightCircularCone(const Handle_StepShape_RightCircularCone &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_RightCircularCone(const StepShape_RightCircularCone *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_RightCircularCone const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_RightCircularCone {
	StepShape_RightCircularCone* GetObject() {
	return (StepShape_RightCircularCone*)$self->Access();
	}
};
%extend Handle_StepShape_RightCircularCone {
	~Handle_StepShape_RightCircularCone() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_RightCircularCone\n");}
	}
};

%nodefaultctor Handle_StepShape_TopologicalRepresentationItem;
class Handle_StepShape_TopologicalRepresentationItem : public Handle_StepRepr_RepresentationItem {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_TopologicalRepresentationItem();
		%feature("autodoc", "1");
		Handle_StepShape_TopologicalRepresentationItem(const Handle_StepShape_TopologicalRepresentationItem &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_TopologicalRepresentationItem(const StepShape_TopologicalRepresentationItem *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_TopologicalRepresentationItem const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_TopologicalRepresentationItem {
	StepShape_TopologicalRepresentationItem* GetObject() {
	return (StepShape_TopologicalRepresentationItem*)$self->Access();
	}
};
%extend Handle_StepShape_TopologicalRepresentationItem {
	~Handle_StepShape_TopologicalRepresentationItem() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_TopologicalRepresentationItem\n");}
	}
};

%nodefaultctor Handle_StepShape_Edge;
class Handle_StepShape_Edge : public Handle_StepShape_TopologicalRepresentationItem {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_Edge();
		%feature("autodoc", "1");
		Handle_StepShape_Edge(const Handle_StepShape_Edge &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_Edge(const StepShape_Edge *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_Edge const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_Edge {
	StepShape_Edge* GetObject() {
	return (StepShape_Edge*)$self->Access();
	}
};
%extend Handle_StepShape_Edge {
	~Handle_StepShape_Edge() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_Edge\n");}
	}
};

%nodefaultctor Handle_StepShape_OrientedEdge;
class Handle_StepShape_OrientedEdge : public Handle_StepShape_Edge {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_OrientedEdge();
		%feature("autodoc", "1");
		Handle_StepShape_OrientedEdge(const Handle_StepShape_OrientedEdge &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_OrientedEdge(const StepShape_OrientedEdge *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_OrientedEdge const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_OrientedEdge {
	StepShape_OrientedEdge* GetObject() {
	return (StepShape_OrientedEdge*)$self->Access();
	}
};
%extend Handle_StepShape_OrientedEdge {
	~Handle_StepShape_OrientedEdge() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_OrientedEdge\n");}
	}
};

%nodefaultctor Handle_StepShape_SeamEdge;
class Handle_StepShape_SeamEdge : public Handle_StepShape_OrientedEdge {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_SeamEdge();
		%feature("autodoc", "1");
		Handle_StepShape_SeamEdge(const Handle_StepShape_SeamEdge &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_SeamEdge(const StepShape_SeamEdge *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_SeamEdge const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_SeamEdge {
	StepShape_SeamEdge* GetObject() {
	return (StepShape_SeamEdge*)$self->Access();
	}
};
%extend Handle_StepShape_SeamEdge {
	~Handle_StepShape_SeamEdge() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_SeamEdge\n");}
	}
};

%nodefaultctor Handle_StepShape_SolidModel;
class Handle_StepShape_SolidModel : public Handle_StepGeom_GeometricRepresentationItem {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_SolidModel();
		%feature("autodoc", "1");
		Handle_StepShape_SolidModel(const Handle_StepShape_SolidModel &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_SolidModel(const StepShape_SolidModel *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_SolidModel const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_SolidModel {
	StepShape_SolidModel* GetObject() {
	return (StepShape_SolidModel*)$self->Access();
	}
};
%extend Handle_StepShape_SolidModel {
	~Handle_StepShape_SolidModel() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_SolidModel\n");}
	}
};

%nodefaultctor Handle_StepShape_SweptAreaSolid;
class Handle_StepShape_SweptAreaSolid : public Handle_StepShape_SolidModel {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_SweptAreaSolid();
		%feature("autodoc", "1");
		Handle_StepShape_SweptAreaSolid(const Handle_StepShape_SweptAreaSolid &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_SweptAreaSolid(const StepShape_SweptAreaSolid *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_SweptAreaSolid const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_SweptAreaSolid {
	StepShape_SweptAreaSolid* GetObject() {
	return (StepShape_SweptAreaSolid*)$self->Access();
	}
};
%extend Handle_StepShape_SweptAreaSolid {
	~Handle_StepShape_SweptAreaSolid() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_SweptAreaSolid\n");}
	}
};

%nodefaultctor Handle_StepShape_RevolvedAreaSolid;
class Handle_StepShape_RevolvedAreaSolid : public Handle_StepShape_SweptAreaSolid {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_RevolvedAreaSolid();
		%feature("autodoc", "1");
		Handle_StepShape_RevolvedAreaSolid(const Handle_StepShape_RevolvedAreaSolid &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_RevolvedAreaSolid(const StepShape_RevolvedAreaSolid *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_RevolvedAreaSolid const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_RevolvedAreaSolid {
	StepShape_RevolvedAreaSolid* GetObject() {
	return (StepShape_RevolvedAreaSolid*)$self->Access();
	}
};
%extend Handle_StepShape_RevolvedAreaSolid {
	~Handle_StepShape_RevolvedAreaSolid() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_RevolvedAreaSolid\n");}
	}
};

%nodefaultctor Handle_StepShape_ShapeRepresentation;
class Handle_StepShape_ShapeRepresentation : public Handle_StepRepr_Representation {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_ShapeRepresentation();
		%feature("autodoc", "1");
		Handle_StepShape_ShapeRepresentation(const Handle_StepShape_ShapeRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_ShapeRepresentation(const StepShape_ShapeRepresentation *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_ShapeRepresentation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_ShapeRepresentation {
	StepShape_ShapeRepresentation* GetObject() {
	return (StepShape_ShapeRepresentation*)$self->Access();
	}
};
%extend Handle_StepShape_ShapeRepresentation {
	~Handle_StepShape_ShapeRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_ShapeRepresentation\n");}
	}
};

%nodefaultctor Handle_StepShape_ManifoldSurfaceShapeRepresentation;
class Handle_StepShape_ManifoldSurfaceShapeRepresentation : public Handle_StepShape_ShapeRepresentation {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_ManifoldSurfaceShapeRepresentation();
		%feature("autodoc", "1");
		Handle_StepShape_ManifoldSurfaceShapeRepresentation(const Handle_StepShape_ManifoldSurfaceShapeRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_ManifoldSurfaceShapeRepresentation(const StepShape_ManifoldSurfaceShapeRepresentation *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_ManifoldSurfaceShapeRepresentation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_ManifoldSurfaceShapeRepresentation {
	StepShape_ManifoldSurfaceShapeRepresentation* GetObject() {
	return (StepShape_ManifoldSurfaceShapeRepresentation*)$self->Access();
	}
};
%extend Handle_StepShape_ManifoldSurfaceShapeRepresentation {
	~Handle_StepShape_ManifoldSurfaceShapeRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_ManifoldSurfaceShapeRepresentation\n");}
	}
};

%nodefaultctor Handle_StepShape_HArray1OfFaceBound;
class Handle_StepShape_HArray1OfFaceBound : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfFaceBound();
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfFaceBound(const Handle_StepShape_HArray1OfFaceBound &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfFaceBound(const StepShape_HArray1OfFaceBound *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfFaceBound const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_HArray1OfFaceBound {
	StepShape_HArray1OfFaceBound* GetObject() {
	return (StepShape_HArray1OfFaceBound*)$self->Access();
	}
};
%extend Handle_StepShape_HArray1OfFaceBound {
	~Handle_StepShape_HArray1OfFaceBound() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_HArray1OfFaceBound\n");}
	}
};

%nodefaultctor Handle_StepShape_SweptFaceSolid;
class Handle_StepShape_SweptFaceSolid : public Handle_StepShape_SolidModel {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_SweptFaceSolid();
		%feature("autodoc", "1");
		Handle_StepShape_SweptFaceSolid(const Handle_StepShape_SweptFaceSolid &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_SweptFaceSolid(const StepShape_SweptFaceSolid *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_SweptFaceSolid const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_SweptFaceSolid {
	StepShape_SweptFaceSolid* GetObject() {
	return (StepShape_SweptFaceSolid*)$self->Access();
	}
};
%extend Handle_StepShape_SweptFaceSolid {
	~Handle_StepShape_SweptFaceSolid() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_SweptFaceSolid\n");}
	}
};

%nodefaultctor Handle_StepShape_ExtrudedFaceSolid;
class Handle_StepShape_ExtrudedFaceSolid : public Handle_StepShape_SweptFaceSolid {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_ExtrudedFaceSolid();
		%feature("autodoc", "1");
		Handle_StepShape_ExtrudedFaceSolid(const Handle_StepShape_ExtrudedFaceSolid &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_ExtrudedFaceSolid(const StepShape_ExtrudedFaceSolid *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_ExtrudedFaceSolid const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_ExtrudedFaceSolid {
	StepShape_ExtrudedFaceSolid* GetObject() {
	return (StepShape_ExtrudedFaceSolid*)$self->Access();
	}
};
%extend Handle_StepShape_ExtrudedFaceSolid {
	~Handle_StepShape_ExtrudedFaceSolid() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_ExtrudedFaceSolid\n");}
	}
};

%nodefaultctor Handle_StepShape_HArray1OfValueQualifier;
class Handle_StepShape_HArray1OfValueQualifier : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfValueQualifier();
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfValueQualifier(const Handle_StepShape_HArray1OfValueQualifier &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfValueQualifier(const StepShape_HArray1OfValueQualifier *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfValueQualifier const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_HArray1OfValueQualifier {
	StepShape_HArray1OfValueQualifier* GetObject() {
	return (StepShape_HArray1OfValueQualifier*)$self->Access();
	}
};
%extend Handle_StepShape_HArray1OfValueQualifier {
	~Handle_StepShape_HArray1OfValueQualifier() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_HArray1OfValueQualifier\n");}
	}
};

%nodefaultctor Handle_StepShape_GeometricSet;
class Handle_StepShape_GeometricSet : public Handle_StepGeom_GeometricRepresentationItem {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_GeometricSet();
		%feature("autodoc", "1");
		Handle_StepShape_GeometricSet(const Handle_StepShape_GeometricSet &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_GeometricSet(const StepShape_GeometricSet *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_GeometricSet const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_GeometricSet {
	StepShape_GeometricSet* GetObject() {
	return (StepShape_GeometricSet*)$self->Access();
	}
};
%extend Handle_StepShape_GeometricSet {
	~Handle_StepShape_GeometricSet() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_GeometricSet\n");}
	}
};

%nodefaultctor Handle_StepShape_GeometricCurveSet;
class Handle_StepShape_GeometricCurveSet : public Handle_StepShape_GeometricSet {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_GeometricCurveSet();
		%feature("autodoc", "1");
		Handle_StepShape_GeometricCurveSet(const Handle_StepShape_GeometricCurveSet &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_GeometricCurveSet(const StepShape_GeometricCurveSet *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_GeometricCurveSet const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_GeometricCurveSet {
	StepShape_GeometricCurveSet* GetObject() {
	return (StepShape_GeometricCurveSet*)$self->Access();
	}
};
%extend Handle_StepShape_GeometricCurveSet {
	~Handle_StepShape_GeometricCurveSet() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_GeometricCurveSet\n");}
	}
};

%nodefaultctor Handle_StepShape_MeasureQualification;
class Handle_StepShape_MeasureQualification : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_MeasureQualification();
		%feature("autodoc", "1");
		Handle_StepShape_MeasureQualification(const Handle_StepShape_MeasureQualification &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_MeasureQualification(const StepShape_MeasureQualification *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_MeasureQualification const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_MeasureQualification {
	StepShape_MeasureQualification* GetObject() {
	return (StepShape_MeasureQualification*)$self->Access();
	}
};
%extend Handle_StepShape_MeasureQualification {
	~Handle_StepShape_MeasureQualification() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_MeasureQualification\n");}
	}
};

%nodefaultctor Handle_StepShape_Sphere;
class Handle_StepShape_Sphere : public Handle_StepGeom_GeometricRepresentationItem {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_Sphere();
		%feature("autodoc", "1");
		Handle_StepShape_Sphere(const Handle_StepShape_Sphere &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_Sphere(const StepShape_Sphere *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_Sphere const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_Sphere {
	StepShape_Sphere* GetObject() {
	return (StepShape_Sphere*)$self->Access();
	}
};
%extend Handle_StepShape_Sphere {
	~Handle_StepShape_Sphere() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_Sphere\n");}
	}
};

%nodefaultctor Handle_StepShape_Loop;
class Handle_StepShape_Loop : public Handle_StepShape_TopologicalRepresentationItem {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_Loop();
		%feature("autodoc", "1");
		Handle_StepShape_Loop(const Handle_StepShape_Loop &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_Loop(const StepShape_Loop *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_Loop const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_Loop {
	StepShape_Loop* GetObject() {
	return (StepShape_Loop*)$self->Access();
	}
};
%extend Handle_StepShape_Loop {
	~Handle_StepShape_Loop() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_Loop\n");}
	}
};

%nodefaultctor Handle_StepShape_PointRepresentation;
class Handle_StepShape_PointRepresentation : public Handle_StepShape_ShapeRepresentation {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_PointRepresentation();
		%feature("autodoc", "1");
		Handle_StepShape_PointRepresentation(const Handle_StepShape_PointRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_PointRepresentation(const StepShape_PointRepresentation *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_PointRepresentation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_PointRepresentation {
	StepShape_PointRepresentation* GetObject() {
	return (StepShape_PointRepresentation*)$self->Access();
	}
};
%extend Handle_StepShape_PointRepresentation {
	~Handle_StepShape_PointRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_PointRepresentation\n");}
	}
};

%nodefaultctor Handle_StepShape_HArray1OfGeometricSetSelect;
class Handle_StepShape_HArray1OfGeometricSetSelect : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfGeometricSetSelect();
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfGeometricSetSelect(const Handle_StepShape_HArray1OfGeometricSetSelect &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfGeometricSetSelect(const StepShape_HArray1OfGeometricSetSelect *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfGeometricSetSelect const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_HArray1OfGeometricSetSelect {
	StepShape_HArray1OfGeometricSetSelect* GetObject() {
	return (StepShape_HArray1OfGeometricSetSelect*)$self->Access();
	}
};
%extend Handle_StepShape_HArray1OfGeometricSetSelect {
	~Handle_StepShape_HArray1OfGeometricSetSelect() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_HArray1OfGeometricSetSelect\n");}
	}
};

%nodefaultctor Handle_StepShape_SolidReplica;
class Handle_StepShape_SolidReplica : public Handle_StepShape_SolidModel {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_SolidReplica();
		%feature("autodoc", "1");
		Handle_StepShape_SolidReplica(const Handle_StepShape_SolidReplica &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_SolidReplica(const StepShape_SolidReplica *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_SolidReplica const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_SolidReplica {
	StepShape_SolidReplica* GetObject() {
	return (StepShape_SolidReplica*)$self->Access();
	}
};
%extend Handle_StepShape_SolidReplica {
	~Handle_StepShape_SolidReplica() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_SolidReplica\n");}
	}
};

%nodefaultctor Handle_StepShape_Face;
class Handle_StepShape_Face : public Handle_StepShape_TopologicalRepresentationItem {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_Face();
		%feature("autodoc", "1");
		Handle_StepShape_Face(const Handle_StepShape_Face &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_Face(const StepShape_Face *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_Face const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_Face {
	StepShape_Face* GetObject() {
	return (StepShape_Face*)$self->Access();
	}
};
%extend Handle_StepShape_Face {
	~Handle_StepShape_Face() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_Face\n");}
	}
};

%nodefaultctor Handle_StepShape_Subface;
class Handle_StepShape_Subface : public Handle_StepShape_Face {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_Subface();
		%feature("autodoc", "1");
		Handle_StepShape_Subface(const Handle_StepShape_Subface &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_Subface(const StepShape_Subface *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_Subface const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_Subface {
	StepShape_Subface* GetObject() {
	return (StepShape_Subface*)$self->Access();
	}
};
%extend Handle_StepShape_Subface {
	~Handle_StepShape_Subface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_Subface\n");}
	}
};

%nodefaultctor Handle_StepShape_BooleanResult;
class Handle_StepShape_BooleanResult : public Handle_StepGeom_GeometricRepresentationItem {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_BooleanResult();
		%feature("autodoc", "1");
		Handle_StepShape_BooleanResult(const Handle_StepShape_BooleanResult &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_BooleanResult(const StepShape_BooleanResult *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_BooleanResult const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_BooleanResult {
	StepShape_BooleanResult* GetObject() {
	return (StepShape_BooleanResult*)$self->Access();
	}
};
%extend Handle_StepShape_BooleanResult {
	~Handle_StepShape_BooleanResult() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_BooleanResult\n");}
	}
};

%nodefaultctor Handle_StepShape_PolyLoop;
class Handle_StepShape_PolyLoop : public Handle_StepShape_Loop {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_PolyLoop();
		%feature("autodoc", "1");
		Handle_StepShape_PolyLoop(const Handle_StepShape_PolyLoop &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_PolyLoop(const StepShape_PolyLoop *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_PolyLoop const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_PolyLoop {
	StepShape_PolyLoop* GetObject() {
	return (StepShape_PolyLoop*)$self->Access();
	}
};
%extend Handle_StepShape_PolyLoop {
	~Handle_StepShape_PolyLoop() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_PolyLoop\n");}
	}
};

%nodefaultctor Handle_StepShape_HalfSpaceSolid;
class Handle_StepShape_HalfSpaceSolid : public Handle_StepGeom_GeometricRepresentationItem {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_HalfSpaceSolid();
		%feature("autodoc", "1");
		Handle_StepShape_HalfSpaceSolid(const Handle_StepShape_HalfSpaceSolid &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_HalfSpaceSolid(const StepShape_HalfSpaceSolid *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_HalfSpaceSolid const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_HalfSpaceSolid {
	StepShape_HalfSpaceSolid* GetObject() {
	return (StepShape_HalfSpaceSolid*)$self->Access();
	}
};
%extend Handle_StepShape_HalfSpaceSolid {
	~Handle_StepShape_HalfSpaceSolid() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_HalfSpaceSolid\n");}
	}
};

%nodefaultctor Handle_StepShape_BoxedHalfSpace;
class Handle_StepShape_BoxedHalfSpace : public Handle_StepShape_HalfSpaceSolid {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_BoxedHalfSpace();
		%feature("autodoc", "1");
		Handle_StepShape_BoxedHalfSpace(const Handle_StepShape_BoxedHalfSpace &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_BoxedHalfSpace(const StepShape_BoxedHalfSpace *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_BoxedHalfSpace const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_BoxedHalfSpace {
	StepShape_BoxedHalfSpace* GetObject() {
	return (StepShape_BoxedHalfSpace*)$self->Access();
	}
};
%extend Handle_StepShape_BoxedHalfSpace {
	~Handle_StepShape_BoxedHalfSpace() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_BoxedHalfSpace\n");}
	}
};

%nodefaultctor Handle_StepShape_Path;
class Handle_StepShape_Path : public Handle_StepShape_TopologicalRepresentationItem {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_Path();
		%feature("autodoc", "1");
		Handle_StepShape_Path(const Handle_StepShape_Path &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_Path(const StepShape_Path *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_Path const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_Path {
	StepShape_Path* GetObject() {
	return (StepShape_Path*)$self->Access();
	}
};
%extend Handle_StepShape_Path {
	~Handle_StepShape_Path() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_Path\n");}
	}
};

%nodefaultctor Handle_StepShape_OrientedPath;
class Handle_StepShape_OrientedPath : public Handle_StepShape_Path {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_OrientedPath();
		%feature("autodoc", "1");
		Handle_StepShape_OrientedPath(const Handle_StepShape_OrientedPath &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_OrientedPath(const StepShape_OrientedPath *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_OrientedPath const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_OrientedPath {
	StepShape_OrientedPath* GetObject() {
	return (StepShape_OrientedPath*)$self->Access();
	}
};
%extend Handle_StepShape_OrientedPath {
	~Handle_StepShape_OrientedPath() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_OrientedPath\n");}
	}
};

%nodefaultctor Handle_StepShape_FaceBound;
class Handle_StepShape_FaceBound : public Handle_StepShape_TopologicalRepresentationItem {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_FaceBound();
		%feature("autodoc", "1");
		Handle_StepShape_FaceBound(const Handle_StepShape_FaceBound &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_FaceBound(const StepShape_FaceBound *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_FaceBound const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_FaceBound {
	StepShape_FaceBound* GetObject() {
	return (StepShape_FaceBound*)$self->Access();
	}
};
%extend Handle_StepShape_FaceBound {
	~Handle_StepShape_FaceBound() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_FaceBound\n");}
	}
};

%nodefaultctor Handle_StepShape_FaceOuterBound;
class Handle_StepShape_FaceOuterBound : public Handle_StepShape_FaceBound {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_FaceOuterBound();
		%feature("autodoc", "1");
		Handle_StepShape_FaceOuterBound(const Handle_StepShape_FaceOuterBound &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_FaceOuterBound(const StepShape_FaceOuterBound *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_FaceOuterBound const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_FaceOuterBound {
	StepShape_FaceOuterBound* GetObject() {
	return (StepShape_FaceOuterBound*)$self->Access();
	}
};
%extend Handle_StepShape_FaceOuterBound {
	~Handle_StepShape_FaceOuterBound() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_FaceOuterBound\n");}
	}
};

%nodefaultctor Handle_StepShape_ConnectedFaceSet;
class Handle_StepShape_ConnectedFaceSet : public Handle_StepShape_TopologicalRepresentationItem {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_ConnectedFaceSet();
		%feature("autodoc", "1");
		Handle_StepShape_ConnectedFaceSet(const Handle_StepShape_ConnectedFaceSet &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_ConnectedFaceSet(const StepShape_ConnectedFaceSet *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_ConnectedFaceSet const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_ConnectedFaceSet {
	StepShape_ConnectedFaceSet* GetObject() {
	return (StepShape_ConnectedFaceSet*)$self->Access();
	}
};
%extend Handle_StepShape_ConnectedFaceSet {
	~Handle_StepShape_ConnectedFaceSet() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_ConnectedFaceSet\n");}
	}
};

%nodefaultctor Handle_StepShape_OpenShell;
class Handle_StepShape_OpenShell : public Handle_StepShape_ConnectedFaceSet {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_OpenShell();
		%feature("autodoc", "1");
		Handle_StepShape_OpenShell(const Handle_StepShape_OpenShell &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_OpenShell(const StepShape_OpenShell *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_OpenShell const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_OpenShell {
	StepShape_OpenShell* GetObject() {
	return (StepShape_OpenShell*)$self->Access();
	}
};
%extend Handle_StepShape_OpenShell {
	~Handle_StepShape_OpenShell() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_OpenShell\n");}
	}
};

%nodefaultctor Handle_StepShape_EdgeBasedWireframeShapeRepresentation;
class Handle_StepShape_EdgeBasedWireframeShapeRepresentation : public Handle_StepShape_ShapeRepresentation {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_EdgeBasedWireframeShapeRepresentation();
		%feature("autodoc", "1");
		Handle_StepShape_EdgeBasedWireframeShapeRepresentation(const Handle_StepShape_EdgeBasedWireframeShapeRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_EdgeBasedWireframeShapeRepresentation(const StepShape_EdgeBasedWireframeShapeRepresentation *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_EdgeBasedWireframeShapeRepresentation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_EdgeBasedWireframeShapeRepresentation {
	StepShape_EdgeBasedWireframeShapeRepresentation* GetObject() {
	return (StepShape_EdgeBasedWireframeShapeRepresentation*)$self->Access();
	}
};
%extend Handle_StepShape_EdgeBasedWireframeShapeRepresentation {
	~Handle_StepShape_EdgeBasedWireframeShapeRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_EdgeBasedWireframeShapeRepresentation\n");}
	}
};

%nodefaultctor Handle_StepShape_ShapeRepresentationWithParameters;
class Handle_StepShape_ShapeRepresentationWithParameters : public Handle_StepShape_ShapeRepresentation {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_ShapeRepresentationWithParameters();
		%feature("autodoc", "1");
		Handle_StepShape_ShapeRepresentationWithParameters(const Handle_StepShape_ShapeRepresentationWithParameters &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_ShapeRepresentationWithParameters(const StepShape_ShapeRepresentationWithParameters *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_ShapeRepresentationWithParameters const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_ShapeRepresentationWithParameters {
	StepShape_ShapeRepresentationWithParameters* GetObject() {
	return (StepShape_ShapeRepresentationWithParameters*)$self->Access();
	}
};
%extend Handle_StepShape_ShapeRepresentationWithParameters {
	~Handle_StepShape_ShapeRepresentationWithParameters() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_ShapeRepresentationWithParameters\n");}
	}
};

%nodefaultctor Handle_StepShape_ClosedShell;
class Handle_StepShape_ClosedShell : public Handle_StepShape_ConnectedFaceSet {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_ClosedShell();
		%feature("autodoc", "1");
		Handle_StepShape_ClosedShell(const Handle_StepShape_ClosedShell &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_ClosedShell(const StepShape_ClosedShell *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_ClosedShell const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_ClosedShell {
	StepShape_ClosedShell* GetObject() {
	return (StepShape_ClosedShell*)$self->Access();
	}
};
%extend Handle_StepShape_ClosedShell {
	~Handle_StepShape_ClosedShell() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_ClosedShell\n");}
	}
};

%nodefaultctor Handle_StepShape_DimensionalCharacteristicRepresentation;
class Handle_StepShape_DimensionalCharacteristicRepresentation : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_DimensionalCharacteristicRepresentation();
		%feature("autodoc", "1");
		Handle_StepShape_DimensionalCharacteristicRepresentation(const Handle_StepShape_DimensionalCharacteristicRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_DimensionalCharacteristicRepresentation(const StepShape_DimensionalCharacteristicRepresentation *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_DimensionalCharacteristicRepresentation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_DimensionalCharacteristicRepresentation {
	StepShape_DimensionalCharacteristicRepresentation* GetObject() {
	return (StepShape_DimensionalCharacteristicRepresentation*)$self->Access();
	}
};
%extend Handle_StepShape_DimensionalCharacteristicRepresentation {
	~Handle_StepShape_DimensionalCharacteristicRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_DimensionalCharacteristicRepresentation\n");}
	}
};

%nodefaultctor Handle_StepShape_FaceSurface;
class Handle_StepShape_FaceSurface : public Handle_StepShape_Face {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_FaceSurface();
		%feature("autodoc", "1");
		Handle_StepShape_FaceSurface(const Handle_StepShape_FaceSurface &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_FaceSurface(const StepShape_FaceSurface *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_FaceSurface const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_FaceSurface {
	StepShape_FaceSurface* GetObject() {
	return (StepShape_FaceSurface*)$self->Access();
	}
};
%extend Handle_StepShape_FaceSurface {
	~Handle_StepShape_FaceSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_FaceSurface\n");}
	}
};

%nodefaultctor Handle_StepShape_LimitsAndFits;
class Handle_StepShape_LimitsAndFits : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_LimitsAndFits();
		%feature("autodoc", "1");
		Handle_StepShape_LimitsAndFits(const Handle_StepShape_LimitsAndFits &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_LimitsAndFits(const StepShape_LimitsAndFits *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_LimitsAndFits const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_LimitsAndFits {
	StepShape_LimitsAndFits* GetObject() {
	return (StepShape_LimitsAndFits*)$self->Access();
	}
};
%extend Handle_StepShape_LimitsAndFits {
	~Handle_StepShape_LimitsAndFits() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_LimitsAndFits\n");}
	}
};

%nodefaultctor Handle_StepShape_FaceBasedSurfaceModel;
class Handle_StepShape_FaceBasedSurfaceModel : public Handle_StepGeom_GeometricRepresentationItem {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_FaceBasedSurfaceModel();
		%feature("autodoc", "1");
		Handle_StepShape_FaceBasedSurfaceModel(const Handle_StepShape_FaceBasedSurfaceModel &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_FaceBasedSurfaceModel(const StepShape_FaceBasedSurfaceModel *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_FaceBasedSurfaceModel const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_FaceBasedSurfaceModel {
	StepShape_FaceBasedSurfaceModel* GetObject() {
	return (StepShape_FaceBasedSurfaceModel*)$self->Access();
	}
};
%extend Handle_StepShape_FaceBasedSurfaceModel {
	~Handle_StepShape_FaceBasedSurfaceModel() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_FaceBasedSurfaceModel\n");}
	}
};

%nodefaultctor Handle_StepShape_ConnectedFaceSubSet;
class Handle_StepShape_ConnectedFaceSubSet : public Handle_StepShape_ConnectedFaceSet {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_ConnectedFaceSubSet();
		%feature("autodoc", "1");
		Handle_StepShape_ConnectedFaceSubSet(const Handle_StepShape_ConnectedFaceSubSet &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_ConnectedFaceSubSet(const StepShape_ConnectedFaceSubSet *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_ConnectedFaceSubSet const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_ConnectedFaceSubSet {
	StepShape_ConnectedFaceSubSet* GetObject() {
	return (StepShape_ConnectedFaceSubSet*)$self->Access();
	}
};
%extend Handle_StepShape_ConnectedFaceSubSet {
	~Handle_StepShape_ConnectedFaceSubSet() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_ConnectedFaceSubSet\n");}
	}
};

%nodefaultctor Handle_StepShape_RevolvedFaceSolid;
class Handle_StepShape_RevolvedFaceSolid : public Handle_StepShape_SweptFaceSolid {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_RevolvedFaceSolid();
		%feature("autodoc", "1");
		Handle_StepShape_RevolvedFaceSolid(const Handle_StepShape_RevolvedFaceSolid &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_RevolvedFaceSolid(const StepShape_RevolvedFaceSolid *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_RevolvedFaceSolid const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_RevolvedFaceSolid {
	StepShape_RevolvedFaceSolid* GetObject() {
	return (StepShape_RevolvedFaceSolid*)$self->Access();
	}
};
%extend Handle_StepShape_RevolvedFaceSolid {
	~Handle_StepShape_RevolvedFaceSolid() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_RevolvedFaceSolid\n");}
	}
};

%nodefaultctor Handle_StepShape_Block;
class Handle_StepShape_Block : public Handle_StepGeom_GeometricRepresentationItem {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_Block();
		%feature("autodoc", "1");
		Handle_StepShape_Block(const Handle_StepShape_Block &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_Block(const StepShape_Block *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_Block const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_Block {
	StepShape_Block* GetObject() {
	return (StepShape_Block*)$self->Access();
	}
};
%extend Handle_StepShape_Block {
	~Handle_StepShape_Block() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_Block\n");}
	}
};

%nodefaultctor Handle_StepShape_DimensionalSize;
class Handle_StepShape_DimensionalSize : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_DimensionalSize();
		%feature("autodoc", "1");
		Handle_StepShape_DimensionalSize(const Handle_StepShape_DimensionalSize &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_DimensionalSize(const StepShape_DimensionalSize *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_DimensionalSize const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_DimensionalSize {
	StepShape_DimensionalSize* GetObject() {
	return (StepShape_DimensionalSize*)$self->Access();
	}
};
%extend Handle_StepShape_DimensionalSize {
	~Handle_StepShape_DimensionalSize() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_DimensionalSize\n");}
	}
};

%nodefaultctor Handle_StepShape_DimensionalSizeWithPath;
class Handle_StepShape_DimensionalSizeWithPath : public Handle_StepShape_DimensionalSize {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_DimensionalSizeWithPath();
		%feature("autodoc", "1");
		Handle_StepShape_DimensionalSizeWithPath(const Handle_StepShape_DimensionalSizeWithPath &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_DimensionalSizeWithPath(const StepShape_DimensionalSizeWithPath *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_DimensionalSizeWithPath const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_DimensionalSizeWithPath {
	StepShape_DimensionalSizeWithPath* GetObject() {
	return (StepShape_DimensionalSizeWithPath*)$self->Access();
	}
};
%extend Handle_StepShape_DimensionalSizeWithPath {
	~Handle_StepShape_DimensionalSizeWithPath() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_DimensionalSizeWithPath\n");}
	}
};

%nodefaultctor Handle_StepShape_LoopAndPath;
class Handle_StepShape_LoopAndPath : public Handle_StepShape_TopologicalRepresentationItem {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_LoopAndPath();
		%feature("autodoc", "1");
		Handle_StepShape_LoopAndPath(const Handle_StepShape_LoopAndPath &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_LoopAndPath(const StepShape_LoopAndPath *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_LoopAndPath const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_LoopAndPath {
	StepShape_LoopAndPath* GetObject() {
	return (StepShape_LoopAndPath*)$self->Access();
	}
};
%extend Handle_StepShape_LoopAndPath {
	~Handle_StepShape_LoopAndPath() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_LoopAndPath\n");}
	}
};

%nodefaultctor Handle_StepShape_AdvancedFace;
class Handle_StepShape_AdvancedFace : public Handle_StepShape_FaceSurface {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_AdvancedFace();
		%feature("autodoc", "1");
		Handle_StepShape_AdvancedFace(const Handle_StepShape_AdvancedFace &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_AdvancedFace(const StepShape_AdvancedFace *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_AdvancedFace const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_AdvancedFace {
	StepShape_AdvancedFace* GetObject() {
	return (StepShape_AdvancedFace*)$self->Access();
	}
};
%extend Handle_StepShape_AdvancedFace {
	~Handle_StepShape_AdvancedFace() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_AdvancedFace\n");}
	}
};

%nodefaultctor Handle_StepShape_DefinitionalRepresentationAndShapeRepresentation;
class Handle_StepShape_DefinitionalRepresentationAndShapeRepresentation : public Handle_StepRepr_DefinitionalRepresentation {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_DefinitionalRepresentationAndShapeRepresentation();
		%feature("autodoc", "1");
		Handle_StepShape_DefinitionalRepresentationAndShapeRepresentation(const Handle_StepShape_DefinitionalRepresentationAndShapeRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_DefinitionalRepresentationAndShapeRepresentation(const StepShape_DefinitionalRepresentationAndShapeRepresentation *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_DefinitionalRepresentationAndShapeRepresentation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_DefinitionalRepresentationAndShapeRepresentation {
	StepShape_DefinitionalRepresentationAndShapeRepresentation* GetObject() {
	return (StepShape_DefinitionalRepresentationAndShapeRepresentation*)$self->Access();
	}
};
%extend Handle_StepShape_DefinitionalRepresentationAndShapeRepresentation {
	~Handle_StepShape_DefinitionalRepresentationAndShapeRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_DefinitionalRepresentationAndShapeRepresentation\n");}
	}
};

%nodefaultctor Handle_StepShape_HArray1OfConnectedFaceSet;
class Handle_StepShape_HArray1OfConnectedFaceSet : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfConnectedFaceSet();
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfConnectedFaceSet(const Handle_StepShape_HArray1OfConnectedFaceSet &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfConnectedFaceSet(const StepShape_HArray1OfConnectedFaceSet *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfConnectedFaceSet const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_HArray1OfConnectedFaceSet {
	StepShape_HArray1OfConnectedFaceSet* GetObject() {
	return (StepShape_HArray1OfConnectedFaceSet*)$self->Access();
	}
};
%extend Handle_StepShape_HArray1OfConnectedFaceSet {
	~Handle_StepShape_HArray1OfConnectedFaceSet() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_HArray1OfConnectedFaceSet\n");}
	}
};

%nodefaultctor Handle_StepShape_ManifoldSolidBrep;
class Handle_StepShape_ManifoldSolidBrep : public Handle_StepShape_SolidModel {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_ManifoldSolidBrep();
		%feature("autodoc", "1");
		Handle_StepShape_ManifoldSolidBrep(const Handle_StepShape_ManifoldSolidBrep &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_ManifoldSolidBrep(const StepShape_ManifoldSolidBrep *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_ManifoldSolidBrep const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_ManifoldSolidBrep {
	StepShape_ManifoldSolidBrep* GetObject() {
	return (StepShape_ManifoldSolidBrep*)$self->Access();
	}
};
%extend Handle_StepShape_ManifoldSolidBrep {
	~Handle_StepShape_ManifoldSolidBrep() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_ManifoldSolidBrep\n");}
	}
};

%nodefaultctor Handle_StepShape_ExtrudedAreaSolid;
class Handle_StepShape_ExtrudedAreaSolid : public Handle_StepShape_SweptAreaSolid {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_ExtrudedAreaSolid();
		%feature("autodoc", "1");
		Handle_StepShape_ExtrudedAreaSolid(const Handle_StepShape_ExtrudedAreaSolid &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_ExtrudedAreaSolid(const StepShape_ExtrudedAreaSolid *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_ExtrudedAreaSolid const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_ExtrudedAreaSolid {
	StepShape_ExtrudedAreaSolid* GetObject() {
	return (StepShape_ExtrudedAreaSolid*)$self->Access();
	}
};
%extend Handle_StepShape_ExtrudedAreaSolid {
	~Handle_StepShape_ExtrudedAreaSolid() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_ExtrudedAreaSolid\n");}
	}
};

%nodefaultctor Handle_StepShape_ConnectedEdgeSet;
class Handle_StepShape_ConnectedEdgeSet : public Handle_StepShape_TopologicalRepresentationItem {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_ConnectedEdgeSet();
		%feature("autodoc", "1");
		Handle_StepShape_ConnectedEdgeSet(const Handle_StepShape_ConnectedEdgeSet &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_ConnectedEdgeSet(const StepShape_ConnectedEdgeSet *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_ConnectedEdgeSet const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_ConnectedEdgeSet {
	StepShape_ConnectedEdgeSet* GetObject() {
	return (StepShape_ConnectedEdgeSet*)$self->Access();
	}
};
%extend Handle_StepShape_ConnectedEdgeSet {
	~Handle_StepShape_ConnectedEdgeSet() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_ConnectedEdgeSet\n");}
	}
};

%nodefaultctor Handle_StepShape_PrecisionQualifier;
class Handle_StepShape_PrecisionQualifier : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_PrecisionQualifier();
		%feature("autodoc", "1");
		Handle_StepShape_PrecisionQualifier(const Handle_StepShape_PrecisionQualifier &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_PrecisionQualifier(const StepShape_PrecisionQualifier *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_PrecisionQualifier const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_PrecisionQualifier {
	StepShape_PrecisionQualifier* GetObject() {
	return (StepShape_PrecisionQualifier*)$self->Access();
	}
};
%extend Handle_StepShape_PrecisionQualifier {
	~Handle_StepShape_PrecisionQualifier() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_PrecisionQualifier\n");}
	}
};

%nodefaultctor Handle_StepShape_ToleranceValue;
class Handle_StepShape_ToleranceValue : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_ToleranceValue();
		%feature("autodoc", "1");
		Handle_StepShape_ToleranceValue(const Handle_StepShape_ToleranceValue &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_ToleranceValue(const StepShape_ToleranceValue *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_ToleranceValue const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_ToleranceValue {
	StepShape_ToleranceValue* GetObject() {
	return (StepShape_ToleranceValue*)$self->Access();
	}
};
%extend Handle_StepShape_ToleranceValue {
	~Handle_StepShape_ToleranceValue() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_ToleranceValue\n");}
	}
};

%nodefaultctor Handle_StepShape_EdgeBasedWireframeModel;
class Handle_StepShape_EdgeBasedWireframeModel : public Handle_StepGeom_GeometricRepresentationItem {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_EdgeBasedWireframeModel();
		%feature("autodoc", "1");
		Handle_StepShape_EdgeBasedWireframeModel(const Handle_StepShape_EdgeBasedWireframeModel &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_EdgeBasedWireframeModel(const StepShape_EdgeBasedWireframeModel *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_EdgeBasedWireframeModel const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_EdgeBasedWireframeModel {
	StepShape_EdgeBasedWireframeModel* GetObject() {
	return (StepShape_EdgeBasedWireframeModel*)$self->Access();
	}
};
%extend Handle_StepShape_EdgeBasedWireframeModel {
	~Handle_StepShape_EdgeBasedWireframeModel() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_EdgeBasedWireframeModel\n");}
	}
};

%nodefaultctor Handle_StepShape_HArray1OfFace;
class Handle_StepShape_HArray1OfFace : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfFace();
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfFace(const Handle_StepShape_HArray1OfFace &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfFace(const StepShape_HArray1OfFace *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfFace const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_HArray1OfFace {
	StepShape_HArray1OfFace* GetObject() {
	return (StepShape_HArray1OfFace*)$self->Access();
	}
};
%extend Handle_StepShape_HArray1OfFace {
	~Handle_StepShape_HArray1OfFace() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_HArray1OfFace\n");}
	}
};

%nodefaultctor Handle_StepShape_EdgeCurve;
class Handle_StepShape_EdgeCurve : public Handle_StepShape_Edge {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_EdgeCurve();
		%feature("autodoc", "1");
		Handle_StepShape_EdgeCurve(const Handle_StepShape_EdgeCurve &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_EdgeCurve(const StepShape_EdgeCurve *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_EdgeCurve const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_EdgeCurve {
	StepShape_EdgeCurve* GetObject() {
	return (StepShape_EdgeCurve*)$self->Access();
	}
};
%extend Handle_StepShape_EdgeCurve {
	~Handle_StepShape_EdgeCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_EdgeCurve\n");}
	}
};

%nodefaultctor Handle_StepShape_GeometricallyBoundedWireframeShapeRepresentation;
class Handle_StepShape_GeometricallyBoundedWireframeShapeRepresentation : public Handle_StepShape_ShapeRepresentation {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_GeometricallyBoundedWireframeShapeRepresentation();
		%feature("autodoc", "1");
		Handle_StepShape_GeometricallyBoundedWireframeShapeRepresentation(const Handle_StepShape_GeometricallyBoundedWireframeShapeRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_GeometricallyBoundedWireframeShapeRepresentation(const StepShape_GeometricallyBoundedWireframeShapeRepresentation *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_GeometricallyBoundedWireframeShapeRepresentation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_GeometricallyBoundedWireframeShapeRepresentation {
	StepShape_GeometricallyBoundedWireframeShapeRepresentation* GetObject() {
	return (StepShape_GeometricallyBoundedWireframeShapeRepresentation*)$self->Access();
	}
};
%extend Handle_StepShape_GeometricallyBoundedWireframeShapeRepresentation {
	~Handle_StepShape_GeometricallyBoundedWireframeShapeRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_GeometricallyBoundedWireframeShapeRepresentation\n");}
	}
};

%nodefaultctor Handle_StepShape_CsgSolid;
class Handle_StepShape_CsgSolid : public Handle_StepShape_SolidModel {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_CsgSolid();
		%feature("autodoc", "1");
		Handle_StepShape_CsgSolid(const Handle_StepShape_CsgSolid &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_CsgSolid(const StepShape_CsgSolid *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_CsgSolid const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_CsgSolid {
	StepShape_CsgSolid* GetObject() {
	return (StepShape_CsgSolid*)$self->Access();
	}
};
%extend Handle_StepShape_CsgSolid {
	~Handle_StepShape_CsgSolid() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_CsgSolid\n");}
	}
};

%nodefaultctor Handle_StepShape_RightCircularCylinder;
class Handle_StepShape_RightCircularCylinder : public Handle_StepGeom_GeometricRepresentationItem {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_RightCircularCylinder();
		%feature("autodoc", "1");
		Handle_StepShape_RightCircularCylinder(const Handle_StepShape_RightCircularCylinder &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_RightCircularCylinder(const StepShape_RightCircularCylinder *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_RightCircularCylinder const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_RightCircularCylinder {
	StepShape_RightCircularCylinder* GetObject() {
	return (StepShape_RightCircularCylinder*)$self->Access();
	}
};
%extend Handle_StepShape_RightCircularCylinder {
	~Handle_StepShape_RightCircularCylinder() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_RightCircularCylinder\n");}
	}
};

%nodefaultctor Handle_StepShape_OrientedClosedShell;
class Handle_StepShape_OrientedClosedShell : public Handle_StepShape_ClosedShell {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_OrientedClosedShell();
		%feature("autodoc", "1");
		Handle_StepShape_OrientedClosedShell(const Handle_StepShape_OrientedClosedShell &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_OrientedClosedShell(const StepShape_OrientedClosedShell *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_OrientedClosedShell const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_OrientedClosedShell {
	StepShape_OrientedClosedShell* GetObject() {
	return (StepShape_OrientedClosedShell*)$self->Access();
	}
};
%extend Handle_StepShape_OrientedClosedShell {
	~Handle_StepShape_OrientedClosedShell() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_OrientedClosedShell\n");}
	}
};

%nodefaultctor Handle_StepShape_AdvancedBrepShapeRepresentation;
class Handle_StepShape_AdvancedBrepShapeRepresentation : public Handle_StepShape_ShapeRepresentation {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_AdvancedBrepShapeRepresentation();
		%feature("autodoc", "1");
		Handle_StepShape_AdvancedBrepShapeRepresentation(const Handle_StepShape_AdvancedBrepShapeRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_AdvancedBrepShapeRepresentation(const StepShape_AdvancedBrepShapeRepresentation *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_AdvancedBrepShapeRepresentation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_AdvancedBrepShapeRepresentation {
	StepShape_AdvancedBrepShapeRepresentation* GetObject() {
	return (StepShape_AdvancedBrepShapeRepresentation*)$self->Access();
	}
};
%extend Handle_StepShape_AdvancedBrepShapeRepresentation {
	~Handle_StepShape_AdvancedBrepShapeRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_AdvancedBrepShapeRepresentation\n");}
	}
};

%nodefaultctor Handle_StepShape_BoxDomain;
class Handle_StepShape_BoxDomain : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_BoxDomain();
		%feature("autodoc", "1");
		Handle_StepShape_BoxDomain(const Handle_StepShape_BoxDomain &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_BoxDomain(const StepShape_BoxDomain *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_BoxDomain const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_BoxDomain {
	StepShape_BoxDomain* GetObject() {
	return (StepShape_BoxDomain*)$self->Access();
	}
};
%extend Handle_StepShape_BoxDomain {
	~Handle_StepShape_BoxDomain() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_BoxDomain\n");}
	}
};

%nodefaultctor Handle_StepShape_NonManifoldSurfaceShapeRepresentation;
class Handle_StepShape_NonManifoldSurfaceShapeRepresentation : public Handle_StepShape_ShapeRepresentation {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_NonManifoldSurfaceShapeRepresentation();
		%feature("autodoc", "1");
		Handle_StepShape_NonManifoldSurfaceShapeRepresentation(const Handle_StepShape_NonManifoldSurfaceShapeRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_NonManifoldSurfaceShapeRepresentation(const StepShape_NonManifoldSurfaceShapeRepresentation *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_NonManifoldSurfaceShapeRepresentation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_NonManifoldSurfaceShapeRepresentation {
	StepShape_NonManifoldSurfaceShapeRepresentation* GetObject() {
	return (StepShape_NonManifoldSurfaceShapeRepresentation*)$self->Access();
	}
};
%extend Handle_StepShape_NonManifoldSurfaceShapeRepresentation {
	~Handle_StepShape_NonManifoldSurfaceShapeRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_NonManifoldSurfaceShapeRepresentation\n");}
	}
};

%nodefaultctor Handle_StepShape_ShapeDefinitionRepresentation;
class Handle_StepShape_ShapeDefinitionRepresentation : public Handle_StepRepr_PropertyDefinitionRepresentation {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_ShapeDefinitionRepresentation();
		%feature("autodoc", "1");
		Handle_StepShape_ShapeDefinitionRepresentation(const Handle_StepShape_ShapeDefinitionRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_ShapeDefinitionRepresentation(const StepShape_ShapeDefinitionRepresentation *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_ShapeDefinitionRepresentation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_ShapeDefinitionRepresentation {
	StepShape_ShapeDefinitionRepresentation* GetObject() {
	return (StepShape_ShapeDefinitionRepresentation*)$self->Access();
	}
};
%extend Handle_StepShape_ShapeDefinitionRepresentation {
	~Handle_StepShape_ShapeDefinitionRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_ShapeDefinitionRepresentation\n");}
	}
};

%nodefaultctor Handle_StepShape_PlusMinusTolerance;
class Handle_StepShape_PlusMinusTolerance : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_PlusMinusTolerance();
		%feature("autodoc", "1");
		Handle_StepShape_PlusMinusTolerance(const Handle_StepShape_PlusMinusTolerance &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_PlusMinusTolerance(const StepShape_PlusMinusTolerance *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_PlusMinusTolerance const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_PlusMinusTolerance {
	StepShape_PlusMinusTolerance* GetObject() {
	return (StepShape_PlusMinusTolerance*)$self->Access();
	}
};
%extend Handle_StepShape_PlusMinusTolerance {
	~Handle_StepShape_PlusMinusTolerance() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_PlusMinusTolerance\n");}
	}
};

%nodefaultctor Handle_StepShape_Torus;
class Handle_StepShape_Torus : public Handle_StepGeom_GeometricRepresentationItem {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_Torus();
		%feature("autodoc", "1");
		Handle_StepShape_Torus(const Handle_StepShape_Torus &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_Torus(const StepShape_Torus *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_Torus const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_Torus {
	StepShape_Torus* GetObject() {
	return (StepShape_Torus*)$self->Access();
	}
};
%extend Handle_StepShape_Torus {
	~Handle_StepShape_Torus() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_Torus\n");}
	}
};

%nodefaultctor Handle_StepShape_OrientedFace;
class Handle_StepShape_OrientedFace : public Handle_StepShape_Face {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_OrientedFace();
		%feature("autodoc", "1");
		Handle_StepShape_OrientedFace(const Handle_StepShape_OrientedFace &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_OrientedFace(const StepShape_OrientedFace *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_OrientedFace const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_OrientedFace {
	StepShape_OrientedFace* GetObject() {
	return (StepShape_OrientedFace*)$self->Access();
	}
};
%extend Handle_StepShape_OrientedFace {
	~Handle_StepShape_OrientedFace() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_OrientedFace\n");}
	}
};

%nodefaultctor Handle_StepShape_ConnectedFaceShapeRepresentation;
class Handle_StepShape_ConnectedFaceShapeRepresentation : public Handle_StepRepr_Representation {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_ConnectedFaceShapeRepresentation();
		%feature("autodoc", "1");
		Handle_StepShape_ConnectedFaceShapeRepresentation(const Handle_StepShape_ConnectedFaceShapeRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_ConnectedFaceShapeRepresentation(const StepShape_ConnectedFaceShapeRepresentation *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_ConnectedFaceShapeRepresentation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_ConnectedFaceShapeRepresentation {
	StepShape_ConnectedFaceShapeRepresentation* GetObject() {
	return (StepShape_ConnectedFaceShapeRepresentation*)$self->Access();
	}
};
%extend Handle_StepShape_ConnectedFaceShapeRepresentation {
	~Handle_StepShape_ConnectedFaceShapeRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_ConnectedFaceShapeRepresentation\n");}
	}
};

%nodefaultctor Handle_StepShape_ShellBasedSurfaceModel;
class Handle_StepShape_ShellBasedSurfaceModel : public Handle_StepGeom_GeometricRepresentationItem {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_ShellBasedSurfaceModel();
		%feature("autodoc", "1");
		Handle_StepShape_ShellBasedSurfaceModel(const Handle_StepShape_ShellBasedSurfaceModel &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_ShellBasedSurfaceModel(const StepShape_ShellBasedSurfaceModel *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_ShellBasedSurfaceModel const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_ShellBasedSurfaceModel {
	StepShape_ShellBasedSurfaceModel* GetObject() {
	return (StepShape_ShellBasedSurfaceModel*)$self->Access();
	}
};
%extend Handle_StepShape_ShellBasedSurfaceModel {
	~Handle_StepShape_ShellBasedSurfaceModel() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_ShellBasedSurfaceModel\n");}
	}
};

%nodefaultctor Handle_StepShape_CsgShapeRepresentation;
class Handle_StepShape_CsgShapeRepresentation : public Handle_StepShape_ShapeRepresentation {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_CsgShapeRepresentation();
		%feature("autodoc", "1");
		Handle_StepShape_CsgShapeRepresentation(const Handle_StepShape_CsgShapeRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_CsgShapeRepresentation(const StepShape_CsgShapeRepresentation *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_CsgShapeRepresentation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_CsgShapeRepresentation {
	StepShape_CsgShapeRepresentation* GetObject() {
	return (StepShape_CsgShapeRepresentation*)$self->Access();
	}
};
%extend Handle_StepShape_CsgShapeRepresentation {
	~Handle_StepShape_CsgShapeRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_CsgShapeRepresentation\n");}
	}
};

%nodefaultctor Handle_StepShape_CompoundShapeRepresentation;
class Handle_StepShape_CompoundShapeRepresentation : public Handle_StepShape_ShapeRepresentation {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_CompoundShapeRepresentation();
		%feature("autodoc", "1");
		Handle_StepShape_CompoundShapeRepresentation(const Handle_StepShape_CompoundShapeRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_CompoundShapeRepresentation(const StepShape_CompoundShapeRepresentation *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_CompoundShapeRepresentation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_CompoundShapeRepresentation {
	StepShape_CompoundShapeRepresentation* GetObject() {
	return (StepShape_CompoundShapeRepresentation*)$self->Access();
	}
};
%extend Handle_StepShape_CompoundShapeRepresentation {
	~Handle_StepShape_CompoundShapeRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_CompoundShapeRepresentation\n");}
	}
};

%nodefaultctor Handle_StepShape_Subedge;
class Handle_StepShape_Subedge : public Handle_StepShape_Edge {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_Subedge();
		%feature("autodoc", "1");
		Handle_StepShape_Subedge(const Handle_StepShape_Subedge &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_Subedge(const StepShape_Subedge *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_Subedge const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_Subedge {
	StepShape_Subedge* GetObject() {
	return (StepShape_Subedge*)$self->Access();
	}
};
%extend Handle_StepShape_Subedge {
	~Handle_StepShape_Subedge() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_Subedge\n");}
	}
};

%nodefaultctor Handle_StepShape_FacetedBrepShapeRepresentation;
class Handle_StepShape_FacetedBrepShapeRepresentation : public Handle_StepShape_ShapeRepresentation {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_FacetedBrepShapeRepresentation();
		%feature("autodoc", "1");
		Handle_StepShape_FacetedBrepShapeRepresentation(const Handle_StepShape_FacetedBrepShapeRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_FacetedBrepShapeRepresentation(const StepShape_FacetedBrepShapeRepresentation *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_FacetedBrepShapeRepresentation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_FacetedBrepShapeRepresentation {
	StepShape_FacetedBrepShapeRepresentation* GetObject() {
	return (StepShape_FacetedBrepShapeRepresentation*)$self->Access();
	}
};
%extend Handle_StepShape_FacetedBrepShapeRepresentation {
	~Handle_StepShape_FacetedBrepShapeRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_FacetedBrepShapeRepresentation\n");}
	}
};

%nodefaultctor Handle_StepShape_Vertex;
class Handle_StepShape_Vertex : public Handle_StepShape_TopologicalRepresentationItem {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_Vertex();
		%feature("autodoc", "1");
		Handle_StepShape_Vertex(const Handle_StepShape_Vertex &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_Vertex(const StepShape_Vertex *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_Vertex const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_Vertex {
	StepShape_Vertex* GetObject() {
	return (StepShape_Vertex*)$self->Access();
	}
};
%extend Handle_StepShape_Vertex {
	~Handle_StepShape_Vertex() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_Vertex\n");}
	}
};

%nodefaultctor Handle_StepShape_GeometricallyBoundedSurfaceShapeRepresentation;
class Handle_StepShape_GeometricallyBoundedSurfaceShapeRepresentation : public Handle_StepShape_ShapeRepresentation {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_GeometricallyBoundedSurfaceShapeRepresentation();
		%feature("autodoc", "1");
		Handle_StepShape_GeometricallyBoundedSurfaceShapeRepresentation(const Handle_StepShape_GeometricallyBoundedSurfaceShapeRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_GeometricallyBoundedSurfaceShapeRepresentation(const StepShape_GeometricallyBoundedSurfaceShapeRepresentation *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_GeometricallyBoundedSurfaceShapeRepresentation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_GeometricallyBoundedSurfaceShapeRepresentation {
	StepShape_GeometricallyBoundedSurfaceShapeRepresentation* GetObject() {
	return (StepShape_GeometricallyBoundedSurfaceShapeRepresentation*)$self->Access();
	}
};
%extend Handle_StepShape_GeometricallyBoundedSurfaceShapeRepresentation {
	~Handle_StepShape_GeometricallyBoundedSurfaceShapeRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_GeometricallyBoundedSurfaceShapeRepresentation\n");}
	}
};

%nodefaultctor Handle_StepShape_TransitionalShapeRepresentation;
class Handle_StepShape_TransitionalShapeRepresentation : public Handle_StepShape_ShapeRepresentation {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_TransitionalShapeRepresentation();
		%feature("autodoc", "1");
		Handle_StepShape_TransitionalShapeRepresentation(const Handle_StepShape_TransitionalShapeRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_TransitionalShapeRepresentation(const StepShape_TransitionalShapeRepresentation *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_TransitionalShapeRepresentation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_TransitionalShapeRepresentation {
	StepShape_TransitionalShapeRepresentation* GetObject() {
	return (StepShape_TransitionalShapeRepresentation*)$self->Access();
	}
};
%extend Handle_StepShape_TransitionalShapeRepresentation {
	~Handle_StepShape_TransitionalShapeRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_TransitionalShapeRepresentation\n");}
	}
};

%nodefaultctor Handle_StepShape_HArray1OfShell;
class Handle_StepShape_HArray1OfShell : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfShell();
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfShell(const Handle_StepShape_HArray1OfShell &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfShell(const StepShape_HArray1OfShell *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfShell const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_HArray1OfShell {
	StepShape_HArray1OfShell* GetObject() {
	return (StepShape_HArray1OfShell*)$self->Access();
	}
};
%extend Handle_StepShape_HArray1OfShell {
	~Handle_StepShape_HArray1OfShell() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_HArray1OfShell\n");}
	}
};

%nodefaultctor Handle_StepShape_DirectedDimensionalLocation;
class Handle_StepShape_DirectedDimensionalLocation : public Handle_StepShape_DimensionalLocation {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_DirectedDimensionalLocation();
		%feature("autodoc", "1");
		Handle_StepShape_DirectedDimensionalLocation(const Handle_StepShape_DirectedDimensionalLocation &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_DirectedDimensionalLocation(const StepShape_DirectedDimensionalLocation *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_DirectedDimensionalLocation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_DirectedDimensionalLocation {
	StepShape_DirectedDimensionalLocation* GetObject() {
	return (StepShape_DirectedDimensionalLocation*)$self->Access();
	}
};
%extend Handle_StepShape_DirectedDimensionalLocation {
	~Handle_StepShape_DirectedDimensionalLocation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_DirectedDimensionalLocation\n");}
	}
};

%nodefaultctor Handle_StepShape_FacetedBrep;
class Handle_StepShape_FacetedBrep : public Handle_StepShape_ManifoldSolidBrep {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_FacetedBrep();
		%feature("autodoc", "1");
		Handle_StepShape_FacetedBrep(const Handle_StepShape_FacetedBrep &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_FacetedBrep(const StepShape_FacetedBrep *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_FacetedBrep const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_FacetedBrep {
	StepShape_FacetedBrep* GetObject() {
	return (StepShape_FacetedBrep*)$self->Access();
	}
};
%extend Handle_StepShape_FacetedBrep {
	~Handle_StepShape_FacetedBrep() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_FacetedBrep\n");}
	}
};

%nodefaultctor Handle_StepShape_AngularSize;
class Handle_StepShape_AngularSize : public Handle_StepShape_DimensionalSize {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_AngularSize();
		%feature("autodoc", "1");
		Handle_StepShape_AngularSize(const Handle_StepShape_AngularSize &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_AngularSize(const StepShape_AngularSize *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_AngularSize const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_AngularSize {
	StepShape_AngularSize* GetObject() {
	return (StepShape_AngularSize*)$self->Access();
	}
};
%extend Handle_StepShape_AngularSize {
	~Handle_StepShape_AngularSize() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_AngularSize\n");}
	}
};

%nodefaultctor Handle_StepShape_VertexPoint;
class Handle_StepShape_VertexPoint : public Handle_StepShape_Vertex {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_VertexPoint();
		%feature("autodoc", "1");
		Handle_StepShape_VertexPoint(const Handle_StepShape_VertexPoint &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_VertexPoint(const StepShape_VertexPoint *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_VertexPoint const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_VertexPoint {
	StepShape_VertexPoint* GetObject() {
	return (StepShape_VertexPoint*)$self->Access();
	}
};
%extend Handle_StepShape_VertexPoint {
	~Handle_StepShape_VertexPoint() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_VertexPoint\n");}
	}
};

%nodefaultctor Handle_StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem;
class Handle_StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem : public Handle_StepRepr_RepresentationItem {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem();
		%feature("autodoc", "1");
		Handle_StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem(const Handle_StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem(const StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem {
	StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem* GetObject() {
	return (StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem*)$self->Access();
	}
};
%extend Handle_StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem {
	~Handle_StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem\n");}
	}
};

%nodefaultctor Handle_StepShape_EdgeLoop;
class Handle_StepShape_EdgeLoop : public Handle_StepShape_Loop {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_EdgeLoop();
		%feature("autodoc", "1");
		Handle_StepShape_EdgeLoop(const Handle_StepShape_EdgeLoop &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_EdgeLoop(const StepShape_EdgeLoop *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_EdgeLoop const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_EdgeLoop {
	StepShape_EdgeLoop* GetObject() {
	return (StepShape_EdgeLoop*)$self->Access();
	}
};
%extend Handle_StepShape_EdgeLoop {
	~Handle_StepShape_EdgeLoop() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_EdgeLoop\n");}
	}
};

%nodefaultctor Handle_StepShape_BrepWithVoids;
class Handle_StepShape_BrepWithVoids : public Handle_StepShape_ManifoldSolidBrep {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_BrepWithVoids();
		%feature("autodoc", "1");
		Handle_StepShape_BrepWithVoids(const Handle_StepShape_BrepWithVoids &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_BrepWithVoids(const StepShape_BrepWithVoids *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_BrepWithVoids const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_BrepWithVoids {
	StepShape_BrepWithVoids* GetObject() {
	return (StepShape_BrepWithVoids*)$self->Access();
	}
};
%extend Handle_StepShape_BrepWithVoids {
	~Handle_StepShape_BrepWithVoids() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_BrepWithVoids\n");}
	}
};

%nodefaultctor Handle_StepShape_AngularLocation;
class Handle_StepShape_AngularLocation : public Handle_StepShape_DimensionalLocation {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_AngularLocation();
		%feature("autodoc", "1");
		Handle_StepShape_AngularLocation(const Handle_StepShape_AngularLocation &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_AngularLocation(const StepShape_AngularLocation *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_AngularLocation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_AngularLocation {
	StepShape_AngularLocation* GetObject() {
	return (StepShape_AngularLocation*)$self->Access();
	}
};
%extend Handle_StepShape_AngularLocation {
	~Handle_StepShape_AngularLocation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_AngularLocation\n");}
	}
};

%nodefaultctor Handle_StepShape_FacetedBrepAndBrepWithVoids;
class Handle_StepShape_FacetedBrepAndBrepWithVoids : public Handle_StepShape_ManifoldSolidBrep {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_FacetedBrepAndBrepWithVoids();
		%feature("autodoc", "1");
		Handle_StepShape_FacetedBrepAndBrepWithVoids(const Handle_StepShape_FacetedBrepAndBrepWithVoids &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_FacetedBrepAndBrepWithVoids(const StepShape_FacetedBrepAndBrepWithVoids *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_FacetedBrepAndBrepWithVoids const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_FacetedBrepAndBrepWithVoids {
	StepShape_FacetedBrepAndBrepWithVoids* GetObject() {
	return (StepShape_FacetedBrepAndBrepWithVoids*)$self->Access();
	}
};
%extend Handle_StepShape_FacetedBrepAndBrepWithVoids {
	~Handle_StepShape_FacetedBrepAndBrepWithVoids() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_FacetedBrepAndBrepWithVoids\n");}
	}
};

%nodefaultctor Handle_StepShape_VertexLoop;
class Handle_StepShape_VertexLoop : public Handle_StepShape_Loop {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_VertexLoop();
		%feature("autodoc", "1");
		Handle_StepShape_VertexLoop(const Handle_StepShape_VertexLoop &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_VertexLoop(const StepShape_VertexLoop *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_VertexLoop const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_VertexLoop {
	StepShape_VertexLoop* GetObject() {
	return (StepShape_VertexLoop*)$self->Access();
	}
};
%extend Handle_StepShape_VertexLoop {
	~Handle_StepShape_VertexLoop() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_VertexLoop\n");}
	}
};

%nodefaultctor Handle_StepShape_OrientedOpenShell;
class Handle_StepShape_OrientedOpenShell : public Handle_StepShape_OpenShell {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_OrientedOpenShell();
		%feature("autodoc", "1");
		Handle_StepShape_OrientedOpenShell(const Handle_StepShape_OrientedOpenShell &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_OrientedOpenShell(const StepShape_OrientedOpenShell *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_OrientedOpenShell const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_OrientedOpenShell {
	StepShape_OrientedOpenShell* GetObject() {
	return (StepShape_OrientedOpenShell*)$self->Access();
	}
};
%extend Handle_StepShape_OrientedOpenShell {
	~Handle_StepShape_OrientedOpenShell() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_OrientedOpenShell\n");}
	}
};

%nodefaultctor Handle_StepShape_HArray1OfEdge;
class Handle_StepShape_HArray1OfEdge : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfEdge();
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfEdge(const Handle_StepShape_HArray1OfEdge &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfEdge(const StepShape_HArray1OfEdge *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfEdge const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_HArray1OfEdge {
	StepShape_HArray1OfEdge* GetObject() {
	return (StepShape_HArray1OfEdge*)$self->Access();
	}
};
%extend Handle_StepShape_HArray1OfEdge {
	~Handle_StepShape_HArray1OfEdge() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_HArray1OfEdge\n");}
	}
};

%nodefaultctor Handle_StepShape_RightAngularWedge;
class Handle_StepShape_RightAngularWedge : public Handle_StepGeom_GeometricRepresentationItem {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_RightAngularWedge();
		%feature("autodoc", "1");
		Handle_StepShape_RightAngularWedge(const Handle_StepShape_RightAngularWedge &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_RightAngularWedge(const StepShape_RightAngularWedge *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_RightAngularWedge const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_RightAngularWedge {
	StepShape_RightAngularWedge* GetObject() {
	return (StepShape_RightAngularWedge*)$self->Access();
	}
};
%extend Handle_StepShape_RightAngularWedge {
	~Handle_StepShape_RightAngularWedge() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_RightAngularWedge\n");}
	}
};

%nodefaultctor Handle_StepShape_HArray1OfOrientedClosedShell;
class Handle_StepShape_HArray1OfOrientedClosedShell : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfOrientedClosedShell();
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfOrientedClosedShell(const Handle_StepShape_HArray1OfOrientedClosedShell &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfOrientedClosedShell(const StepShape_HArray1OfOrientedClosedShell *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfOrientedClosedShell const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_HArray1OfOrientedClosedShell {
	StepShape_HArray1OfOrientedClosedShell* GetObject() {
	return (StepShape_HArray1OfOrientedClosedShell*)$self->Access();
	}
};
%extend Handle_StepShape_HArray1OfOrientedClosedShell {
	~Handle_StepShape_HArray1OfOrientedClosedShell() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_HArray1OfOrientedClosedShell\n");}
	}
};

%nodefaultctor Handle_StepShape_HArray1OfOrientedEdge;
class Handle_StepShape_HArray1OfOrientedEdge : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfOrientedEdge();
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfOrientedEdge(const Handle_StepShape_HArray1OfOrientedEdge &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfOrientedEdge(const StepShape_HArray1OfOrientedEdge *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfOrientedEdge const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_HArray1OfOrientedEdge {
	StepShape_HArray1OfOrientedEdge* GetObject() {
	return (StepShape_HArray1OfOrientedEdge*)$self->Access();
	}
};
%extend Handle_StepShape_HArray1OfOrientedEdge {
	~Handle_StepShape_HArray1OfOrientedEdge() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_HArray1OfOrientedEdge\n");}
	}
};

%nodefaultctor Handle_StepShape_ShapeDimensionRepresentation;
class Handle_StepShape_ShapeDimensionRepresentation : public Handle_StepShape_ShapeRepresentation {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_ShapeDimensionRepresentation();
		%feature("autodoc", "1");
		Handle_StepShape_ShapeDimensionRepresentation(const Handle_StepShape_ShapeDimensionRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_ShapeDimensionRepresentation(const StepShape_ShapeDimensionRepresentation *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_ShapeDimensionRepresentation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_ShapeDimensionRepresentation {
	StepShape_ShapeDimensionRepresentation* GetObject() {
	return (StepShape_ShapeDimensionRepresentation*)$self->Access();
	}
};
%extend Handle_StepShape_ShapeDimensionRepresentation {
	~Handle_StepShape_ShapeDimensionRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_ShapeDimensionRepresentation\n");}
	}
};

%nodefaultctor Handle_StepShape_QualifiedRepresentationItem;
class Handle_StepShape_QualifiedRepresentationItem : public Handle_StepRepr_RepresentationItem {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_QualifiedRepresentationItem();
		%feature("autodoc", "1");
		Handle_StepShape_QualifiedRepresentationItem(const Handle_StepShape_QualifiedRepresentationItem &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_QualifiedRepresentationItem(const StepShape_QualifiedRepresentationItem *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_QualifiedRepresentationItem const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_QualifiedRepresentationItem {
	StepShape_QualifiedRepresentationItem* GetObject() {
	return (StepShape_QualifiedRepresentationItem*)$self->Access();
	}
};
%extend Handle_StepShape_QualifiedRepresentationItem {
	~Handle_StepShape_QualifiedRepresentationItem() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_QualifiedRepresentationItem\n");}
	}
};

%nodefaultctor Handle_StepShape_ContextDependentShapeRepresentation;
class Handle_StepShape_ContextDependentShapeRepresentation : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepShape_ContextDependentShapeRepresentation();
		%feature("autodoc", "1");
		Handle_StepShape_ContextDependentShapeRepresentation(const Handle_StepShape_ContextDependentShapeRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepShape_ContextDependentShapeRepresentation(const StepShape_ContextDependentShapeRepresentation *anItem);
		%feature("autodoc", "1");
		Handle_StepShape_ContextDependentShapeRepresentation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepShape_ContextDependentShapeRepresentation {
	StepShape_ContextDependentShapeRepresentation* GetObject() {
	return (StepShape_ContextDependentShapeRepresentation*)$self->Access();
	}
};
%extend Handle_StepShape_ContextDependentShapeRepresentation {
	~Handle_StepShape_ContextDependentShapeRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_StepShape_ContextDependentShapeRepresentation\n");}
	}
};

%nodefaultctor StepShape_BooleanOperand;
class StepShape_BooleanOperand {
	public:
		%feature("autodoc", "1");
		StepShape_BooleanOperand();
		%feature("autodoc", "1");
		void SetTypeOfContent(const Standard_Integer aTypeOfContent);
		%feature("autodoc", "1");
		Standard_Integer TypeOfContent() const;
		%feature("autodoc", "1");
		Handle_StepShape_SolidModel SolidModel() const;
		%feature("autodoc", "1");
		void SetSolidModel(const Handle_StepShape_SolidModel &aSolidModel);
		%feature("autodoc", "1");
		Handle_StepShape_HalfSpaceSolid HalfSpaceSolid() const;
		%feature("autodoc", "1");
		void SetHalfSpaceSolid(const Handle_StepShape_HalfSpaceSolid &aHalfSpaceSolid);
		%feature("autodoc", "1");
		StepShape_CsgPrimitive CsgPrimitive() const;
		%feature("autodoc", "1");
		void SetCsgPrimitive(const StepShape_CsgPrimitive &aCsgPrimitive);
		%feature("autodoc", "1");
		Handle_StepShape_BooleanResult BooleanResult() const;
		%feature("autodoc", "1");
		void SetBooleanResult(const Handle_StepShape_BooleanResult &aBooleanResult);

};
%extend StepShape_BooleanOperand {
	~StepShape_BooleanOperand() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_BooleanOperand\n");}
	}
};

%nodefaultctor StepShape_SolidModel;
class StepShape_SolidModel : public StepGeom_GeometricRepresentationItem {
	public:
		%feature("autodoc", "1");
		StepShape_SolidModel();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_SolidModel {
	Handle_StepShape_SolidModel GetHandle() {
	return *(Handle_StepShape_SolidModel*) &$self;
	}
};
%extend StepShape_SolidModel {
	~StepShape_SolidModel() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_SolidModel\n");}
	}
};

%nodefaultctor StepShape_SweptFaceSolid;
class StepShape_SweptFaceSolid : public StepShape_SolidModel {
	public:
		%feature("autodoc", "1");
		StepShape_SweptFaceSolid();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepShape_FaceSurface &aSweptArea);
		%feature("autodoc", "1");
		virtual		void SetSweptFace(const Handle_StepShape_FaceSurface &aSweptArea);
		%feature("autodoc", "1");
		virtual		Handle_StepShape_FaceSurface SweptFace() const;

};
%extend StepShape_SweptFaceSolid {
	Handle_StepShape_SweptFaceSolid GetHandle() {
	return *(Handle_StepShape_SweptFaceSolid*) &$self;
	}
};
%extend StepShape_SweptFaceSolid {
	~StepShape_SweptFaceSolid() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_SweptFaceSolid\n");}
	}
};

%nodefaultctor StepShape_RevolvedFaceSolid;
class StepShape_RevolvedFaceSolid : public StepShape_SweptFaceSolid {
	public:
		%feature("autodoc", "1");
		StepShape_RevolvedFaceSolid();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepShape_FaceSurface &aSweptArea, const Handle_StepGeom_Axis1Placement &aAxis, const Standard_Real aAngle);
		%feature("autodoc", "1");
		void SetAxis(const Handle_StepGeom_Axis1Placement &aAxis);
		%feature("autodoc", "1");
		Handle_StepGeom_Axis1Placement Axis() const;
		%feature("autodoc", "1");
		void SetAngle(const Standard_Real aAngle);
		%feature("autodoc", "1");
		Standard_Real Angle() const;

};
%extend StepShape_RevolvedFaceSolid {
	Handle_StepShape_RevolvedFaceSolid GetHandle() {
	return *(Handle_StepShape_RevolvedFaceSolid*) &$self;
	}
};
%extend StepShape_RevolvedFaceSolid {
	~StepShape_RevolvedFaceSolid() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_RevolvedFaceSolid\n");}
	}
};

%nodefaultctor StepShape_HArray1OfFaceBound;
class StepShape_HArray1OfFaceBound : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepShape_HArray1OfFaceBound(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepShape_HArray1OfFaceBound(const Standard_Integer Low, const Standard_Integer Up, const Handle_StepShape_FaceBound &V);
		%feature("autodoc", "1");
		void Init(const Handle_StepShape_FaceBound &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StepShape_FaceBound &Value);
		%feature("autodoc", "1");
		const Handle_StepShape_FaceBound & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_StepShape_FaceBound & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const StepShape_Array1OfFaceBound & Array1() const;
		%feature("autodoc", "1");
		StepShape_Array1OfFaceBound & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_HArray1OfFaceBound {
	Handle_StepShape_HArray1OfFaceBound GetHandle() {
	return *(Handle_StepShape_HArray1OfFaceBound*) &$self;
	}
};
%extend StepShape_HArray1OfFaceBound {
	~StepShape_HArray1OfFaceBound() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_HArray1OfFaceBound\n");}
	}
};

%nodefaultctor StepShape_HArray1OfEdge;
class StepShape_HArray1OfEdge : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepShape_HArray1OfEdge(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepShape_HArray1OfEdge(const Standard_Integer Low, const Standard_Integer Up, const Handle_StepShape_Edge &V);
		%feature("autodoc", "1");
		void Init(const Handle_StepShape_Edge &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StepShape_Edge &Value);
		%feature("autodoc", "1");
		const Handle_StepShape_Edge & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_StepShape_Edge & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const StepShape_Array1OfEdge & Array1() const;
		%feature("autodoc", "1");
		StepShape_Array1OfEdge & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_HArray1OfEdge {
	Handle_StepShape_HArray1OfEdge GetHandle() {
	return *(Handle_StepShape_HArray1OfEdge*) &$self;
	}
};
%extend StepShape_HArray1OfEdge {
	~StepShape_HArray1OfEdge() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_HArray1OfEdge\n");}
	}
};

%nodefaultctor StepShape_TopologicalRepresentationItem;
class StepShape_TopologicalRepresentationItem : public StepRepr_RepresentationItem {
	public:
		%feature("autodoc", "1");
		StepShape_TopologicalRepresentationItem();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_TopologicalRepresentationItem {
	Handle_StepShape_TopologicalRepresentationItem GetHandle() {
	return *(Handle_StepShape_TopologicalRepresentationItem*) &$self;
	}
};
%extend StepShape_TopologicalRepresentationItem {
	~StepShape_TopologicalRepresentationItem() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_TopologicalRepresentationItem\n");}
	}
};

%nodefaultctor StepShape_Loop;
class StepShape_Loop : public StepShape_TopologicalRepresentationItem {
	public:
		%feature("autodoc", "1");
		StepShape_Loop();

};
%extend StepShape_Loop {
	Handle_StepShape_Loop GetHandle() {
	return *(Handle_StepShape_Loop*) &$self;
	}
};
%extend StepShape_Loop {
	~StepShape_Loop() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_Loop\n");}
	}
};

%nodefaultctor StepShape_PolyLoop;
class StepShape_PolyLoop : public StepShape_Loop {
	public:
		%feature("autodoc", "1");
		StepShape_PolyLoop();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepGeom_HArray1OfCartesianPoint &aPolygon);
		%feature("autodoc", "1");
		void SetPolygon(const Handle_StepGeom_HArray1OfCartesianPoint &aPolygon);
		%feature("autodoc", "1");
		Handle_StepGeom_HArray1OfCartesianPoint Polygon() const;
		%feature("autodoc", "1");
		Handle_StepGeom_CartesianPoint PolygonValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer NbPolygon() const;

};
%extend StepShape_PolyLoop {
	Handle_StepShape_PolyLoop GetHandle() {
	return *(Handle_StepShape_PolyLoop*) &$self;
	}
};
%extend StepShape_PolyLoop {
	~StepShape_PolyLoop() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_PolyLoop\n");}
	}
};

%nodefaultctor StepShape_ShapeRepresentation;
class StepShape_ShapeRepresentation : public StepRepr_Representation {
	public:
		%feature("autodoc", "1");
		StepShape_ShapeRepresentation();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_ShapeRepresentation {
	Handle_StepShape_ShapeRepresentation GetHandle() {
	return *(Handle_StepShape_ShapeRepresentation*) &$self;
	}
};
%extend StepShape_ShapeRepresentation {
	~StepShape_ShapeRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_ShapeRepresentation\n");}
	}
};

%nodefaultctor StepShape_GeometricallyBoundedWireframeShapeRepresentation;
class StepShape_GeometricallyBoundedWireframeShapeRepresentation : public StepShape_ShapeRepresentation {
	public:
		%feature("autodoc", "1");
		StepShape_GeometricallyBoundedWireframeShapeRepresentation();

};
%extend StepShape_GeometricallyBoundedWireframeShapeRepresentation {
	Handle_StepShape_GeometricallyBoundedWireframeShapeRepresentation GetHandle() {
	return *(Handle_StepShape_GeometricallyBoundedWireframeShapeRepresentation*) &$self;
	}
};
%extend StepShape_GeometricallyBoundedWireframeShapeRepresentation {
	~StepShape_GeometricallyBoundedWireframeShapeRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_GeometricallyBoundedWireframeShapeRepresentation\n");}
	}
};

%nodefaultctor StepShape_GeometricallyBoundedSurfaceShapeRepresentation;
class StepShape_GeometricallyBoundedSurfaceShapeRepresentation : public StepShape_ShapeRepresentation {
	public:
		%feature("autodoc", "1");
		StepShape_GeometricallyBoundedSurfaceShapeRepresentation();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_GeometricallyBoundedSurfaceShapeRepresentation {
	Handle_StepShape_GeometricallyBoundedSurfaceShapeRepresentation GetHandle() {
	return *(Handle_StepShape_GeometricallyBoundedSurfaceShapeRepresentation*) &$self;
	}
};
%extend StepShape_GeometricallyBoundedSurfaceShapeRepresentation {
	~StepShape_GeometricallyBoundedSurfaceShapeRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_GeometricallyBoundedSurfaceShapeRepresentation\n");}
	}
};

%nodefaultctor StepShape_FaceBound;
class StepShape_FaceBound : public StepShape_TopologicalRepresentationItem {
	public:
		%feature("autodoc", "1");
		StepShape_FaceBound();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepShape_Loop &aBound, const Standard_Boolean aOrientation);
		%feature("autodoc", "1");
		void SetBound(const Handle_StepShape_Loop &aBound);
		%feature("autodoc", "1");
		Handle_StepShape_Loop Bound() const;
		%feature("autodoc", "1");
		void SetOrientation(const Standard_Boolean aOrientation);
		%feature("autodoc", "1");
		Standard_Boolean Orientation() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_FaceBound {
	Handle_StepShape_FaceBound GetHandle() {
	return *(Handle_StepShape_FaceBound*) &$self;
	}
};
%extend StepShape_FaceBound {
	~StepShape_FaceBound() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_FaceBound\n");}
	}
};

%nodefaultctor StepShape_TransitionalShapeRepresentation;
class StepShape_TransitionalShapeRepresentation : public StepShape_ShapeRepresentation {
	public:
		%feature("autodoc", "1");
		StepShape_TransitionalShapeRepresentation();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_TransitionalShapeRepresentation {
	Handle_StepShape_TransitionalShapeRepresentation GetHandle() {
	return *(Handle_StepShape_TransitionalShapeRepresentation*) &$self;
	}
};
%extend StepShape_TransitionalShapeRepresentation {
	~StepShape_TransitionalShapeRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_TransitionalShapeRepresentation\n");}
	}
};

%nodefaultctor StepShape_SolidReplica;
class StepShape_SolidReplica : public StepShape_SolidModel {
	public:
		%feature("autodoc", "1");
		StepShape_SolidReplica();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepShape_SolidModel &aParentSolid, const Handle_StepGeom_CartesianTransformationOperator3d &aTransformation);
		%feature("autodoc", "1");
		void SetParentSolid(const Handle_StepShape_SolidModel &aParentSolid);
		%feature("autodoc", "1");
		Handle_StepShape_SolidModel ParentSolid() const;
		%feature("autodoc", "1");
		void SetTransformation(const Handle_StepGeom_CartesianTransformationOperator3d &aTransformation);
		%feature("autodoc", "1");
		Handle_StepGeom_CartesianTransformationOperator3d Transformation() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_SolidReplica {
	Handle_StepShape_SolidReplica GetHandle() {
	return *(Handle_StepShape_SolidReplica*) &$self;
	}
};
%extend StepShape_SolidReplica {
	~StepShape_SolidReplica() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_SolidReplica\n");}
	}
};

%nodefaultctor StepShape_ExtrudedFaceSolid;
class StepShape_ExtrudedFaceSolid : public StepShape_SweptFaceSolid {
	public:
		%feature("autodoc", "1");
		StepShape_ExtrudedFaceSolid();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepShape_FaceSurface &aSweptArea);
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepShape_FaceSurface &aSweptArea, const Handle_StepGeom_Direction &aExtrudedDirection, const Standard_Real aDepth);
		%feature("autodoc", "1");
		void SetExtrudedDirection(const Handle_StepGeom_Direction &aExtrudedDirection);
		%feature("autodoc", "1");
		Handle_StepGeom_Direction ExtrudedDirection() const;
		%feature("autodoc", "1");
		void SetDepth(const Standard_Real aDepth);
		%feature("autodoc", "1");
		Standard_Real Depth() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_ExtrudedFaceSolid {
	Handle_StepShape_ExtrudedFaceSolid GetHandle() {
	return *(Handle_StepShape_ExtrudedFaceSolid*) &$self;
	}
};
%extend StepShape_ExtrudedFaceSolid {
	~StepShape_ExtrudedFaceSolid() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_ExtrudedFaceSolid\n");}
	}
};

%nodefaultctor StepShape_BooleanResult;
class StepShape_BooleanResult : public StepGeom_GeometricRepresentationItem {
	public:
		%feature("autodoc", "1");
		StepShape_BooleanResult();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const StepShape_BooleanOperator aOperator, const StepShape_BooleanOperand &aFirstOperand, const StepShape_BooleanOperand &aSecondOperand);
		%feature("autodoc", "1");
		void SetOperator(const StepShape_BooleanOperator aOperator);
		%feature("autodoc", "1");
		StepShape_BooleanOperator Operator() const;
		%feature("autodoc", "1");
		void SetFirstOperand(const StepShape_BooleanOperand &aFirstOperand);
		%feature("autodoc", "1");
		StepShape_BooleanOperand FirstOperand() const;
		%feature("autodoc", "1");
		void SetSecondOperand(const StepShape_BooleanOperand &aSecondOperand);
		%feature("autodoc", "1");
		StepShape_BooleanOperand SecondOperand() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_BooleanResult {
	Handle_StepShape_BooleanResult GetHandle() {
	return *(Handle_StepShape_BooleanResult*) &$self;
	}
};
%extend StepShape_BooleanResult {
	~StepShape_BooleanResult() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_BooleanResult\n");}
	}
};

%nodefaultctor StepShape_Path;
class StepShape_Path : public StepShape_TopologicalRepresentationItem {
	public:
		%feature("autodoc", "1");
		StepShape_Path();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepShape_HArray1OfOrientedEdge &aEdgeList);
		%feature("autodoc", "1");
		virtual		void SetEdgeList(const Handle_StepShape_HArray1OfOrientedEdge &aEdgeList);
		%feature("autodoc", "1");
		virtual		Handle_StepShape_HArray1OfOrientedEdge EdgeList() const;
		%feature("autodoc", "1");
		virtual		Handle_StepShape_OrientedEdge EdgeListValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbEdgeList() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_Path {
	Handle_StepShape_Path GetHandle() {
	return *(Handle_StepShape_Path*) &$self;
	}
};
%extend StepShape_Path {
	~StepShape_Path() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_Path\n");}
	}
};

%nodefaultctor StepShape_BoxDomain;
class StepShape_BoxDomain : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepShape_BoxDomain();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_StepGeom_CartesianPoint &aCorner, const Standard_Real aXlength, const Standard_Real aYlength, const Standard_Real aZlength);
		%feature("autodoc", "1");
		void SetCorner(const Handle_StepGeom_CartesianPoint &aCorner);
		%feature("autodoc", "1");
		Handle_StepGeom_CartesianPoint Corner() const;
		%feature("autodoc", "1");
		void SetXlength(const Standard_Real aXlength);
		%feature("autodoc", "1");
		Standard_Real Xlength() const;
		%feature("autodoc", "1");
		void SetYlength(const Standard_Real aYlength);
		%feature("autodoc", "1");
		Standard_Real Ylength() const;
		%feature("autodoc", "1");
		void SetZlength(const Standard_Real aZlength);
		%feature("autodoc", "1");
		Standard_Real Zlength() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_BoxDomain {
	Handle_StepShape_BoxDomain GetHandle() {
	return *(Handle_StepShape_BoxDomain*) &$self;
	}
};
%extend StepShape_BoxDomain {
	~StepShape_BoxDomain() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_BoxDomain\n");}
	}
};

%nodefaultctor StepShape_ShapeDimensionRepresentation;
class StepShape_ShapeDimensionRepresentation : public StepShape_ShapeRepresentation {
	public:
		%feature("autodoc", "1");
		StepShape_ShapeDimensionRepresentation();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_ShapeDimensionRepresentation {
	Handle_StepShape_ShapeDimensionRepresentation GetHandle() {
	return *(Handle_StepShape_ShapeDimensionRepresentation*) &$self;
	}
};
%extend StepShape_ShapeDimensionRepresentation {
	~StepShape_ShapeDimensionRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_ShapeDimensionRepresentation\n");}
	}
};

%nodefaultctor StepShape_ManifoldSolidBrep;
class StepShape_ManifoldSolidBrep : public StepShape_SolidModel {
	public:
		%feature("autodoc", "1");
		StepShape_ManifoldSolidBrep();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepShape_ClosedShell &aOuter);
		%feature("autodoc", "1");
		void SetOuter(const Handle_StepShape_ClosedShell &aOuter);
		%feature("autodoc", "1");
		Handle_StepShape_ClosedShell Outer() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_ManifoldSolidBrep {
	Handle_StepShape_ManifoldSolidBrep GetHandle() {
	return *(Handle_StepShape_ManifoldSolidBrep*) &$self;
	}
};
%extend StepShape_ManifoldSolidBrep {
	~StepShape_ManifoldSolidBrep() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_ManifoldSolidBrep\n");}
	}
};

%nodefaultctor StepShape_Block;
class StepShape_Block : public StepGeom_GeometricRepresentationItem {
	public:
		%feature("autodoc", "1");
		StepShape_Block();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepGeom_Axis2Placement3d &aPosition, const Standard_Real aX, const Standard_Real aY, const Standard_Real aZ);
		%feature("autodoc", "1");
		void SetPosition(const Handle_StepGeom_Axis2Placement3d &aPosition);
		%feature("autodoc", "1");
		Handle_StepGeom_Axis2Placement3d Position() const;
		%feature("autodoc", "1");
		void SetX(const Standard_Real aX);
		%feature("autodoc", "1");
		Standard_Real X() const;
		%feature("autodoc", "1");
		void SetY(const Standard_Real aY);
		%feature("autodoc", "1");
		Standard_Real Y() const;
		%feature("autodoc", "1");
		void SetZ(const Standard_Real aZ);
		%feature("autodoc", "1");
		Standard_Real Z() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_Block {
	Handle_StepShape_Block GetHandle() {
	return *(Handle_StepShape_Block*) &$self;
	}
};
%extend StepShape_Block {
	~StepShape_Block() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_Block\n");}
	}
};

%nodefaultctor StepShape_NonManifoldSurfaceShapeRepresentation;
class StepShape_NonManifoldSurfaceShapeRepresentation : public StepShape_ShapeRepresentation {
	public:
		%feature("autodoc", "1");
		StepShape_NonManifoldSurfaceShapeRepresentation();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_NonManifoldSurfaceShapeRepresentation {
	Handle_StepShape_NonManifoldSurfaceShapeRepresentation GetHandle() {
	return *(Handle_StepShape_NonManifoldSurfaceShapeRepresentation*) &$self;
	}
};
%extend StepShape_NonManifoldSurfaceShapeRepresentation {
	~StepShape_NonManifoldSurfaceShapeRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_NonManifoldSurfaceShapeRepresentation\n");}
	}
};

%nodefaultctor StepShape_HalfSpaceSolid;
class StepShape_HalfSpaceSolid : public StepGeom_GeometricRepresentationItem {
	public:
		%feature("autodoc", "1");
		StepShape_HalfSpaceSolid();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepGeom_Surface &aBaseSurface, const Standard_Boolean aAgreementFlag);
		%feature("autodoc", "1");
		void SetBaseSurface(const Handle_StepGeom_Surface &aBaseSurface);
		%feature("autodoc", "1");
		Handle_StepGeom_Surface BaseSurface() const;
		%feature("autodoc", "1");
		void SetAgreementFlag(const Standard_Boolean aAgreementFlag);
		%feature("autodoc", "1");
		Standard_Boolean AgreementFlag() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_HalfSpaceSolid {
	Handle_StepShape_HalfSpaceSolid GetHandle() {
	return *(Handle_StepShape_HalfSpaceSolid*) &$self;
	}
};
%extend StepShape_HalfSpaceSolid {
	~StepShape_HalfSpaceSolid() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_HalfSpaceSolid\n");}
	}
};

%nodefaultctor StepShape_Edge;
class StepShape_Edge : public StepShape_TopologicalRepresentationItem {
	public:
		%feature("autodoc", "1");
		StepShape_Edge();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepShape_Vertex &aEdgeStart, const Handle_StepShape_Vertex &aEdgeEnd);
		%feature("autodoc", "1");
		virtual		void SetEdgeStart(const Handle_StepShape_Vertex &aEdgeStart);
		%feature("autodoc", "1");
		virtual		Handle_StepShape_Vertex EdgeStart() const;
		%feature("autodoc", "1");
		virtual		void SetEdgeEnd(const Handle_StepShape_Vertex &aEdgeEnd);
		%feature("autodoc", "1");
		virtual		Handle_StepShape_Vertex EdgeEnd() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_Edge {
	Handle_StepShape_Edge GetHandle() {
	return *(Handle_StepShape_Edge*) &$self;
	}
};
%extend StepShape_Edge {
	~StepShape_Edge() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_Edge\n");}
	}
};

%nodefaultctor StepShape_EdgeCurve;
class StepShape_EdgeCurve : public StepShape_Edge {
	public:
		%feature("autodoc", "1");
		StepShape_EdgeCurve();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepShape_Vertex &aEdgeStart, const Handle_StepShape_Vertex &aEdgeEnd, const Handle_StepGeom_Curve &aEdgeGeometry, const Standard_Boolean aSameSense);
		%feature("autodoc", "1");
		void SetEdgeGeometry(const Handle_StepGeom_Curve &aEdgeGeometry);
		%feature("autodoc", "1");
		Handle_StepGeom_Curve EdgeGeometry() const;
		%feature("autodoc", "1");
		void SetSameSense(const Standard_Boolean aSameSense);
		%feature("autodoc", "1");
		Standard_Boolean SameSense() const;

};
%extend StepShape_EdgeCurve {
	Handle_StepShape_EdgeCurve GetHandle() {
	return *(Handle_StepShape_EdgeCurve*) &$self;
	}
};
%extend StepShape_EdgeCurve {
	~StepShape_EdgeCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_EdgeCurve\n");}
	}
};

%nodefaultctor StepShape_EdgeBasedWireframeModel;
class StepShape_EdgeBasedWireframeModel : public StepGeom_GeometricRepresentationItem {
	public:
		%feature("autodoc", "1");
		StepShape_EdgeBasedWireframeModel();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aRepresentationItem_Name, const Handle_StepShape_HArray1OfConnectedEdgeSet &aEbwmBoundary);
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfConnectedEdgeSet EbwmBoundary() const;
		%feature("autodoc", "1");
		void SetEbwmBoundary(const Handle_StepShape_HArray1OfConnectedEdgeSet &EbwmBoundary);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_EdgeBasedWireframeModel {
	Handle_StepShape_EdgeBasedWireframeModel GetHandle() {
	return *(Handle_StepShape_EdgeBasedWireframeModel*) &$self;
	}
};
%extend StepShape_EdgeBasedWireframeModel {
	~StepShape_EdgeBasedWireframeModel() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_EdgeBasedWireframeModel\n");}
	}
};

%nodefaultctor StepShape_FaceOuterBound;
class StepShape_FaceOuterBound : public StepShape_FaceBound {
	public:
		%feature("autodoc", "1");
		StepShape_FaceOuterBound();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_FaceOuterBound {
	Handle_StepShape_FaceOuterBound GetHandle() {
	return *(Handle_StepShape_FaceOuterBound*) &$self;
	}
};
%extend StepShape_FaceOuterBound {
	~StepShape_FaceOuterBound() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_FaceOuterBound\n");}
	}
};

%nodefaultctor StepShape_RightAngularWedge;
class StepShape_RightAngularWedge : public StepGeom_GeometricRepresentationItem {
	public:
		%feature("autodoc", "1");
		StepShape_RightAngularWedge();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepGeom_Axis2Placement3d &aPosition, const Standard_Real aX, const Standard_Real aY, const Standard_Real aZ, const Standard_Real aLtx);
		%feature("autodoc", "1");
		void SetPosition(const Handle_StepGeom_Axis2Placement3d &aPosition);
		%feature("autodoc", "1");
		Handle_StepGeom_Axis2Placement3d Position() const;
		%feature("autodoc", "1");
		void SetX(const Standard_Real aX);
		%feature("autodoc", "1");
		Standard_Real X() const;
		%feature("autodoc", "1");
		void SetY(const Standard_Real aY);
		%feature("autodoc", "1");
		Standard_Real Y() const;
		%feature("autodoc", "1");
		void SetZ(const Standard_Real aZ);
		%feature("autodoc", "1");
		Standard_Real Z() const;
		%feature("autodoc", "1");
		void SetLtx(const Standard_Real aLtx);
		%feature("autodoc", "1");
		Standard_Real Ltx() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_RightAngularWedge {
	Handle_StepShape_RightAngularWedge GetHandle() {
	return *(Handle_StepShape_RightAngularWedge*) &$self;
	}
};
%extend StepShape_RightAngularWedge {
	~StepShape_RightAngularWedge() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_RightAngularWedge\n");}
	}
};

%nodefaultctor StepShape_ShapeRepresentationWithParameters;
class StepShape_ShapeRepresentationWithParameters : public StepShape_ShapeRepresentation {
	public:
		%feature("autodoc", "1");
		StepShape_ShapeRepresentationWithParameters();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_ShapeRepresentationWithParameters {
	Handle_StepShape_ShapeRepresentationWithParameters GetHandle() {
	return *(Handle_StepShape_ShapeRepresentationWithParameters*) &$self;
	}
};
%extend StepShape_ShapeRepresentationWithParameters {
	~StepShape_ShapeRepresentationWithParameters() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_ShapeRepresentationWithParameters\n");}
	}
};

%nodefaultctor StepShape_CsgShapeRepresentation;
class StepShape_CsgShapeRepresentation : public StepShape_ShapeRepresentation {
	public:
		%feature("autodoc", "1");
		StepShape_CsgShapeRepresentation();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_CsgShapeRepresentation {
	Handle_StepShape_CsgShapeRepresentation GetHandle() {
	return *(Handle_StepShape_CsgShapeRepresentation*) &$self;
	}
};
%extend StepShape_CsgShapeRepresentation {
	~StepShape_CsgShapeRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_CsgShapeRepresentation\n");}
	}
};

%nodefaultctor StepShape_DimensionalCharacteristic;
class StepShape_DimensionalCharacteristic : public StepData_SelectType {
	public:
		%feature("autodoc", "1");
		StepShape_DimensionalCharacteristic();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseNum(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Handle_StepShape_DimensionalLocation DimensionalLocation() const;
		%feature("autodoc", "1");
		Handle_StepShape_DimensionalSize DimensionalSize() const;

};
%extend StepShape_DimensionalCharacteristic {
	~StepShape_DimensionalCharacteristic() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_DimensionalCharacteristic\n");}
	}
};

%nodefaultctor StepShape_ConnectedFaceSet;
class StepShape_ConnectedFaceSet : public StepShape_TopologicalRepresentationItem {
	public:
		%feature("autodoc", "1");
		StepShape_ConnectedFaceSet();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepShape_HArray1OfFace &aCfsFaces);
		%feature("autodoc", "1");
		virtual		void SetCfsFaces(const Handle_StepShape_HArray1OfFace &aCfsFaces);
		%feature("autodoc", "1");
		virtual		Handle_StepShape_HArray1OfFace CfsFaces() const;
		%feature("autodoc", "1");
		virtual		Handle_StepShape_Face CfsFacesValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbCfsFaces() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_ConnectedFaceSet {
	Handle_StepShape_ConnectedFaceSet GetHandle() {
	return *(Handle_StepShape_ConnectedFaceSet*) &$self;
	}
};
%extend StepShape_ConnectedFaceSet {
	~StepShape_ConnectedFaceSet() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_ConnectedFaceSet\n");}
	}
};

%nodefaultctor StepShape_ClosedShell;
class StepShape_ClosedShell : public StepShape_ConnectedFaceSet {
	public:
		%feature("autodoc", "1");
		StepShape_ClosedShell();

};
%extend StepShape_ClosedShell {
	Handle_StepShape_ClosedShell GetHandle() {
	return *(Handle_StepShape_ClosedShell*) &$self;
	}
};
%extend StepShape_ClosedShell {
	~StepShape_ClosedShell() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_ClosedShell\n");}
	}
};

%nodefaultctor StepShape_PlusMinusTolerance;
class StepShape_PlusMinusTolerance : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepShape_PlusMinusTolerance();
		%feature("autodoc", "1");
		void Init(const StepShape_ToleranceMethodDefinition &range, const StepShape_DimensionalCharacteristic &toleranced_dimension);
		%feature("autodoc", "1");
		StepShape_ToleranceMethodDefinition Range() const;
		%feature("autodoc", "1");
		void SetRange(const StepShape_ToleranceMethodDefinition &range);
		%feature("autodoc", "1");
		StepShape_DimensionalCharacteristic TolerancedDimension() const;
		%feature("autodoc", "1");
		void SetTolerancedDimension(const StepShape_DimensionalCharacteristic &toleranced_dimension);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_PlusMinusTolerance {
	Handle_StepShape_PlusMinusTolerance GetHandle() {
	return *(Handle_StepShape_PlusMinusTolerance*) &$self;
	}
};
%extend StepShape_PlusMinusTolerance {
	~StepShape_PlusMinusTolerance() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_PlusMinusTolerance\n");}
	}
};

%nodefaultctor StepShape_DimensionalCharacteristicRepresentation;
class StepShape_DimensionalCharacteristicRepresentation : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepShape_DimensionalCharacteristicRepresentation();
		%feature("autodoc", "1");
		void Init(const StepShape_DimensionalCharacteristic &aDimension, const Handle_StepShape_ShapeDimensionRepresentation &aRepresentation);
		%feature("autodoc", "1");
		StepShape_DimensionalCharacteristic Dimension() const;
		%feature("autodoc", "1");
		void SetDimension(const StepShape_DimensionalCharacteristic &Dimension);
		%feature("autodoc", "1");
		Handle_StepShape_ShapeDimensionRepresentation Representation() const;
		%feature("autodoc", "1");
		void SetRepresentation(const Handle_StepShape_ShapeDimensionRepresentation &Representation);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_DimensionalCharacteristicRepresentation {
	Handle_StepShape_DimensionalCharacteristicRepresentation GetHandle() {
	return *(Handle_StepShape_DimensionalCharacteristicRepresentation*) &$self;
	}
};
%extend StepShape_DimensionalCharacteristicRepresentation {
	~StepShape_DimensionalCharacteristicRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_DimensionalCharacteristicRepresentation\n");}
	}
};

%nodefaultctor StepShape_Array1OfValueQualifier;
class StepShape_Array1OfValueQualifier {
	public:
		%feature("autodoc", "1");
		StepShape_Array1OfValueQualifier(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepShape_Array1OfValueQualifier(const StepShape_ValueQualifier &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const StepShape_ValueQualifier &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepShape_Array1OfValueQualifier & Assign(const StepShape_Array1OfValueQualifier &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepShape_ValueQualifier &Value);
		%feature("autodoc", "1");
		const StepShape_ValueQualifier & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const StepShape_ValueQualifier & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepShape_ValueQualifier & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		StepShape_ValueQualifier & operator()(const Standard_Integer Index);

};
%extend StepShape_Array1OfValueQualifier {
	~StepShape_Array1OfValueQualifier() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_Array1OfValueQualifier\n");}
	}
};

%nodefaultctor StepShape_Face;
class StepShape_Face : public StepShape_TopologicalRepresentationItem {
	public:
		%feature("autodoc", "1");
		StepShape_Face();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepShape_HArray1OfFaceBound &aBounds);
		%feature("autodoc", "1");
		virtual		void SetBounds(const Handle_StepShape_HArray1OfFaceBound &aBounds);
		%feature("autodoc", "1");
		virtual		Handle_StepShape_HArray1OfFaceBound Bounds() const;
		%feature("autodoc", "1");
		virtual		Handle_StepShape_FaceBound BoundsValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbBounds() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_Face {
	Handle_StepShape_Face GetHandle() {
	return *(Handle_StepShape_Face*) &$self;
	}
};
%extend StepShape_Face {
	~StepShape_Face() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_Face\n");}
	}
};

%nodefaultctor StepShape_FaceSurface;
class StepShape_FaceSurface : public StepShape_Face {
	public:
		%feature("autodoc", "1");
		StepShape_FaceSurface();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepShape_HArray1OfFaceBound &aBounds, const Handle_StepGeom_Surface &aFaceGeometry, const Standard_Boolean aSameSense);
		%feature("autodoc", "1");
		void SetFaceGeometry(const Handle_StepGeom_Surface &aFaceGeometry);
		%feature("autodoc", "1");
		Handle_StepGeom_Surface FaceGeometry() const;
		%feature("autodoc", "1");
		void SetSameSense(const Standard_Boolean aSameSense);
		%feature("autodoc", "1");
		Standard_Boolean SameSense() const;

};
%extend StepShape_FaceSurface {
	Handle_StepShape_FaceSurface GetHandle() {
	return *(Handle_StepShape_FaceSurface*) &$self;
	}
};
%extend StepShape_FaceSurface {
	~StepShape_FaceSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_FaceSurface\n");}
	}
};

%nodefaultctor StepShape_Array1OfConnectedEdgeSet;
class StepShape_Array1OfConnectedEdgeSet {
	public:
		%feature("autodoc", "1");
		StepShape_Array1OfConnectedEdgeSet(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepShape_Array1OfConnectedEdgeSet(const Handle_StepShape_ConnectedEdgeSet &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Handle_StepShape_ConnectedEdgeSet &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepShape_Array1OfConnectedEdgeSet & Assign(const StepShape_Array1OfConnectedEdgeSet &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StepShape_ConnectedEdgeSet &Value);
		%feature("autodoc", "1");
		const Handle_StepShape_ConnectedEdgeSet & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_StepShape_ConnectedEdgeSet & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_StepShape_ConnectedEdgeSet & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_StepShape_ConnectedEdgeSet & operator()(const Standard_Integer Index);

};
%extend StepShape_Array1OfConnectedEdgeSet {
	~StepShape_Array1OfConnectedEdgeSet() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_Array1OfConnectedEdgeSet\n");}
	}
};

%nodefaultctor StepShape_CsgSolid;
class StepShape_CsgSolid : public StepShape_SolidModel {
	public:
		%feature("autodoc", "1");
		StepShape_CsgSolid();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const StepShape_CsgSelect &aTreeRootExpression);
		%feature("autodoc", "1");
		void SetTreeRootExpression(const StepShape_CsgSelect &aTreeRootExpression);
		%feature("autodoc", "1");
		StepShape_CsgSelect TreeRootExpression() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_CsgSolid {
	Handle_StepShape_CsgSolid GetHandle() {
	return *(Handle_StepShape_CsgSolid*) &$self;
	}
};
%extend StepShape_CsgSolid {
	~StepShape_CsgSolid() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_CsgSolid\n");}
	}
};

%nodefaultctor StepShape_CompoundShapeRepresentation;
class StepShape_CompoundShapeRepresentation : public StepShape_ShapeRepresentation {
	public:
		%feature("autodoc", "1");
		StepShape_CompoundShapeRepresentation();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_CompoundShapeRepresentation {
	Handle_StepShape_CompoundShapeRepresentation GetHandle() {
	return *(Handle_StepShape_CompoundShapeRepresentation*) &$self;
	}
};
%extend StepShape_CompoundShapeRepresentation {
	~StepShape_CompoundShapeRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_CompoundShapeRepresentation\n");}
	}
};

%nodefaultctor StepShape_OrientedFace;
class StepShape_OrientedFace : public StepShape_Face {
	public:
		%feature("autodoc", "1");
		StepShape_OrientedFace();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepShape_HArray1OfFaceBound &aBounds);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepShape_Face &aFaceElement, const Standard_Boolean aOrientation);
		%feature("autodoc", "1");
		void SetFaceElement(const Handle_StepShape_Face &aFaceElement);
		%feature("autodoc", "1");
		Handle_StepShape_Face FaceElement() const;
		%feature("autodoc", "1");
		void SetOrientation(const Standard_Boolean aOrientation);
		%feature("autodoc", "1");
		Standard_Boolean Orientation() const;
		%feature("autodoc", "1");
		virtual		void SetBounds(const Handle_StepShape_HArray1OfFaceBound &aBounds);
		%feature("autodoc", "1");
		virtual		Handle_StepShape_HArray1OfFaceBound Bounds() const;
		%feature("autodoc", "1");
		virtual		Handle_StepShape_FaceBound BoundsValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbBounds() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_OrientedFace {
	Handle_StepShape_OrientedFace GetHandle() {
	return *(Handle_StepShape_OrientedFace*) &$self;
	}
};
%extend StepShape_OrientedFace {
	~StepShape_OrientedFace() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_OrientedFace\n");}
	}
};

%nodefaultctor StepShape_HArray1OfConnectedEdgeSet;
class StepShape_HArray1OfConnectedEdgeSet : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepShape_HArray1OfConnectedEdgeSet(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepShape_HArray1OfConnectedEdgeSet(const Standard_Integer Low, const Standard_Integer Up, const Handle_StepShape_ConnectedEdgeSet &V);
		%feature("autodoc", "1");
		void Init(const Handle_StepShape_ConnectedEdgeSet &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StepShape_ConnectedEdgeSet &Value);
		%feature("autodoc", "1");
		const Handle_StepShape_ConnectedEdgeSet & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_StepShape_ConnectedEdgeSet & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const StepShape_Array1OfConnectedEdgeSet & Array1() const;
		%feature("autodoc", "1");
		StepShape_Array1OfConnectedEdgeSet & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_HArray1OfConnectedEdgeSet {
	Handle_StepShape_HArray1OfConnectedEdgeSet GetHandle() {
	return *(Handle_StepShape_HArray1OfConnectedEdgeSet*) &$self;
	}
};
%extend StepShape_HArray1OfConnectedEdgeSet {
	~StepShape_HArray1OfConnectedEdgeSet() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_HArray1OfConnectedEdgeSet\n");}
	}
};

%nodefaultctor StepShape_LoopAndPath;
class StepShape_LoopAndPath : public StepShape_TopologicalRepresentationItem {
	public:
		%feature("autodoc", "1");
		StepShape_LoopAndPath();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepShape_Loop &aLoop, const Handle_StepShape_Path &aPath);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepShape_HArray1OfOrientedEdge &aEdgeList);
		%feature("autodoc", "1");
		void SetLoop(const Handle_StepShape_Loop &aLoop);
		%feature("autodoc", "1");
		Handle_StepShape_Loop Loop() const;
		%feature("autodoc", "1");
		void SetPath(const Handle_StepShape_Path &aPath);
		%feature("autodoc", "1");
		Handle_StepShape_Path Path() const;
		%feature("autodoc", "1");
		void SetEdgeList(const Handle_StepShape_HArray1OfOrientedEdge &aEdgeList);
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfOrientedEdge EdgeList() const;
		%feature("autodoc", "1");
		Handle_StepShape_OrientedEdge EdgeListValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer NbEdgeList() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_LoopAndPath {
	Handle_StepShape_LoopAndPath GetHandle() {
	return *(Handle_StepShape_LoopAndPath*) &$self;
	}
};
%extend StepShape_LoopAndPath {
	~StepShape_LoopAndPath() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_LoopAndPath\n");}
	}
};

%nodefaultctor StepShape_ConnectedEdgeSet;
class StepShape_ConnectedEdgeSet : public StepShape_TopologicalRepresentationItem {
	public:
		%feature("autodoc", "1");
		StepShape_ConnectedEdgeSet();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aRepresentationItem_Name, const Handle_StepShape_HArray1OfEdge &aCesEdges);
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfEdge CesEdges() const;
		%feature("autodoc", "1");
		void SetCesEdges(const Handle_StepShape_HArray1OfEdge &CesEdges);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_ConnectedEdgeSet {
	Handle_StepShape_ConnectedEdgeSet GetHandle() {
	return *(Handle_StepShape_ConnectedEdgeSet*) &$self;
	}
};
%extend StepShape_ConnectedEdgeSet {
	~StepShape_ConnectedEdgeSet() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_ConnectedEdgeSet\n");}
	}
};

%nodefaultctor StepShape_SweptAreaSolid;
class StepShape_SweptAreaSolid : public StepShape_SolidModel {
	public:
		%feature("autodoc", "1");
		StepShape_SweptAreaSolid();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepGeom_CurveBoundedSurface &aSweptArea);
		%feature("autodoc", "1");
		void SetSweptArea(const Handle_StepGeom_CurveBoundedSurface &aSweptArea);
		%feature("autodoc", "1");
		Handle_StepGeom_CurveBoundedSurface SweptArea() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_SweptAreaSolid {
	Handle_StepShape_SweptAreaSolid GetHandle() {
	return *(Handle_StepShape_SweptAreaSolid*) &$self;
	}
};
%extend StepShape_SweptAreaSolid {
	~StepShape_SweptAreaSolid() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_SweptAreaSolid\n");}
	}
};

%nodefaultctor StepShape_RevolvedAreaSolid;
class StepShape_RevolvedAreaSolid : public StepShape_SweptAreaSolid {
	public:
		%feature("autodoc", "1");
		StepShape_RevolvedAreaSolid();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepGeom_CurveBoundedSurface &aSweptArea, const Handle_StepGeom_Axis1Placement &aAxis, const Standard_Real aAngle);
		%feature("autodoc", "1");
		void SetAxis(const Handle_StepGeom_Axis1Placement &aAxis);
		%feature("autodoc", "1");
		Handle_StepGeom_Axis1Placement Axis() const;
		%feature("autodoc", "1");
		void SetAngle(const Standard_Real aAngle);
		%feature("autodoc", "1");
		Standard_Real Angle() const;

};
%extend StepShape_RevolvedAreaSolid {
	Handle_StepShape_RevolvedAreaSolid GetHandle() {
	return *(Handle_StepShape_RevolvedAreaSolid*) &$self;
	}
};
%extend StepShape_RevolvedAreaSolid {
	~StepShape_RevolvedAreaSolid() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_RevolvedAreaSolid\n");}
	}
};

%nodefaultctor StepShape_ShapeDefinitionRepresentation;
class StepShape_ShapeDefinitionRepresentation : public StepRepr_PropertyDefinitionRepresentation {
	public:
		%feature("autodoc", "1");
		StepShape_ShapeDefinitionRepresentation();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_ShapeDefinitionRepresentation {
	Handle_StepShape_ShapeDefinitionRepresentation GetHandle() {
	return *(Handle_StepShape_ShapeDefinitionRepresentation*) &$self;
	}
};
%extend StepShape_ShapeDefinitionRepresentation {
	~StepShape_ShapeDefinitionRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_ShapeDefinitionRepresentation\n");}
	}
};

%nodefaultctor StepShape_AdvancedFace;
class StepShape_AdvancedFace : public StepShape_FaceSurface {
	public:
		%feature("autodoc", "1");
		StepShape_AdvancedFace();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_AdvancedFace {
	Handle_StepShape_AdvancedFace GetHandle() {
	return *(Handle_StepShape_AdvancedFace*) &$self;
	}
};
%extend StepShape_AdvancedFace {
	~StepShape_AdvancedFace() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_AdvancedFace\n");}
	}
};

%nodefaultctor StepShape_DimensionalLocation;
class StepShape_DimensionalLocation : public StepRepr_ShapeAspectRelationship {
	public:
		%feature("autodoc", "1");
		StepShape_DimensionalLocation();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_DimensionalLocation {
	Handle_StepShape_DimensionalLocation GetHandle() {
	return *(Handle_StepShape_DimensionalLocation*) &$self;
	}
};
%extend StepShape_DimensionalLocation {
	~StepShape_DimensionalLocation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_DimensionalLocation\n");}
	}
};

%nodefaultctor StepShape_DirectedDimensionalLocation;
class StepShape_DirectedDimensionalLocation : public StepShape_DimensionalLocation {
	public:
		%feature("autodoc", "1");
		StepShape_DirectedDimensionalLocation();

};
%extend StepShape_DirectedDimensionalLocation {
	Handle_StepShape_DirectedDimensionalLocation GetHandle() {
	return *(Handle_StepShape_DirectedDimensionalLocation*) &$self;
	}
};
%extend StepShape_DirectedDimensionalLocation {
	~StepShape_DirectedDimensionalLocation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_DirectedDimensionalLocation\n");}
	}
};

%nodefaultctor StepShape_Vertex;
class StepShape_Vertex : public StepShape_TopologicalRepresentationItem {
	public:
		%feature("autodoc", "1");
		StepShape_Vertex();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_Vertex {
	Handle_StepShape_Vertex GetHandle() {
	return *(Handle_StepShape_Vertex*) &$self;
	}
};
%extend StepShape_Vertex {
	~StepShape_Vertex() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_Vertex\n");}
	}
};

%nodefaultctor StepShape_PointRepresentation;
class StepShape_PointRepresentation : public StepShape_ShapeRepresentation {
	public:
		%feature("autodoc", "1");
		StepShape_PointRepresentation();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_PointRepresentation {
	Handle_StepShape_PointRepresentation GetHandle() {
	return *(Handle_StepShape_PointRepresentation*) &$self;
	}
};
%extend StepShape_PointRepresentation {
	~StepShape_PointRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_PointRepresentation\n");}
	}
};

%nodefaultctor StepShape_PrecisionQualifier;
class StepShape_PrecisionQualifier : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepShape_PrecisionQualifier();
		%feature("autodoc", "1");
		void Init(const Standard_Integer precision_value);
		%feature("autodoc", "1");
		Standard_Integer PrecisionValue() const;
		%feature("autodoc", "1");
		void SetPrecisionValue(const Standard_Integer precision_value);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_PrecisionQualifier {
	Handle_StepShape_PrecisionQualifier GetHandle() {
	return *(Handle_StepShape_PrecisionQualifier*) &$self;
	}
};
%extend StepShape_PrecisionQualifier {
	~StepShape_PrecisionQualifier() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_PrecisionQualifier\n");}
	}
};

%nodefaultctor StepShape_Array1OfOrientedEdge;
class StepShape_Array1OfOrientedEdge {
	public:
		%feature("autodoc", "1");
		StepShape_Array1OfOrientedEdge(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepShape_Array1OfOrientedEdge(const Handle_StepShape_OrientedEdge &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Handle_StepShape_OrientedEdge &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepShape_Array1OfOrientedEdge & Assign(const StepShape_Array1OfOrientedEdge &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StepShape_OrientedEdge &Value);
		%feature("autodoc", "1");
		const Handle_StepShape_OrientedEdge & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_StepShape_OrientedEdge & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_StepShape_OrientedEdge & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_StepShape_OrientedEdge & operator()(const Standard_Integer Index);

};
%extend StepShape_Array1OfOrientedEdge {
	~StepShape_Array1OfOrientedEdge() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_Array1OfOrientedEdge\n");}
	}
};

%nodefaultctor StepShape_Array1OfFace;
class StepShape_Array1OfFace {
	public:
		%feature("autodoc", "1");
		StepShape_Array1OfFace(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepShape_Array1OfFace(const Handle_StepShape_Face &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Handle_StepShape_Face &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepShape_Array1OfFace & Assign(const StepShape_Array1OfFace &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StepShape_Face &Value);
		%feature("autodoc", "1");
		const Handle_StepShape_Face & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_StepShape_Face & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_StepShape_Face & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_StepShape_Face & operator()(const Standard_Integer Index);

};
%extend StepShape_Array1OfFace {
	~StepShape_Array1OfFace() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_Array1OfFace\n");}
	}
};

%nodefaultctor StepShape_OpenShell;
class StepShape_OpenShell : public StepShape_ConnectedFaceSet {
	public:
		%feature("autodoc", "1");
		StepShape_OpenShell();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_OpenShell {
	Handle_StepShape_OpenShell GetHandle() {
	return *(Handle_StepShape_OpenShell*) &$self;
	}
};
%extend StepShape_OpenShell {
	~StepShape_OpenShell() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_OpenShell\n");}
	}
};

%nodefaultctor StepShape_OrientedOpenShell;
class StepShape_OrientedOpenShell : public StepShape_OpenShell {
	public:
		%feature("autodoc", "1");
		StepShape_OrientedOpenShell();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepShape_HArray1OfFace &aCfsFaces);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepShape_OpenShell &aOpenShellElement, const Standard_Boolean aOrientation);
		%feature("autodoc", "1");
		void SetOpenShellElement(const Handle_StepShape_OpenShell &aOpenShellElement);
		%feature("autodoc", "1");
		Handle_StepShape_OpenShell OpenShellElement() const;
		%feature("autodoc", "1");
		void SetOrientation(const Standard_Boolean aOrientation);
		%feature("autodoc", "1");
		Standard_Boolean Orientation() const;
		%feature("autodoc", "1");
		virtual		void SetCfsFaces(const Handle_StepShape_HArray1OfFace &aCfsFaces);
		%feature("autodoc", "1");
		virtual		Handle_StepShape_HArray1OfFace CfsFaces() const;
		%feature("autodoc", "1");
		virtual		Handle_StepShape_Face CfsFacesValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbCfsFaces() const;

};
%extend StepShape_OrientedOpenShell {
	Handle_StepShape_OrientedOpenShell GetHandle() {
	return *(Handle_StepShape_OrientedOpenShell*) &$self;
	}
};
%extend StepShape_OrientedOpenShell {
	~StepShape_OrientedOpenShell() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_OrientedOpenShell\n");}
	}
};

%nodefaultctor StepShape_FacetedBrepShapeRepresentation;
class StepShape_FacetedBrepShapeRepresentation : public StepShape_ShapeRepresentation {
	public:
		%feature("autodoc", "1");
		StepShape_FacetedBrepShapeRepresentation();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_FacetedBrepShapeRepresentation {
	Handle_StepShape_FacetedBrepShapeRepresentation GetHandle() {
	return *(Handle_StepShape_FacetedBrepShapeRepresentation*) &$self;
	}
};
%extend StepShape_FacetedBrepShapeRepresentation {
	~StepShape_FacetedBrepShapeRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_FacetedBrepShapeRepresentation\n");}
	}
};

%nodefaultctor StepShape_ContextDependentShapeRepresentation;
class StepShape_ContextDependentShapeRepresentation : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepShape_ContextDependentShapeRepresentation();
		%feature("autodoc", "1");
		void Init(const Handle_StepRepr_ShapeRepresentationRelationship &aRepRel, const Handle_StepRepr_ProductDefinitionShape &aProRel);
		%feature("autodoc", "1");
		Handle_StepRepr_ShapeRepresentationRelationship RepresentationRelation() const;
		%feature("autodoc", "1");
		void SetRepresentationRelation(const Handle_StepRepr_ShapeRepresentationRelationship &aRepRel);
		%feature("autodoc", "1");
		Handle_StepRepr_ProductDefinitionShape RepresentedProductRelation() const;
		%feature("autodoc", "1");
		void SetRepresentedProductRelation(const Handle_StepRepr_ProductDefinitionShape &aProRel);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_ContextDependentShapeRepresentation {
	Handle_StepShape_ContextDependentShapeRepresentation GetHandle() {
	return *(Handle_StepShape_ContextDependentShapeRepresentation*) &$self;
	}
};
%extend StepShape_ContextDependentShapeRepresentation {
	~StepShape_ContextDependentShapeRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_ContextDependentShapeRepresentation\n");}
	}
};

%nodefaultctor StepShape_HArray1OfOrientedClosedShell;
class StepShape_HArray1OfOrientedClosedShell : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepShape_HArray1OfOrientedClosedShell(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepShape_HArray1OfOrientedClosedShell(const Standard_Integer Low, const Standard_Integer Up, const Handle_StepShape_OrientedClosedShell &V);
		%feature("autodoc", "1");
		void Init(const Handle_StepShape_OrientedClosedShell &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StepShape_OrientedClosedShell &Value);
		%feature("autodoc", "1");
		const Handle_StepShape_OrientedClosedShell & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_StepShape_OrientedClosedShell & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const StepShape_Array1OfOrientedClosedShell & Array1() const;
		%feature("autodoc", "1");
		StepShape_Array1OfOrientedClosedShell & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_HArray1OfOrientedClosedShell {
	Handle_StepShape_HArray1OfOrientedClosedShell GetHandle() {
	return *(Handle_StepShape_HArray1OfOrientedClosedShell*) &$self;
	}
};
%extend StepShape_HArray1OfOrientedClosedShell {
	~StepShape_HArray1OfOrientedClosedShell() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_HArray1OfOrientedClosedShell\n");}
	}
};

%nodefaultctor StepShape_OrientedClosedShell;
class StepShape_OrientedClosedShell : public StepShape_ClosedShell {
	public:
		%feature("autodoc", "1");
		StepShape_OrientedClosedShell();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepShape_HArray1OfFace &aCfsFaces);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepShape_ClosedShell &aClosedShellElement, const Standard_Boolean aOrientation);
		%feature("autodoc", "1");
		void SetClosedShellElement(const Handle_StepShape_ClosedShell &aClosedShellElement);
		%feature("autodoc", "1");
		Handle_StepShape_ClosedShell ClosedShellElement() const;
		%feature("autodoc", "1");
		void SetOrientation(const Standard_Boolean aOrientation);
		%feature("autodoc", "1");
		Standard_Boolean Orientation() const;
		%feature("autodoc", "1");
		virtual		void SetCfsFaces(const Handle_StepShape_HArray1OfFace &aCfsFaces);
		%feature("autodoc", "1");
		virtual		Handle_StepShape_HArray1OfFace CfsFaces() const;
		%feature("autodoc", "1");
		virtual		Handle_StepShape_Face CfsFacesValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbCfsFaces() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_OrientedClosedShell {
	Handle_StepShape_OrientedClosedShell GetHandle() {
	return *(Handle_StepShape_OrientedClosedShell*) &$self;
	}
};
%extend StepShape_OrientedClosedShell {
	~StepShape_OrientedClosedShell() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_OrientedClosedShell\n");}
	}
};

%nodefaultctor StepShape_Array1OfShell;
class StepShape_Array1OfShell {
	public:
		%feature("autodoc", "1");
		StepShape_Array1OfShell(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepShape_Array1OfShell(const StepShape_Shell &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const StepShape_Shell &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepShape_Array1OfShell & Assign(const StepShape_Array1OfShell &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepShape_Shell &Value);
		%feature("autodoc", "1");
		const StepShape_Shell & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const StepShape_Shell & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepShape_Shell & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		StepShape_Shell & operator()(const Standard_Integer Index);

};
%extend StepShape_Array1OfShell {
	~StepShape_Array1OfShell() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_Array1OfShell\n");}
	}
};

%nodefaultctor StepShape_ConnectedFaceSubSet;
class StepShape_ConnectedFaceSubSet : public StepShape_ConnectedFaceSet {
	public:
		%feature("autodoc", "1");
		StepShape_ConnectedFaceSubSet();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aRepresentationItem_Name, const Handle_StepShape_HArray1OfFace &aConnectedFaceSet_CfsFaces, const Handle_StepShape_ConnectedFaceSet &aParentFaceSet);
		%feature("autodoc", "1");
		Handle_StepShape_ConnectedFaceSet ParentFaceSet() const;
		%feature("autodoc", "1");
		void SetParentFaceSet(const Handle_StepShape_ConnectedFaceSet &ParentFaceSet);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_ConnectedFaceSubSet {
	Handle_StepShape_ConnectedFaceSubSet GetHandle() {
	return *(Handle_StepShape_ConnectedFaceSubSet*) &$self;
	}
};
%extend StepShape_ConnectedFaceSubSet {
	~StepShape_ConnectedFaceSubSet() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_ConnectedFaceSubSet\n");}
	}
};

%nodefaultctor StepShape_ValueQualifier;
class StepShape_ValueQualifier : public StepData_SelectType {
	public:
		%feature("autodoc", "1");
		StepShape_ValueQualifier();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseNum(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Handle_StepShape_PrecisionQualifier PrecisionQualifier() const;
		%feature("autodoc", "1");
		Handle_StepShape_TypeQualifier TypeQualifier() const;

};
%extend StepShape_ValueQualifier {
	~StepShape_ValueQualifier() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_ValueQualifier\n");}
	}
};

%nodefaultctor StepShape_SurfaceModel;
class StepShape_SurfaceModel : public StepData_SelectType {
	public:
		%feature("autodoc", "1");
		StepShape_SurfaceModel();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseNum(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Handle_StepShape_ShellBasedSurfaceModel ShellBasedSurfaceModel() const;

};
%extend StepShape_SurfaceModel {
	~StepShape_SurfaceModel() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_SurfaceModel\n");}
	}
};

%nodefaultctor StepShape_FacetedBrepAndBrepWithVoids;
class StepShape_FacetedBrepAndBrepWithVoids : public StepShape_ManifoldSolidBrep {
	public:
		%feature("autodoc", "1");
		StepShape_FacetedBrepAndBrepWithVoids();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepShape_ClosedShell &aOuter);
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepShape_ClosedShell &aOuter, const Handle_StepShape_FacetedBrep &aFacetedBrep, const Handle_StepShape_BrepWithVoids &aBrepWithVoids);
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepShape_ClosedShell &aOuter, const Handle_StepShape_HArray1OfOrientedClosedShell &aVoids);
		%feature("autodoc", "1");
		void SetFacetedBrep(const Handle_StepShape_FacetedBrep &aFacetedBrep);
		%feature("autodoc", "1");
		Handle_StepShape_FacetedBrep FacetedBrep() const;
		%feature("autodoc", "1");
		void SetBrepWithVoids(const Handle_StepShape_BrepWithVoids &aBrepWithVoids);
		%feature("autodoc", "1");
		Handle_StepShape_BrepWithVoids BrepWithVoids() const;
		%feature("autodoc", "1");
		void SetVoids(const Handle_StepShape_HArray1OfOrientedClosedShell &aVoids);
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfOrientedClosedShell Voids() const;
		%feature("autodoc", "1");
		Handle_StepShape_OrientedClosedShell VoidsValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer NbVoids() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_FacetedBrepAndBrepWithVoids {
	Handle_StepShape_FacetedBrepAndBrepWithVoids GetHandle() {
	return *(Handle_StepShape_FacetedBrepAndBrepWithVoids*) &$self;
	}
};
%extend StepShape_FacetedBrepAndBrepWithVoids {
	~StepShape_FacetedBrepAndBrepWithVoids() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_FacetedBrepAndBrepWithVoids\n");}
	}
};

%nodefaultctor StepShape_RightCircularCylinder;
class StepShape_RightCircularCylinder : public StepGeom_GeometricRepresentationItem {
	public:
		%feature("autodoc", "1");
		StepShape_RightCircularCylinder();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepGeom_Axis1Placement &aPosition, const Standard_Real aHeight, const Standard_Real aRadius);
		%feature("autodoc", "1");
		void SetPosition(const Handle_StepGeom_Axis1Placement &aPosition);
		%feature("autodoc", "1");
		Handle_StepGeom_Axis1Placement Position() const;
		%feature("autodoc", "1");
		void SetHeight(const Standard_Real aHeight);
		%feature("autodoc", "1");
		Standard_Real Height() const;
		%feature("autodoc", "1");
		void SetRadius(const Standard_Real aRadius);
		%feature("autodoc", "1");
		Standard_Real Radius() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_RightCircularCylinder {
	Handle_StepShape_RightCircularCylinder GetHandle() {
	return *(Handle_StepShape_RightCircularCylinder*) &$self;
	}
};
%extend StepShape_RightCircularCylinder {
	~StepShape_RightCircularCylinder() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_RightCircularCylinder\n");}
	}
};

%nodefaultctor StepShape_DimensionalSize;
class StepShape_DimensionalSize : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepShape_DimensionalSize();
		%feature("autodoc", "1");
		void Init(const Handle_StepRepr_ShapeAspect &aAppliesTo, const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		Handle_StepRepr_ShapeAspect AppliesTo() const;
		%feature("autodoc", "1");
		void SetAppliesTo(const Handle_StepRepr_ShapeAspect &AppliesTo);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Name() const;
		%feature("autodoc", "1");
		void SetName(const Handle_TCollection_HAsciiString &Name);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_DimensionalSize {
	Handle_StepShape_DimensionalSize GetHandle() {
	return *(Handle_StepShape_DimensionalSize*) &$self;
	}
};
%extend StepShape_DimensionalSize {
	~StepShape_DimensionalSize() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_DimensionalSize\n");}
	}
};

%nodefaultctor StepShape_GeometricSet;
class StepShape_GeometricSet : public StepGeom_GeometricRepresentationItem {
	public:
		%feature("autodoc", "1");
		StepShape_GeometricSet();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepShape_HArray1OfGeometricSetSelect &aElements);
		%feature("autodoc", "1");
		void SetElements(const Handle_StepShape_HArray1OfGeometricSetSelect &aElements);
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfGeometricSetSelect Elements() const;
		%feature("autodoc", "1");
		StepShape_GeometricSetSelect ElementsValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer NbElements() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_GeometricSet {
	Handle_StepShape_GeometricSet GetHandle() {
	return *(Handle_StepShape_GeometricSet*) &$self;
	}
};
%extend StepShape_GeometricSet {
	~StepShape_GeometricSet() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_GeometricSet\n");}
	}
};

%nodefaultctor StepShape_HArray1OfFace;
class StepShape_HArray1OfFace : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepShape_HArray1OfFace(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepShape_HArray1OfFace(const Standard_Integer Low, const Standard_Integer Up, const Handle_StepShape_Face &V);
		%feature("autodoc", "1");
		void Init(const Handle_StepShape_Face &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StepShape_Face &Value);
		%feature("autodoc", "1");
		const Handle_StepShape_Face & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_StepShape_Face & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const StepShape_Array1OfFace & Array1() const;
		%feature("autodoc", "1");
		StepShape_Array1OfFace & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_HArray1OfFace {
	Handle_StepShape_HArray1OfFace GetHandle() {
	return *(Handle_StepShape_HArray1OfFace*) &$self;
	}
};
%extend StepShape_HArray1OfFace {
	~StepShape_HArray1OfFace() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_HArray1OfFace\n");}
	}
};

%nodefaultctor StepShape_AdvancedBrepShapeRepresentation;
class StepShape_AdvancedBrepShapeRepresentation : public StepShape_ShapeRepresentation {
	public:
		%feature("autodoc", "1");
		StepShape_AdvancedBrepShapeRepresentation();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_AdvancedBrepShapeRepresentation {
	Handle_StepShape_AdvancedBrepShapeRepresentation GetHandle() {
	return *(Handle_StepShape_AdvancedBrepShapeRepresentation*) &$self;
	}
};
%extend StepShape_AdvancedBrepShapeRepresentation {
	~StepShape_AdvancedBrepShapeRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_AdvancedBrepShapeRepresentation\n");}
	}
};

%nodefaultctor StepShape_Subedge;
class StepShape_Subedge : public StepShape_Edge {
	public:
		%feature("autodoc", "1");
		StepShape_Subedge();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aRepresentationItem_Name, const Handle_StepShape_Vertex &aEdge_EdgeStart, const Handle_StepShape_Vertex &aEdge_EdgeEnd, const Handle_StepShape_Edge &aParentEdge);
		%feature("autodoc", "1");
		Handle_StepShape_Edge ParentEdge() const;
		%feature("autodoc", "1");
		void SetParentEdge(const Handle_StepShape_Edge &ParentEdge);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_Subedge {
	Handle_StepShape_Subedge GetHandle() {
	return *(Handle_StepShape_Subedge*) &$self;
	}
};
%extend StepShape_Subedge {
	~StepShape_Subedge() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_Subedge\n");}
	}
};

%nodefaultctor StepShape_Array1OfOrientedClosedShell;
class StepShape_Array1OfOrientedClosedShell {
	public:
		%feature("autodoc", "1");
		StepShape_Array1OfOrientedClosedShell(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepShape_Array1OfOrientedClosedShell(const Handle_StepShape_OrientedClosedShell &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Handle_StepShape_OrientedClosedShell &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepShape_Array1OfOrientedClosedShell & Assign(const StepShape_Array1OfOrientedClosedShell &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StepShape_OrientedClosedShell &Value);
		%feature("autodoc", "1");
		const Handle_StepShape_OrientedClosedShell & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_StepShape_OrientedClosedShell & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_StepShape_OrientedClosedShell & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_StepShape_OrientedClosedShell & operator()(const Standard_Integer Index);

};
%extend StepShape_Array1OfOrientedClosedShell {
	~StepShape_Array1OfOrientedClosedShell() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_Array1OfOrientedClosedShell\n");}
	}
};

%nodefaultctor StepShape_HArray1OfValueQualifier;
class StepShape_HArray1OfValueQualifier : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepShape_HArray1OfValueQualifier(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepShape_HArray1OfValueQualifier(const Standard_Integer Low, const Standard_Integer Up, const StepShape_ValueQualifier &V);
		%feature("autodoc", "1");
		void Init(const StepShape_ValueQualifier &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepShape_ValueQualifier &Value);
		%feature("autodoc", "1");
		const StepShape_ValueQualifier & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepShape_ValueQualifier & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const StepShape_Array1OfValueQualifier & Array1() const;
		%feature("autodoc", "1");
		StepShape_Array1OfValueQualifier & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_HArray1OfValueQualifier {
	Handle_StepShape_HArray1OfValueQualifier GetHandle() {
	return *(Handle_StepShape_HArray1OfValueQualifier*) &$self;
	}
};
%extend StepShape_HArray1OfValueQualifier {
	~StepShape_HArray1OfValueQualifier() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_HArray1OfValueQualifier\n");}
	}
};

%nodefaultctor StepShape_FaceBasedSurfaceModel;
class StepShape_FaceBasedSurfaceModel : public StepGeom_GeometricRepresentationItem {
	public:
		%feature("autodoc", "1");
		StepShape_FaceBasedSurfaceModel();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aRepresentationItem_Name, const Handle_StepShape_HArray1OfConnectedFaceSet &aFbsmFaces);
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfConnectedFaceSet FbsmFaces() const;
		%feature("autodoc", "1");
		void SetFbsmFaces(const Handle_StepShape_HArray1OfConnectedFaceSet &FbsmFaces);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_FaceBasedSurfaceModel {
	Handle_StepShape_FaceBasedSurfaceModel GetHandle() {
	return *(Handle_StepShape_FaceBasedSurfaceModel*) &$self;
	}
};
%extend StepShape_FaceBasedSurfaceModel {
	~StepShape_FaceBasedSurfaceModel() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_FaceBasedSurfaceModel\n");}
	}
};

%nodefaultctor StepShape_BoxedHalfSpace;
class StepShape_BoxedHalfSpace : public StepShape_HalfSpaceSolid {
	public:
		%feature("autodoc", "1");
		StepShape_BoxedHalfSpace();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepGeom_Surface &aBaseSurface, const Standard_Boolean aAgreementFlag);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepGeom_Surface &aBaseSurface, const Standard_Boolean aAgreementFlag, const Handle_StepShape_BoxDomain &aEnclosure);
		%feature("autodoc", "1");
		void SetEnclosure(const Handle_StepShape_BoxDomain &aEnclosure);
		%feature("autodoc", "1");
		Handle_StepShape_BoxDomain Enclosure() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_BoxedHalfSpace {
	Handle_StepShape_BoxedHalfSpace GetHandle() {
	return *(Handle_StepShape_BoxedHalfSpace*) &$self;
	}
};
%extend StepShape_BoxedHalfSpace {
	~StepShape_BoxedHalfSpace() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_BoxedHalfSpace\n");}
	}
};

%nodefaultctor StepShape_ReversibleTopologyItem;
class StepShape_ReversibleTopologyItem : public StepData_SelectType {
	public:
		%feature("autodoc", "1");
		StepShape_ReversibleTopologyItem();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseNum(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Handle_StepShape_Edge Edge() const;
		%feature("autodoc", "1");
		Handle_StepShape_Path Path() const;
		%feature("autodoc", "1");
		Handle_StepShape_Face Face() const;
		%feature("autodoc", "1");
		Handle_StepShape_FaceBound FaceBound() const;
		%feature("autodoc", "1");
		Handle_StepShape_ClosedShell ClosedShell() const;
		%feature("autodoc", "1");
		Handle_StepShape_OpenShell OpenShell() const;

};
%extend StepShape_ReversibleTopologyItem {
	~StepShape_ReversibleTopologyItem() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_ReversibleTopologyItem\n");}
	}
};

%nodefaultctor StepShape_QualifiedRepresentationItem;
class StepShape_QualifiedRepresentationItem : public StepRepr_RepresentationItem {
	public:
		%feature("autodoc", "1");
		StepShape_QualifiedRepresentationItem();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepShape_HArray1OfValueQualifier &qualifiers);
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfValueQualifier Qualifiers() const;
		%feature("autodoc", "1");
		Standard_Integer NbQualifiers() const;
		%feature("autodoc", "1");
		void SetQualifiers(const Handle_StepShape_HArray1OfValueQualifier &qualifiers);
		%feature("autodoc", "1");
		StepShape_ValueQualifier QualifiersValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		void SetQualifiersValue(const Standard_Integer num, const StepShape_ValueQualifier &aqualifier);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_QualifiedRepresentationItem {
	Handle_StepShape_QualifiedRepresentationItem GetHandle() {
	return *(Handle_StepShape_QualifiedRepresentationItem*) &$self;
	}
};
%extend StepShape_QualifiedRepresentationItem {
	~StepShape_QualifiedRepresentationItem() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_QualifiedRepresentationItem\n");}
	}
};

%nodefaultctor StepShape_RightCircularCone;
class StepShape_RightCircularCone : public StepGeom_GeometricRepresentationItem {
	public:
		%feature("autodoc", "1");
		StepShape_RightCircularCone();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepGeom_Axis1Placement &aPosition, const Standard_Real aHeight, const Standard_Real aRadius, const Standard_Real aSemiAngle);
		%feature("autodoc", "1");
		void SetPosition(const Handle_StepGeom_Axis1Placement &aPosition);
		%feature("autodoc", "1");
		Handle_StepGeom_Axis1Placement Position() const;
		%feature("autodoc", "1");
		void SetHeight(const Standard_Real aHeight);
		%feature("autodoc", "1");
		Standard_Real Height() const;
		%feature("autodoc", "1");
		void SetRadius(const Standard_Real aRadius);
		%feature("autodoc", "1");
		Standard_Real Radius() const;
		%feature("autodoc", "1");
		void SetSemiAngle(const Standard_Real aSemiAngle);
		%feature("autodoc", "1");
		Standard_Real SemiAngle() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_RightCircularCone {
	Handle_StepShape_RightCircularCone GetHandle() {
	return *(Handle_StepShape_RightCircularCone*) &$self;
	}
};
%extend StepShape_RightCircularCone {
	~StepShape_RightCircularCone() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_RightCircularCone\n");}
	}
};

%nodefaultctor StepShape_EdgeLoop;
class StepShape_EdgeLoop : public StepShape_Loop {
	public:
		%feature("autodoc", "1");
		StepShape_EdgeLoop();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepShape_HArray1OfOrientedEdge &aEdgeList);
		%feature("autodoc", "1");
		void SetEdgeList(const Handle_StepShape_HArray1OfOrientedEdge &aEdgeList);
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfOrientedEdge EdgeList() const;
		%feature("autodoc", "1");
		Handle_StepShape_OrientedEdge EdgeListValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer NbEdgeList() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_EdgeLoop {
	Handle_StepShape_EdgeLoop GetHandle() {
	return *(Handle_StepShape_EdgeLoop*) &$self;
	}
};
%extend StepShape_EdgeLoop {
	~StepShape_EdgeLoop() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_EdgeLoop\n");}
	}
};

%nodefaultctor StepShape_Subface;
class StepShape_Subface : public StepShape_Face {
	public:
		%feature("autodoc", "1");
		StepShape_Subface();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aRepresentationItem_Name, const Handle_StepShape_HArray1OfFaceBound &aFace_Bounds, const Handle_StepShape_Face &aParentFace);
		%feature("autodoc", "1");
		Handle_StepShape_Face ParentFace() const;
		%feature("autodoc", "1");
		void SetParentFace(const Handle_StepShape_Face &ParentFace);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_Subface {
	Handle_StepShape_Subface GetHandle() {
	return *(Handle_StepShape_Subface*) &$self;
	}
};
%extend StepShape_Subface {
	~StepShape_Subface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_Subface\n");}
	}
};

%nodefaultctor StepShape_HArray1OfOrientedEdge;
class StepShape_HArray1OfOrientedEdge : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepShape_HArray1OfOrientedEdge(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepShape_HArray1OfOrientedEdge(const Standard_Integer Low, const Standard_Integer Up, const Handle_StepShape_OrientedEdge &V);
		%feature("autodoc", "1");
		void Init(const Handle_StepShape_OrientedEdge &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StepShape_OrientedEdge &Value);
		%feature("autodoc", "1");
		const Handle_StepShape_OrientedEdge & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_StepShape_OrientedEdge & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const StepShape_Array1OfOrientedEdge & Array1() const;
		%feature("autodoc", "1");
		StepShape_Array1OfOrientedEdge & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_HArray1OfOrientedEdge {
	Handle_StepShape_HArray1OfOrientedEdge GetHandle() {
	return *(Handle_StepShape_HArray1OfOrientedEdge*) &$self;
	}
};
%extend StepShape_HArray1OfOrientedEdge {
	~StepShape_HArray1OfOrientedEdge() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_HArray1OfOrientedEdge\n");}
	}
};

%nodefaultctor StepShape_ConnectedFaceShapeRepresentation;
class StepShape_ConnectedFaceShapeRepresentation : public StepRepr_Representation {
	public:
		%feature("autodoc", "1");
		StepShape_ConnectedFaceShapeRepresentation();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_ConnectedFaceShapeRepresentation {
	Handle_StepShape_ConnectedFaceShapeRepresentation GetHandle() {
	return *(Handle_StepShape_ConnectedFaceShapeRepresentation*) &$self;
	}
};
%extend StepShape_ConnectedFaceShapeRepresentation {
	~StepShape_ConnectedFaceShapeRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_ConnectedFaceShapeRepresentation\n");}
	}
};

%nodefaultctor StepShape_CsgSelect;
class StepShape_CsgSelect {
	public:
		%feature("autodoc", "1");
		StepShape_CsgSelect();
		%feature("autodoc", "1");
		void SetTypeOfContent(const Standard_Integer aTypeOfContent);
		%feature("autodoc", "1");
		Standard_Integer TypeOfContent() const;
		%feature("autodoc", "1");
		Handle_StepShape_BooleanResult BooleanResult() const;
		%feature("autodoc", "1");
		void SetBooleanResult(const Handle_StepShape_BooleanResult &aBooleanResult);
		%feature("autodoc", "1");
		StepShape_CsgPrimitive CsgPrimitive() const;
		%feature("autodoc", "1");
		void SetCsgPrimitive(const StepShape_CsgPrimitive &aCsgPrimitive);

};
%extend StepShape_CsgSelect {
	~StepShape_CsgSelect() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_CsgSelect\n");}
	}
};

%nodefaultctor StepShape_GeometricCurveSet;
class StepShape_GeometricCurveSet : public StepShape_GeometricSet {
	public:
		%feature("autodoc", "1");
		StepShape_GeometricCurveSet();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_GeometricCurveSet {
	Handle_StepShape_GeometricCurveSet GetHandle() {
	return *(Handle_StepShape_GeometricCurveSet*) &$self;
	}
};
%extend StepShape_GeometricCurveSet {
	~StepShape_GeometricCurveSet() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_GeometricCurveSet\n");}
	}
};

%nodefaultctor StepShape_AngularSize;
class StepShape_AngularSize : public StepShape_DimensionalSize {
	public:
		%feature("autodoc", "1");
		StepShape_AngularSize();
		%feature("autodoc", "1");
		void Init(const Handle_StepRepr_ShapeAspect &aDimensionalSize_AppliesTo, const Handle_TCollection_HAsciiString &aDimensionalSize_Name, const StepShape_AngleRelator aAngleSelection);
		%feature("autodoc", "1");
		StepShape_AngleRelator AngleSelection() const;
		%feature("autodoc", "1");
		void SetAngleSelection(const StepShape_AngleRelator AngleSelection);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_AngularSize {
	Handle_StepShape_AngularSize GetHandle() {
	return *(Handle_StepShape_AngularSize*) &$self;
	}
};
%extend StepShape_AngularSize {
	~StepShape_AngularSize() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_AngularSize\n");}
	}
};

%nodefaultctor StepShape_Array1OfGeometricSetSelect;
class StepShape_Array1OfGeometricSetSelect {
	public:
		%feature("autodoc", "1");
		StepShape_Array1OfGeometricSetSelect(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepShape_Array1OfGeometricSetSelect(const StepShape_GeometricSetSelect &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const StepShape_GeometricSetSelect &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepShape_Array1OfGeometricSetSelect & Assign(const StepShape_Array1OfGeometricSetSelect &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepShape_GeometricSetSelect &Value);
		%feature("autodoc", "1");
		const StepShape_GeometricSetSelect & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const StepShape_GeometricSetSelect & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepShape_GeometricSetSelect & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		StepShape_GeometricSetSelect & operator()(const Standard_Integer Index);

};
%extend StepShape_Array1OfGeometricSetSelect {
	~StepShape_Array1OfGeometricSetSelect() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_Array1OfGeometricSetSelect\n");}
	}
};

%nodefaultctor StepShape_Array1OfFaceBound;
class StepShape_Array1OfFaceBound {
	public:
		%feature("autodoc", "1");
		StepShape_Array1OfFaceBound(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepShape_Array1OfFaceBound(const Handle_StepShape_FaceBound &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Handle_StepShape_FaceBound &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepShape_Array1OfFaceBound & Assign(const StepShape_Array1OfFaceBound &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StepShape_FaceBound &Value);
		%feature("autodoc", "1");
		const Handle_StepShape_FaceBound & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_StepShape_FaceBound & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_StepShape_FaceBound & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_StepShape_FaceBound & operator()(const Standard_Integer Index);

};
%extend StepShape_Array1OfFaceBound {
	~StepShape_Array1OfFaceBound() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_Array1OfFaceBound\n");}
	}
};

%nodefaultctor StepShape_Array1OfConnectedFaceSet;
class StepShape_Array1OfConnectedFaceSet {
	public:
		%feature("autodoc", "1");
		StepShape_Array1OfConnectedFaceSet(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepShape_Array1OfConnectedFaceSet(const Handle_StepShape_ConnectedFaceSet &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Handle_StepShape_ConnectedFaceSet &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepShape_Array1OfConnectedFaceSet & Assign(const StepShape_Array1OfConnectedFaceSet &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StepShape_ConnectedFaceSet &Value);
		%feature("autodoc", "1");
		const Handle_StepShape_ConnectedFaceSet & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_StepShape_ConnectedFaceSet & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_StepShape_ConnectedFaceSet & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_StepShape_ConnectedFaceSet & operator()(const Standard_Integer Index);

};
%extend StepShape_Array1OfConnectedFaceSet {
	~StepShape_Array1OfConnectedFaceSet() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_Array1OfConnectedFaceSet\n");}
	}
};

%nodefaultctor StepShape_VertexPoint;
class StepShape_VertexPoint : public StepShape_Vertex {
	public:
		%feature("autodoc", "1");
		StepShape_VertexPoint();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepGeom_Point &aVertexGeometry);
		%feature("autodoc", "1");
		void SetVertexGeometry(const Handle_StepGeom_Point &aVertexGeometry);
		%feature("autodoc", "1");
		Handle_StepGeom_Point VertexGeometry() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_VertexPoint {
	Handle_StepShape_VertexPoint GetHandle() {
	return *(Handle_StepShape_VertexPoint*) &$self;
	}
};
%extend StepShape_VertexPoint {
	~StepShape_VertexPoint() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_VertexPoint\n");}
	}
};

%nodefaultctor StepShape_HArray1OfGeometricSetSelect;
class StepShape_HArray1OfGeometricSetSelect : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepShape_HArray1OfGeometricSetSelect(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepShape_HArray1OfGeometricSetSelect(const Standard_Integer Low, const Standard_Integer Up, const StepShape_GeometricSetSelect &V);
		%feature("autodoc", "1");
		void Init(const StepShape_GeometricSetSelect &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepShape_GeometricSetSelect &Value);
		%feature("autodoc", "1");
		const StepShape_GeometricSetSelect & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepShape_GeometricSetSelect & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const StepShape_Array1OfGeometricSetSelect & Array1() const;
		%feature("autodoc", "1");
		StepShape_Array1OfGeometricSetSelect & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_HArray1OfGeometricSetSelect {
	Handle_StepShape_HArray1OfGeometricSetSelect GetHandle() {
	return *(Handle_StepShape_HArray1OfGeometricSetSelect*) &$self;
	}
};
%extend StepShape_HArray1OfGeometricSetSelect {
	~StepShape_HArray1OfGeometricSetSelect() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_HArray1OfGeometricSetSelect\n");}
	}
};

%nodefaultctor StepShape_HArray1OfShell;
class StepShape_HArray1OfShell : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepShape_HArray1OfShell(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepShape_HArray1OfShell(const Standard_Integer Low, const Standard_Integer Up, const StepShape_Shell &V);
		%feature("autodoc", "1");
		void Init(const StepShape_Shell &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepShape_Shell &Value);
		%feature("autodoc", "1");
		const StepShape_Shell & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepShape_Shell & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const StepShape_Array1OfShell & Array1() const;
		%feature("autodoc", "1");
		StepShape_Array1OfShell & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_HArray1OfShell {
	Handle_StepShape_HArray1OfShell GetHandle() {
	return *(Handle_StepShape_HArray1OfShell*) &$self;
	}
};
%extend StepShape_HArray1OfShell {
	~StepShape_HArray1OfShell() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_HArray1OfShell\n");}
	}
};

%nodefaultctor StepShape_EdgeBasedWireframeShapeRepresentation;
class StepShape_EdgeBasedWireframeShapeRepresentation : public StepShape_ShapeRepresentation {
	public:
		%feature("autodoc", "1");
		StepShape_EdgeBasedWireframeShapeRepresentation();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_EdgeBasedWireframeShapeRepresentation {
	Handle_StepShape_EdgeBasedWireframeShapeRepresentation GetHandle() {
	return *(Handle_StepShape_EdgeBasedWireframeShapeRepresentation*) &$self;
	}
};
%extend StepShape_EdgeBasedWireframeShapeRepresentation {
	~StepShape_EdgeBasedWireframeShapeRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_EdgeBasedWireframeShapeRepresentation\n");}
	}
};

%nodefaultctor StepShape_FacetedBrep;
class StepShape_FacetedBrep : public StepShape_ManifoldSolidBrep {
	public:
		%feature("autodoc", "1");
		StepShape_FacetedBrep();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_FacetedBrep {
	Handle_StepShape_FacetedBrep GetHandle() {
	return *(Handle_StepShape_FacetedBrep*) &$self;
	}
};
%extend StepShape_FacetedBrep {
	~StepShape_FacetedBrep() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_FacetedBrep\n");}
	}
};

%nodefaultctor StepShape_Shell;
class StepShape_Shell : public StepData_SelectType {
	public:
		%feature("autodoc", "1");
		StepShape_Shell();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseNum(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Handle_StepShape_OpenShell OpenShell() const;
		%feature("autodoc", "1");
		Handle_StepShape_ClosedShell ClosedShell() const;

};
%extend StepShape_Shell {
	~StepShape_Shell() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_Shell\n");}
	}
};

%nodefaultctor StepShape_MeasureQualification;
class StepShape_MeasureQualification : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepShape_MeasureQualification();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &name, const Handle_TCollection_HAsciiString &description, const Handle_StepBasic_MeasureWithUnit &qualified_measure, const Handle_StepShape_HArray1OfValueQualifier &qualifiers);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Name() const;
		%feature("autodoc", "1");
		void SetName(const Handle_TCollection_HAsciiString &name);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Description() const;
		%feature("autodoc", "1");
		void SetDescription(const Handle_TCollection_HAsciiString &description);
		%feature("autodoc", "1");
		Handle_StepBasic_MeasureWithUnit QualifiedMeasure() const;
		%feature("autodoc", "1");
		void SetQualifiedMeasure(const Handle_StepBasic_MeasureWithUnit &qualified_measure);
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfValueQualifier Qualifiers() const;
		%feature("autodoc", "1");
		Standard_Integer NbQualifiers() const;
		%feature("autodoc", "1");
		void SetQualifiers(const Handle_StepShape_HArray1OfValueQualifier &qualifiers);
		%feature("autodoc", "1");
		StepShape_ValueQualifier QualifiersValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		void SetQualifiersValue(const Standard_Integer num, const StepShape_ValueQualifier &aqualifier);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_MeasureQualification {
	Handle_StepShape_MeasureQualification GetHandle() {
	return *(Handle_StepShape_MeasureQualification*) &$self;
	}
};
%extend StepShape_MeasureQualification {
	~StepShape_MeasureQualification() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_MeasureQualification\n");}
	}
};

%nodefaultctor StepShape_CsgPrimitive;
class StepShape_CsgPrimitive : public StepData_SelectType {
	public:
		%feature("autodoc", "1");
		StepShape_CsgPrimitive();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseNum(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Handle_StepShape_Sphere Sphere() const;
		%feature("autodoc", "1");
		Handle_StepShape_Block Block() const;
		%feature("autodoc", "1");
		Handle_StepShape_RightAngularWedge RightAngularWedge() const;
		%feature("autodoc", "1");
		Handle_StepShape_Torus Torus() const;
		%feature("autodoc", "1");
		Handle_StepShape_RightCircularCone RightCircularCone() const;
		%feature("autodoc", "1");
		Handle_StepShape_RightCircularCylinder RightCircularCylinder() const;

};
%extend StepShape_CsgPrimitive {
	~StepShape_CsgPrimitive() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_CsgPrimitive\n");}
	}
};

%nodefaultctor StepShape_ManifoldSurfaceShapeRepresentation;
class StepShape_ManifoldSurfaceShapeRepresentation : public StepShape_ShapeRepresentation {
	public:
		%feature("autodoc", "1");
		StepShape_ManifoldSurfaceShapeRepresentation();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_ManifoldSurfaceShapeRepresentation {
	Handle_StepShape_ManifoldSurfaceShapeRepresentation GetHandle() {
	return *(Handle_StepShape_ManifoldSurfaceShapeRepresentation*) &$self;
	}
};
%extend StepShape_ManifoldSurfaceShapeRepresentation {
	~StepShape_ManifoldSurfaceShapeRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_ManifoldSurfaceShapeRepresentation\n");}
	}
};

%nodefaultctor StepShape_OrientedEdge;
class StepShape_OrientedEdge : public StepShape_Edge {
	public:
		%feature("autodoc", "1");
		StepShape_OrientedEdge();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepShape_Edge &aEdgeElement, const Standard_Boolean aOrientation);
		%feature("autodoc", "1");
		void SetEdgeElement(const Handle_StepShape_Edge &aEdgeElement);
		%feature("autodoc", "1");
		Handle_StepShape_Edge EdgeElement() const;
		%feature("autodoc", "1");
		void SetOrientation(const Standard_Boolean aOrientation);
		%feature("autodoc", "1");
		Standard_Boolean Orientation() const;
		%feature("autodoc", "1");
		virtual		void SetEdgeStart(const Handle_StepShape_Vertex &aEdgeStart);
		%feature("autodoc", "1");
		virtual		Handle_StepShape_Vertex EdgeStart() const;
		%feature("autodoc", "1");
		virtual		void SetEdgeEnd(const Handle_StepShape_Vertex &aEdgeEnd);
		%feature("autodoc", "1");
		virtual		Handle_StepShape_Vertex EdgeEnd() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_OrientedEdge {
	Handle_StepShape_OrientedEdge GetHandle() {
	return *(Handle_StepShape_OrientedEdge*) &$self;
	}
};
%extend StepShape_OrientedEdge {
	~StepShape_OrientedEdge() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_OrientedEdge\n");}
	}
};

%nodefaultctor StepShape_ToleranceMethodDefinition;
class StepShape_ToleranceMethodDefinition : public StepData_SelectType {
	public:
		%feature("autodoc", "1");
		StepShape_ToleranceMethodDefinition();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseNum(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Handle_StepShape_ToleranceValue ToleranceValue() const;
		%feature("autodoc", "1");
		Handle_StepShape_LimitsAndFits LimitsAndFits() const;

};
%extend StepShape_ToleranceMethodDefinition {
	~StepShape_ToleranceMethodDefinition() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_ToleranceMethodDefinition\n");}
	}
};

%nodefaultctor StepShape_Torus;
class StepShape_Torus : public StepGeom_GeometricRepresentationItem {
	public:
		%feature("autodoc", "1");
		StepShape_Torus();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepGeom_Axis1Placement &aPosition, const Standard_Real aMajorRadius, const Standard_Real aMinorRadius);
		%feature("autodoc", "1");
		void SetPosition(const Handle_StepGeom_Axis1Placement &aPosition);
		%feature("autodoc", "1");
		Handle_StepGeom_Axis1Placement Position() const;
		%feature("autodoc", "1");
		void SetMajorRadius(const Standard_Real aMajorRadius);
		%feature("autodoc", "1");
		Standard_Real MajorRadius() const;
		%feature("autodoc", "1");
		void SetMinorRadius(const Standard_Real aMinorRadius);
		%feature("autodoc", "1");
		Standard_Real MinorRadius() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_Torus {
	Handle_StepShape_Torus GetHandle() {
	return *(Handle_StepShape_Torus*) &$self;
	}
};
%extend StepShape_Torus {
	~StepShape_Torus() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_Torus\n");}
	}
};

%nodefaultctor StepShape_DimensionalSizeWithPath;
class StepShape_DimensionalSizeWithPath : public StepShape_DimensionalSize {
	public:
		%feature("autodoc", "1");
		StepShape_DimensionalSizeWithPath();
		%feature("autodoc", "1");
		void Init(const Handle_StepRepr_ShapeAspect &aDimensionalSize_AppliesTo, const Handle_TCollection_HAsciiString &aDimensionalSize_Name, const Handle_StepRepr_ShapeAspect &aPath);
		%feature("autodoc", "1");
		Handle_StepRepr_ShapeAspect Path() const;
		%feature("autodoc", "1");
		void SetPath(const Handle_StepRepr_ShapeAspect &Path);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_DimensionalSizeWithPath {
	Handle_StepShape_DimensionalSizeWithPath GetHandle() {
	return *(Handle_StepShape_DimensionalSizeWithPath*) &$self;
	}
};
%extend StepShape_DimensionalSizeWithPath {
	~StepShape_DimensionalSizeWithPath() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_DimensionalSizeWithPath\n");}
	}
};

%nodefaultctor StepShape_HArray1OfConnectedFaceSet;
class StepShape_HArray1OfConnectedFaceSet : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepShape_HArray1OfConnectedFaceSet(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepShape_HArray1OfConnectedFaceSet(const Standard_Integer Low, const Standard_Integer Up, const Handle_StepShape_ConnectedFaceSet &V);
		%feature("autodoc", "1");
		void Init(const Handle_StepShape_ConnectedFaceSet &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StepShape_ConnectedFaceSet &Value);
		%feature("autodoc", "1");
		const Handle_StepShape_ConnectedFaceSet & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_StepShape_ConnectedFaceSet & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const StepShape_Array1OfConnectedFaceSet & Array1() const;
		%feature("autodoc", "1");
		StepShape_Array1OfConnectedFaceSet & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_HArray1OfConnectedFaceSet {
	Handle_StepShape_HArray1OfConnectedFaceSet GetHandle() {
	return *(Handle_StepShape_HArray1OfConnectedFaceSet*) &$self;
	}
};
%extend StepShape_HArray1OfConnectedFaceSet {
	~StepShape_HArray1OfConnectedFaceSet() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_HArray1OfConnectedFaceSet\n");}
	}
};

%nodefaultctor StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem;
class StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem : public StepRepr_RepresentationItem {
	public:
		%feature("autodoc", "1");
		StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepBasic_MeasureValueMember &aValueComponent, const StepBasic_Unit &aUnitComponent, const Handle_StepShape_HArray1OfValueQualifier &qualifiers);
		%feature("autodoc", "1");
		void SetMeasure(const Handle_StepBasic_MeasureWithUnit &Measure);
		%feature("autodoc", "1");
		Handle_StepBasic_MeasureWithUnit Measure() const;
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfValueQualifier Qualifiers() const;
		%feature("autodoc", "1");
		Standard_Integer NbQualifiers() const;
		%feature("autodoc", "1");
		void SetQualifiers(const Handle_StepShape_HArray1OfValueQualifier &qualifiers);
		%feature("autodoc", "1");
		StepShape_ValueQualifier QualifiersValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		void SetQualifiersValue(const Standard_Integer num, const StepShape_ValueQualifier &aqualifier);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem {
	Handle_StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem GetHandle() {
	return *(Handle_StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem*) &$self;
	}
};
%extend StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem {
	~StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem\n");}
	}
};

%nodefaultctor StepShape_DefinitionalRepresentationAndShapeRepresentation;
class StepShape_DefinitionalRepresentationAndShapeRepresentation : public StepRepr_DefinitionalRepresentation {
	public:
		%feature("autodoc", "1");
		StepShape_DefinitionalRepresentationAndShapeRepresentation();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_DefinitionalRepresentationAndShapeRepresentation {
	Handle_StepShape_DefinitionalRepresentationAndShapeRepresentation GetHandle() {
	return *(Handle_StepShape_DefinitionalRepresentationAndShapeRepresentation*) &$self;
	}
};
%extend StepShape_DefinitionalRepresentationAndShapeRepresentation {
	~StepShape_DefinitionalRepresentationAndShapeRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_DefinitionalRepresentationAndShapeRepresentation\n");}
	}
};

%nodefaultctor StepShape_ExtrudedAreaSolid;
class StepShape_ExtrudedAreaSolid : public StepShape_SweptAreaSolid {
	public:
		%feature("autodoc", "1");
		StepShape_ExtrudedAreaSolid();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepGeom_CurveBoundedSurface &aSweptArea);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepGeom_CurveBoundedSurface &aSweptArea, const Handle_StepGeom_Direction &aExtrudedDirection, const Standard_Real aDepth);
		%feature("autodoc", "1");
		void SetExtrudedDirection(const Handle_StepGeom_Direction &aExtrudedDirection);
		%feature("autodoc", "1");
		Handle_StepGeom_Direction ExtrudedDirection() const;
		%feature("autodoc", "1");
		void SetDepth(const Standard_Real aDepth);
		%feature("autodoc", "1");
		Standard_Real Depth() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_ExtrudedAreaSolid {
	Handle_StepShape_ExtrudedAreaSolid GetHandle() {
	return *(Handle_StepShape_ExtrudedAreaSolid*) &$self;
	}
};
%extend StepShape_ExtrudedAreaSolid {
	~StepShape_ExtrudedAreaSolid() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_ExtrudedAreaSolid\n");}
	}
};

%nodefaultctor StepShape_Array1OfEdge;
class StepShape_Array1OfEdge {
	public:
		%feature("autodoc", "1");
		StepShape_Array1OfEdge(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepShape_Array1OfEdge(const Handle_StepShape_Edge &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Handle_StepShape_Edge &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepShape_Array1OfEdge & Assign(const StepShape_Array1OfEdge &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StepShape_Edge &Value);
		%feature("autodoc", "1");
		const Handle_StepShape_Edge & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_StepShape_Edge & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_StepShape_Edge & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_StepShape_Edge & operator()(const Standard_Integer Index);

};
%extend StepShape_Array1OfEdge {
	~StepShape_Array1OfEdge() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_Array1OfEdge\n");}
	}
};

%nodefaultctor StepShape_BrepWithVoids;
class StepShape_BrepWithVoids : public StepShape_ManifoldSolidBrep {
	public:
		%feature("autodoc", "1");
		StepShape_BrepWithVoids();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepShape_ClosedShell &aOuter);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepShape_ClosedShell &aOuter, const Handle_StepShape_HArray1OfOrientedClosedShell &aVoids);
		%feature("autodoc", "1");
		void SetVoids(const Handle_StepShape_HArray1OfOrientedClosedShell &aVoids);
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfOrientedClosedShell Voids() const;
		%feature("autodoc", "1");
		Handle_StepShape_OrientedClosedShell VoidsValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer NbVoids() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_BrepWithVoids {
	Handle_StepShape_BrepWithVoids GetHandle() {
	return *(Handle_StepShape_BrepWithVoids*) &$self;
	}
};
%extend StepShape_BrepWithVoids {
	~StepShape_BrepWithVoids() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_BrepWithVoids\n");}
	}
};

%nodefaultctor StepShape_GeometricSetSelect;
class StepShape_GeometricSetSelect : public StepData_SelectType {
	public:
		%feature("autodoc", "1");
		StepShape_GeometricSetSelect();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseNum(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Handle_StepGeom_Point Point() const;
		%feature("autodoc", "1");
		Handle_StepGeom_Curve Curve() const;
		%feature("autodoc", "1");
		Handle_StepGeom_Surface Surface() const;

};
%extend StepShape_GeometricSetSelect {
	~StepShape_GeometricSetSelect() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_GeometricSetSelect\n");}
	}
};

%nodefaultctor StepShape_SeamEdge;
class StepShape_SeamEdge : public StepShape_OrientedEdge {
	public:
		%feature("autodoc", "1");
		StepShape_SeamEdge();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aRepresentationItem_Name, const Handle_StepShape_Edge &aOrientedEdge_EdgeElement, const Standard_Boolean aOrientedEdge_Orientation, const Handle_StepGeom_Pcurve &aPcurveReference);
		%feature("autodoc", "1");
		Handle_StepGeom_Pcurve PcurveReference() const;
		%feature("autodoc", "1");
		void SetPcurveReference(const Handle_StepGeom_Pcurve &PcurveReference);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_SeamEdge {
	Handle_StepShape_SeamEdge GetHandle() {
	return *(Handle_StepShape_SeamEdge*) &$self;
	}
};
%extend StepShape_SeamEdge {
	~StepShape_SeamEdge() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_SeamEdge\n");}
	}
};

%nodefaultctor StepShape_ToleranceValue;
class StepShape_ToleranceValue : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepShape_ToleranceValue();
		%feature("autodoc", "1");
		void Init(const Handle_StepBasic_MeasureWithUnit &lower_bound, const Handle_StepBasic_MeasureWithUnit &upper_bound);
		%feature("autodoc", "1");
		Handle_StepBasic_MeasureWithUnit LowerBound() const;
		%feature("autodoc", "1");
		void SetLowerBound(const Handle_StepBasic_MeasureWithUnit &lower_bound);
		%feature("autodoc", "1");
		Handle_StepBasic_MeasureWithUnit UpperBound() const;
		%feature("autodoc", "1");
		void SetUpperBound(const Handle_StepBasic_MeasureWithUnit &upper_bound);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_ToleranceValue {
	Handle_StepShape_ToleranceValue GetHandle() {
	return *(Handle_StepShape_ToleranceValue*) &$self;
	}
};
%extend StepShape_ToleranceValue {
	~StepShape_ToleranceValue() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_ToleranceValue\n");}
	}
};

%nodefaultctor StepShape_Sphere;
class StepShape_Sphere : public StepGeom_GeometricRepresentationItem {
	public:
		%feature("autodoc", "1");
		StepShape_Sphere();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Standard_Real aRadius, const Handle_StepGeom_Point &aCentre);
		%feature("autodoc", "1");
		void SetRadius(const Standard_Real aRadius);
		%feature("autodoc", "1");
		Standard_Real Radius() const;
		%feature("autodoc", "1");
		void SetCentre(const Handle_StepGeom_Point &aCentre);
		%feature("autodoc", "1");
		Handle_StepGeom_Point Centre() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_Sphere {
	Handle_StepShape_Sphere GetHandle() {
	return *(Handle_StepShape_Sphere*) &$self;
	}
};
%extend StepShape_Sphere {
	~StepShape_Sphere() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_Sphere\n");}
	}
};

%nodefaultctor StepShape_TypeQualifier;
class StepShape_TypeQualifier : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepShape_TypeQualifier();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &name);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Name() const;
		%feature("autodoc", "1");
		void SetName(const Handle_TCollection_HAsciiString &name);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_TypeQualifier {
	Handle_StepShape_TypeQualifier GetHandle() {
	return *(Handle_StepShape_TypeQualifier*) &$self;
	}
};
%extend StepShape_TypeQualifier {
	~StepShape_TypeQualifier() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_TypeQualifier\n");}
	}
};

%nodefaultctor StepShape_DimensionalLocationWithPath;
class StepShape_DimensionalLocationWithPath : public StepShape_DimensionalLocation {
	public:
		%feature("autodoc", "1");
		StepShape_DimensionalLocationWithPath();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aShapeAspectRelationship_Name, const Standard_Boolean hasShapeAspectRelationship_Description, const Handle_TCollection_HAsciiString &aShapeAspectRelationship_Description, const Handle_StepRepr_ShapeAspect &aShapeAspectRelationship_RelatingShapeAspect, const Handle_StepRepr_ShapeAspect &aShapeAspectRelationship_RelatedShapeAspect, const Handle_StepRepr_ShapeAspect &aPath);
		%feature("autodoc", "1");
		Handle_StepRepr_ShapeAspect Path() const;
		%feature("autodoc", "1");
		void SetPath(const Handle_StepRepr_ShapeAspect &Path);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_DimensionalLocationWithPath {
	Handle_StepShape_DimensionalLocationWithPath GetHandle() {
	return *(Handle_StepShape_DimensionalLocationWithPath*) &$self;
	}
};
%extend StepShape_DimensionalLocationWithPath {
	~StepShape_DimensionalLocationWithPath() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_DimensionalLocationWithPath\n");}
	}
};

%nodefaultctor StepShape_LimitsAndFits;
class StepShape_LimitsAndFits : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepShape_LimitsAndFits();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &form_variance, const Handle_TCollection_HAsciiString &zone_variance, const Handle_TCollection_HAsciiString &grade, const Handle_TCollection_HAsciiString &source);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString FormVariance() const;
		%feature("autodoc", "1");
		void SetFormVariance(const Handle_TCollection_HAsciiString &form_variance);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString ZoneVariance() const;
		%feature("autodoc", "1");
		void SetZoneVariance(const Handle_TCollection_HAsciiString &zone_variance);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Grade() const;
		%feature("autodoc", "1");
		void SetGrade(const Handle_TCollection_HAsciiString &grade);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Source() const;
		%feature("autodoc", "1");
		void SetSource(const Handle_TCollection_HAsciiString &source);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_LimitsAndFits {
	Handle_StepShape_LimitsAndFits GetHandle() {
	return *(Handle_StepShape_LimitsAndFits*) &$self;
	}
};
%extend StepShape_LimitsAndFits {
	~StepShape_LimitsAndFits() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_LimitsAndFits\n");}
	}
};

%nodefaultctor StepShape_VertexLoop;
class StepShape_VertexLoop : public StepShape_Loop {
	public:
		%feature("autodoc", "1");
		StepShape_VertexLoop();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepShape_Vertex &aLoopVertex);
		%feature("autodoc", "1");
		void SetLoopVertex(const Handle_StepShape_Vertex &aLoopVertex);
		%feature("autodoc", "1");
		Handle_StepShape_Vertex LoopVertex() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_VertexLoop {
	Handle_StepShape_VertexLoop GetHandle() {
	return *(Handle_StepShape_VertexLoop*) &$self;
	}
};
%extend StepShape_VertexLoop {
	~StepShape_VertexLoop() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_VertexLoop\n");}
	}
};

%nodefaultctor StepShape_AngularLocation;
class StepShape_AngularLocation : public StepShape_DimensionalLocation {
	public:
		%feature("autodoc", "1");
		StepShape_AngularLocation();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aShapeAspectRelationship_Name, const Standard_Boolean hasShapeAspectRelationship_Description, const Handle_TCollection_HAsciiString &aShapeAspectRelationship_Description, const Handle_StepRepr_ShapeAspect &aShapeAspectRelationship_RelatingShapeAspect, const Handle_StepRepr_ShapeAspect &aShapeAspectRelationship_RelatedShapeAspect, const StepShape_AngleRelator aAngleSelection);
		%feature("autodoc", "1");
		StepShape_AngleRelator AngleSelection() const;
		%feature("autodoc", "1");
		void SetAngleSelection(const StepShape_AngleRelator AngleSelection);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_AngularLocation {
	Handle_StepShape_AngularLocation GetHandle() {
	return *(Handle_StepShape_AngularLocation*) &$self;
	}
};
%extend StepShape_AngularLocation {
	~StepShape_AngularLocation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_AngularLocation\n");}
	}
};

%nodefaultctor StepShape_OrientedPath;
class StepShape_OrientedPath : public StepShape_Path {
	public:
		%feature("autodoc", "1");
		StepShape_OrientedPath();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepShape_HArray1OfOrientedEdge &aEdgeList);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepShape_EdgeLoop &aPathElement, const Standard_Boolean aOrientation);
		%feature("autodoc", "1");
		void SetPathElement(const Handle_StepShape_EdgeLoop &aPathElement);
		%feature("autodoc", "1");
		Handle_StepShape_EdgeLoop PathElement() const;
		%feature("autodoc", "1");
		void SetOrientation(const Standard_Boolean aOrientation);
		%feature("autodoc", "1");
		Standard_Boolean Orientation() const;
		%feature("autodoc", "1");
		virtual		void SetEdgeList(const Handle_StepShape_HArray1OfOrientedEdge &aEdgeList);
		%feature("autodoc", "1");
		virtual		Handle_StepShape_HArray1OfOrientedEdge EdgeList() const;
		%feature("autodoc", "1");
		virtual		Handle_StepShape_OrientedEdge EdgeListValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbEdgeList() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_OrientedPath {
	Handle_StepShape_OrientedPath GetHandle() {
	return *(Handle_StepShape_OrientedPath*) &$self;
	}
};
%extend StepShape_OrientedPath {
	~StepShape_OrientedPath() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_OrientedPath\n");}
	}
};

%nodefaultctor StepShape_ShellBasedSurfaceModel;
class StepShape_ShellBasedSurfaceModel : public StepGeom_GeometricRepresentationItem {
	public:
		%feature("autodoc", "1");
		StepShape_ShellBasedSurfaceModel();
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName);
		%feature("autodoc", "1");
		virtual		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_StepShape_HArray1OfShell &aSbsmBoundary);
		%feature("autodoc", "1");
		void SetSbsmBoundary(const Handle_StepShape_HArray1OfShell &aSbsmBoundary);
		%feature("autodoc", "1");
		Handle_StepShape_HArray1OfShell SbsmBoundary() const;
		%feature("autodoc", "1");
		StepShape_Shell SbsmBoundaryValue(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer NbSbsmBoundary() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepShape_ShellBasedSurfaceModel {
	Handle_StepShape_ShellBasedSurfaceModel GetHandle() {
	return *(Handle_StepShape_ShellBasedSurfaceModel*) &$self;
	}
};
%extend StepShape_ShellBasedSurfaceModel {
	~StepShape_ShellBasedSurfaceModel() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of StepShape_ShellBasedSurfaceModel\n");}
	}
};