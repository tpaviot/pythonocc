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
%module RWStepGeom

%include RWStepGeom_renames.i

%include typemaps.i
%include cmalloc.i
%include cpointer.i
%include carrays.i
%include exception.i
%include std_list.i
%include std_string.i
%include <python/std_basic_string.i>

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


%include RWStepGeom_dependencies.i


%include RWStepGeom_headers.i




%nodefaultctor RWStepGeom_RWBezierSurface;
class RWStepGeom_RWBezierSurface {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWBezierSurface();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_BezierSurface &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_BezierSurface &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_BezierSurface &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepGeom_RWBezierSurface {
	~RWStepGeom_RWBezierSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepGeom_RWBezierSurface\n");}
	}
};


%nodefaultctor RWStepGeom_RWQuasiUniformSurfaceAndRationalBSplineSurface;
class RWStepGeom_RWQuasiUniformSurfaceAndRationalBSplineSurface {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWQuasiUniformSurfaceAndRationalBSplineSurface();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_QuasiUniformSurfaceAndRationalBSplineSurface &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_QuasiUniformSurfaceAndRationalBSplineSurface &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_QuasiUniformSurfaceAndRationalBSplineSurface &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepGeom_RWQuasiUniformSurfaceAndRationalBSplineSurface {
	~RWStepGeom_RWQuasiUniformSurfaceAndRationalBSplineSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepGeom_RWQuasiUniformSurfaceAndRationalBSplineSurface\n");}
	}
};


%nodefaultctor RWStepGeom_RWBoundedCurve;
class RWStepGeom_RWBoundedCurve {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWBoundedCurve();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_BoundedCurve &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_BoundedCurve &ent) const;

};
%extend RWStepGeom_RWBoundedCurve {
	~RWStepGeom_RWBoundedCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepGeom_RWBoundedCurve\n");}
	}
};


%nodefaultctor RWStepGeom_RWPointReplica;
class RWStepGeom_RWPointReplica {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWPointReplica();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_PointReplica &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_PointReplica &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_PointReplica &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepGeom_RWPointReplica {
	~RWStepGeom_RWPointReplica() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepGeom_RWPointReplica\n");}
	}
};


%nodefaultctor RWStepGeom_RWDegeneratePcurve;
class RWStepGeom_RWDegeneratePcurve {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWDegeneratePcurve();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_DegeneratePcurve &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_DegeneratePcurve &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_DegeneratePcurve &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepGeom_RWDegeneratePcurve {
	~RWStepGeom_RWDegeneratePcurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepGeom_RWDegeneratePcurve\n");}
	}
};


%nodefaultctor RWStepGeom_RWGeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx;
class RWStepGeom_RWGeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWGeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepGeom_RWGeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx {
	~RWStepGeom_RWGeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepGeom_RWGeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx\n");}
	}
};


%nodefaultctor RWStepGeom_RWBezierSurfaceAndRationalBSplineSurface;
class RWStepGeom_RWBezierSurfaceAndRationalBSplineSurface {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWBezierSurfaceAndRationalBSplineSurface();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_BezierSurfaceAndRationalBSplineSurface &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_BezierSurfaceAndRationalBSplineSurface &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_BezierSurfaceAndRationalBSplineSurface &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepGeom_RWBezierSurfaceAndRationalBSplineSurface {
	~RWStepGeom_RWBezierSurfaceAndRationalBSplineSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepGeom_RWBezierSurfaceAndRationalBSplineSurface\n");}
	}
};


%nodefaultctor RWStepGeom_RWAxis2Placement3d;
class RWStepGeom_RWAxis2Placement3d {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWAxis2Placement3d();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_Axis2Placement3d &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_Axis2Placement3d &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_Axis2Placement3d &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepGeom_RWAxis2Placement3d {
	~RWStepGeom_RWAxis2Placement3d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepGeom_RWAxis2Placement3d\n");}
	}
};


%nodefaultctor RWStepGeom_RWCompositeCurve;
class RWStepGeom_RWCompositeCurve {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWCompositeCurve();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_CompositeCurve &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_CompositeCurve &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_CompositeCurve &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepGeom_RWCompositeCurve {
	~RWStepGeom_RWCompositeCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepGeom_RWCompositeCurve\n");}
	}
};


