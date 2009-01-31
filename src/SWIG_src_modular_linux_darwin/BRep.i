/*
##Copyright 2008-2009 Thomas Paviot
##
##thomas.paviot@free.fr
##
##pythonOCC is a computer program whose purpose is to provide a complete set
##of python bindings for OpenCascade library.
##
##This software is governed by the CeCILL license under French law and
##abiding by the rules of distribution of free software.  You can  use, 
##modify and/ or redistribute the software under the terms of the CeCILL
##license as circulated by CEA, CNRS and INRIA at the following URL
##"http://www.cecill.info". 
##
##As a counterpart to the access to the source code and  rights to copy,
##modify and redistribute granted by the license, users are provided only
##with a limited warranty  and the software's author,  the holder of the
##economic rights,  and the successive licensors  have only  limited
##liability. 
##
##In this respect, the user's attention is drawn to the risks associated
##with loading,  using,  modifying and/or developing or reproducing the
##software by the user in light of its specific status of free software,
##that may mean  that it is complicated to manipulate,  and  that  also
##therefore means  that it is reserved for developers  and  experienced
##professionals having in-depth computer knowledge. Users are therefore
##encouraged to load and test the software's suitability as regards their
##requirements in conditions enabling the security of their systems and/or 
##data to be ensured and,  more generally, to use and operate it in the 
##same conditions as regards security. 
##
##The fact that you are presently reading this means that you have had
##knowledge of the CeCILL license and that you accept its terms.
*/
%module BRep

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


%include BRep_dependencies.i


%include BRep_headers.i




