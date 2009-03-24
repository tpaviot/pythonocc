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
%module PBRep

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


%include PBRep_dependencies.i


%include PBRep_headers.i




%nodefaultctor Handle_PBRep_TFace1;
class Handle_PBRep_TFace1 : public Handle_PTopoDS_TFace1 {
	public:
		%feature("autodoc", "1");
		Handle_PBRep_TFace1();
		%feature("autodoc", "1");
		Handle_PBRep_TFace1(const Handle_PBRep_TFace1 &aHandle);
		%feature("autodoc", "1");
		Handle_PBRep_TFace1(const PBRep_TFace1 *anItem);
		%feature("autodoc", "1");
		Handle_PBRep_TFace1 const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PBRep_TFace1 {
	PBRep_TFace1* GetObject() {
	return (PBRep_TFace1*)$self->Access();
	}
};
%extend Handle_PBRep_TFace1 {
	~Handle_PBRep_TFace1() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_PBRep_TFace1\n");}
	}
};

%nodefaultctor Handle_PBRep_PointRepresentation;
class Handle_PBRep_PointRepresentation : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		Handle_PBRep_PointRepresentation();
		%feature("autodoc", "1");
		Handle_PBRep_PointRepresentation(const Handle_PBRep_PointRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_PBRep_PointRepresentation(const PBRep_PointRepresentation *anItem);
		%feature("autodoc", "1");
		Handle_PBRep_PointRepresentation const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PBRep_PointRepresentation {
	PBRep_PointRepresentation* GetObject() {
	return (PBRep_PointRepresentation*)$self->Access();
	}
};
%extend Handle_PBRep_PointRepresentation {
	~Handle_PBRep_PointRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_PBRep_PointRepresentation\n");}
	}
};

%nodefaultctor Handle_PBRep_TVertex1;
class Handle_PBRep_TVertex1 : public Handle_PTopoDS_TVertex1 {
	public:
		%feature("autodoc", "1");
		Handle_PBRep_TVertex1();
		%feature("autodoc", "1");
		Handle_PBRep_TVertex1(const Handle_PBRep_TVertex1 &aHandle);
		%feature("autodoc", "1");
		Handle_PBRep_TVertex1(const PBRep_TVertex1 *anItem);
		%feature("autodoc", "1");
		Handle_PBRep_TVertex1 const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PBRep_TVertex1 {
	PBRep_TVertex1* GetObject() {
	return (PBRep_TVertex1*)$self->Access();
	}
};
%extend Handle_PBRep_TVertex1 {
	~Handle_PBRep_TVertex1() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_PBRep_TVertex1\n");}
	}
};

%nodefaultctor Handle_PBRep_CurveRepresentation;
class Handle_PBRep_CurveRepresentation : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		Handle_PBRep_CurveRepresentation();
		%feature("autodoc", "1");
		Handle_PBRep_CurveRepresentation(const Handle_PBRep_CurveRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_PBRep_CurveRepresentation(const PBRep_CurveRepresentation *anItem);
		%feature("autodoc", "1");
		Handle_PBRep_CurveRepresentation const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PBRep_CurveRepresentation {
	PBRep_CurveRepresentation* GetObject() {
	return (PBRep_CurveRepresentation*)$self->Access();
	}
};
%extend Handle_PBRep_CurveRepresentation {
	~Handle_PBRep_CurveRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_PBRep_CurveRepresentation\n");}
	}
};

%nodefaultctor Handle_PBRep_GCurve;
class Handle_PBRep_GCurve : public Handle_PBRep_CurveRepresentation {
	public:
		%feature("autodoc", "1");
		Handle_PBRep_GCurve();
		%feature("autodoc", "1");
		Handle_PBRep_GCurve(const Handle_PBRep_GCurve &aHandle);
		%feature("autodoc", "1");
		Handle_PBRep_GCurve(const PBRep_GCurve *anItem);
		%feature("autodoc", "1");
		Handle_PBRep_GCurve const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PBRep_GCurve {
	PBRep_GCurve* GetObject() {
	return (PBRep_GCurve*)$self->Access();
	}
};
%extend Handle_PBRep_GCurve {
	~Handle_PBRep_GCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_PBRep_GCurve\n");}
	}
};

%nodefaultctor Handle_PBRep_CurveOnSurface;
class Handle_PBRep_CurveOnSurface : public Handle_PBRep_GCurve {
	public:
		%feature("autodoc", "1");
		Handle_PBRep_CurveOnSurface();
		%feature("autodoc", "1");
		Handle_PBRep_CurveOnSurface(const Handle_PBRep_CurveOnSurface &aHandle);
		%feature("autodoc", "1");
		Handle_PBRep_CurveOnSurface(const PBRep_CurveOnSurface *anItem);
		%feature("autodoc", "1");
		Handle_PBRep_CurveOnSurface const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PBRep_CurveOnSurface {
	PBRep_CurveOnSurface* GetObject() {
	return (PBRep_CurveOnSurface*)$self->Access();
	}
};
%extend Handle_PBRep_CurveOnSurface {
	~Handle_PBRep_CurveOnSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_PBRep_CurveOnSurface\n");}
	}
};

%nodefaultctor Handle_PBRep_TFace;
class Handle_PBRep_TFace : public Handle_PTopoDS_TFace {
	public:
		%feature("autodoc", "1");
		Handle_PBRep_TFace();
		%feature("autodoc", "1");
		Handle_PBRep_TFace(const Handle_PBRep_TFace &aHandle);
		%feature("autodoc", "1");
		Handle_PBRep_TFace(const PBRep_TFace *anItem);
		%feature("autodoc", "1");
		Handle_PBRep_TFace const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PBRep_TFace {
	PBRep_TFace* GetObject() {
	return (PBRep_TFace*)$self->Access();
	}
};
%extend Handle_PBRep_TFace {
	~Handle_PBRep_TFace() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_PBRep_TFace\n");}
	}
};

%nodefaultctor Handle_PBRep_PolygonOnTriangulation;
class Handle_PBRep_PolygonOnTriangulation : public Handle_PBRep_CurveRepresentation {
	public:
		%feature("autodoc", "1");
		Handle_PBRep_PolygonOnTriangulation();
		%feature("autodoc", "1");
		Handle_PBRep_PolygonOnTriangulation(const Handle_PBRep_PolygonOnTriangulation &aHandle);
		%feature("autodoc", "1");
		Handle_PBRep_PolygonOnTriangulation(const PBRep_PolygonOnTriangulation *anItem);
		%feature("autodoc", "1");
		Handle_PBRep_PolygonOnTriangulation const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PBRep_PolygonOnTriangulation {
	PBRep_PolygonOnTriangulation* GetObject() {
	return (PBRep_PolygonOnTriangulation*)$self->Access();
	}
};
%extend Handle_PBRep_PolygonOnTriangulation {
	~Handle_PBRep_PolygonOnTriangulation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_PBRep_PolygonOnTriangulation\n");}
	}
};