%nodefaultctor RWStepGeom_RWGeometricRepresentationContext;
class RWStepGeom_RWGeometricRepresentationContext {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWGeometricRepresentationContext();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_GeometricRepresentationContext &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_GeometricRepresentationContext &ent) const;

};
%extend RWStepGeom_RWGeometricRepresentationContext {
	~RWStepGeom_RWGeometricRepresentationContext() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepGeom_RWGeometricRepresentationContext\n");}
	}
};


%nodefaultctor RWStepGeom_RWRectangularTrimmedSurface;
class RWStepGeom_RWRectangularTrimmedSurface {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWRectangularTrimmedSurface();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_RectangularTrimmedSurface &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_RectangularTrimmedSurface &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_RectangularTrimmedSurface &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepGeom_RWRectangularTrimmedSurface {
	~RWStepGeom_RWRectangularTrimmedSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepGeom_RWRectangularTrimmedSurface\n");}
	}
};


%nodefaultctor RWStepGeom_RWBSplineCurveWithKnotsAndRationalBSplineCurve;
class RWStepGeom_RWBSplineCurveWithKnotsAndRationalBSplineCurve {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWBSplineCurveWithKnotsAndRationalBSplineCurve();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		void Check(const Handle_StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;

};
%extend RWStepGeom_RWBSplineCurveWithKnotsAndRationalBSplineCurve {
	~RWStepGeom_RWBSplineCurveWithKnotsAndRationalBSplineCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepGeom_RWBSplineCurveWithKnotsAndRationalBSplineCurve\n");}
	}
};


%nodefaultctor RWStepGeom_RWQuasiUniformCurveAndRationalBSplineCurve;
class RWStepGeom_RWQuasiUniformCurveAndRationalBSplineCurve {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWQuasiUniformCurveAndRationalBSplineCurve();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_QuasiUniformCurveAndRationalBSplineCurve &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_QuasiUniformCurveAndRationalBSplineCurve &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_QuasiUniformCurveAndRationalBSplineCurve &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepGeom_RWQuasiUniformCurveAndRationalBSplineCurve {
	~RWStepGeom_RWQuasiUniformCurveAndRationalBSplineCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepGeom_RWQuasiUniformCurveAndRationalBSplineCurve\n");}
	}
};


%nodefaultctor RWStepGeom_RWCompositeCurveSegment;
class RWStepGeom_RWCompositeCurveSegment {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWCompositeCurveSegment();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_CompositeCurveSegment &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_CompositeCurveSegment &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_CompositeCurveSegment &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepGeom_RWCompositeCurveSegment {
	~RWStepGeom_RWCompositeCurveSegment() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepGeom_RWCompositeCurveSegment\n");}
	}
};


%nodefaultctor RWStepGeom_RWGeometricRepresentationItem;
class RWStepGeom_RWGeometricRepresentationItem {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWGeometricRepresentationItem();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_GeometricRepresentationItem &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_GeometricRepresentationItem &ent) const;

};
%extend RWStepGeom_RWGeometricRepresentationItem {
	~RWStepGeom_RWGeometricRepresentationItem() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepGeom_RWGeometricRepresentationItem\n");}
	}
};


%nodefaultctor RWStepGeom_RWOffsetSurface;
class RWStepGeom_RWOffsetSurface {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWOffsetSurface();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_OffsetSurface &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_OffsetSurface &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_OffsetSurface &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepGeom_RWOffsetSurface {
	~RWStepGeom_RWOffsetSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepGeom_RWOffsetSurface\n");}
	}
};


%nodefaultctor RWStepGeom_RWGeometricRepresentationContextAndParametricRepresentationContext;
class RWStepGeom_RWGeometricRepresentationContextAndParametricRepresentationContext {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWGeometricRepresentationContextAndParametricRepresentationContext();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_GeometricRepresentationContextAndParametricRepresentationContext &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_GeometricRepresentationContextAndParametricRepresentationContext &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_GeometricRepresentationContextAndParametricRepresentationContext &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepGeom_RWGeometricRepresentationContextAndParametricRepresentationContext {
	~RWStepGeom_RWGeometricRepresentationContextAndParametricRepresentationContext() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepGeom_RWGeometricRepresentationContextAndParametricRepresentationContext\n");}
	}
};


%nodefaultctor RWStepGeom_RWQuasiUniformCurve;
class RWStepGeom_RWQuasiUniformCurve {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWQuasiUniformCurve();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_QuasiUniformCurve &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_QuasiUniformCurve &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_QuasiUniformCurve &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepGeom_RWQuasiUniformCurve {
	~RWStepGeom_RWQuasiUniformCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepGeom_RWQuasiUniformCurve\n");}
	}
};


