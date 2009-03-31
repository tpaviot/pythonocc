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
%module RWStepDimTol

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


%include RWStepDimTol_dependencies.i


%include RWStepDimTol_headers.i




%nodefaultctor RWStepDimTol_RWDatumFeature;
class RWStepDimTol_RWDatumFeature {
	public:
		%feature("autodoc", "1");
		RWStepDimTol_RWDatumFeature();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepDimTol_DatumFeature &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepDimTol_DatumFeature &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepDimTol_DatumFeature &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepDimTol_RWDatumFeature {
	~RWStepDimTol_RWDatumFeature() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepDimTol_RWDatumFeature\n");}
	}
};

%nodefaultctor RWStepDimTol_RWPlacedDatumTargetFeature;
class RWStepDimTol_RWPlacedDatumTargetFeature {
	public:
		%feature("autodoc", "1");
		RWStepDimTol_RWPlacedDatumTargetFeature();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepDimTol_PlacedDatumTargetFeature &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepDimTol_PlacedDatumTargetFeature &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepDimTol_PlacedDatumTargetFeature &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepDimTol_RWPlacedDatumTargetFeature {
	~RWStepDimTol_RWPlacedDatumTargetFeature() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepDimTol_RWPlacedDatumTargetFeature\n");}
	}
};

%nodefaultctor RWStepDimTol_RWRoundnessTolerance;
class RWStepDimTol_RWRoundnessTolerance {
	public:
		%feature("autodoc", "1");
		RWStepDimTol_RWRoundnessTolerance();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepDimTol_RoundnessTolerance &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepDimTol_RoundnessTolerance &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepDimTol_RoundnessTolerance &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepDimTol_RWRoundnessTolerance {
	~RWStepDimTol_RWRoundnessTolerance() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepDimTol_RWRoundnessTolerance\n");}
	}
};

%nodefaultctor RWStepDimTol_RWAngularityTolerance;
class RWStepDimTol_RWAngularityTolerance {
	public:
		%feature("autodoc", "1");
		RWStepDimTol_RWAngularityTolerance();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepDimTol_AngularityTolerance &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepDimTol_AngularityTolerance &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepDimTol_AngularityTolerance &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepDimTol_RWAngularityTolerance {
	~RWStepDimTol_RWAngularityTolerance() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepDimTol_RWAngularityTolerance\n");}
	}
};

%nodefaultctor RWStepDimTol_RWCommonDatum;
class RWStepDimTol_RWCommonDatum {
	public:
		%feature("autodoc", "1");
		RWStepDimTol_RWCommonDatum();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepDimTol_CommonDatum &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepDimTol_CommonDatum &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepDimTol_CommonDatum &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepDimTol_RWCommonDatum {
	~RWStepDimTol_RWCommonDatum() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepDimTol_RWCommonDatum\n");}
	}
};

%nodefaultctor RWStepDimTol_RWGeometricTolerance;
class RWStepDimTol_RWGeometricTolerance {
	public:
		%feature("autodoc", "1");
		RWStepDimTol_RWGeometricTolerance();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepDimTol_GeometricTolerance &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepDimTol_GeometricTolerance &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepDimTol_GeometricTolerance &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepDimTol_RWGeometricTolerance {
	~RWStepDimTol_RWGeometricTolerance() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepDimTol_RWGeometricTolerance\n");}
	}
};

%nodefaultctor RWStepDimTol_RWPerpendicularityTolerance;
class RWStepDimTol_RWPerpendicularityTolerance {
	public:
		%feature("autodoc", "1");
		RWStepDimTol_RWPerpendicularityTolerance();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepDimTol_PerpendicularityTolerance &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepDimTol_PerpendicularityTolerance &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepDimTol_PerpendicularityTolerance &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepDimTol_RWPerpendicularityTolerance {
	~RWStepDimTol_RWPerpendicularityTolerance() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepDimTol_RWPerpendicularityTolerance\n");}
	}
};

%nodefaultctor RWStepDimTol_RWSymmetryTolerance;
class RWStepDimTol_RWSymmetryTolerance {
	public:
		%feature("autodoc", "1");
		RWStepDimTol_RWSymmetryTolerance();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepDimTol_SymmetryTolerance &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepDimTol_SymmetryTolerance &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepDimTol_SymmetryTolerance &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepDimTol_RWSymmetryTolerance {
	~RWStepDimTol_RWSymmetryTolerance() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepDimTol_RWSymmetryTolerance\n");}
	}
};

%nodefaultctor RWStepDimTol_RWDatumReference;
class RWStepDimTol_RWDatumReference {
	public:
		%feature("autodoc", "1");
		RWStepDimTol_RWDatumReference();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepDimTol_DatumReference &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepDimTol_DatumReference &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepDimTol_DatumReference &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepDimTol_RWDatumReference {
	~RWStepDimTol_RWDatumReference() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepDimTol_RWDatumReference\n");}
	}
};