%nodefaultctor Handle_PBRep_PointsOnSurface;
class Handle_PBRep_PointsOnSurface : public Handle_PBRep_PointRepresentation {
	public:
		%feature("autodoc", "1");
		Handle_PBRep_PointsOnSurface();
		%feature("autodoc", "1");
		Handle_PBRep_PointsOnSurface(const Handle_PBRep_PointsOnSurface &aHandle);
		%feature("autodoc", "1");
		Handle_PBRep_PointsOnSurface(const PBRep_PointsOnSurface *anItem);
		%feature("autodoc", "1");
		Handle_PBRep_PointsOnSurface const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PBRep_PointsOnSurface {
	PBRep_PointsOnSurface* GetObject() {
	return (PBRep_PointsOnSurface*)$self->Access();
	}
};
%extend Handle_PBRep_PointsOnSurface {
	~Handle_PBRep_PointsOnSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_PBRep_PointsOnSurface\n");}
	}
};

%nodefaultctor Handle_PBRep_CurveOn2Surfaces;
class Handle_PBRep_CurveOn2Surfaces : public Handle_PBRep_CurveRepresentation {
	public:
		%feature("autodoc", "1");
		Handle_PBRep_CurveOn2Surfaces();
		%feature("autodoc", "1");
		Handle_PBRep_CurveOn2Surfaces(const Handle_PBRep_CurveOn2Surfaces &aHandle);
		%feature("autodoc", "1");
		Handle_PBRep_CurveOn2Surfaces(const PBRep_CurveOn2Surfaces *anItem);
		%feature("autodoc", "1");
		Handle_PBRep_CurveOn2Surfaces const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PBRep_CurveOn2Surfaces {
	PBRep_CurveOn2Surfaces* GetObject() {
	return (PBRep_CurveOn2Surfaces*)$self->Access();
	}
};
%extend Handle_PBRep_CurveOn2Surfaces {
	~Handle_PBRep_CurveOn2Surfaces() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_PBRep_CurveOn2Surfaces\n");}
	}
};

%nodefaultctor Handle_PBRep_TEdge1;
class Handle_PBRep_TEdge1 : public Handle_PTopoDS_TEdge1 {
	public:
		%feature("autodoc", "1");
		Handle_PBRep_TEdge1();
		%feature("autodoc", "1");
		Handle_PBRep_TEdge1(const Handle_PBRep_TEdge1 &aHandle);
		%feature("autodoc", "1");
		Handle_PBRep_TEdge1(const PBRep_TEdge1 *anItem);
		%feature("autodoc", "1");
		Handle_PBRep_TEdge1 const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PBRep_TEdge1 {
	PBRep_TEdge1* GetObject() {
	return (PBRep_TEdge1*)$self->Access();
	}
};
%extend Handle_PBRep_TEdge1 {
	~Handle_PBRep_TEdge1() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_PBRep_TEdge1\n");}
	}
};

%nodefaultctor Handle_PBRep_PolygonOnSurface;
class Handle_PBRep_PolygonOnSurface : public Handle_PBRep_CurveRepresentation {
	public:
		%feature("autodoc", "1");
		Handle_PBRep_PolygonOnSurface();
		%feature("autodoc", "1");
		Handle_PBRep_PolygonOnSurface(const Handle_PBRep_PolygonOnSurface &aHandle);
		%feature("autodoc", "1");
		Handle_PBRep_PolygonOnSurface(const PBRep_PolygonOnSurface *anItem);
		%feature("autodoc", "1");
		Handle_PBRep_PolygonOnSurface const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PBRep_PolygonOnSurface {
	PBRep_PolygonOnSurface* GetObject() {
	return (PBRep_PolygonOnSurface*)$self->Access();
	}
};
%extend Handle_PBRep_PolygonOnSurface {
	~Handle_PBRep_PolygonOnSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_PBRep_PolygonOnSurface\n");}
	}
};

%nodefaultctor Handle_PBRep_PolygonOnClosedSurface;
class Handle_PBRep_PolygonOnClosedSurface : public Handle_PBRep_PolygonOnSurface {
	public:
		%feature("autodoc", "1");
		Handle_PBRep_PolygonOnClosedSurface();
		%feature("autodoc", "1");
		Handle_PBRep_PolygonOnClosedSurface(const Handle_PBRep_PolygonOnClosedSurface &aHandle);
		%feature("autodoc", "1");
		Handle_PBRep_PolygonOnClosedSurface(const PBRep_PolygonOnClosedSurface *anItem);
		%feature("autodoc", "1");
		Handle_PBRep_PolygonOnClosedSurface const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PBRep_PolygonOnClosedSurface {
	PBRep_PolygonOnClosedSurface* GetObject() {
	return (PBRep_PolygonOnClosedSurface*)$self->Access();
	}
};
%extend Handle_PBRep_PolygonOnClosedSurface {
	~Handle_PBRep_PolygonOnClosedSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_PBRep_PolygonOnClosedSurface\n");}
	}
};

%nodefaultctor Handle_PBRep_Polygon3D;
class Handle_PBRep_Polygon3D : public Handle_PBRep_CurveRepresentation {
	public:
		%feature("autodoc", "1");
		Handle_PBRep_Polygon3D();
		%feature("autodoc", "1");
		Handle_PBRep_Polygon3D(const Handle_PBRep_Polygon3D &aHandle);
		%feature("autodoc", "1");
		Handle_PBRep_Polygon3D(const PBRep_Polygon3D *anItem);
		%feature("autodoc", "1");
		Handle_PBRep_Polygon3D const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PBRep_Polygon3D {
	PBRep_Polygon3D* GetObject() {
	return (PBRep_Polygon3D*)$self->Access();
	}
};
%extend Handle_PBRep_Polygon3D {
	~Handle_PBRep_Polygon3D() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_PBRep_Polygon3D\n");}
	}
};

%nodefaultctor Handle_PBRep_Curve3D;
class Handle_PBRep_Curve3D : public Handle_PBRep_GCurve {
	public:
		%feature("autodoc", "1");
		Handle_PBRep_Curve3D();
		%feature("autodoc", "1");
		Handle_PBRep_Curve3D(const Handle_PBRep_Curve3D &aHandle);
		%feature("autodoc", "1");
		Handle_PBRep_Curve3D(const PBRep_Curve3D *anItem);
		%feature("autodoc", "1");
		Handle_PBRep_Curve3D const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PBRep_Curve3D {
	PBRep_Curve3D* GetObject() {
	return (PBRep_Curve3D*)$self->Access();
	}
};
%extend Handle_PBRep_Curve3D {
	~Handle_PBRep_Curve3D() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_PBRep_Curve3D\n");}
	}
};