%nodefaultctor RWStepGeom_RWLine;
class RWStepGeom_RWLine {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWLine();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_Line &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_Line &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_Line &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepGeom_RWLine {
	~RWStepGeom_RWLine() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepGeom_RWLine\n");}
	}
};


%nodefaultctor RWStepGeom_RWCartesianTransformationOperator3d;
class RWStepGeom_RWCartesianTransformationOperator3d {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWCartesianTransformationOperator3d();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_CartesianTransformationOperator3d &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_CartesianTransformationOperator3d &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_CartesianTransformationOperator3d &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepGeom_RWCartesianTransformationOperator3d {
	~RWStepGeom_RWCartesianTransformationOperator3d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepGeom_RWCartesianTransformationOperator3d\n");}
	}
};


%nodefaultctor RWStepGeom_RWCurve;
class RWStepGeom_RWCurve {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWCurve();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_Curve &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_Curve &ent) const;

};
%extend RWStepGeom_RWCurve {
	~RWStepGeom_RWCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepGeom_RWCurve\n");}
	}
};


%nodefaultctor RWStepGeom_RWAxis1Placement;
class RWStepGeom_RWAxis1Placement {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWAxis1Placement();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_Axis1Placement &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_Axis1Placement &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_Axis1Placement &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepGeom_RWAxis1Placement {
	~RWStepGeom_RWAxis1Placement() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepGeom_RWAxis1Placement\n");}
	}
};


%nodefaultctor RWStepGeom_RWConicalSurface;
class RWStepGeom_RWConicalSurface {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWConicalSurface();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_ConicalSurface &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_ConicalSurface &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_ConicalSurface &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepGeom_RWConicalSurface {
	~RWStepGeom_RWConicalSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepGeom_RWConicalSurface\n");}
	}
};


%nodefaultctor RWStepGeom_RWCurveReplica;
class RWStepGeom_RWCurveReplica {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWCurveReplica();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_CurveReplica &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_CurveReplica &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_CurveReplica &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepGeom_RWCurveReplica {
	~RWStepGeom_RWCurveReplica() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepGeom_RWCurveReplica\n");}
	}
};


%nodefaultctor RWStepGeom_RWToroidalSurface;
class RWStepGeom_RWToroidalSurface {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWToroidalSurface();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_ToroidalSurface &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_ToroidalSurface &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_ToroidalSurface &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		void Check(const Handle_StepGeom_ToroidalSurface &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;

};
%extend RWStepGeom_RWToroidalSurface {
	~RWStepGeom_RWToroidalSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepGeom_RWToroidalSurface\n");}
	}
};


%nodefaultctor RWStepGeom_RWBezierCurve;
class RWStepGeom_RWBezierCurve {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWBezierCurve();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_BezierCurve &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_BezierCurve &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_BezierCurve &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepGeom_RWBezierCurve {
	~RWStepGeom_RWBezierCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepGeom_RWBezierCurve\n");}
	}
};


%nodefaultctor RWStepGeom_RWVector;
class RWStepGeom_RWVector {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWVector();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_Vector &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_Vector &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_Vector &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		void Check(const Handle_StepGeom_Vector &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;

};
%extend RWStepGeom_RWVector {
	~RWStepGeom_RWVector() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepGeom_RWVector\n");}
	}
};


%nodefaultctor RWStepGeom_RWReparametrisedCompositeCurveSegment;
class RWStepGeom_RWReparametrisedCompositeCurveSegment {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWReparametrisedCompositeCurveSegment();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_ReparametrisedCompositeCurveSegment &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_ReparametrisedCompositeCurveSegment &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_ReparametrisedCompositeCurveSegment &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepGeom_RWReparametrisedCompositeCurveSegment {
	~RWStepGeom_RWReparametrisedCompositeCurveSegment() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepGeom_RWReparametrisedCompositeCurveSegment\n");}
	}
};


%nodefaultctor RWStepGeom_RWBoundaryCurve;
class RWStepGeom_RWBoundaryCurve {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWBoundaryCurve();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_BoundaryCurve &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_BoundaryCurve &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_BoundaryCurve &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepGeom_RWBoundaryCurve {
	~RWStepGeom_RWBoundaryCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepGeom_RWBoundaryCurve\n");}
	}
};