%nodefaultctor Handle_BRep_PointRepresentation;
class Handle_BRep_PointRepresentation : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_BRep_PointRepresentation();
		%feature("autodoc", "1");
		Handle_BRep_PointRepresentation();
		%feature("autodoc", "1");
		Handle_BRep_PointRepresentation(const Handle_BRep_PointRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_BRep_PointRepresentation(const BRep_PointRepresentation *anItem);
		%feature("autodoc", "1");
		Handle_BRep_PointRepresentation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRep_PointRepresentation {
	BRep_PointRepresentation* GetObject() {
	return (BRep_PointRepresentation*)$self->Access();
	}
};

%nodefaultctor Handle_BRep_PointsOnSurface;
class Handle_BRep_PointsOnSurface : public Handle_BRep_PointRepresentation {
	public:
		%feature("autodoc", "1");
		~Handle_BRep_PointsOnSurface();
		%feature("autodoc", "1");
		Handle_BRep_PointsOnSurface();
		%feature("autodoc", "1");
		Handle_BRep_PointsOnSurface(const Handle_BRep_PointsOnSurface &aHandle);
		%feature("autodoc", "1");
		Handle_BRep_PointsOnSurface(const BRep_PointsOnSurface *anItem);
		%feature("autodoc", "1");
		Handle_BRep_PointsOnSurface const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRep_PointsOnSurface {
	BRep_PointsOnSurface* GetObject() {
	return (BRep_PointsOnSurface*)$self->Access();
	}
};

%nodefaultctor Handle_BRep_PointOnSurface;
class Handle_BRep_PointOnSurface : public Handle_BRep_PointsOnSurface {
	public:
		%feature("autodoc", "1");
		~Handle_BRep_PointOnSurface();
		%feature("autodoc", "1");
		Handle_BRep_PointOnSurface();
		%feature("autodoc", "1");
		Handle_BRep_PointOnSurface(const Handle_BRep_PointOnSurface &aHandle);
		%feature("autodoc", "1");
		Handle_BRep_PointOnSurface(const BRep_PointOnSurface *anItem);
		%feature("autodoc", "1");
		Handle_BRep_PointOnSurface const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRep_PointOnSurface {
	BRep_PointOnSurface* GetObject() {
	return (BRep_PointOnSurface*)$self->Access();
	}
};

%nodefaultctor Handle_BRep_ListNodeOfListOfCurveRepresentation;
class Handle_BRep_ListNodeOfListOfCurveRepresentation : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_BRep_ListNodeOfListOfCurveRepresentation();
		%feature("autodoc", "1");
		Handle_BRep_ListNodeOfListOfCurveRepresentation();
		%feature("autodoc", "1");
		Handle_BRep_ListNodeOfListOfCurveRepresentation(const Handle_BRep_ListNodeOfListOfCurveRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_BRep_ListNodeOfListOfCurveRepresentation(const BRep_ListNodeOfListOfCurveRepresentation *anItem);
		%feature("autodoc", "1");
		Handle_BRep_ListNodeOfListOfCurveRepresentation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRep_ListNodeOfListOfCurveRepresentation {
	BRep_ListNodeOfListOfCurveRepresentation* GetObject() {
	return (BRep_ListNodeOfListOfCurveRepresentation*)$self->Access();
	}
};

%nodefaultctor Handle_BRep_CurveRepresentation;
class Handle_BRep_CurveRepresentation : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_BRep_CurveRepresentation();
		%feature("autodoc", "1");
		Handle_BRep_CurveRepresentation();
		%feature("autodoc", "1");
		Handle_BRep_CurveRepresentation(const Handle_BRep_CurveRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_BRep_CurveRepresentation(const BRep_CurveRepresentation *anItem);
		%feature("autodoc", "1");
		Handle_BRep_CurveRepresentation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRep_CurveRepresentation {
	BRep_CurveRepresentation* GetObject() {
	return (BRep_CurveRepresentation*)$self->Access();
	}
};

%nodefaultctor Handle_BRep_GCurve;
class Handle_BRep_GCurve : public Handle_BRep_CurveRepresentation {
	public:
		%feature("autodoc", "1");
		~Handle_BRep_GCurve();
		%feature("autodoc", "1");
		Handle_BRep_GCurve();
		%feature("autodoc", "1");
		Handle_BRep_GCurve(const Handle_BRep_GCurve &aHandle);
		%feature("autodoc", "1");
		Handle_BRep_GCurve(const BRep_GCurve *anItem);
		%feature("autodoc", "1");
		Handle_BRep_GCurve const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRep_GCurve {
	BRep_GCurve* GetObject() {
	return (BRep_GCurve*)$self->Access();
	}
};

%nodefaultctor Handle_BRep_Curve3D;
class Handle_BRep_Curve3D : public Handle_BRep_GCurve {
	public:
		%feature("autodoc", "1");
		~Handle_BRep_Curve3D();
		%feature("autodoc", "1");
		Handle_BRep_Curve3D();
		%feature("autodoc", "1");
		Handle_BRep_Curve3D(const Handle_BRep_Curve3D &aHandle);
		%feature("autodoc", "1");
		Handle_BRep_Curve3D(const BRep_Curve3D *anItem);
		%feature("autodoc", "1");
		Handle_BRep_Curve3D const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRep_Curve3D {
	BRep_Curve3D* GetObject() {
	return (BRep_Curve3D*)$self->Access();
	}
};

%nodefaultctor Handle_BRep_Polygon3D;
class Handle_BRep_Polygon3D : public Handle_BRep_CurveRepresentation {
	public:
		%feature("autodoc", "1");
		~Handle_BRep_Polygon3D();
		%feature("autodoc", "1");
		Handle_BRep_Polygon3D();
		%feature("autodoc", "1");
		Handle_BRep_Polygon3D(const Handle_BRep_Polygon3D &aHandle);
		%feature("autodoc", "1");
		Handle_BRep_Polygon3D(const BRep_Polygon3D *anItem);
		%feature("autodoc", "1");
		Handle_BRep_Polygon3D const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRep_Polygon3D {
	BRep_Polygon3D* GetObject() {
	return (BRep_Polygon3D*)$self->Access();
	}
};

%nodefaultctor Handle_BRep_TVertex;
class Handle_BRep_TVertex : public Handle_TopoDS_TVertex {
	public:
		%feature("autodoc", "1");
		~Handle_BRep_TVertex();
		%feature("autodoc", "1");
		Handle_BRep_TVertex();
		%feature("autodoc", "1");
		Handle_BRep_TVertex(const Handle_BRep_TVertex &aHandle);
		%feature("autodoc", "1");
		Handle_BRep_TVertex(const BRep_TVertex *anItem);
		%feature("autodoc", "1");
		Handle_BRep_TVertex const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRep_TVertex {
	BRep_TVertex* GetObject() {
	return (BRep_TVertex*)$self->Access();
	}
};

%nodefaultctor Handle_BRep_CurveOn2Surfaces;
class Handle_BRep_CurveOn2Surfaces : public Handle_BRep_CurveRepresentation {
	public:
		%feature("autodoc", "1");
		~Handle_BRep_CurveOn2Surfaces();
		%feature("autodoc", "1");
		Handle_BRep_CurveOn2Surfaces();
		%feature("autodoc", "1");
		Handle_BRep_CurveOn2Surfaces(const Handle_BRep_CurveOn2Surfaces &aHandle);
		%feature("autodoc", "1");
		Handle_BRep_CurveOn2Surfaces(const BRep_CurveOn2Surfaces *anItem);
		%feature("autodoc", "1");
		Handle_BRep_CurveOn2Surfaces const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRep_CurveOn2Surfaces {
	BRep_CurveOn2Surfaces* GetObject() {
	return (BRep_CurveOn2Surfaces*)$self->Access();
	}
};

%nodefaultctor Handle_BRep_ListNodeOfListOfPointRepresentation;
class Handle_BRep_ListNodeOfListOfPointRepresentation : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_BRep_ListNodeOfListOfPointRepresentation();
		%feature("autodoc", "1");
		Handle_BRep_ListNodeOfListOfPointRepresentation();
		%feature("autodoc", "1");
		Handle_BRep_ListNodeOfListOfPointRepresentation(const Handle_BRep_ListNodeOfListOfPointRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_BRep_ListNodeOfListOfPointRepresentation(const BRep_ListNodeOfListOfPointRepresentation *anItem);
		%feature("autodoc", "1");
		Handle_BRep_ListNodeOfListOfPointRepresentation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRep_ListNodeOfListOfPointRepresentation {
	BRep_ListNodeOfListOfPointRepresentation* GetObject() {
	return (BRep_ListNodeOfListOfPointRepresentation*)$self->Access();
	}
};

%nodefaultctor Handle_BRep_PolygonOnSurface;
class Handle_BRep_PolygonOnSurface : public Handle_BRep_CurveRepresentation {
	public:
		%feature("autodoc", "1");
		~Handle_BRep_PolygonOnSurface();
		%feature("autodoc", "1");
		Handle_BRep_PolygonOnSurface();
		%feature("autodoc", "1");
		Handle_BRep_PolygonOnSurface(const Handle_BRep_PolygonOnSurface &aHandle);
		%feature("autodoc", "1");
		Handle_BRep_PolygonOnSurface(const BRep_PolygonOnSurface *anItem);
		%feature("autodoc", "1");
		Handle_BRep_PolygonOnSurface const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRep_PolygonOnSurface {
	BRep_PolygonOnSurface* GetObject() {
	return (BRep_PolygonOnSurface*)$self->Access();
	}
};

%nodefaultctor Handle_BRep_PolygonOnClosedSurface;
class Handle_BRep_PolygonOnClosedSurface : public Handle_BRep_PolygonOnSurface {
	public:
		%feature("autodoc", "1");
		~Handle_BRep_PolygonOnClosedSurface();
		%feature("autodoc", "1");
		Handle_BRep_PolygonOnClosedSurface();
		%feature("autodoc", "1");
		Handle_BRep_PolygonOnClosedSurface(const Handle_BRep_PolygonOnClosedSurface &aHandle);
		%feature("autodoc", "1");
		Handle_BRep_PolygonOnClosedSurface(const BRep_PolygonOnClosedSurface *anItem);
		%feature("autodoc", "1");
		Handle_BRep_PolygonOnClosedSurface const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRep_PolygonOnClosedSurface {
	BRep_PolygonOnClosedSurface* GetObject() {
	return (BRep_PolygonOnClosedSurface*)$self->Access();
	}
};

%nodefaultctor Handle_BRep_PointOnCurve;
class Handle_BRep_PointOnCurve : public Handle_BRep_PointRepresentation {
	public:
		%feature("autodoc", "1");
		~Handle_BRep_PointOnCurve();
		%feature("autodoc", "1");
		Handle_BRep_PointOnCurve();
		%feature("autodoc", "1");
		Handle_BRep_PointOnCurve(const Handle_BRep_PointOnCurve &aHandle);
		%feature("autodoc", "1");
		Handle_BRep_PointOnCurve(const BRep_PointOnCurve *anItem);
		%feature("autodoc", "1");
		Handle_BRep_PointOnCurve const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRep_PointOnCurve {
	BRep_PointOnCurve* GetObject() {
	return (BRep_PointOnCurve*)$self->Access();
	}
};

%nodefaultctor Handle_BRep_PointOnCurveOnSurface;
class Handle_BRep_PointOnCurveOnSurface : public Handle_BRep_PointsOnSurface {
	public:
		%feature("autodoc", "1");
		~Handle_BRep_PointOnCurveOnSurface();
		%feature("autodoc", "1");
		Handle_BRep_PointOnCurveOnSurface();
		%feature("autodoc", "1");
		Handle_BRep_PointOnCurveOnSurface(const Handle_BRep_PointOnCurveOnSurface &aHandle);
		%feature("autodoc", "1");
		Handle_BRep_PointOnCurveOnSurface(const BRep_PointOnCurveOnSurface *anItem);
		%feature("autodoc", "1");
		Handle_BRep_PointOnCurveOnSurface const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRep_PointOnCurveOnSurface {
	BRep_PointOnCurveOnSurface* GetObject() {
	return (BRep_PointOnCurveOnSurface*)$self->Access();
	}
};

%nodefaultctor Handle_BRep_CurveOnSurface;
class Handle_BRep_CurveOnSurface : public Handle_BRep_GCurve {
	public:
		%feature("autodoc", "1");
		~Handle_BRep_CurveOnSurface();
		%feature("autodoc", "1");
		Handle_BRep_CurveOnSurface();
		%feature("autodoc", "1");
		Handle_BRep_CurveOnSurface(const Handle_BRep_CurveOnSurface &aHandle);
		%feature("autodoc", "1");
		Handle_BRep_CurveOnSurface(const BRep_CurveOnSurface *anItem);
		%feature("autodoc", "1");
		Handle_BRep_CurveOnSurface const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRep_CurveOnSurface {
	BRep_CurveOnSurface* GetObject() {
	return (BRep_CurveOnSurface*)$self->Access();
	}
};

%nodefaultctor Handle_BRep_PolygonOnTriangulation;
class Handle_BRep_PolygonOnTriangulation : public Handle_BRep_CurveRepresentation {
	public:
		%feature("autodoc", "1");
		~Handle_BRep_PolygonOnTriangulation();
		%feature("autodoc", "1");
		Handle_BRep_PolygonOnTriangulation();
		%feature("autodoc", "1");
		Handle_BRep_PolygonOnTriangulation(const Handle_BRep_PolygonOnTriangulation &aHandle);
		%feature("autodoc", "1");
		Handle_BRep_PolygonOnTriangulation(const BRep_PolygonOnTriangulation *anItem);
		%feature("autodoc", "1");
		Handle_BRep_PolygonOnTriangulation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRep_PolygonOnTriangulation {
	BRep_PolygonOnTriangulation* GetObject() {
	return (BRep_PolygonOnTriangulation*)$self->Access();
	}
};

%nodefaultctor Handle_BRep_PolygonOnClosedTriangulation;
class Handle_BRep_PolygonOnClosedTriangulation : public Handle_BRep_PolygonOnTriangulation {
	public:
		%feature("autodoc", "1");
		~Handle_BRep_PolygonOnClosedTriangulation();
		%feature("autodoc", "1");
		Handle_BRep_PolygonOnClosedTriangulation();
		%feature("autodoc", "1");
		Handle_BRep_PolygonOnClosedTriangulation(const Handle_BRep_PolygonOnClosedTriangulation &aHandle);
		%feature("autodoc", "1");
		Handle_BRep_PolygonOnClosedTriangulation(const BRep_PolygonOnClosedTriangulation *anItem);
		%feature("autodoc", "1");
		Handle_BRep_PolygonOnClosedTriangulation const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRep_PolygonOnClosedTriangulation {
	BRep_PolygonOnClosedTriangulation* GetObject() {
	return (BRep_PolygonOnClosedTriangulation*)$self->Access();
	}
};

%nodefaultctor Handle_BRep_CurveOnClosedSurface;
class Handle_BRep_CurveOnClosedSurface : public Handle_BRep_CurveOnSurface {
	public:
		%feature("autodoc", "1");
		~Handle_BRep_CurveOnClosedSurface();
		%feature("autodoc", "1");
		Handle_BRep_CurveOnClosedSurface();
		%feature("autodoc", "1");
		Handle_BRep_CurveOnClosedSurface(const Handle_BRep_CurveOnClosedSurface &aHandle);
		%feature("autodoc", "1");
		Handle_BRep_CurveOnClosedSurface(const BRep_CurveOnClosedSurface *anItem);
		%feature("autodoc", "1");
		Handle_BRep_CurveOnClosedSurface const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRep_CurveOnClosedSurface {
	BRep_CurveOnClosedSurface* GetObject() {
	return (BRep_CurveOnClosedSurface*)$self->Access();
	}
};

%nodefaultctor Handle_BRep_TEdge;
class Handle_BRep_TEdge : public Handle_TopoDS_TEdge {
	public:
		%feature("autodoc", "1");
		~Handle_BRep_TEdge();
		%feature("autodoc", "1");
		Handle_BRep_TEdge();
		%feature("autodoc", "1");
		Handle_BRep_TEdge(const Handle_BRep_TEdge &aHandle);
		%feature("autodoc", "1");
		Handle_BRep_TEdge(const BRep_TEdge *anItem);
		%feature("autodoc", "1");
		Handle_BRep_TEdge const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRep_TEdge {
	BRep_TEdge* GetObject() {
	return (BRep_TEdge*)$self->Access();
	}
};

%nodefaultctor Handle_BRep_TFace;
class Handle_BRep_TFace : public Handle_TopoDS_TFace {
	public:
		%feature("autodoc", "1");
		~Handle_BRep_TFace();
		%feature("autodoc", "1");
		Handle_BRep_TFace();
		%feature("autodoc", "1");
		Handle_BRep_TFace(const Handle_BRep_TFace &aHandle);
		%feature("autodoc", "1");
		Handle_BRep_TFace(const BRep_TFace *anItem);
		%feature("autodoc", "1");
		Handle_BRep_TFace const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRep_TFace {
	BRep_TFace* GetObject() {
	return (BRep_TFace*)$self->Access();
	}
};

%nodefaultctor BRep_PointRepresentation;
class BRep_PointRepresentation : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsPointOnCurve() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsPointOnCurveOnSurface() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsPointOnSurface() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsPointOnCurve(const Handle_Geom_Curve &C, const TopLoc_Location &L) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsPointOnCurveOnSurface(const Handle_Geom2d_Curve &PC, const Handle_Geom_Surface &S, const TopLoc_Location &L) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsPointOnSurface(const Handle_Geom_Surface &S, const TopLoc_Location &L) const;
		%feature("autodoc", "1");
		const TopLoc_Location & Location() const;
		%feature("autodoc", "1");
		void Location(const TopLoc_Location &L);
		%feature("autodoc", "1");
		Standard_Real Parameter() const;
		%feature("autodoc", "1");
		void Parameter(const Standard_Real P);
		%feature("autodoc", "1");
		virtual		Standard_Real Parameter2() const;
		%feature("autodoc", "1");
		virtual		void Parameter2(const Standard_Real P);
		%feature("autodoc", "1");
		virtual		const Handle_Geom_Curve & Curve() const;
		%feature("autodoc", "1");
		virtual		void Curve(const Handle_Geom_Curve &C);
		%feature("autodoc", "1");
		virtual		const Handle_Geom2d_Curve & PCurve() const;
		%feature("autodoc", "1");
		virtual		void PCurve(const Handle_Geom2d_Curve &C);
		%feature("autodoc", "1");
		virtual		const Handle_Geom_Surface & Surface() const;
		%feature("autodoc", "1");
		virtual		void Surface(const Handle_Geom_Surface &S);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BRep_PointRepresentation();

};
%extend BRep_PointRepresentation {
	Handle_BRep_PointRepresentation GetHandle() {
	return *(Handle_BRep_PointRepresentation*) &$self;
	}
};

%nodefaultctor BRep_CurveRepresentation;
class BRep_CurveRepresentation : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsCurve3D() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsCurveOnSurface() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsRegularity() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsCurveOnClosedSurface() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsCurveOnSurface(const Handle_Geom_Surface &S, const TopLoc_Location &L) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsRegularity(const Handle_Geom_Surface &S1, const Handle_Geom_Surface &S2, const TopLoc_Location &L1, const TopLoc_Location &L2) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsPolygon3D() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsPolygonOnTriangulation() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsPolygonOnTriangulation(const Handle_Poly_Triangulation &T, const TopLoc_Location &L) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsPolygonOnClosedTriangulation() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsPolygonOnSurface() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsPolygonOnSurface(const Handle_Geom_Surface &S, const TopLoc_Location &L) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsPolygonOnClosedSurface() const;
		%feature("autodoc", "1");
		const TopLoc_Location & Location() const;
		%feature("autodoc", "1");
		void Location(const TopLoc_Location &L);
		%feature("autodoc", "1");
		virtual		const Handle_Geom_Curve & Curve3D() const;
		%feature("autodoc", "1");
		virtual		void Curve3D(const Handle_Geom_Curve &C);
		%feature("autodoc", "1");
		virtual		const Handle_Geom_Surface & Surface() const;
		%feature("autodoc", "1");
		virtual		const Handle_Geom2d_Curve & PCurve() const;
		%feature("autodoc", "1");
		virtual		void PCurve(const Handle_Geom2d_Curve &C);
		%feature("autodoc", "1");
		virtual		const Handle_Geom2d_Curve & PCurve2() const;
		%feature("autodoc", "1");
		virtual		void PCurve2(const Handle_Geom2d_Curve &C);
		%feature("autodoc", "1");
		virtual		const Handle_Poly_Polygon3D & Polygon3D() const;
		%feature("autodoc", "1");
		virtual		void Polygon3D(const Handle_Poly_Polygon3D &P);
		%feature("autodoc", "1");
		virtual		const Handle_Poly_Polygon2D & Polygon() const;
		%feature("autodoc", "1");
		virtual		void Polygon(const Handle_Poly_Polygon2D &P);
		%feature("autodoc", "1");
		virtual		const Handle_Poly_Polygon2D & Polygon2() const;
		%feature("autodoc", "1");
		virtual		void Polygon2(const Handle_Poly_Polygon2D &P);
		%feature("autodoc", "1");
		virtual		const Handle_Poly_Triangulation & Triangulation() const;
		%feature("autodoc", "1");
		virtual		const Handle_Poly_PolygonOnTriangulation & PolygonOnTriangulation() const;
		%feature("autodoc", "1");
		virtual		void PolygonOnTriangulation(const Handle_Poly_PolygonOnTriangulation &P);
		%feature("autodoc", "1");
		virtual		const Handle_Poly_PolygonOnTriangulation & PolygonOnTriangulation2() const;
		%feature("autodoc", "1");
		virtual		void PolygonOnTriangulation2(const Handle_Poly_PolygonOnTriangulation &P2);
		%feature("autodoc", "1");
		virtual		const Handle_Geom_Surface & Surface2() const;
		%feature("autodoc", "1");
		virtual		const TopLoc_Location & Location2() const;
		%feature("autodoc", "1");
		virtual		const GeomAbs_Shape & Continuity() const;
		%feature("autodoc", "1");
		virtual		void Continuity(const GeomAbs_Shape C);
		%feature("autodoc", "1");
		virtual		Handle_BRep_CurveRepresentation Copy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend BRep_CurveRepresentation {
	Handle_BRep_CurveRepresentation GetHandle() {
	return *(Handle_BRep_CurveRepresentation*) &$self;
	}
};

%nodefaultctor BRep_GCurve;
class BRep_GCurve : public BRep_CurveRepresentation {
	public:
		%feature("autodoc", "1");
		void SetRange(const Standard_Real First, const Standard_Real Last);
		%feature("autodoc", "1");
		void Range(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Real First() const;
		%feature("autodoc", "1");
		Standard_Real Last() const;
		%feature("autodoc", "1");
		void First(const Standard_Real F);
		%feature("autodoc", "1");
		void Last(const Standard_Real L);
		%feature("autodoc", "1");
		virtual		void D0(const Standard_Real U, gp_Pnt & P) const;
		%feature("autodoc", "1");
		virtual		void Update();

};
%extend BRep_GCurve {
	Handle_BRep_GCurve GetHandle() {
	return *(Handle_BRep_GCurve*) &$self;
	}
};

%nodefaultctor BRep_CurveOnSurface;
class BRep_CurveOnSurface : public BRep_GCurve {
	public:
		%feature("autodoc", "1");
		BRep_CurveOnSurface(const Handle_Geom2d_Curve &PC, const Handle_Geom_Surface &S, const TopLoc_Location &L);
		%feature("autodoc", "1");
		void SetUVPoints(const gp_Pnt2d &P1, const gp_Pnt2d &P2);
		%feature("autodoc", "1");
		void UVPoints(gp_Pnt2d & P1, gp_Pnt2d & P2) const;
		%feature("autodoc", "1");
		const Bnd_Box2d & Box() const;
		%feature("autodoc", "1");
		Bnd_Box2d & ChangeBox();
		%feature("autodoc", "1");
		virtual		~BRep_CurveOnSurface();

};
%extend BRep_CurveOnSurface {
	Handle_BRep_CurveOnSurface GetHandle() {
	return *(Handle_BRep_CurveOnSurface*) &$self;
	}
};

%nodefaultctor BRep_PointsOnSurface;
class BRep_PointsOnSurface : public BRep_PointRepresentation {
	public:
		%feature("autodoc", "1");
		virtual		const Handle_Geom_Surface & Surface() const;
		%feature("autodoc", "1");
		virtual		void Surface(const Handle_Geom_Surface &S);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BRep_PointsOnSurface();

};
%extend BRep_PointsOnSurface {
	Handle_BRep_PointsOnSurface GetHandle() {
	return *(Handle_BRep_PointsOnSurface*) &$self;
	}
};

%nodefaultctor BRep_PointOnCurveOnSurface;
class BRep_PointOnCurveOnSurface : public BRep_PointsOnSurface {
	public:
		%feature("autodoc", "1");
		BRep_PointOnCurveOnSurface(const Standard_Real P, const Handle_Geom2d_Curve &C, const Handle_Geom_Surface &S, const TopLoc_Location &L);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsPointOnCurveOnSurface() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsPointOnCurveOnSurface(const Handle_Geom2d_Curve &PC, const Handle_Geom_Surface &S, const TopLoc_Location &L) const;
		%feature("autodoc", "1");
		virtual		const Handle_Geom2d_Curve & PCurve() const;
		%feature("autodoc", "1");
		virtual		void PCurve(const Handle_Geom2d_Curve &C);
		%feature("autodoc", "1");
		virtual		~BRep_PointOnCurveOnSurface();

};
%extend BRep_PointOnCurveOnSurface {
	Handle_BRep_PointOnCurveOnSurface GetHandle() {
	return *(Handle_BRep_PointOnCurveOnSurface*) &$self;
	}
};

%nodefaultctor BRep_ListIteratorOfListOfCurveRepresentation;
class BRep_ListIteratorOfListOfCurveRepresentation {
	public:
		%feature("autodoc", "1");
		~BRep_ListIteratorOfListOfCurveRepresentation();
		%feature("autodoc", "1");
		BRep_ListIteratorOfListOfCurveRepresentation();
		%feature("autodoc", "1");
		BRep_ListIteratorOfListOfCurveRepresentation(const BRep_ListOfCurveRepresentation &L);
		%feature("autodoc", "1");
		void Initialize(const BRep_ListOfCurveRepresentation &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		Handle_BRep_CurveRepresentation & Value() const;

};

%nodefaultctor BRep_Tool;
class BRep_Tool {
	public:
		%feature("autodoc", "1");
		~BRep_Tool();
		%feature("autodoc", "1");
		BRep_Tool();
		%feature("autodoc", "1");
		Standard_Boolean IsClosed(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		const Handle_Geom_Surface & Surface(const TopoDS_Face &F, TopLoc_Location & L);
		%feature("autodoc", "1");
		Handle_Geom_Surface Surface(const TopoDS_Face &F);
		%feature("autodoc", "1");
		const Handle_Poly_Triangulation & Triangulation(const TopoDS_Face &F, TopLoc_Location & L);
		%feature("autodoc", "1");
		Standard_Real Tolerance(const TopoDS_Face &F);
		%feature("autodoc", "1");
		Standard_Boolean NaturalRestriction(const TopoDS_Face &F);
		%feature("autodoc", "1");
		Standard_Boolean IsGeometric(const TopoDS_Edge &E);
		%feature("autodoc", "1");
		const Handle_Geom_Curve & Curve(const TopoDS_Edge &E, TopLoc_Location & L, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		Handle_Geom_Curve Curve(const TopoDS_Edge &E, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		const Handle_Poly_Polygon3D & Polygon3D(const TopoDS_Edge &E, TopLoc_Location & L);
		%feature("autodoc", "1");
		Handle_Geom2d_Curve CurveOnSurface(const TopoDS_Edge &E, const TopoDS_Face &F, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		Handle_Geom2d_Curve CurveOnSurface(const TopoDS_Edge &E, const Handle_Geom_Surface &S, const TopLoc_Location &L, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		void CurveOnSurface(const TopoDS_Edge &E, Handle_Geom2d_Curve & C, Handle_Geom_Surface & S, TopLoc_Location & L, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		void CurveOnSurface(const TopoDS_Edge &E, Handle_Geom2d_Curve & C, Handle_Geom_Surface & S, TopLoc_Location & L, Standard_Real &OutValue, Standard_Real &OutValue, const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_Poly_Polygon2D PolygonOnSurface(const TopoDS_Edge &E, const TopoDS_Face &F);
		%feature("autodoc", "1");
		Handle_Poly_Polygon2D PolygonOnSurface(const TopoDS_Edge &E, const Handle_Geom_Surface &S, const TopLoc_Location &L);
		%feature("autodoc", "1");
		void PolygonOnSurface(const TopoDS_Edge &E, Handle_Poly_Polygon2D & C, Handle_Geom_Surface & S, TopLoc_Location & L);
		%feature("autodoc", "1");
		void PolygonOnSurface(const TopoDS_Edge &E, Handle_Poly_Polygon2D & C, Handle_Geom_Surface & S, TopLoc_Location & L, const Standard_Integer Index);
		%feature("autodoc", "1");
		const Handle_Poly_PolygonOnTriangulation & PolygonOnTriangulation(const TopoDS_Edge &E, const Handle_Poly_Triangulation &T, const TopLoc_Location &L);
		%feature("autodoc", "1");
		void PolygonOnTriangulation(const TopoDS_Edge &E, Handle_Poly_PolygonOnTriangulation & P, Handle_Poly_Triangulation & T, TopLoc_Location & L);
		%feature("autodoc", "1");
		void PolygonOnTriangulation(const TopoDS_Edge &E, Handle_Poly_PolygonOnTriangulation & P, Handle_Poly_Triangulation & T, TopLoc_Location & L, const Standard_Integer Index);
		%feature("autodoc", "1");
		Standard_Boolean IsClosed(const TopoDS_Edge &E, const TopoDS_Face &F);
		%feature("autodoc", "1");
		Standard_Boolean IsClosed(const TopoDS_Edge &E, const Handle_Geom_Surface &S, const TopLoc_Location &L);
		%feature("autodoc", "1");
		Standard_Boolean IsClosed(const TopoDS_Edge &E, const Handle_Poly_Triangulation &T);
		%feature("autodoc", "1");
		Standard_Real Tolerance(const TopoDS_Edge &E);
		%feature("autodoc", "1");
		Standard_Boolean SameParameter(const TopoDS_Edge &E);
		%feature("autodoc", "1");
		Standard_Boolean SameRange(const TopoDS_Edge &E);
		%feature("autodoc", "1");
		Standard_Boolean Degenerated(const TopoDS_Edge &E);
		%feature("autodoc", "1");
		void Range(const TopoDS_Edge &E, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		void Range(const TopoDS_Edge &E, const Handle_Geom_Surface &S, const TopLoc_Location &L, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		void Range(const TopoDS_Edge &E, const TopoDS_Face &F, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		void UVPoints(const TopoDS_Edge &E, const Handle_Geom_Surface &S, const TopLoc_Location &L, gp_Pnt2d & PFirst, gp_Pnt2d & PLast);
		%feature("autodoc", "1");
		void UVPoints(const TopoDS_Edge &E, const TopoDS_Face &F, gp_Pnt2d & PFirst, gp_Pnt2d & PLast);
		%feature("autodoc", "1");
		void SetUVPoints(const TopoDS_Edge &E, const Handle_Geom_Surface &S, const TopLoc_Location &L, const gp_Pnt2d &PFirst, const gp_Pnt2d &PLast);
		%feature("autodoc", "1");
		void SetUVPoints(const TopoDS_Edge &E, const TopoDS_Face &F, const gp_Pnt2d &PFirst, const gp_Pnt2d &PLast);
		%feature("autodoc", "1");
		const Bnd_Box2d & UVBox(const TopoDS_Edge &E, const Handle_Geom_Surface &S, const TopLoc_Location &L);
		%feature("autodoc", "1");
		const Bnd_Box2d & UVBox(const TopoDS_Edge &E, const TopoDS_Face &F);
		%feature("autodoc", "1");
		Bnd_Box2d & ChangeUVBox(const TopoDS_Edge &E, const Handle_Geom_Surface &S, const TopLoc_Location &L);
		%feature("autodoc", "1");
		Bnd_Box2d & ChangeUVBox(const TopoDS_Edge &E, const TopoDS_Face &F);
		%feature("autodoc", "1");
		Standard_Boolean HasContinuity(const TopoDS_Edge &E, const TopoDS_Face &F1, const TopoDS_Face &F2);
		%feature("autodoc", "1");
		GeomAbs_Shape Continuity(const TopoDS_Edge &E, const TopoDS_Face &F1, const TopoDS_Face &F2);
		%feature("autodoc", "1");
		Standard_Boolean HasContinuity(const TopoDS_Edge &E, const Handle_Geom_Surface &S1, const Handle_Geom_Surface &S2, const TopLoc_Location &L1, const TopLoc_Location &L2);
		%feature("autodoc", "1");
		GeomAbs_Shape Continuity(const TopoDS_Edge &E, const Handle_Geom_Surface &S1, const Handle_Geom_Surface &S2, const TopLoc_Location &L1, const TopLoc_Location &L2);
		%feature("autodoc", "1");
		gp_Pnt Pnt(const TopoDS_Vertex &V);
		%feature("autodoc", "1");
		Standard_Real Tolerance(const TopoDS_Vertex &V);
		%feature("autodoc", "1");
		Standard_Real Parameter(const TopoDS_Vertex &V, const TopoDS_Edge &E);
		%feature("autodoc", "1");
		Standard_Real Parameter(const TopoDS_Vertex &V, const TopoDS_Edge &E, const TopoDS_Face &F);
		%feature("autodoc", "1");
		Standard_Real Parameter(const TopoDS_Vertex &V, const TopoDS_Edge &E, const Handle_Geom_Surface &S, const TopLoc_Location &L);
		%feature("autodoc", "1");
		gp_Pnt2d Parameters(const TopoDS_Vertex &V, const TopoDS_Face &F);

};

%nodefaultctor BRep_ListOfPointRepresentation;
class BRep_ListOfPointRepresentation {
	public:
		%feature("autodoc", "1");
		BRep_ListOfPointRepresentation();
		%feature("autodoc", "1");
		void Assign(const BRep_ListOfPointRepresentation &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~BRep_ListOfPointRepresentation();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const Handle_BRep_PointRepresentation &I);
		%feature("autodoc", "1");
		void Prepend(const Handle_BRep_PointRepresentation &I, BRep_ListIteratorOfListOfPointRepresentation & theIt);
		%feature("autodoc", "1");
		void Prepend(BRep_ListOfPointRepresentation & Other);
		%feature("autodoc", "1");
		void Append(const Handle_BRep_PointRepresentation &I);
		%feature("autodoc", "1");
		void Append(const Handle_BRep_PointRepresentation &I, BRep_ListIteratorOfListOfPointRepresentation & theIt);
		%feature("autodoc", "1");
		void Append(BRep_ListOfPointRepresentation & Other);
		%feature("autodoc", "1");
		Handle_BRep_PointRepresentation & First() const;
		%feature("autodoc", "1");
		Handle_BRep_PointRepresentation & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(BRep_ListIteratorOfListOfPointRepresentation & It);
		%feature("autodoc", "1");
		void InsertBefore(const Handle_BRep_PointRepresentation &I, BRep_ListIteratorOfListOfPointRepresentation & It);
		%feature("autodoc", "1");
		void InsertBefore(BRep_ListOfPointRepresentation & Other, BRep_ListIteratorOfListOfPointRepresentation & It);
		%feature("autodoc", "1");
		void InsertAfter(const Handle_BRep_PointRepresentation &I, BRep_ListIteratorOfListOfPointRepresentation & It);
		%feature("autodoc", "1");
		void InsertAfter(BRep_ListOfPointRepresentation & Other, BRep_ListIteratorOfListOfPointRepresentation & It);

};

%nodefaultctor BRep_PointOnSurface;
class BRep_PointOnSurface : public BRep_PointsOnSurface {
	public:
		%feature("autodoc", "1");
		BRep_PointOnSurface(const Standard_Real P1, const Standard_Real P2, const Handle_Geom_Surface &S, const TopLoc_Location &L);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsPointOnSurface() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsPointOnSurface(const Handle_Geom_Surface &S, const TopLoc_Location &L) const;
		%feature("autodoc", "1");
		virtual		Standard_Real Parameter2() const;
		%feature("autodoc", "1");
		virtual		void Parameter2(const Standard_Real P);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BRep_PointOnSurface();

};
%extend BRep_PointOnSurface {
	Handle_BRep_PointOnSurface GetHandle() {
	return *(Handle_BRep_PointOnSurface*) &$self;
	}
};

%nodefaultctor BRep_PolygonOnTriangulation;
class BRep_PolygonOnTriangulation : public BRep_CurveRepresentation {
	public:
		%feature("autodoc", "1");
		BRep_PolygonOnTriangulation(const Handle_Poly_PolygonOnTriangulation &P, const Handle_Poly_Triangulation &T, const TopLoc_Location &L);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsPolygonOnTriangulation() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsPolygonOnTriangulation(const Handle_Poly_Triangulation &T, const TopLoc_Location &L) const;
		%feature("autodoc", "1");
		virtual		void PolygonOnTriangulation(const Handle_Poly_PolygonOnTriangulation &P);
		%feature("autodoc", "1");
		virtual		const Handle_Poly_Triangulation & Triangulation() const;
		%feature("autodoc", "1");
		virtual		const Handle_Poly_PolygonOnTriangulation & PolygonOnTriangulation() const;
		%feature("autodoc", "1");
		virtual		Handle_BRep_CurveRepresentation Copy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BRep_PolygonOnTriangulation();

};
%extend BRep_PolygonOnTriangulation {
	Handle_BRep_PolygonOnTriangulation GetHandle() {
	return *(Handle_BRep_PolygonOnTriangulation*) &$self;
	}
};

%nodefaultctor BRep_PolygonOnClosedTriangulation;
class BRep_PolygonOnClosedTriangulation : public BRep_PolygonOnTriangulation {
	public:
		%feature("autodoc", "1");
		BRep_PolygonOnClosedTriangulation(const Handle_Poly_PolygonOnTriangulation &P1, const Handle_Poly_PolygonOnTriangulation &P2, const Handle_Poly_Triangulation &Tr, const TopLoc_Location &L);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsPolygonOnClosedTriangulation() const;
		%feature("autodoc", "1");
		virtual		void PolygonOnTriangulation2(const Handle_Poly_PolygonOnTriangulation &P2);
		%feature("autodoc", "1");
		virtual		const Handle_Poly_PolygonOnTriangulation & PolygonOnTriangulation2() const;
		%feature("autodoc", "1");
		virtual		~BRep_PolygonOnClosedTriangulation();

};
%extend BRep_PolygonOnClosedTriangulation {
	Handle_BRep_PolygonOnClosedTriangulation GetHandle() {
	return *(Handle_BRep_PolygonOnClosedTriangulation*) &$self;
	}
};

%nodefaultctor BRep_PointOnCurve;
class BRep_PointOnCurve : public BRep_PointRepresentation {
	public:
		%feature("autodoc", "1");
		BRep_PointOnCurve(const Standard_Real P, const Handle_Geom_Curve &C, const TopLoc_Location &L);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsPointOnCurve() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsPointOnCurve(const Handle_Geom_Curve &C, const TopLoc_Location &L) const;
		%feature("autodoc", "1");
		virtual		const Handle_Geom_Curve & Curve() const;
		%feature("autodoc", "1");
		virtual		void Curve(const Handle_Geom_Curve &C);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BRep_PointOnCurve();

};
%extend BRep_PointOnCurve {
	Handle_BRep_PointOnCurve GetHandle() {
	return *(Handle_BRep_PointOnCurve*) &$self;
	}
};

%nodefaultctor BRep_TEdge;
class BRep_TEdge : public TopoDS_TEdge {
	public:
		%feature("autodoc", "1");
		BRep_TEdge();
		%feature("autodoc", "1");
		Standard_Real Tolerance() const;
		%feature("autodoc", "1");
		void Tolerance(const Standard_Real T);
		%feature("autodoc", "1");
		void UpdateTolerance(const Standard_Real T);
		%feature("autodoc", "1");
		Standard_Boolean SameParameter() const;
		%feature("autodoc", "1");
		void SameParameter(const Standard_Boolean S);
		%feature("autodoc", "1");
		Standard_Boolean SameRange() const;
		%feature("autodoc", "1");
		void SameRange(const Standard_Boolean S);
		%feature("autodoc", "1");
		Standard_Boolean Degenerated() const;
		%feature("autodoc", "1");
		void Degenerated(const Standard_Boolean S);
		%feature("autodoc", "1");
		const BRep_ListOfCurveRepresentation & Curves() const;
		%feature("autodoc", "1");
		BRep_ListOfCurveRepresentation & ChangeCurves();
		%feature("autodoc", "1");
		virtual		Handle_TopoDS_TShape EmptyCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BRep_TEdge();

};
%extend BRep_TEdge {
	Handle_BRep_TEdge GetHandle() {
	return *(Handle_BRep_TEdge*) &$self;
	}
};

%nodefaultctor BRep_CurveOn2Surfaces;
class BRep_CurveOn2Surfaces : public BRep_CurveRepresentation {
	public:
		%feature("autodoc", "1");
		BRep_CurveOn2Surfaces(const Handle_Geom_Surface &S1, const Handle_Geom_Surface &S2, const TopLoc_Location &L1, const TopLoc_Location &L2, const GeomAbs_Shape C);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsRegularity() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsRegularity(const Handle_Geom_Surface &S1, const Handle_Geom_Surface &S2, const TopLoc_Location &L1, const TopLoc_Location &L2) const;
		%feature("autodoc", "1");
		void D0(const Standard_Real U, gp_Pnt & P) const;
		%feature("autodoc", "1");
		virtual		const Handle_Geom_Surface & Surface() const;
		%feature("autodoc", "1");
		virtual		const Handle_Geom_Surface & Surface2() const;
		%feature("autodoc", "1");
		virtual		const TopLoc_Location & Location2() const;
		%feature("autodoc", "1");
		virtual		const GeomAbs_Shape & Continuity() const;
		%feature("autodoc", "1");
		virtual		void Continuity(const GeomAbs_Shape C);
		%feature("autodoc", "1");
		virtual		Handle_BRep_CurveRepresentation Copy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BRep_CurveOn2Surfaces();

};
%extend BRep_CurveOn2Surfaces {
	Handle_BRep_CurveOn2Surfaces GetHandle() {
	return *(Handle_BRep_CurveOn2Surfaces*) &$self;
	}
};

%nodefaultctor BRep_Curve3D;
class BRep_Curve3D : public BRep_GCurve {
	public:
		%feature("autodoc", "1");
		BRep_Curve3D(const Handle_Geom_Curve &C, const TopLoc_Location &L);
		%feature("autodoc", "1");
		virtual		void D0(const Standard_Real U, gp_Pnt & P) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsCurve3D() const;
		%feature("autodoc", "1");
		virtual		const Handle_Geom_Curve & Curve3D() const;
		%feature("autodoc", "1");
		virtual		void Curve3D(const Handle_Geom_Curve &C);
		%feature("autodoc", "1");
		virtual		Handle_BRep_CurveRepresentation Copy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BRep_Curve3D();

};
%extend BRep_Curve3D {
	Handle_BRep_Curve3D GetHandle() {
	return *(Handle_BRep_Curve3D*) &$self;
	}
};

%nodefaultctor BRep_Builder;
class BRep_Builder : public TopoDS_Builder3D {
	public:
		%feature("autodoc", "1");
		~BRep_Builder();
		%feature("autodoc", "1");
		BRep_Builder();
		%feature("autodoc", "1");
		void MakeFace(TopoDS_Face & F) const;
		%feature("autodoc", "1");
		void MakeFace(TopoDS_Face & F, const Handle_Geom_Surface &S, const Standard_Real Tol) const;
		%feature("autodoc", "1");
		void MakeFace(TopoDS_Face & F, const Handle_Geom_Surface &S, const TopLoc_Location &L, const Standard_Real Tol) const;
		%feature("autodoc", "1");
		void MakeFace(TopoDS_Face & F, const Handle_Poly_Triangulation &T) const;
		%feature("autodoc", "1");
		void UpdateFace(const TopoDS_Face &F, const Handle_Geom_Surface &S, const TopLoc_Location &L, const Standard_Real Tol) const;
		%feature("autodoc", "1");
		void UpdateFace(const TopoDS_Face &F, const Handle_Poly_Triangulation &T) const;
		%feature("autodoc", "1");
		void UpdateFace(const TopoDS_Face &F, const Standard_Real Tol) const;
		%feature("autodoc", "1");
		void NaturalRestriction(const TopoDS_Face &F, const Standard_Boolean N) const;
		%feature("autodoc", "1");
		void MakeEdge(TopoDS_Edge & E) const;
		%feature("autodoc", "1");
		void MakeEdge(TopoDS_Edge & E, const Handle_Geom_Curve &C, const Standard_Real Tol) const;
		%feature("autodoc", "1");
		void MakeEdge(TopoDS_Edge & E, const Handle_Geom_Curve &C, const TopLoc_Location &L, const Standard_Real Tol) const;
		%feature("autodoc", "1");
		void MakeEdge(TopoDS_Edge & E, const Handle_Poly_Polygon3D &P) const;
		%feature("autodoc", "1");
		void MakeEdge(TopoDS_Edge & E, const Handle_Poly_PolygonOnTriangulation &N, const Handle_Poly_Triangulation &T) const;
		%feature("autodoc", "1");
		void MakeEdge(TopoDS_Edge & E, const Handle_Poly_PolygonOnTriangulation &N, const Handle_Poly_Triangulation &T, const TopLoc_Location &L) const;
		%feature("autodoc", "1");
		void UpdateEdge(const TopoDS_Edge &E, const Handle_Geom_Curve &C, const Standard_Real Tol) const;
		%feature("autodoc", "1");
		void UpdateEdge(const TopoDS_Edge &E, const Handle_Geom_Curve &C, const TopLoc_Location &L, const Standard_Real Tol) const;
		%feature("autodoc", "1");
		void UpdateEdge(const TopoDS_Edge &E, const Handle_Geom2d_Curve &C, const TopoDS_Face &F, const Standard_Real Tol) const;
		%feature("autodoc", "1");
		void UpdateEdge(const TopoDS_Edge &E, const Handle_Geom2d_Curve &C1, const Handle_Geom2d_Curve &C2, const TopoDS_Face &F, const Standard_Real Tol) const;
		%feature("autodoc", "1");
		void UpdateEdge(const TopoDS_Edge &E, const Handle_Geom2d_Curve &C, const Handle_Geom_Surface &S, const TopLoc_Location &L, const Standard_Real Tol) const;
		%feature("autodoc", "1");
		void UpdateEdge(const TopoDS_Edge &E, const Handle_Geom2d_Curve &C, const Handle_Geom_Surface &S, const TopLoc_Location &L, const Standard_Real Tol, const gp_Pnt2d &Pf, const gp_Pnt2d &Pl) const;
		%feature("autodoc", "1");
		void UpdateEdge(const TopoDS_Edge &E, const Handle_Geom2d_Curve &C1, const Handle_Geom2d_Curve &C2, const Handle_Geom_Surface &S, const TopLoc_Location &L, const Standard_Real Tol) const;
		%feature("autodoc", "1");
		void UpdateEdge(const TopoDS_Edge &E, const Handle_Geom2d_Curve &C1, const Handle_Geom2d_Curve &C2, const Handle_Geom_Surface &S, const TopLoc_Location &L, const Standard_Real Tol, const gp_Pnt2d &Pf, const gp_Pnt2d &Pl) const;
		%feature("autodoc", "1");
		void UpdateEdge(const TopoDS_Edge &E, const Handle_Poly_Polygon3D &P) const;
		%feature("autodoc", "1");
		void UpdateEdge(const TopoDS_Edge &E, const Handle_Poly_Polygon3D &P, const TopLoc_Location &L) const;
		%feature("autodoc", "1");
		void UpdateEdge(const TopoDS_Edge &E, const Handle_Poly_PolygonOnTriangulation &N, const Handle_Poly_Triangulation &T) const;
		%feature("autodoc", "1");
		void UpdateEdge(const TopoDS_Edge &E, const Handle_Poly_PolygonOnTriangulation &N, const Handle_Poly_Triangulation &T, const TopLoc_Location &L) const;
		%feature("autodoc", "1");
		void UpdateEdge(const TopoDS_Edge &E, const Handle_Poly_PolygonOnTriangulation &N1, const Handle_Poly_PolygonOnTriangulation &N2, const Handle_Poly_Triangulation &T, const TopLoc_Location &L) const;
		%feature("autodoc", "1");
		void UpdateEdge(const TopoDS_Edge &E, const Handle_Poly_PolygonOnTriangulation &N1, const Handle_Poly_PolygonOnTriangulation &N2, const Handle_Poly_Triangulation &T) const;
		%feature("autodoc", "1");
		void UpdateEdge(const TopoDS_Edge &E, const Handle_Poly_Polygon2D &P, const TopoDS_Face &S) const;
		%feature("autodoc", "1");
		void UpdateEdge(const TopoDS_Edge &E, const Handle_Poly_Polygon2D &P, const Handle_Geom_Surface &S, const TopLoc_Location &T) const;
		%feature("autodoc", "1");
		void UpdateEdge(const TopoDS_Edge &E, const Handle_Poly_Polygon2D &P1, const Handle_Poly_Polygon2D &P2, const TopoDS_Face &S) const;
		%feature("autodoc", "1");
		void UpdateEdge(const TopoDS_Edge &E, const Handle_Poly_Polygon2D &P1, const Handle_Poly_Polygon2D &P2, const Handle_Geom_Surface &S, const TopLoc_Location &L) const;
		%feature("autodoc", "1");
		void UpdateEdge(const TopoDS_Edge &E, const Standard_Real Tol) const;
		%feature("autodoc", "1");
		void Continuity(const TopoDS_Edge &E, const TopoDS_Face &F1, const TopoDS_Face &F2, const GeomAbs_Shape C) const;
		%feature("autodoc", "1");
		void Continuity(const TopoDS_Edge &E, const Handle_Geom_Surface &S1, const Handle_Geom_Surface &S2, const TopLoc_Location &L1, const TopLoc_Location &L2, const GeomAbs_Shape C) const;
		%feature("autodoc", "1");
		void SameParameter(const TopoDS_Edge &E, const Standard_Boolean S) const;
		%feature("autodoc", "1");
		void SameRange(const TopoDS_Edge &E, const Standard_Boolean S) const;
		%feature("autodoc", "1");
		void Degenerated(const TopoDS_Edge &E, const Standard_Boolean D) const;
		%feature("autodoc", "1");
		void Range(const TopoDS_Edge &E, const Standard_Real First, const Standard_Real Last, const Standard_Boolean Only3d=0) const;
		%feature("autodoc", "1");
		void Range(const TopoDS_Edge &E, const Handle_Geom_Surface &S, const TopLoc_Location &L, const Standard_Real First, const Standard_Real Last) const;
		%feature("autodoc", "1");
		void Range(const TopoDS_Edge &E, const TopoDS_Face &F, const Standard_Real First, const Standard_Real Last) const;
		%feature("autodoc", "1");
		void Transfert(const TopoDS_Edge &Ein, const TopoDS_Edge &Eout) const;
		%feature("autodoc", "1");
		void MakeVertex(TopoDS_Vertex & V) const;
		%feature("autodoc", "1");
		void MakeVertex(TopoDS_Vertex & V, const gp_Pnt &P, const Standard_Real Tol) const;
		%feature("autodoc", "1");
		void UpdateVertex(const TopoDS_Vertex &V, const gp_Pnt &P, const Standard_Real Tol) const;
		%feature("autodoc", "1");
		void UpdateVertex(const TopoDS_Vertex &V, const Standard_Real P, const TopoDS_Edge &E, const Standard_Real Tol) const;
		%feature("autodoc", "1");
		void UpdateVertex(const TopoDS_Vertex &V, const Standard_Real P, const TopoDS_Edge &E, const TopoDS_Face &F, const Standard_Real Tol) const;
		%feature("autodoc", "1");
		void UpdateVertex(const TopoDS_Vertex &V, const Standard_Real P, const TopoDS_Edge &E, const Handle_Geom_Surface &S, const TopLoc_Location &L, const Standard_Real Tol) const;
		%feature("autodoc", "1");
		void UpdateVertex(const TopoDS_Vertex &Ve, const Standard_Real U, const Standard_Real V, const TopoDS_Face &F, const Standard_Real Tol) const;
		%feature("autodoc", "1");
		void UpdateVertex(const TopoDS_Vertex &V, const Standard_Real Tol) const;
		%feature("autodoc", "1");
		void Transfert(const TopoDS_Edge &Ein, const TopoDS_Edge &Eout, const TopoDS_Vertex &Vin, const TopoDS_Vertex &Vout) const;

};

%nodefaultctor BRep_ListNodeOfListOfCurveRepresentation;
class BRep_ListNodeOfListOfCurveRepresentation : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BRep_ListNodeOfListOfCurveRepresentation(const Handle_BRep_CurveRepresentation &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_BRep_CurveRepresentation & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BRep_ListNodeOfListOfCurveRepresentation();

};
%extend BRep_ListNodeOfListOfCurveRepresentation {
	Handle_BRep_ListNodeOfListOfCurveRepresentation GetHandle() {
	return *(Handle_BRep_ListNodeOfListOfCurveRepresentation*) &$self;
	}
};

%nodefaultctor BRep_PolygonOnSurface;
class BRep_PolygonOnSurface : public BRep_CurveRepresentation {
	public:
		%feature("autodoc", "1");
		BRep_PolygonOnSurface(const Handle_Poly_Polygon2D &P, const Handle_Geom_Surface &S, const TopLoc_Location &L);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsPolygonOnSurface() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsPolygonOnSurface(const Handle_Geom_Surface &S, const TopLoc_Location &L) const;
		%feature("autodoc", "1");
		virtual		const Handle_Geom_Surface & Surface() const;
		%feature("autodoc", "1");
		virtual		const Handle_Poly_Polygon2D & Polygon() const;
		%feature("autodoc", "1");
		virtual		void Polygon(const Handle_Poly_Polygon2D &P);
		%feature("autodoc", "1");
		virtual		Handle_BRep_CurveRepresentation Copy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BRep_PolygonOnSurface();

};
%extend BRep_PolygonOnSurface {
	Handle_BRep_PolygonOnSurface GetHandle() {
	return *(Handle_BRep_PolygonOnSurface*) &$self;
	}
};

%nodefaultctor BRep_ListIteratorOfListOfPointRepresentation;
class BRep_ListIteratorOfListOfPointRepresentation {
	public:
		%feature("autodoc", "1");
		~BRep_ListIteratorOfListOfPointRepresentation();
		%feature("autodoc", "1");
		BRep_ListIteratorOfListOfPointRepresentation();
		%feature("autodoc", "1");
		BRep_ListIteratorOfListOfPointRepresentation(const BRep_ListOfPointRepresentation &L);
		%feature("autodoc", "1");
		void Initialize(const BRep_ListOfPointRepresentation &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		Handle_BRep_PointRepresentation & Value() const;

};

%nodefaultctor BRep_CurveOnClosedSurface;
class BRep_CurveOnClosedSurface : public BRep_CurveOnSurface {
	public:
		%feature("autodoc", "1");
		BRep_CurveOnClosedSurface(const Handle_Geom2d_Curve &PC1, const Handle_Geom2d_Curve &PC2, const Handle_Geom_Surface &S, const TopLoc_Location &L, const GeomAbs_Shape C);
		%feature("autodoc", "1");
		void SetUVPoints2(const gp_Pnt2d &P1, const gp_Pnt2d &P2);
		%feature("autodoc", "1");
		void UVPoints2(gp_Pnt2d & P1, gp_Pnt2d & P2) const;
		%feature("autodoc", "1");
		const Bnd_Box2d & Box2() const;
		%feature("autodoc", "1");
		Bnd_Box2d & ChangeBox2();
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsCurveOnClosedSurface() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsRegularity() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsRegularity(const Handle_Geom_Surface &S1, const Handle_Geom_Surface &S2, const TopLoc_Location &L1, const TopLoc_Location &L2) const;
		%feature("autodoc", "1");
		virtual		const Handle_Geom2d_Curve & PCurve2() const;
		%feature("autodoc", "1");
		virtual		const Handle_Geom_Surface & Surface2() const;
		%feature("autodoc", "1");
		virtual		const TopLoc_Location & Location2() const;
		%feature("autodoc", "1");
		virtual		const GeomAbs_Shape & Continuity() const;
		%feature("autodoc", "1");
		virtual		void Continuity(const GeomAbs_Shape C);
		%feature("autodoc", "1");
		virtual		void PCurve2(const Handle_Geom2d_Curve &C);
		%feature("autodoc", "1");
		virtual		Handle_BRep_CurveRepresentation Copy() const;
		%feature("autodoc", "1");
		virtual		void Update();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BRep_CurveOnClosedSurface();

};
%extend BRep_CurveOnClosedSurface {
	Handle_BRep_CurveOnClosedSurface GetHandle() {
	return *(Handle_BRep_CurveOnClosedSurface*) &$self;
	}
};

%nodefaultctor BRep_TFace;
class BRep_TFace : public TopoDS_TFace {
	public:
		%feature("autodoc", "1");
		BRep_TFace();
		%feature("autodoc", "1");
		const Handle_Geom_Surface & Surface() const;
		%feature("autodoc", "1");
		const Handle_Poly_Triangulation & Triangulation() const;
		%feature("autodoc", "1");
		const TopLoc_Location & Location() const;
		%feature("autodoc", "1");
		Standard_Real Tolerance() const;
		%feature("autodoc", "1");
		void Surface(const Handle_Geom_Surface &S);
		%feature("autodoc", "1");
		void Triangulation(const Handle_Poly_Triangulation &T);
		%feature("autodoc", "1");
		void Location(const TopLoc_Location &L);
		%feature("autodoc", "1");
		void Tolerance(const Standard_Real T);
		%feature("autodoc", "1");
		Standard_Boolean NaturalRestriction() const;
		%feature("autodoc", "1");
		void NaturalRestriction(const Standard_Boolean N);
		%feature("autodoc", "1");
		virtual		Handle_TopoDS_TShape EmptyCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BRep_TFace();

};
%extend BRep_TFace {
	Handle_BRep_TFace GetHandle() {
	return *(Handle_BRep_TFace*) &$self;
	}
};

%nodefaultctor BRep_ListOfCurveRepresentation;
class BRep_ListOfCurveRepresentation {
	public:
		%feature("autodoc", "1");
		BRep_ListOfCurveRepresentation();
		%feature("autodoc", "1");
		void Assign(const BRep_ListOfCurveRepresentation &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~BRep_ListOfCurveRepresentation();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const Handle_BRep_CurveRepresentation &I);
		%feature("autodoc", "1");
		void Prepend(const Handle_BRep_CurveRepresentation &I, BRep_ListIteratorOfListOfCurveRepresentation & theIt);
		%feature("autodoc", "1");
		void Prepend(BRep_ListOfCurveRepresentation & Other);
		%feature("autodoc", "1");
		void Append(const Handle_BRep_CurveRepresentation &I);
		%feature("autodoc", "1");
		void Append(const Handle_BRep_CurveRepresentation &I, BRep_ListIteratorOfListOfCurveRepresentation & theIt);
		%feature("autodoc", "1");
		void Append(BRep_ListOfCurveRepresentation & Other);
		%feature("autodoc", "1");
		Handle_BRep_CurveRepresentation & First() const;
		%feature("autodoc", "1");
		Handle_BRep_CurveRepresentation & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(BRep_ListIteratorOfListOfCurveRepresentation & It);
		%feature("autodoc", "1");
		void InsertBefore(const Handle_BRep_CurveRepresentation &I, BRep_ListIteratorOfListOfCurveRepresentation & It);
		%feature("autodoc", "1");
		void InsertBefore(BRep_ListOfCurveRepresentation & Other, BRep_ListIteratorOfListOfCurveRepresentation & It);
		%feature("autodoc", "1");
		void InsertAfter(const Handle_BRep_CurveRepresentation &I, BRep_ListIteratorOfListOfCurveRepresentation & It);
		%feature("autodoc", "1");
		void InsertAfter(BRep_ListOfCurveRepresentation & Other, BRep_ListIteratorOfListOfCurveRepresentation & It);

};

%nodefaultctor BRep_ListNodeOfListOfPointRepresentation;
class BRep_ListNodeOfListOfPointRepresentation : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BRep_ListNodeOfListOfPointRepresentation(const Handle_BRep_PointRepresentation &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_BRep_PointRepresentation & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BRep_ListNodeOfListOfPointRepresentation();

};
%extend BRep_ListNodeOfListOfPointRepresentation {
	Handle_BRep_ListNodeOfListOfPointRepresentation GetHandle() {
	return *(Handle_BRep_ListNodeOfListOfPointRepresentation*) &$self;
	}
};

%nodefaultctor BRep_PolygonOnClosedSurface;
class BRep_PolygonOnClosedSurface : public BRep_PolygonOnSurface {
	public:
		%feature("autodoc", "1");
		BRep_PolygonOnClosedSurface(const Handle_Poly_Polygon2D &P1, const Handle_Poly_Polygon2D &P2, const Handle_Geom_Surface &S, const TopLoc_Location &L);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsPolygonOnClosedSurface() const;
		%feature("autodoc", "1");
		virtual		const Handle_Poly_Polygon2D & Polygon2() const;
		%feature("autodoc", "1");
		virtual		void Polygon2(const Handle_Poly_Polygon2D &P);
		%feature("autodoc", "1");
		virtual		Handle_BRep_CurveRepresentation Copy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BRep_PolygonOnClosedSurface();

};
%extend BRep_PolygonOnClosedSurface {
	Handle_BRep_PolygonOnClosedSurface GetHandle() {
	return *(Handle_BRep_PolygonOnClosedSurface*) &$self;
	}
};

%nodefaultctor BRep_Polygon3D;
class BRep_Polygon3D : public BRep_CurveRepresentation {
	public:
		%feature("autodoc", "1");
		BRep_Polygon3D(const Handle_Poly_Polygon3D &P, const TopLoc_Location &L);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsPolygon3D() const;
		%feature("autodoc", "1");
		virtual		const Handle_Poly_Polygon3D & Polygon3D() const;
		%feature("autodoc", "1");
		virtual		void Polygon3D(const Handle_Poly_Polygon3D &P);
		%feature("autodoc", "1");
		virtual		Handle_BRep_CurveRepresentation Copy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BRep_Polygon3D();

};
%extend BRep_Polygon3D {
	Handle_BRep_Polygon3D GetHandle() {
	return *(Handle_BRep_Polygon3D*) &$self;
	}
};

%nodefaultctor BRep_TVertex;
class BRep_TVertex : public TopoDS_TVertex {
	public:
		%feature("autodoc", "1");
		BRep_TVertex();
		%feature("autodoc", "1");
		Standard_Real Tolerance() const;
		%feature("autodoc", "1");
		void Tolerance(const Standard_Real T);
		%feature("autodoc", "1");
		void UpdateTolerance(const Standard_Real T);
		%feature("autodoc", "1");
		const gp_Pnt & Pnt() const;
		%feature("autodoc", "1");
		void Pnt(const gp_Pnt &P);
		%feature("autodoc", "1");
		const BRep_ListOfPointRepresentation & Points() const;
		%feature("autodoc", "1");
		BRep_ListOfPointRepresentation & ChangePoints();
		%feature("autodoc", "1");
		virtual		Handle_TopoDS_TShape EmptyCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BRep_TVertex();

};
%extend BRep_TVertex {
	Handle_BRep_TVertex GetHandle() {
	return *(Handle_BRep_TVertex*) &$self;
	}
};