%nodefaultctor RWStepDimTol_RWCircularRunoutTolerance;
class RWStepDimTol_RWCircularRunoutTolerance {
	public:
		%feature("autodoc", "1");
		RWStepDimTol_RWCircularRunoutTolerance();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepDimTol_CircularRunoutTolerance &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepDimTol_CircularRunoutTolerance &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepDimTol_CircularRunoutTolerance &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepDimTol_RWCircularRunoutTolerance {
	~RWStepDimTol_RWCircularRunoutTolerance() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepDimTol_RWCircularRunoutTolerance\n");}
	}
};

%nodefaultctor RWStepDimTol_RWParallelismTolerance;
class RWStepDimTol_RWParallelismTolerance {
	public:
		%feature("autodoc", "1");
		RWStepDimTol_RWParallelismTolerance();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepDimTol_ParallelismTolerance &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepDimTol_ParallelismTolerance &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepDimTol_ParallelismTolerance &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepDimTol_RWParallelismTolerance {
	~RWStepDimTol_RWParallelismTolerance() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepDimTol_RWParallelismTolerance\n");}
	}
};

%nodefaultctor RWStepDimTol_RWPositionTolerance;
class RWStepDimTol_RWPositionTolerance {
	public:
		%feature("autodoc", "1");
		RWStepDimTol_RWPositionTolerance();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepDimTol_PositionTolerance &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepDimTol_PositionTolerance &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepDimTol_PositionTolerance &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepDimTol_RWPositionTolerance {
	~RWStepDimTol_RWPositionTolerance() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepDimTol_RWPositionTolerance\n");}
	}
};

%nodefaultctor RWStepDimTol_RWSurfaceProfileTolerance;
class RWStepDimTol_RWSurfaceProfileTolerance {
	public:
		%feature("autodoc", "1");
		RWStepDimTol_RWSurfaceProfileTolerance();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepDimTol_SurfaceProfileTolerance &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepDimTol_SurfaceProfileTolerance &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepDimTol_SurfaceProfileTolerance &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepDimTol_RWSurfaceProfileTolerance {
	~RWStepDimTol_RWSurfaceProfileTolerance() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepDimTol_RWSurfaceProfileTolerance\n");}
	}
};

%nodefaultctor RWStepDimTol_RWLineProfileTolerance;
class RWStepDimTol_RWLineProfileTolerance {
	public:
		%feature("autodoc", "1");
		RWStepDimTol_RWLineProfileTolerance();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepDimTol_LineProfileTolerance &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepDimTol_LineProfileTolerance &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepDimTol_LineProfileTolerance &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepDimTol_RWLineProfileTolerance {
	~RWStepDimTol_RWLineProfileTolerance() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepDimTol_RWLineProfileTolerance\n");}
	}
};

%nodefaultctor RWStepDimTol_RWDatumTarget;
class RWStepDimTol_RWDatumTarget {
	public:
		%feature("autodoc", "1");
		RWStepDimTol_RWDatumTarget();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepDimTol_DatumTarget &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepDimTol_DatumTarget &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepDimTol_DatumTarget &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepDimTol_RWDatumTarget {
	~RWStepDimTol_RWDatumTarget() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepDimTol_RWDatumTarget\n");}
	}
};

%nodefaultctor RWStepDimTol_RWFlatnessTolerance;
class RWStepDimTol_RWFlatnessTolerance {
	public:
		%feature("autodoc", "1");
		RWStepDimTol_RWFlatnessTolerance();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepDimTol_FlatnessTolerance &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepDimTol_FlatnessTolerance &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepDimTol_FlatnessTolerance &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepDimTol_RWFlatnessTolerance {
	~RWStepDimTol_RWFlatnessTolerance() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepDimTol_RWFlatnessTolerance\n");}
	}
};

%nodefaultctor RWStepDimTol_RWGeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol;
class RWStepDimTol_RWGeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol {
	public:
		%feature("autodoc", "1");
		RWStepDimTol_RWGeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepDimTol_RWGeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol {
	~RWStepDimTol_RWGeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepDimTol_RWGeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol\n");}
	}
};

%nodefaultctor RWStepDimTol_RWStraightnessTolerance;
class RWStepDimTol_RWStraightnessTolerance {
	public:
		%feature("autodoc", "1");
		RWStepDimTol_RWStraightnessTolerance();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepDimTol_StraightnessTolerance &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepDimTol_StraightnessTolerance &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepDimTol_StraightnessTolerance &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepDimTol_RWStraightnessTolerance {
	~RWStepDimTol_RWStraightnessTolerance() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepDimTol_RWStraightnessTolerance\n");}
	}
};