%nodefaultctor RWStepGeom_RWRationalBSplineSurface;
class RWStepGeom_RWRationalBSplineSurface {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWRationalBSplineSurface();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_RationalBSplineSurface &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_RationalBSplineSurface &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_RationalBSplineSurface &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		void Check(const Handle_StepGeom_RationalBSplineSurface &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;

};
%extend RWStepGeom_RWRationalBSplineSurface {
	~RWStepGeom_RWRationalBSplineSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepGeom_RWRationalBSplineSurface\n");}
	}
};


%nodefaultctor RWStepGeom_RWSeamCurve;
class RWStepGeom_RWSeamCurve {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWSeamCurve();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_SeamCurve &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_SeamCurve &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_SeamCurve &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepGeom_RWSeamCurve {
	~RWStepGeom_RWSeamCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepGeom_RWSeamCurve\n");}
	}
};


%nodefaultctor RWStepGeom_RWSurfaceCurve;
class RWStepGeom_RWSurfaceCurve {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWSurfaceCurve();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_SurfaceCurve &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_SurfaceCurve &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_SurfaceCurve &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepGeom_RWSurfaceCurve {
	~RWStepGeom_RWSurfaceCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepGeom_RWSurfaceCurve\n");}
	}
};


%nodefaultctor RWStepGeom_RWOuterBoundaryCurve;
class RWStepGeom_RWOuterBoundaryCurve {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWOuterBoundaryCurve();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_OuterBoundaryCurve &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_OuterBoundaryCurve &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_OuterBoundaryCurve &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepGeom_RWOuterBoundaryCurve {
	~RWStepGeom_RWOuterBoundaryCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepGeom_RWOuterBoundaryCurve\n");}
	}
};


%nodefaultctor RWStepGeom_RWCompositeCurveOnSurface;
class RWStepGeom_RWCompositeCurveOnSurface {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWCompositeCurveOnSurface();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_CompositeCurveOnSurface &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_CompositeCurveOnSurface &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_CompositeCurveOnSurface &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepGeom_RWCompositeCurveOnSurface {
	~RWStepGeom_RWCompositeCurveOnSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepGeom_RWCompositeCurveOnSurface\n");}
	}
};


%nodefaultctor RWStepGeom_RWOffsetCurve3d;
class RWStepGeom_RWOffsetCurve3d {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWOffsetCurve3d();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_OffsetCurve3d &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_OffsetCurve3d &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_OffsetCurve3d &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepGeom_RWOffsetCurve3d {
	~RWStepGeom_RWOffsetCurve3d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepGeom_RWOffsetCurve3d\n");}
	}
};


%nodefaultctor RWStepGeom_RWEvaluatedDegeneratePcurve;
class RWStepGeom_RWEvaluatedDegeneratePcurve {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWEvaluatedDegeneratePcurve();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_EvaluatedDegeneratePcurve &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_EvaluatedDegeneratePcurve &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_EvaluatedDegeneratePcurve &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepGeom_RWEvaluatedDegeneratePcurve {
	~RWStepGeom_RWEvaluatedDegeneratePcurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepGeom_RWEvaluatedDegeneratePcurve\n");}
	}
};


%nodefaultctor RWStepGeom_RWUniformCurve;
class RWStepGeom_RWUniformCurve {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWUniformCurve();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_UniformCurve &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_UniformCurve &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_UniformCurve &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepGeom_RWUniformCurve {
	~RWStepGeom_RWUniformCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepGeom_RWUniformCurve\n");}
	}
};


%nodefaultctor RWStepGeom_RWPointOnSurface;
class RWStepGeom_RWPointOnSurface {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWPointOnSurface();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_PointOnSurface &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_PointOnSurface &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_PointOnSurface &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepGeom_RWPointOnSurface {
	~RWStepGeom_RWPointOnSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepGeom_RWPointOnSurface\n");}
	}
};


%nodefaultctor RWStepGeom_RWParabola;
class RWStepGeom_RWParabola {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWParabola();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_Parabola &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_Parabola &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_Parabola &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepGeom_RWParabola {
	~RWStepGeom_RWParabola() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepGeom_RWParabola\n");}
	}
};


%nodefaultctor RWStepGeom_RWUniformSurface;
class RWStepGeom_RWUniformSurface {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWUniformSurface();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_UniformSurface &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_UniformSurface &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_UniformSurface &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepGeom_RWUniformSurface {
	~RWStepGeom_RWUniformSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepGeom_RWUniformSurface\n");}
	}
};