%nodefaultctor Handle_PBRep_PointOnSurface;
class Handle_PBRep_PointOnSurface : public Handle_PBRep_PointsOnSurface {
	public:
		%feature("autodoc", "1");
		Handle_PBRep_PointOnSurface();
		%feature("autodoc", "1");
		Handle_PBRep_PointOnSurface(const Handle_PBRep_PointOnSurface &aHandle);
		%feature("autodoc", "1");
		Handle_PBRep_PointOnSurface(const PBRep_PointOnSurface *anItem);
		%feature("autodoc", "1");
		Handle_PBRep_PointOnSurface const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PBRep_PointOnSurface {
	PBRep_PointOnSurface* GetObject() {
	return (PBRep_PointOnSurface*)$self->Access();
	}
};
%extend Handle_PBRep_PointOnSurface {
	~Handle_PBRep_PointOnSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_PBRep_PointOnSurface\n");}
	}
};

%nodefaultctor Handle_PBRep_TEdge;
class Handle_PBRep_TEdge : public Handle_PTopoDS_TEdge {
	public:
		%feature("autodoc", "1");
		Handle_PBRep_TEdge();
		%feature("autodoc", "1");
		Handle_PBRep_TEdge(const Handle_PBRep_TEdge &aHandle);
		%feature("autodoc", "1");
		Handle_PBRep_TEdge(const PBRep_TEdge *anItem);
		%feature("autodoc", "1");
		Handle_PBRep_TEdge const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PBRep_TEdge {
	PBRep_TEdge* GetObject() {
	return (PBRep_TEdge*)$self->Access();
	}
};
%extend Handle_PBRep_TEdge {
	~Handle_PBRep_TEdge() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_PBRep_TEdge\n");}
	}
};

%nodefaultctor Handle_PBRep_CurveOnClosedSurface;
class Handle_PBRep_CurveOnClosedSurface : public Handle_PBRep_CurveOnSurface {
	public:
		%feature("autodoc", "1");
		Handle_PBRep_CurveOnClosedSurface();
		%feature("autodoc", "1");
		Handle_PBRep_CurveOnClosedSurface(const Handle_PBRep_CurveOnClosedSurface &aHandle);
		%feature("autodoc", "1");
		Handle_PBRep_CurveOnClosedSurface(const PBRep_CurveOnClosedSurface *anItem);
		%feature("autodoc", "1");
		Handle_PBRep_CurveOnClosedSurface const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PBRep_CurveOnClosedSurface {
	PBRep_CurveOnClosedSurface* GetObject() {
	return (PBRep_CurveOnClosedSurface*)$self->Access();
	}
};
%extend Handle_PBRep_CurveOnClosedSurface {
	~Handle_PBRep_CurveOnClosedSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_PBRep_CurveOnClosedSurface\n");}
	}
};

%nodefaultctor Handle_PBRep_PolygonOnClosedTriangulation;
class Handle_PBRep_PolygonOnClosedTriangulation : public Handle_PBRep_PolygonOnTriangulation {
	public:
		%feature("autodoc", "1");
		Handle_PBRep_PolygonOnClosedTriangulation();
		%feature("autodoc", "1");
		Handle_PBRep_PolygonOnClosedTriangulation(const Handle_PBRep_PolygonOnClosedTriangulation &aHandle);
		%feature("autodoc", "1");
		Handle_PBRep_PolygonOnClosedTriangulation(const PBRep_PolygonOnClosedTriangulation *anItem);
		%feature("autodoc", "1");
		Handle_PBRep_PolygonOnClosedTriangulation const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PBRep_PolygonOnClosedTriangulation {
	PBRep_PolygonOnClosedTriangulation* GetObject() {
	return (PBRep_PolygonOnClosedTriangulation*)$self->Access();
	}
};
%extend Handle_PBRep_PolygonOnClosedTriangulation {
	~Handle_PBRep_PolygonOnClosedTriangulation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_PBRep_PolygonOnClosedTriangulation\n");}
	}
};

%nodefaultctor Handle_PBRep_TVertex;
class Handle_PBRep_TVertex : public Handle_PTopoDS_TVertex {
	public:
		%feature("autodoc", "1");
		Handle_PBRep_TVertex();
		%feature("autodoc", "1");
		Handle_PBRep_TVertex(const Handle_PBRep_TVertex &aHandle);
		%feature("autodoc", "1");
		Handle_PBRep_TVertex(const PBRep_TVertex *anItem);
		%feature("autodoc", "1");
		Handle_PBRep_TVertex const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PBRep_TVertex {
	PBRep_TVertex* GetObject() {
	return (PBRep_TVertex*)$self->Access();
	}
};
%extend Handle_PBRep_TVertex {
	~Handle_PBRep_TVertex() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_PBRep_TVertex\n");}
	}
};

%nodefaultctor Handle_PBRep_PointOnCurve;
class Handle_PBRep_PointOnCurve : public Handle_PBRep_PointRepresentation {
	public:
		%feature("autodoc", "1");
		Handle_PBRep_PointOnCurve();
		%feature("autodoc", "1");
		Handle_PBRep_PointOnCurve(const Handle_PBRep_PointOnCurve &aHandle);
		%feature("autodoc", "1");
		Handle_PBRep_PointOnCurve(const PBRep_PointOnCurve *anItem);
		%feature("autodoc", "1");
		Handle_PBRep_PointOnCurve const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PBRep_PointOnCurve {
	PBRep_PointOnCurve* GetObject() {
	return (PBRep_PointOnCurve*)$self->Access();
	}
};
%extend Handle_PBRep_PointOnCurve {
	~Handle_PBRep_PointOnCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_PBRep_PointOnCurve\n");}
	}
};

%nodefaultctor Handle_PBRep_PointOnCurveOnSurface;
class Handle_PBRep_PointOnCurveOnSurface : public Handle_PBRep_PointsOnSurface {
	public:
		%feature("autodoc", "1");
		Handle_PBRep_PointOnCurveOnSurface();
		%feature("autodoc", "1");
		Handle_PBRep_PointOnCurveOnSurface(const Handle_PBRep_PointOnCurveOnSurface &aHandle);
		%feature("autodoc", "1");
		Handle_PBRep_PointOnCurveOnSurface(const PBRep_PointOnCurveOnSurface *anItem);
		%feature("autodoc", "1");
		Handle_PBRep_PointOnCurveOnSurface const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PBRep_PointOnCurveOnSurface {
	PBRep_PointOnCurveOnSurface* GetObject() {
	return (PBRep_PointOnCurveOnSurface*)$self->Access();
	}
};
%extend Handle_PBRep_PointOnCurveOnSurface {
	~Handle_PBRep_PointOnCurveOnSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of Handle_PBRep_PointOnCurveOnSurface\n");}
	}
};