%nodefaultctor RWStepDimTol_RWCylindricityTolerance;
class RWStepDimTol_RWCylindricityTolerance {
	public:
		%feature("autodoc", "1");
		RWStepDimTol_RWCylindricityTolerance();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepDimTol_CylindricityTolerance &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepDimTol_CylindricityTolerance &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepDimTol_CylindricityTolerance &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepDimTol_RWCylindricityTolerance {
	~RWStepDimTol_RWCylindricityTolerance() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepDimTol_RWCylindricityTolerance\n");}
	}
};

%nodefaultctor RWStepDimTol_RWGeometricToleranceRelationship;
class RWStepDimTol_RWGeometricToleranceRelationship {
	public:
		%feature("autodoc", "1");
		RWStepDimTol_RWGeometricToleranceRelationship();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepDimTol_GeometricToleranceRelationship &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepDimTol_GeometricToleranceRelationship &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepDimTol_GeometricToleranceRelationship &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepDimTol_RWGeometricToleranceRelationship {
	~RWStepDimTol_RWGeometricToleranceRelationship() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepDimTol_RWGeometricToleranceRelationship\n");}
	}
};

%nodefaultctor RWStepDimTol_RWCoaxialityTolerance;
class RWStepDimTol_RWCoaxialityTolerance {
	public:
		%feature("autodoc", "1");
		RWStepDimTol_RWCoaxialityTolerance();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepDimTol_CoaxialityTolerance &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepDimTol_CoaxialityTolerance &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepDimTol_CoaxialityTolerance &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepDimTol_RWCoaxialityTolerance {
	~RWStepDimTol_RWCoaxialityTolerance() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepDimTol_RWCoaxialityTolerance\n");}
	}
};

%nodefaultctor RWStepDimTol_RWTotalRunoutTolerance;
class RWStepDimTol_RWTotalRunoutTolerance {
	public:
		%feature("autodoc", "1");
		RWStepDimTol_RWTotalRunoutTolerance();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepDimTol_TotalRunoutTolerance &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepDimTol_TotalRunoutTolerance &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepDimTol_TotalRunoutTolerance &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepDimTol_RWTotalRunoutTolerance {
	~RWStepDimTol_RWTotalRunoutTolerance() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepDimTol_RWTotalRunoutTolerance\n");}
	}
};

%nodefaultctor RWStepDimTol_RWModifiedGeometricTolerance;
class RWStepDimTol_RWModifiedGeometricTolerance {
	public:
		%feature("autodoc", "1");
		RWStepDimTol_RWModifiedGeometricTolerance();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepDimTol_ModifiedGeometricTolerance &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepDimTol_ModifiedGeometricTolerance &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepDimTol_ModifiedGeometricTolerance &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepDimTol_RWModifiedGeometricTolerance {
	~RWStepDimTol_RWModifiedGeometricTolerance() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepDimTol_RWModifiedGeometricTolerance\n");}
	}
};

%nodefaultctor RWStepDimTol_RWConcentricityTolerance;
class RWStepDimTol_RWConcentricityTolerance {
	public:
		%feature("autodoc", "1");
		RWStepDimTol_RWConcentricityTolerance();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepDimTol_ConcentricityTolerance &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepDimTol_ConcentricityTolerance &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepDimTol_ConcentricityTolerance &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepDimTol_RWConcentricityTolerance {
	~RWStepDimTol_RWConcentricityTolerance() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepDimTol_RWConcentricityTolerance\n");}
	}
};

%nodefaultctor RWStepDimTol_RWDatum;
class RWStepDimTol_RWDatum {
	public:
		%feature("autodoc", "1");
		RWStepDimTol_RWDatum();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepDimTol_Datum &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepDimTol_Datum &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepDimTol_Datum &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepDimTol_RWDatum {
	~RWStepDimTol_RWDatum() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepDimTol_RWDatum\n");}
	}
};

%nodefaultctor RWStepDimTol_RWGeometricToleranceWithDatumReference;
class RWStepDimTol_RWGeometricToleranceWithDatumReference {
	public:
		%feature("autodoc", "1");
		RWStepDimTol_RWGeometricToleranceWithDatumReference();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepDimTol_GeometricToleranceWithDatumReference &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepDimTol_GeometricToleranceWithDatumReference &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepDimTol_GeometricToleranceWithDatumReference &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepDimTol_RWGeometricToleranceWithDatumReference {
	~RWStepDimTol_RWGeometricToleranceWithDatumReference() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepDimTol_RWGeometricToleranceWithDatumReference\n");}
	}
};