%nodefaultctor RWStepGeom_RWElementarySurface;
class RWStepGeom_RWElementarySurface {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWElementarySurface();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_ElementarySurface &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_ElementarySurface &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_ElementarySurface &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepGeom_RWElementarySurface {
	~RWStepGeom_RWElementarySurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepGeom_RWElementarySurface\n");}
	}
};


%nodefaultctor RWStepGeom_RWGeometricRepresentationContextAndGlobalUnitAssignedContext;
class RWStepGeom_RWGeometricRepresentationContextAndGlobalUnitAssignedContext {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWGeometricRepresentationContextAndGlobalUnitAssignedContext();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepGeom_RWGeometricRepresentationContextAndGlobalUnitAssignedContext {
	~RWStepGeom_RWGeometricRepresentationContextAndGlobalUnitAssignedContext() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepGeom_RWGeometricRepresentationContextAndGlobalUnitAssignedContext\n");}
	}
};


%nodefaultctor RWStepGeom_RWUniformSurfaceAndRationalBSplineSurface;
class RWStepGeom_RWUniformSurfaceAndRationalBSplineSurface {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWUniformSurfaceAndRationalBSplineSurface();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_UniformSurfaceAndRationalBSplineSurface &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_UniformSurfaceAndRationalBSplineSurface &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_UniformSurfaceAndRationalBSplineSurface &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepGeom_RWUniformSurfaceAndRationalBSplineSurface {
	~RWStepGeom_RWUniformSurfaceAndRationalBSplineSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepGeom_RWUniformSurfaceAndRationalBSplineSurface\n");}
	}
};


%nodefaultctor RWStepGeom_RWPlane;
class RWStepGeom_RWPlane {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWPlane();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_Plane &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_Plane &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_Plane &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepGeom_RWPlane {
	~RWStepGeom_RWPlane() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepGeom_RWPlane\n");}
	}
};


%nodefaultctor RWStepGeom_RWPointOnCurve;
class RWStepGeom_RWPointOnCurve {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWPointOnCurve();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_PointOnCurve &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_PointOnCurve &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_PointOnCurve &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepGeom_RWPointOnCurve {
	~RWStepGeom_RWPointOnCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepGeom_RWPointOnCurve\n");}
	}
};


%nodefaultctor RWStepGeom_RWTrimmedCurve;
class RWStepGeom_RWTrimmedCurve {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWTrimmedCurve();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_TrimmedCurve &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_TrimmedCurve &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_TrimmedCurve &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepGeom_RWTrimmedCurve {
	~RWStepGeom_RWTrimmedCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepGeom_RWTrimmedCurve\n");}
	}
};


%nodefaultctor RWStepGeom_RWRectangularCompositeSurface;
class RWStepGeom_RWRectangularCompositeSurface {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWRectangularCompositeSurface();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_RectangularCompositeSurface &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_RectangularCompositeSurface &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_RectangularCompositeSurface &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepGeom_RWRectangularCompositeSurface {
	~RWStepGeom_RWRectangularCompositeSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepGeom_RWRectangularCompositeSurface\n");}
	}
};


%nodefaultctor RWStepGeom_RWOrientedSurface;
class RWStepGeom_RWOrientedSurface {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWOrientedSurface();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_OrientedSurface &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_OrientedSurface &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_OrientedSurface &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepGeom_RWOrientedSurface {
	~RWStepGeom_RWOrientedSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepGeom_RWOrientedSurface\n");}
	}
};


%nodefaultctor RWStepGeom_RWAxis2Placement2d;
class RWStepGeom_RWAxis2Placement2d {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWAxis2Placement2d();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_Axis2Placement2d &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_Axis2Placement2d &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_Axis2Placement2d &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepGeom_RWAxis2Placement2d {
	~RWStepGeom_RWAxis2Placement2d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepGeom_RWAxis2Placement2d\n");}
	}
};


%nodefaultctor RWStepGeom_RWRationalBSplineCurve;
class RWStepGeom_RWRationalBSplineCurve {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWRationalBSplineCurve();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_RationalBSplineCurve &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_RationalBSplineCurve &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_RationalBSplineCurve &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		void Check(const Handle_StepGeom_RationalBSplineCurve &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;

};
%extend RWStepGeom_RWRationalBSplineCurve {
	~RWStepGeom_RWRationalBSplineCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepGeom_RWRationalBSplineCurve\n");}
	}
};