%nodefaultctor PBRep_CurveRepresentation;
class PBRep_CurveRepresentation : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		PTopLoc_Location Location() const;
		%feature("autodoc", "1");
		Handle_PBRep_CurveRepresentation Next() const;
		%feature("autodoc", "1");
		void Next(const Handle_PBRep_CurveRepresentation &N);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsCurve3D() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsCurveOnSurface() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsRegularity() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsCurveOnClosedSurface() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsGCurve() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsPolygon3D() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsPolygonOnTriangulation() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsPolygonOnClosedTriangulation() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsPolygonOnSurface() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsPolygonOnClosedSurface() const;
		%feature("autodoc", "1");
		PBRep_CurveRepresentation();
		%feature("autodoc", "1");
		PBRep_CurveRepresentation(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		const PTopLoc_Location & _CSFDB_GetPBRep_CurveRepresentationmyLocation() const;
		%feature("autodoc", "1");
		Handle_PBRep_CurveRepresentation _CSFDB_GetPBRep_CurveRepresentationmyNext() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPBRep_CurveRepresentationmyNext(const Handle_PBRep_CurveRepresentation &p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PBRep_CurveRepresentation {
	Handle_PBRep_CurveRepresentation GetHandle() {
	return *(Handle_PBRep_CurveRepresentation*) &$self;
	}
};
%extend PBRep_CurveRepresentation {
	~PBRep_CurveRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of PBRep_CurveRepresentation\n");}
	}
};

%nodefaultctor PBRep_PolygonOnTriangulation;
class PBRep_PolygonOnTriangulation : public PBRep_CurveRepresentation {
	public:
		%feature("autodoc", "1");
		PBRep_PolygonOnTriangulation(const Handle_PPoly_PolygonOnTriangulation &P, const Handle_PPoly_Triangulation &T, const PTopLoc_Location &L);
		%feature("autodoc", "1");
		Handle_PPoly_PolygonOnTriangulation PolygonOnTriangulation() const;
		%feature("autodoc", "1");
		Handle_PPoly_Triangulation Triangulation() const;
		%feature("autodoc", "1");
		PBRep_PolygonOnTriangulation();
		%feature("autodoc", "1");
		PBRep_PolygonOnTriangulation(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Handle_PPoly_PolygonOnTriangulation _CSFDB_GetPBRep_PolygonOnTriangulationmyPolygon() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPBRep_PolygonOnTriangulationmyPolygon(const Handle_PPoly_PolygonOnTriangulation &p);
		%feature("autodoc", "1");
		Handle_PPoly_Triangulation _CSFDB_GetPBRep_PolygonOnTriangulationmyTriangulation() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPBRep_PolygonOnTriangulationmyTriangulation(const Handle_PPoly_Triangulation &p);

};
%extend PBRep_PolygonOnTriangulation {
	Handle_PBRep_PolygonOnTriangulation GetHandle() {
	return *(Handle_PBRep_PolygonOnTriangulation*) &$self;
	}
};
%extend PBRep_PolygonOnTriangulation {
	~PBRep_PolygonOnTriangulation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of PBRep_PolygonOnTriangulation\n");}
	}
};

%nodefaultctor PBRep_PolygonOnClosedTriangulation;
class PBRep_PolygonOnClosedTriangulation : public PBRep_PolygonOnTriangulation {
	public:
		%feature("autodoc", "1");
		PBRep_PolygonOnClosedTriangulation(const Handle_PPoly_PolygonOnTriangulation &P1, const Handle_PPoly_PolygonOnTriangulation &P2, const Handle_PPoly_Triangulation &S, const PTopLoc_Location &L);
		%feature("autodoc", "1");
		Handle_PPoly_PolygonOnTriangulation PolygonOnTriangulation2() const;
		%feature("autodoc", "1");
		PBRep_PolygonOnClosedTriangulation();
		%feature("autodoc", "1");
		PBRep_PolygonOnClosedTriangulation(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Handle_PPoly_PolygonOnTriangulation _CSFDB_GetPBRep_PolygonOnClosedTriangulationmyPolygon2() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPBRep_PolygonOnClosedTriangulationmyPolygon2(const Handle_PPoly_PolygonOnTriangulation &p);

};
%extend PBRep_PolygonOnClosedTriangulation {
	Handle_PBRep_PolygonOnClosedTriangulation GetHandle() {
	return *(Handle_PBRep_PolygonOnClosedTriangulation*) &$self;
	}
};
%extend PBRep_PolygonOnClosedTriangulation {
	~PBRep_PolygonOnClosedTriangulation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of PBRep_PolygonOnClosedTriangulation\n");}
	}
};

%nodefaultctor PBRep_TVertex1;
class PBRep_TVertex1 : public PTopoDS_TVertex1 {
	public:
		%feature("autodoc", "1");
		PBRep_TVertex1();
		%feature("autodoc", "1");
		Standard_Real Tolerance() const;
		%feature("autodoc", "1");
		void Tolerance(const Standard_Real T);
		%feature("autodoc", "1");
		gp_Pnt Pnt() const;
		%feature("autodoc", "1");
		void Pnt(const gp_Pnt &P);
		%feature("autodoc", "1");
		Handle_PBRep_PointRepresentation Points() const;
		%feature("autodoc", "1");
		void Points(const Handle_PBRep_PointRepresentation &P);
		%feature("autodoc", "1");
		PBRep_TVertex1(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Real _CSFDB_GetPBRep_TVertex1myTolerance() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPBRep_TVertex1myTolerance(const Standard_Real p);
		%feature("autodoc", "1");
		const gp_Pnt & _CSFDB_GetPBRep_TVertex1myPnt() const;
		%feature("autodoc", "1");
		Handle_PBRep_PointRepresentation _CSFDB_GetPBRep_TVertex1myPoints() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPBRep_TVertex1myPoints(const Handle_PBRep_PointRepresentation &p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PBRep_TVertex1 {
	Handle_PBRep_TVertex1 GetHandle() {
	return *(Handle_PBRep_TVertex1*) &$self;
	}
};
%extend PBRep_TVertex1 {
	~PBRep_TVertex1() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of PBRep_TVertex1\n");}
	}
};

%nodefaultctor PBRep_TEdge1;
class PBRep_TEdge1 : public PTopoDS_TEdge1 {
	public:
		%feature("autodoc", "1");
		PBRep_TEdge1();
		%feature("autodoc", "1");
		Standard_Real Tolerance() const;
		%feature("autodoc", "1");
		void Tolerance(const Standard_Real T);
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
		Handle_PBRep_CurveRepresentation Curves() const;
		%feature("autodoc", "1");
		void Curves(const Handle_PBRep_CurveRepresentation &C);
		%feature("autodoc", "1");
		PBRep_TEdge1(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Real _CSFDB_GetPBRep_TEdge1myTolerance() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPBRep_TEdge1myTolerance(const Standard_Real p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPBRep_TEdge1myFlags() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPBRep_TEdge1myFlags(const Standard_Integer p);
		%feature("autodoc", "1");
		Handle_PBRep_CurveRepresentation _CSFDB_GetPBRep_TEdge1myCurves() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPBRep_TEdge1myCurves(const Handle_PBRep_CurveRepresentation &p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PBRep_TEdge1 {
	Handle_PBRep_TEdge1 GetHandle() {
	return *(Handle_PBRep_TEdge1*) &$self;
	}
};
%extend PBRep_TEdge1 {
	~PBRep_TEdge1() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of PBRep_TEdge1\n");}
	}
};

%nodefaultctor PBRep_GCurve;
class PBRep_GCurve : public PBRep_CurveRepresentation {
	public:
		%feature("autodoc", "1");
		Standard_Real First() const;
		%feature("autodoc", "1");
		Standard_Real Last() const;
		%feature("autodoc", "1");
		void First(const Standard_Real F);
		%feature("autodoc", "1");
		void Last(const Standard_Real L);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsGCurve() const;
		%feature("autodoc", "1");
		PBRep_GCurve();
		%feature("autodoc", "1");
		PBRep_GCurve(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Real _CSFDB_GetPBRep_GCurvemyFirst() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPBRep_GCurvemyFirst(const Standard_Real p);
		%feature("autodoc", "1");
		Standard_Real _CSFDB_GetPBRep_GCurvemyLast() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPBRep_GCurvemyLast(const Standard_Real p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PBRep_GCurve {
	Handle_PBRep_GCurve GetHandle() {
	return *(Handle_PBRep_GCurve*) &$self;
	}
};
%extend PBRep_GCurve {
	~PBRep_GCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of PBRep_GCurve\n");}
	}
};

%nodefaultctor PBRep_CurveOnSurface;
class PBRep_CurveOnSurface : public PBRep_GCurve {
	public:
		%feature("autodoc", "1");
		PBRep_CurveOnSurface(const Handle_PGeom2d_Curve &PC, const Standard_Real CF, const Standard_Real CL, const Handle_PGeom_Surface &S, const PTopLoc_Location &L);
		%feature("autodoc", "1");
		Handle_PGeom_Surface Surface() const;
		%feature("autodoc", "1");
		Handle_PGeom2d_Curve PCurve() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsCurveOnSurface() const;
		%feature("autodoc", "1");
		void SetUVPoints(const gp_Pnt2d &Pnt1, const gp_Pnt2d &Pnt2);
		%feature("autodoc", "1");
		gp_Pnt2d FirstUV() const;
		%feature("autodoc", "1");
		gp_Pnt2d LastUV() const;
		%feature("autodoc", "1");
		PBRep_CurveOnSurface();
		%feature("autodoc", "1");
		PBRep_CurveOnSurface(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Handle_PGeom2d_Curve _CSFDB_GetPBRep_CurveOnSurfacemyPCurve() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPBRep_CurveOnSurfacemyPCurve(const Handle_PGeom2d_Curve &p);
		%feature("autodoc", "1");
		Handle_PGeom_Surface _CSFDB_GetPBRep_CurveOnSurfacemySurface() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPBRep_CurveOnSurfacemySurface(const Handle_PGeom_Surface &p);
		%feature("autodoc", "1");
		const gp_Pnt2d & _CSFDB_GetPBRep_CurveOnSurfacemyUV1() const;
		%feature("autodoc", "1");
		const gp_Pnt2d & _CSFDB_GetPBRep_CurveOnSurfacemyUV2() const;

};
%extend PBRep_CurveOnSurface {
	Handle_PBRep_CurveOnSurface GetHandle() {
	return *(Handle_PBRep_CurveOnSurface*) &$self;
	}
};
%extend PBRep_CurveOnSurface {
	~PBRep_CurveOnSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of PBRep_CurveOnSurface\n");}
	}
};

%nodefaultctor PBRep_TEdge;
class PBRep_TEdge : public PTopoDS_TEdge {
	public:
		%feature("autodoc", "1");
		PBRep_TEdge();
		%feature("autodoc", "1");
		Standard_Real Tolerance() const;
		%feature("autodoc", "1");
		void Tolerance(const Standard_Real T);
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
		Handle_PBRep_CurveRepresentation Curves() const;
		%feature("autodoc", "1");
		void Curves(const Handle_PBRep_CurveRepresentation &C);
		%feature("autodoc", "1");
		PBRep_TEdge(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Real _CSFDB_GetPBRep_TEdgemyTolerance() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPBRep_TEdgemyTolerance(const Standard_Real p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPBRep_TEdgemyFlags() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPBRep_TEdgemyFlags(const Standard_Integer p);
		%feature("autodoc", "1");
		Handle_PBRep_CurveRepresentation _CSFDB_GetPBRep_TEdgemyCurves() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPBRep_TEdgemyCurves(const Handle_PBRep_CurveRepresentation &p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PBRep_TEdge {
	Handle_PBRep_TEdge GetHandle() {
	return *(Handle_PBRep_TEdge*) &$self;
	}
};
%extend PBRep_TEdge {
	~PBRep_TEdge() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of PBRep_TEdge\n");}
	}
};

%nodefaultctor PBRep_PointRepresentation;
class PBRep_PointRepresentation : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		PTopLoc_Location Location() const;
		%feature("autodoc", "1");
		Standard_Real Parameter() const;
		%feature("autodoc", "1");
		void Parameter(const Standard_Real P);
		%feature("autodoc", "1");
		Handle_PBRep_PointRepresentation Next() const;
		%feature("autodoc", "1");
		void Next(const Handle_PBRep_PointRepresentation &N);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsPointOnCurve() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsPointOnCurveOnSurface() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsPointOnSurface() const;
		%feature("autodoc", "1");
		PBRep_PointRepresentation();
		%feature("autodoc", "1");
		PBRep_PointRepresentation(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		const PTopLoc_Location & _CSFDB_GetPBRep_PointRepresentationmyLocation() const;
		%feature("autodoc", "1");
		Standard_Real _CSFDB_GetPBRep_PointRepresentationmyParameter() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPBRep_PointRepresentationmyParameter(const Standard_Real p);
		%feature("autodoc", "1");
		Handle_PBRep_PointRepresentation _CSFDB_GetPBRep_PointRepresentationmyNext() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPBRep_PointRepresentationmyNext(const Handle_PBRep_PointRepresentation &p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PBRep_PointRepresentation {
	Handle_PBRep_PointRepresentation GetHandle() {
	return *(Handle_PBRep_PointRepresentation*) &$self;
	}
};
%extend PBRep_PointRepresentation {
	~PBRep_PointRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of PBRep_PointRepresentation\n");}
	}
};

%nodefaultctor PBRep_PointsOnSurface;
class PBRep_PointsOnSurface : public PBRep_PointRepresentation {
	public:
		%feature("autodoc", "1");
		Handle_PGeom_Surface Surface() const;
		%feature("autodoc", "1");
		PBRep_PointsOnSurface();
		%feature("autodoc", "1");
		PBRep_PointsOnSurface(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Handle_PGeom_Surface _CSFDB_GetPBRep_PointsOnSurfacemySurface() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPBRep_PointsOnSurfacemySurface(const Handle_PGeom_Surface &p);

};
%extend PBRep_PointsOnSurface {
	Handle_PBRep_PointsOnSurface GetHandle() {
	return *(Handle_PBRep_PointsOnSurface*) &$self;
	}
};
%extend PBRep_PointsOnSurface {
	~PBRep_PointsOnSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of PBRep_PointsOnSurface\n");}
	}
};

%nodefaultctor PBRep_CurveOn2Surfaces;
class PBRep_CurveOn2Surfaces : public PBRep_CurveRepresentation {
	public:
		%feature("autodoc", "1");
		PBRep_CurveOn2Surfaces(const Handle_PGeom_Surface &S1, const Handle_PGeom_Surface &S2, const PTopLoc_Location &L1, const PTopLoc_Location &L2, const GeomAbs_Shape C);
		%feature("autodoc", "1");
		Handle_PGeom_Surface Surface() const;
		%feature("autodoc", "1");
		Handle_PGeom_Surface Surface2() const;
		%feature("autodoc", "1");
		PTopLoc_Location Location2() const;
		%feature("autodoc", "1");
		GeomAbs_Shape Continuity() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsRegularity() const;
		%feature("autodoc", "1");
		PBRep_CurveOn2Surfaces();
		%feature("autodoc", "1");
		PBRep_CurveOn2Surfaces(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Handle_PGeom_Surface _CSFDB_GetPBRep_CurveOn2SurfacesmySurface() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPBRep_CurveOn2SurfacesmySurface(const Handle_PGeom_Surface &p);
		%feature("autodoc", "1");
		Handle_PGeom_Surface _CSFDB_GetPBRep_CurveOn2SurfacesmySurface2() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPBRep_CurveOn2SurfacesmySurface2(const Handle_PGeom_Surface &p);
		%feature("autodoc", "1");
		const PTopLoc_Location & _CSFDB_GetPBRep_CurveOn2SurfacesmyLocation2() const;
		%feature("autodoc", "1");
		GeomAbs_Shape _CSFDB_GetPBRep_CurveOn2SurfacesmyContinuity() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPBRep_CurveOn2SurfacesmyContinuity(const GeomAbs_Shape p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PBRep_CurveOn2Surfaces {
	Handle_PBRep_CurveOn2Surfaces GetHandle() {
	return *(Handle_PBRep_CurveOn2Surfaces*) &$self;
	}
};
%extend PBRep_CurveOn2Surfaces {
	~PBRep_CurveOn2Surfaces() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of PBRep_CurveOn2Surfaces\n");}
	}
};

%nodefaultctor PBRep_Curve3D;
class PBRep_Curve3D : public PBRep_GCurve {
	public:
		%feature("autodoc", "1");
		PBRep_Curve3D(const Handle_PGeom_Curve &C, const Standard_Real CF, const Standard_Real CL, const PTopLoc_Location &L);
		%feature("autodoc", "1");
		Handle_PGeom_Curve Curve3D() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsCurve3D() const;
		%feature("autodoc", "1");
		PBRep_Curve3D();
		%feature("autodoc", "1");
		PBRep_Curve3D(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Handle_PGeom_Curve _CSFDB_GetPBRep_Curve3DmyCurve3D() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPBRep_Curve3DmyCurve3D(const Handle_PGeom_Curve &p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PBRep_Curve3D {
	Handle_PBRep_Curve3D GetHandle() {
	return *(Handle_PBRep_Curve3D*) &$self;
	}
};
%extend PBRep_Curve3D {
	~PBRep_Curve3D() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of PBRep_Curve3D\n");}
	}
};

%nodefaultctor PBRep_PointOnCurveOnSurface;
class PBRep_PointOnCurveOnSurface : public PBRep_PointsOnSurface {
	public:
		%feature("autodoc", "1");
		PBRep_PointOnCurveOnSurface(const Standard_Real P, const Handle_PGeom2d_Curve &C, const Handle_PGeom_Surface &S, const PTopLoc_Location &L);
		%feature("autodoc", "1");
		Handle_PGeom2d_Curve PCurve() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsPointOnCurveOnSurface() const;
		%feature("autodoc", "1");
		PBRep_PointOnCurveOnSurface();
		%feature("autodoc", "1");
		PBRep_PointOnCurveOnSurface(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Handle_PGeom2d_Curve _CSFDB_GetPBRep_PointOnCurveOnSurfacemyPCurve() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPBRep_PointOnCurveOnSurfacemyPCurve(const Handle_PGeom2d_Curve &p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PBRep_PointOnCurveOnSurface {
	Handle_PBRep_PointOnCurveOnSurface GetHandle() {
	return *(Handle_PBRep_PointOnCurveOnSurface*) &$self;
	}
};
%extend PBRep_PointOnCurveOnSurface {
	~PBRep_PointOnCurveOnSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of PBRep_PointOnCurveOnSurface\n");}
	}
};

%nodefaultctor PBRep_TVertex;
class PBRep_TVertex : public PTopoDS_TVertex {
	public:
		%feature("autodoc", "1");
		PBRep_TVertex();
		%feature("autodoc", "1");
		Standard_Real Tolerance() const;
		%feature("autodoc", "1");
		void Tolerance(const Standard_Real T);
		%feature("autodoc", "1");
		gp_Pnt Pnt() const;
		%feature("autodoc", "1");
		void Pnt(const gp_Pnt &P);
		%feature("autodoc", "1");
		Handle_PBRep_PointRepresentation Points() const;
		%feature("autodoc", "1");
		void Points(const Handle_PBRep_PointRepresentation &P);
		%feature("autodoc", "1");
		PBRep_TVertex(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Real _CSFDB_GetPBRep_TVertexmyTolerance() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPBRep_TVertexmyTolerance(const Standard_Real p);
		%feature("autodoc", "1");
		const gp_Pnt & _CSFDB_GetPBRep_TVertexmyPnt() const;
		%feature("autodoc", "1");
		Handle_PBRep_PointRepresentation _CSFDB_GetPBRep_TVertexmyPoints() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPBRep_TVertexmyPoints(const Handle_PBRep_PointRepresentation &p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PBRep_TVertex {
	Handle_PBRep_TVertex GetHandle() {
	return *(Handle_PBRep_TVertex*) &$self;
	}
};
%extend PBRep_TVertex {
	~PBRep_TVertex() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of PBRep_TVertex\n");}
	}
};

%nodefaultctor PBRep_PolygonOnSurface;
class PBRep_PolygonOnSurface : public PBRep_CurveRepresentation {
	public:
		%feature("autodoc", "1");
		PBRep_PolygonOnSurface(const Handle_PPoly_Polygon2D &P, const Handle_PGeom_Surface &S, const PTopLoc_Location &L);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsPolygonOnSurface() const;
		%feature("autodoc", "1");
		Handle_PGeom_Surface Surface() const;
		%feature("autodoc", "1");
		Handle_PPoly_Polygon2D Polygon() const;
		%feature("autodoc", "1");
		PBRep_PolygonOnSurface();
		%feature("autodoc", "1");
		PBRep_PolygonOnSurface(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Handle_PPoly_Polygon2D _CSFDB_GetPBRep_PolygonOnSurfacemyPolygon2D() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPBRep_PolygonOnSurfacemyPolygon2D(const Handle_PPoly_Polygon2D &p);
		%feature("autodoc", "1");
		Handle_PGeom_Surface _CSFDB_GetPBRep_PolygonOnSurfacemySurface() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPBRep_PolygonOnSurfacemySurface(const Handle_PGeom_Surface &p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PBRep_PolygonOnSurface {
	Handle_PBRep_PolygonOnSurface GetHandle() {
	return *(Handle_PBRep_PolygonOnSurface*) &$self;
	}
};
%extend PBRep_PolygonOnSurface {
	~PBRep_PolygonOnSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of PBRep_PolygonOnSurface\n");}
	}
};

%nodefaultctor PBRep_PolygonOnClosedSurface;
class PBRep_PolygonOnClosedSurface : public PBRep_PolygonOnSurface {
	public:
		%feature("autodoc", "1");
		PBRep_PolygonOnClosedSurface(const Handle_PPoly_Polygon2D &P1, const Handle_PPoly_Polygon2D &P2, const Handle_PGeom_Surface &S, const PTopLoc_Location &L);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsPolygonOnClosedSurface() const;
		%feature("autodoc", "1");
		Handle_PPoly_Polygon2D Polygon2() const;
		%feature("autodoc", "1");
		PBRep_PolygonOnClosedSurface();
		%feature("autodoc", "1");
		PBRep_PolygonOnClosedSurface(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Handle_PPoly_Polygon2D _CSFDB_GetPBRep_PolygonOnClosedSurfacemyPolygon2() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPBRep_PolygonOnClosedSurfacemyPolygon2(const Handle_PPoly_Polygon2D &p);

};
%extend PBRep_PolygonOnClosedSurface {
	Handle_PBRep_PolygonOnClosedSurface GetHandle() {
	return *(Handle_PBRep_PolygonOnClosedSurface*) &$self;
	}
};
%extend PBRep_PolygonOnClosedSurface {
	~PBRep_PolygonOnClosedSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of PBRep_PolygonOnClosedSurface\n");}
	}
};

%nodefaultctor PBRep_Polygon3D;
class PBRep_Polygon3D : public PBRep_CurveRepresentation {
	public:
		%feature("autodoc", "1");
		PBRep_Polygon3D(const Handle_PPoly_Polygon3D &P, const PTopLoc_Location &L);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsPolygon3D() const;
		%feature("autodoc", "1");
		Handle_PPoly_Polygon3D Polygon3D() const;
		%feature("autodoc", "1");
		PBRep_Polygon3D();
		%feature("autodoc", "1");
		PBRep_Polygon3D(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Handle_PPoly_Polygon3D _CSFDB_GetPBRep_Polygon3DmyPolygon3D() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPBRep_Polygon3DmyPolygon3D(const Handle_PPoly_Polygon3D &p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PBRep_Polygon3D {
	Handle_PBRep_Polygon3D GetHandle() {
	return *(Handle_PBRep_Polygon3D*) &$self;
	}
};
%extend PBRep_Polygon3D {
	~PBRep_Polygon3D() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of PBRep_Polygon3D\n");}
	}
};

%nodefaultctor PBRep_PointOnSurface;
class PBRep_PointOnSurface : public PBRep_PointsOnSurface {
	public:
		%feature("autodoc", "1");
		PBRep_PointOnSurface(const Standard_Real P1, const Standard_Real P2, const Handle_PGeom_Surface &S, const PTopLoc_Location &L);
		%feature("autodoc", "1");
		Standard_Real Parameter2() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsPointOnSurface() const;
		%feature("autodoc", "1");
		PBRep_PointOnSurface();
		%feature("autodoc", "1");
		PBRep_PointOnSurface(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Real _CSFDB_GetPBRep_PointOnSurfacemyParameter2() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPBRep_PointOnSurfacemyParameter2(const Standard_Real p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PBRep_PointOnSurface {
	Handle_PBRep_PointOnSurface GetHandle() {
	return *(Handle_PBRep_PointOnSurface*) &$self;
	}
};
%extend PBRep_PointOnSurface {
	~PBRep_PointOnSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of PBRep_PointOnSurface\n");}
	}
};

%nodefaultctor PBRep_CurveOnClosedSurface;
class PBRep_CurveOnClosedSurface : public PBRep_CurveOnSurface {
	public:
		%feature("autodoc", "1");
		PBRep_CurveOnClosedSurface(const Handle_PGeom2d_Curve &PC1, const Handle_PGeom2d_Curve &PC2, const Standard_Real CF, const Standard_Real CL, const Handle_PGeom_Surface &S, const PTopLoc_Location &L, const GeomAbs_Shape C);
		%feature("autodoc", "1");
		Handle_PGeom2d_Curve PCurve2() const;
		%feature("autodoc", "1");
		GeomAbs_Shape Continuity() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsCurveOnClosedSurface() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsRegularity() const;
		%feature("autodoc", "1");
		void SetUVPoints2(const gp_Pnt2d &Pnt1, const gp_Pnt2d &Pnt2);
		%feature("autodoc", "1");
		gp_Pnt2d FirstUV2() const;
		%feature("autodoc", "1");
		gp_Pnt2d LastUV2() const;
		%feature("autodoc", "1");
		PBRep_CurveOnClosedSurface();
		%feature("autodoc", "1");
		PBRep_CurveOnClosedSurface(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Handle_PGeom2d_Curve _CSFDB_GetPBRep_CurveOnClosedSurfacemyPCurve2() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPBRep_CurveOnClosedSurfacemyPCurve2(const Handle_PGeom2d_Curve &p);
		%feature("autodoc", "1");
		GeomAbs_Shape _CSFDB_GetPBRep_CurveOnClosedSurfacemyContinuity() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPBRep_CurveOnClosedSurfacemyContinuity(const GeomAbs_Shape p);
		%feature("autodoc", "1");
		const gp_Pnt2d & _CSFDB_GetPBRep_CurveOnClosedSurfacemyUV21() const;
		%feature("autodoc", "1");
		const gp_Pnt2d & _CSFDB_GetPBRep_CurveOnClosedSurfacemyUV22() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PBRep_CurveOnClosedSurface {
	Handle_PBRep_CurveOnClosedSurface GetHandle() {
	return *(Handle_PBRep_CurveOnClosedSurface*) &$self;
	}
};
%extend PBRep_CurveOnClosedSurface {
	~PBRep_CurveOnClosedSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of PBRep_CurveOnClosedSurface\n");}
	}
};

%nodefaultctor PBRep_TFace1;
class PBRep_TFace1 : public PTopoDS_TFace1 {
	public:
		%feature("autodoc", "1");
		PBRep_TFace1();
		%feature("autodoc", "1");
		Handle_PGeom_Surface Surface() const;
		%feature("autodoc", "1");
		Handle_PPoly_Triangulation Triangulation() const;
		%feature("autodoc", "1");
		PTopLoc_Location Location() const;
		%feature("autodoc", "1");
		Standard_Real Tolerance() const;
		%feature("autodoc", "1");
		void Surface(const Handle_PGeom_Surface &S);
		%feature("autodoc", "1");
		void Triangulation(const Handle_PPoly_Triangulation &T);
		%feature("autodoc", "1");
		void Location(const PTopLoc_Location &L);
		%feature("autodoc", "1");
		void Tolerance(const Standard_Real T);
		%feature("autodoc", "1");
		Standard_Boolean NaturalRestriction() const;
		%feature("autodoc", "1");
		void NaturalRestriction(const Standard_Boolean N);
		%feature("autodoc", "1");
		PBRep_TFace1(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Handle_PGeom_Surface _CSFDB_GetPBRep_TFace1mySurface() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPBRep_TFace1mySurface(const Handle_PGeom_Surface &p);
		%feature("autodoc", "1");
		Handle_PPoly_Triangulation _CSFDB_GetPBRep_TFace1myTriangulation() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPBRep_TFace1myTriangulation(const Handle_PPoly_Triangulation &p);
		%feature("autodoc", "1");
		const PTopLoc_Location & _CSFDB_GetPBRep_TFace1myLocation() const;
		%feature("autodoc", "1");
		Standard_Real _CSFDB_GetPBRep_TFace1myTolerance() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPBRep_TFace1myTolerance(const Standard_Real p);
		%feature("autodoc", "1");
		Standard_Boolean _CSFDB_GetPBRep_TFace1myNaturalRestriction() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPBRep_TFace1myNaturalRestriction(const Standard_Boolean p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PBRep_TFace1 {
	Handle_PBRep_TFace1 GetHandle() {
	return *(Handle_PBRep_TFace1*) &$self;
	}
};
%extend PBRep_TFace1 {
	~PBRep_TFace1() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of PBRep_TFace1\n");}
	}
};

%nodefaultctor PBRep_TFace;
class PBRep_TFace : public PTopoDS_TFace {
	public:
		%feature("autodoc", "1");
		PBRep_TFace();
		%feature("autodoc", "1");
		Handle_PGeom_Surface Surface() const;
		%feature("autodoc", "1");
		Handle_PPoly_Triangulation Triangulation() const;
		%feature("autodoc", "1");
		PTopLoc_Location Location() const;
		%feature("autodoc", "1");
		Standard_Real Tolerance() const;
		%feature("autodoc", "1");
		void Surface(const Handle_PGeom_Surface &S);
		%feature("autodoc", "1");
		void Triangulation(const Handle_PPoly_Triangulation &T);
		%feature("autodoc", "1");
		void Location(const PTopLoc_Location &L);
		%feature("autodoc", "1");
		void Tolerance(const Standard_Real T);
		%feature("autodoc", "1");
		Standard_Boolean NaturalRestriction() const;
		%feature("autodoc", "1");
		void NaturalRestriction(const Standard_Boolean N);
		%feature("autodoc", "1");
		PBRep_TFace(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Handle_PGeom_Surface _CSFDB_GetPBRep_TFacemySurface() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPBRep_TFacemySurface(const Handle_PGeom_Surface &p);
		%feature("autodoc", "1");
		Handle_PPoly_Triangulation _CSFDB_GetPBRep_TFacemyTriangulation() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPBRep_TFacemyTriangulation(const Handle_PPoly_Triangulation &p);
		%feature("autodoc", "1");
		const PTopLoc_Location & _CSFDB_GetPBRep_TFacemyLocation() const;
		%feature("autodoc", "1");
		Standard_Real _CSFDB_GetPBRep_TFacemyTolerance() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPBRep_TFacemyTolerance(const Standard_Real p);
		%feature("autodoc", "1");
		Standard_Boolean _CSFDB_GetPBRep_TFacemyNaturalRestriction() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPBRep_TFacemyNaturalRestriction(const Standard_Boolean p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PBRep_TFace {
	Handle_PBRep_TFace GetHandle() {
	return *(Handle_PBRep_TFace*) &$self;
	}
};
%extend PBRep_TFace {
	~PBRep_TFace() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of PBRep_TFace\n");}
	}
};

%nodefaultctor PBRep_PointOnCurve;
class PBRep_PointOnCurve : public PBRep_PointRepresentation {
	public:
		%feature("autodoc", "1");
		PBRep_PointOnCurve(const Standard_Real P, const Handle_PGeom_Curve &C, const PTopLoc_Location &L);
		%feature("autodoc", "1");
		Handle_PGeom_Curve Curve() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsPointOnCurve() const;
		%feature("autodoc", "1");
		PBRep_PointOnCurve();
		%feature("autodoc", "1");
		PBRep_PointOnCurve(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Handle_PGeom_Curve _CSFDB_GetPBRep_PointOnCurvemyCurve() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPBRep_PointOnCurvemyCurve(const Handle_PGeom_Curve &p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PBRep_PointOnCurve {
	Handle_PBRep_PointOnCurve GetHandle() {
	return *(Handle_PBRep_PointOnCurve*) &$self;
	}
};
%extend PBRep_PointOnCurve {
	~PBRep_PointOnCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");if (__env){printf("## Call custom destructor for instance of PBRep_PointOnCurve\n");}
	}
};