%nodefaultctor RWStepGeom_RWDirection;
class RWStepGeom_RWDirection {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWDirection();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_Direction &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_Direction &ent) const;
		%feature("autodoc", "1");
		void Check(const Handle_StepGeom_Direction &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;

};
%extend RWStepGeom_RWDirection {
	~RWStepGeom_RWDirection() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepGeom_RWDirection\n");}
	}
};


%nodefaultctor RWStepGeom_RWBSplineCurve;
class RWStepGeom_RWBSplineCurve {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWBSplineCurve();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_BSplineCurve &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_BSplineCurve &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_BSplineCurve &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepGeom_RWBSplineCurve {
	~RWStepGeom_RWBSplineCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepGeom_RWBSplineCurve\n");}
	}
};


%nodefaultctor RWStepGeom_RWBSplineCurveWithKnots;
class RWStepGeom_RWBSplineCurveWithKnots {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWBSplineCurveWithKnots();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_BSplineCurveWithKnots &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_BSplineCurveWithKnots &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_BSplineCurveWithKnots &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		void Check(const Handle_StepGeom_BSplineCurveWithKnots &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;

};
%extend RWStepGeom_RWBSplineCurveWithKnots {
	~RWStepGeom_RWBSplineCurveWithKnots() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepGeom_RWBSplineCurveWithKnots\n");}
	}
};


%nodefaultctor RWStepGeom_RWDegenerateToroidalSurface;
class RWStepGeom_RWDegenerateToroidalSurface {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWDegenerateToroidalSurface();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_DegenerateToroidalSurface &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_DegenerateToroidalSurface &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_DegenerateToroidalSurface &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepGeom_RWDegenerateToroidalSurface {
	~RWStepGeom_RWDegenerateToroidalSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepGeom_RWDegenerateToroidalSurface\n");}
	}
};


%nodefaultctor RWStepGeom_RWSurfaceOfLinearExtrusion;
class RWStepGeom_RWSurfaceOfLinearExtrusion {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWSurfaceOfLinearExtrusion();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_SurfaceOfLinearExtrusion &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_SurfaceOfLinearExtrusion &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_SurfaceOfLinearExtrusion &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepGeom_RWSurfaceOfLinearExtrusion {
	~RWStepGeom_RWSurfaceOfLinearExtrusion() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepGeom_RWSurfaceOfLinearExtrusion\n");}
	}
};


%nodefaultctor RWStepGeom_RWUniformCurveAndRationalBSplineCurve;
class RWStepGeom_RWUniformCurveAndRationalBSplineCurve {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWUniformCurveAndRationalBSplineCurve();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_UniformCurveAndRationalBSplineCurve &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_UniformCurveAndRationalBSplineCurve &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_UniformCurveAndRationalBSplineCurve &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepGeom_RWUniformCurveAndRationalBSplineCurve {
	~RWStepGeom_RWUniformCurveAndRationalBSplineCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepGeom_RWUniformCurveAndRationalBSplineCurve\n");}
	}
};


%nodefaultctor RWStepGeom_RWPlacement;
class RWStepGeom_RWPlacement {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWPlacement();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_Placement &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_Placement &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_Placement &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepGeom_RWPlacement {
	~RWStepGeom_RWPlacement() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepGeom_RWPlacement\n");}
	}
};


%nodefaultctor RWStepGeom_RWCylindricalSurface;
class RWStepGeom_RWCylindricalSurface {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWCylindricalSurface();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_CylindricalSurface &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_CylindricalSurface &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_CylindricalSurface &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepGeom_RWCylindricalSurface {
	~RWStepGeom_RWCylindricalSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepGeom_RWCylindricalSurface\n");}
	}
};


%nodefaultctor RWStepGeom_RWBezierCurveAndRationalBSplineCurve;
class RWStepGeom_RWBezierCurveAndRationalBSplineCurve {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWBezierCurveAndRationalBSplineCurve();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_BezierCurveAndRationalBSplineCurve &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_BezierCurveAndRationalBSplineCurve &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_BezierCurveAndRationalBSplineCurve &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepGeom_RWBezierCurveAndRationalBSplineCurve {
	~RWStepGeom_RWBezierCurveAndRationalBSplineCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepGeom_RWBezierCurveAndRationalBSplineCurve\n");}
	}
};


%nodefaultctor RWStepGeom_RWPoint;
class RWStepGeom_RWPoint {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWPoint();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_Point &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_Point &ent) const;

};
%extend RWStepGeom_RWPoint {
	~RWStepGeom_RWPoint() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepGeom_RWPoint\n");}
	}
};


%nodefaultctor RWStepGeom_RWBSplineSurface;
class RWStepGeom_RWBSplineSurface {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWBSplineSurface();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_BSplineSurface &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_BSplineSurface &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_BSplineSurface &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepGeom_RWBSplineSurface {
	~RWStepGeom_RWBSplineSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepGeom_RWBSplineSurface\n");}
	}
};


%nodefaultctor RWStepGeom_RWCartesianTransformationOperator;
class RWStepGeom_RWCartesianTransformationOperator {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWCartesianTransformationOperator();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_CartesianTransformationOperator &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_CartesianTransformationOperator &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_CartesianTransformationOperator &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepGeom_RWCartesianTransformationOperator {
	~RWStepGeom_RWCartesianTransformationOperator() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepGeom_RWCartesianTransformationOperator\n");}
	}
};


%nodefaultctor RWStepGeom_RWPcurve;
class RWStepGeom_RWPcurve {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWPcurve();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_Pcurve &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_Pcurve &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_Pcurve &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepGeom_RWPcurve {
	~RWStepGeom_RWPcurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepGeom_RWPcurve\n");}
	}
};


%nodefaultctor RWStepGeom_RWSurfaceCurveAndBoundedCurve;
class RWStepGeom_RWSurfaceCurveAndBoundedCurve {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWSurfaceCurveAndBoundedCurve();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_SurfaceCurveAndBoundedCurve &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_SurfaceCurveAndBoundedCurve &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_SurfaceCurveAndBoundedCurve &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepGeom_RWSurfaceCurveAndBoundedCurve {
	~RWStepGeom_RWSurfaceCurveAndBoundedCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepGeom_RWSurfaceCurveAndBoundedCurve\n");}
	}
};


%nodefaultctor RWStepGeom_RWEllipse;
class RWStepGeom_RWEllipse {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWEllipse();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_Ellipse &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_Ellipse &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_Ellipse &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		void Check(const Handle_StepGeom_Ellipse &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;

};
%extend RWStepGeom_RWEllipse {
	~RWStepGeom_RWEllipse() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepGeom_RWEllipse\n");}
	}
};


%nodefaultctor RWStepGeom_RWIntersectionCurve;
class RWStepGeom_RWIntersectionCurve {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWIntersectionCurve();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_IntersectionCurve &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_IntersectionCurve &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_IntersectionCurve &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepGeom_RWIntersectionCurve {
	~RWStepGeom_RWIntersectionCurve() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepGeom_RWIntersectionCurve\n");}
	}
};


%nodefaultctor RWStepGeom_RWBoundedSurface;
class RWStepGeom_RWBoundedSurface {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWBoundedSurface();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_BoundedSurface &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_BoundedSurface &ent) const;

};
%extend RWStepGeom_RWBoundedSurface {
	~RWStepGeom_RWBoundedSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepGeom_RWBoundedSurface\n");}
	}
};


%nodefaultctor RWStepGeom_RWBSplineSurfaceWithKnotsAndRationalBSplineSurface;
class RWStepGeom_RWBSplineSurfaceWithKnotsAndRationalBSplineSurface {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWBSplineSurfaceWithKnotsAndRationalBSplineSurface();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		void Check(const Handle_StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;

};
%extend RWStepGeom_RWBSplineSurfaceWithKnotsAndRationalBSplineSurface {
	~RWStepGeom_RWBSplineSurfaceWithKnotsAndRationalBSplineSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepGeom_RWBSplineSurfaceWithKnotsAndRationalBSplineSurface\n");}
	}
};


%nodefaultctor RWStepGeom_RWSphericalSurface;
class RWStepGeom_RWSphericalSurface {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWSphericalSurface();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_SphericalSurface &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_SphericalSurface &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_SphericalSurface &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepGeom_RWSphericalSurface {
	~RWStepGeom_RWSphericalSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepGeom_RWSphericalSurface\n");}
	}
};


%nodefaultctor RWStepGeom_RWSurfaceOfRevolution;
class RWStepGeom_RWSurfaceOfRevolution {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWSurfaceOfRevolution();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_SurfaceOfRevolution &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_SurfaceOfRevolution &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_SurfaceOfRevolution &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepGeom_RWSurfaceOfRevolution {
	~RWStepGeom_RWSurfaceOfRevolution() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepGeom_RWSurfaceOfRevolution\n");}
	}
};


%nodefaultctor RWStepGeom_RWCartesianPoint;
class RWStepGeom_RWCartesianPoint {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWCartesianPoint();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_CartesianPoint &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_CartesianPoint &ent) const;

};
%extend RWStepGeom_RWCartesianPoint {
	~RWStepGeom_RWCartesianPoint() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepGeom_RWCartesianPoint\n");}
	}
};


%nodefaultctor RWStepGeom_RWSweptSurface;
class RWStepGeom_RWSweptSurface {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWSweptSurface();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_SweptSurface &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_SweptSurface &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_SweptSurface &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepGeom_RWSweptSurface {
	~RWStepGeom_RWSweptSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepGeom_RWSweptSurface\n");}
	}
};


%nodefaultctor RWStepGeom_RWSurfaceReplica;
class RWStepGeom_RWSurfaceReplica {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWSurfaceReplica();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_SurfaceReplica &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_SurfaceReplica &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_SurfaceReplica &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepGeom_RWSurfaceReplica {
	~RWStepGeom_RWSurfaceReplica() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepGeom_RWSurfaceReplica\n");}
	}
};


%nodefaultctor RWStepGeom_RWCircle;
class RWStepGeom_RWCircle {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWCircle();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_Circle &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_Circle &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_Circle &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepGeom_RWCircle {
	~RWStepGeom_RWCircle() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepGeom_RWCircle\n");}
	}
};


%nodefaultctor RWStepGeom_RWSurfacePatch;
class RWStepGeom_RWSurfacePatch {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWSurfacePatch();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_SurfacePatch &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_SurfacePatch &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_SurfacePatch &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepGeom_RWSurfacePatch {
	~RWStepGeom_RWSurfacePatch() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepGeom_RWSurfacePatch\n");}
	}
};


%nodefaultctor RWStepGeom_RWCurveBoundedSurface;
class RWStepGeom_RWCurveBoundedSurface {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWCurveBoundedSurface();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_CurveBoundedSurface &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_CurveBoundedSurface &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_CurveBoundedSurface &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepGeom_RWCurveBoundedSurface {
	~RWStepGeom_RWCurveBoundedSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepGeom_RWCurveBoundedSurface\n");}
	}
};


%nodefaultctor RWStepGeom_RWQuasiUniformSurface;
class RWStepGeom_RWQuasiUniformSurface {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWQuasiUniformSurface();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_QuasiUniformSurface &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_QuasiUniformSurface &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_QuasiUniformSurface &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepGeom_RWQuasiUniformSurface {
	~RWStepGeom_RWQuasiUniformSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepGeom_RWQuasiUniformSurface\n");}
	}
};


%nodefaultctor RWStepGeom_RWSurface;
class RWStepGeom_RWSurface {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWSurface();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_Surface &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_Surface &ent) const;

};
%extend RWStepGeom_RWSurface {
	~RWStepGeom_RWSurface() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepGeom_RWSurface\n");}
	}
};


%nodefaultctor RWStepGeom_RWBSplineSurfaceWithKnots;
class RWStepGeom_RWBSplineSurfaceWithKnots {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWBSplineSurfaceWithKnots();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_BSplineSurfaceWithKnots &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_BSplineSurfaceWithKnots &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_BSplineSurfaceWithKnots &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		void Check(const Handle_StepGeom_BSplineSurfaceWithKnots &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;

};
%extend RWStepGeom_RWBSplineSurfaceWithKnots {
	~RWStepGeom_RWBSplineSurfaceWithKnots() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepGeom_RWBSplineSurfaceWithKnots\n");}
	}
};


%nodefaultctor RWStepGeom_RWPolyline;
class RWStepGeom_RWPolyline {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWPolyline();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_Polyline &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_Polyline &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_Polyline &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepGeom_RWPolyline {
	~RWStepGeom_RWPolyline() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepGeom_RWPolyline\n");}
	}
};


%nodefaultctor RWStepGeom_RWConic;
class RWStepGeom_RWConic {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWConic();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_Conic &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_Conic &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_Conic &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepGeom_RWConic {
	~RWStepGeom_RWConic() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepGeom_RWConic\n");}
	}
};


%nodefaultctor RWStepGeom_RWHyperbola;
class RWStepGeom_RWHyperbola {
	public:
		%feature("autodoc", "1");
		RWStepGeom_RWHyperbola();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepGeom_Hyperbola &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepGeom_Hyperbola &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepGeom_Hyperbola &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepGeom_RWHyperbola {
	~RWStepGeom_RWHyperbola() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepGeom_RWHyperbola\n");}
	}
};
