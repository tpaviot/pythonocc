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
%module StepDimTol

%include typemaps.i
%include cmalloc.i
%include cpointer.i
%include carrays.i
%include exception.i
%include std_list.i
%include std_string.i

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


%include StepDimTol_dependencies.i


%include StepDimTol_headers.i


enum StepDimTol_LimitCondition {
	StepDimTol_MaximumMaterialCondition,
	StepDimTol_LeastMaterialCondition,
	StepDimTol_RegardlessOfFeatureSize,
	};



%nodefaultctor Handle_StepDimTol_DatumTarget;
class Handle_StepDimTol_DatumTarget : public Handle_StepRepr_ShapeAspect {
	public:
		%feature("autodoc", "1");
		Handle_StepDimTol_DatumTarget();
		%feature("autodoc", "1");
		Handle_StepDimTol_DatumTarget(const Handle_StepDimTol_DatumTarget &aHandle);
		%feature("autodoc", "1");
		Handle_StepDimTol_DatumTarget(const StepDimTol_DatumTarget *anItem);
		%feature("autodoc", "1");
		Handle_StepDimTol_DatumTarget const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepDimTol_DatumTarget {
	StepDimTol_DatumTarget* GetObject() {
	return (StepDimTol_DatumTarget*)$self->Access();
	}
};
%extend Handle_StepDimTol_DatumTarget {
	~Handle_StepDimTol_DatumTarget() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepDimTol_DatumTarget\n");}
	}
};

%nodefaultctor Handle_StepDimTol_PlacedDatumTargetFeature;
class Handle_StepDimTol_PlacedDatumTargetFeature : public Handle_StepDimTol_DatumTarget {
	public:
		%feature("autodoc", "1");
		Handle_StepDimTol_PlacedDatumTargetFeature();
		%feature("autodoc", "1");
		Handle_StepDimTol_PlacedDatumTargetFeature(const Handle_StepDimTol_PlacedDatumTargetFeature &aHandle);
		%feature("autodoc", "1");
		Handle_StepDimTol_PlacedDatumTargetFeature(const StepDimTol_PlacedDatumTargetFeature *anItem);
		%feature("autodoc", "1");
		Handle_StepDimTol_PlacedDatumTargetFeature const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepDimTol_PlacedDatumTargetFeature {
	StepDimTol_PlacedDatumTargetFeature* GetObject() {
	return (StepDimTol_PlacedDatumTargetFeature*)$self->Access();
	}
};
%extend Handle_StepDimTol_PlacedDatumTargetFeature {
	~Handle_StepDimTol_PlacedDatumTargetFeature() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepDimTol_PlacedDatumTargetFeature\n");}
	}
};

%nodefaultctor Handle_StepDimTol_HArray1OfDatumReference;
class Handle_StepDimTol_HArray1OfDatumReference : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepDimTol_HArray1OfDatumReference();
		%feature("autodoc", "1");
		Handle_StepDimTol_HArray1OfDatumReference(const Handle_StepDimTol_HArray1OfDatumReference &aHandle);
		%feature("autodoc", "1");
		Handle_StepDimTol_HArray1OfDatumReference(const StepDimTol_HArray1OfDatumReference *anItem);
		%feature("autodoc", "1");
		Handle_StepDimTol_HArray1OfDatumReference const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepDimTol_HArray1OfDatumReference {
	StepDimTol_HArray1OfDatumReference* GetObject() {
	return (StepDimTol_HArray1OfDatumReference*)$self->Access();
	}
};
%extend Handle_StepDimTol_HArray1OfDatumReference {
	~Handle_StepDimTol_HArray1OfDatumReference() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepDimTol_HArray1OfDatumReference\n");}
	}
};

%nodefaultctor Handle_StepDimTol_GeometricTolerance;
class Handle_StepDimTol_GeometricTolerance : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepDimTol_GeometricTolerance();
		%feature("autodoc", "1");
		Handle_StepDimTol_GeometricTolerance(const Handle_StepDimTol_GeometricTolerance &aHandle);
		%feature("autodoc", "1");
		Handle_StepDimTol_GeometricTolerance(const StepDimTol_GeometricTolerance *anItem);
		%feature("autodoc", "1");
		Handle_StepDimTol_GeometricTolerance const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepDimTol_GeometricTolerance {
	StepDimTol_GeometricTolerance* GetObject() {
	return (StepDimTol_GeometricTolerance*)$self->Access();
	}
};
%extend Handle_StepDimTol_GeometricTolerance {
	~Handle_StepDimTol_GeometricTolerance() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepDimTol_GeometricTolerance\n");}
	}
};

%nodefaultctor Handle_StepDimTol_GeometricToleranceWithDatumReference;
class Handle_StepDimTol_GeometricToleranceWithDatumReference : public Handle_StepDimTol_GeometricTolerance {
	public:
		%feature("autodoc", "1");
		Handle_StepDimTol_GeometricToleranceWithDatumReference();
		%feature("autodoc", "1");
		Handle_StepDimTol_GeometricToleranceWithDatumReference(const Handle_StepDimTol_GeometricToleranceWithDatumReference &aHandle);
		%feature("autodoc", "1");
		Handle_StepDimTol_GeometricToleranceWithDatumReference(const StepDimTol_GeometricToleranceWithDatumReference *anItem);
		%feature("autodoc", "1");
		Handle_StepDimTol_GeometricToleranceWithDatumReference const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepDimTol_GeometricToleranceWithDatumReference {
	StepDimTol_GeometricToleranceWithDatumReference* GetObject() {
	return (StepDimTol_GeometricToleranceWithDatumReference*)$self->Access();
	}
};
%extend Handle_StepDimTol_GeometricToleranceWithDatumReference {
	~Handle_StepDimTol_GeometricToleranceWithDatumReference() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepDimTol_GeometricToleranceWithDatumReference\n");}
	}
};

%nodefaultctor Handle_StepDimTol_CoaxialityTolerance;
class Handle_StepDimTol_CoaxialityTolerance : public Handle_StepDimTol_GeometricToleranceWithDatumReference {
	public:
		%feature("autodoc", "1");
		Handle_StepDimTol_CoaxialityTolerance();
		%feature("autodoc", "1");
		Handle_StepDimTol_CoaxialityTolerance(const Handle_StepDimTol_CoaxialityTolerance &aHandle);
		%feature("autodoc", "1");
		Handle_StepDimTol_CoaxialityTolerance(const StepDimTol_CoaxialityTolerance *anItem);
		%feature("autodoc", "1");
		Handle_StepDimTol_CoaxialityTolerance const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepDimTol_CoaxialityTolerance {
	StepDimTol_CoaxialityTolerance* GetObject() {
	return (StepDimTol_CoaxialityTolerance*)$self->Access();
	}
};
%extend Handle_StepDimTol_CoaxialityTolerance {
	~Handle_StepDimTol_CoaxialityTolerance() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepDimTol_CoaxialityTolerance\n");}
	}
};

%nodefaultctor Handle_StepDimTol_Datum;
class Handle_StepDimTol_Datum : public Handle_StepRepr_ShapeAspect {
	public:
		%feature("autodoc", "1");
		Handle_StepDimTol_Datum();
		%feature("autodoc", "1");
		Handle_StepDimTol_Datum(const Handle_StepDimTol_Datum &aHandle);
		%feature("autodoc", "1");
		Handle_StepDimTol_Datum(const StepDimTol_Datum *anItem);
		%feature("autodoc", "1");
		Handle_StepDimTol_Datum const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepDimTol_Datum {
	StepDimTol_Datum* GetObject() {
	return (StepDimTol_Datum*)$self->Access();
	}
};
%extend Handle_StepDimTol_Datum {
	~Handle_StepDimTol_Datum() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepDimTol_Datum\n");}
	}
};

%nodefaultctor Handle_StepDimTol_LineProfileTolerance;
class Handle_StepDimTol_LineProfileTolerance : public Handle_StepDimTol_GeometricTolerance {
	public:
		%feature("autodoc", "1");
		Handle_StepDimTol_LineProfileTolerance();
		%feature("autodoc", "1");
		Handle_StepDimTol_LineProfileTolerance(const Handle_StepDimTol_LineProfileTolerance &aHandle);
		%feature("autodoc", "1");
		Handle_StepDimTol_LineProfileTolerance(const StepDimTol_LineProfileTolerance *anItem);
		%feature("autodoc", "1");
		Handle_StepDimTol_LineProfileTolerance const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepDimTol_LineProfileTolerance {
	StepDimTol_LineProfileTolerance* GetObject() {
	return (StepDimTol_LineProfileTolerance*)$self->Access();
	}
};
%extend Handle_StepDimTol_LineProfileTolerance {
	~Handle_StepDimTol_LineProfileTolerance() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepDimTol_LineProfileTolerance\n");}
	}
};

%nodefaultctor Handle_StepDimTol_AngularityTolerance;
class Handle_StepDimTol_AngularityTolerance : public Handle_StepDimTol_GeometricToleranceWithDatumReference {
	public:
		%feature("autodoc", "1");
		Handle_StepDimTol_AngularityTolerance();
		%feature("autodoc", "1");
		Handle_StepDimTol_AngularityTolerance(const Handle_StepDimTol_AngularityTolerance &aHandle);
		%feature("autodoc", "1");
		Handle_StepDimTol_AngularityTolerance(const StepDimTol_AngularityTolerance *anItem);
		%feature("autodoc", "1");
		Handle_StepDimTol_AngularityTolerance const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepDimTol_AngularityTolerance {
	StepDimTol_AngularityTolerance* GetObject() {
	return (StepDimTol_AngularityTolerance*)$self->Access();
	}
};
%extend Handle_StepDimTol_AngularityTolerance {
	~Handle_StepDimTol_AngularityTolerance() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepDimTol_AngularityTolerance\n");}
	}
};

%nodefaultctor Handle_StepDimTol_CircularRunoutTolerance;
class Handle_StepDimTol_CircularRunoutTolerance : public Handle_StepDimTol_GeometricToleranceWithDatumReference {
	public:
		%feature("autodoc", "1");
		Handle_StepDimTol_CircularRunoutTolerance();
		%feature("autodoc", "1");
		Handle_StepDimTol_CircularRunoutTolerance(const Handle_StepDimTol_CircularRunoutTolerance &aHandle);
		%feature("autodoc", "1");
		Handle_StepDimTol_CircularRunoutTolerance(const StepDimTol_CircularRunoutTolerance *anItem);
		%feature("autodoc", "1");
		Handle_StepDimTol_CircularRunoutTolerance const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepDimTol_CircularRunoutTolerance {
	StepDimTol_CircularRunoutTolerance* GetObject() {
	return (StepDimTol_CircularRunoutTolerance*)$self->Access();
	}
};
%extend Handle_StepDimTol_CircularRunoutTolerance {
	~Handle_StepDimTol_CircularRunoutTolerance() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepDimTol_CircularRunoutTolerance\n");}
	}
};

%nodefaultctor Handle_StepDimTol_TotalRunoutTolerance;
class Handle_StepDimTol_TotalRunoutTolerance : public Handle_StepDimTol_GeometricToleranceWithDatumReference {
	public:
		%feature("autodoc", "1");
		Handle_StepDimTol_TotalRunoutTolerance();
		%feature("autodoc", "1");
		Handle_StepDimTol_TotalRunoutTolerance(const Handle_StepDimTol_TotalRunoutTolerance &aHandle);
		%feature("autodoc", "1");
		Handle_StepDimTol_TotalRunoutTolerance(const StepDimTol_TotalRunoutTolerance *anItem);
		%feature("autodoc", "1");
		Handle_StepDimTol_TotalRunoutTolerance const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepDimTol_TotalRunoutTolerance {
	StepDimTol_TotalRunoutTolerance* GetObject() {
	return (StepDimTol_TotalRunoutTolerance*)$self->Access();
	}
};
%extend Handle_StepDimTol_TotalRunoutTolerance {
	~Handle_StepDimTol_TotalRunoutTolerance() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepDimTol_TotalRunoutTolerance\n");}
	}
};

%nodefaultctor Handle_StepDimTol_PositionTolerance;
class Handle_StepDimTol_PositionTolerance : public Handle_StepDimTol_GeometricTolerance {
	public:
		%feature("autodoc", "1");
		Handle_StepDimTol_PositionTolerance();
		%feature("autodoc", "1");
		Handle_StepDimTol_PositionTolerance(const Handle_StepDimTol_PositionTolerance &aHandle);
		%feature("autodoc", "1");
		Handle_StepDimTol_PositionTolerance(const StepDimTol_PositionTolerance *anItem);
		%feature("autodoc", "1");
		Handle_StepDimTol_PositionTolerance const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepDimTol_PositionTolerance {
	StepDimTol_PositionTolerance* GetObject() {
	return (StepDimTol_PositionTolerance*)$self->Access();
	}
};
%extend Handle_StepDimTol_PositionTolerance {
	~Handle_StepDimTol_PositionTolerance() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepDimTol_PositionTolerance\n");}
	}
};

%nodefaultctor Handle_StepDimTol_GeometricToleranceRelationship;
class Handle_StepDimTol_GeometricToleranceRelationship : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepDimTol_GeometricToleranceRelationship();
		%feature("autodoc", "1");
		Handle_StepDimTol_GeometricToleranceRelationship(const Handle_StepDimTol_GeometricToleranceRelationship &aHandle);
		%feature("autodoc", "1");
		Handle_StepDimTol_GeometricToleranceRelationship(const StepDimTol_GeometricToleranceRelationship *anItem);
		%feature("autodoc", "1");
		Handle_StepDimTol_GeometricToleranceRelationship const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepDimTol_GeometricToleranceRelationship {
	StepDimTol_GeometricToleranceRelationship* GetObject() {
	return (StepDimTol_GeometricToleranceRelationship*)$self->Access();
	}
};
%extend Handle_StepDimTol_GeometricToleranceRelationship {
	~Handle_StepDimTol_GeometricToleranceRelationship() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepDimTol_GeometricToleranceRelationship\n");}
	}
};

%nodefaultctor Handle_StepDimTol_ConcentricityTolerance;
class Handle_StepDimTol_ConcentricityTolerance : public Handle_StepDimTol_GeometricToleranceWithDatumReference {
	public:
		%feature("autodoc", "1");
		Handle_StepDimTol_ConcentricityTolerance();
		%feature("autodoc", "1");
		Handle_StepDimTol_ConcentricityTolerance(const Handle_StepDimTol_ConcentricityTolerance &aHandle);
		%feature("autodoc", "1");
		Handle_StepDimTol_ConcentricityTolerance(const StepDimTol_ConcentricityTolerance *anItem);
		%feature("autodoc", "1");
		Handle_StepDimTol_ConcentricityTolerance const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepDimTol_ConcentricityTolerance {
	StepDimTol_ConcentricityTolerance* GetObject() {
	return (StepDimTol_ConcentricityTolerance*)$self->Access();
	}
};
%extend Handle_StepDimTol_ConcentricityTolerance {
	~Handle_StepDimTol_ConcentricityTolerance() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepDimTol_ConcentricityTolerance\n");}
	}
};

%nodefaultctor Handle_StepDimTol_ParallelismTolerance;
class Handle_StepDimTol_ParallelismTolerance : public Handle_StepDimTol_GeometricToleranceWithDatumReference {
	public:
		%feature("autodoc", "1");
		Handle_StepDimTol_ParallelismTolerance();
		%feature("autodoc", "1");
		Handle_StepDimTol_ParallelismTolerance(const Handle_StepDimTol_ParallelismTolerance &aHandle);
		%feature("autodoc", "1");
		Handle_StepDimTol_ParallelismTolerance(const StepDimTol_ParallelismTolerance *anItem);
		%feature("autodoc", "1");
		Handle_StepDimTol_ParallelismTolerance const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepDimTol_ParallelismTolerance {
	StepDimTol_ParallelismTolerance* GetObject() {
	return (StepDimTol_ParallelismTolerance*)$self->Access();
	}
};
%extend Handle_StepDimTol_ParallelismTolerance {
	~Handle_StepDimTol_ParallelismTolerance() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepDimTol_ParallelismTolerance\n");}
	}
};

%nodefaultctor Handle_StepDimTol_PerpendicularityTolerance;
class Handle_StepDimTol_PerpendicularityTolerance : public Handle_StepDimTol_GeometricToleranceWithDatumReference {
	public:
		%feature("autodoc", "1");
		Handle_StepDimTol_PerpendicularityTolerance();
		%feature("autodoc", "1");
		Handle_StepDimTol_PerpendicularityTolerance(const Handle_StepDimTol_PerpendicularityTolerance &aHandle);
		%feature("autodoc", "1");
		Handle_StepDimTol_PerpendicularityTolerance(const StepDimTol_PerpendicularityTolerance *anItem);
		%feature("autodoc", "1");
		Handle_StepDimTol_PerpendicularityTolerance const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepDimTol_PerpendicularityTolerance {
	StepDimTol_PerpendicularityTolerance* GetObject() {
	return (StepDimTol_PerpendicularityTolerance*)$self->Access();
	}
};
%extend Handle_StepDimTol_PerpendicularityTolerance {
	~Handle_StepDimTol_PerpendicularityTolerance() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepDimTol_PerpendicularityTolerance\n");}
	}
};

%nodefaultctor Handle_StepDimTol_StraightnessTolerance;
class Handle_StepDimTol_StraightnessTolerance : public Handle_StepDimTol_GeometricTolerance {
	public:
		%feature("autodoc", "1");
		Handle_StepDimTol_StraightnessTolerance();
		%feature("autodoc", "1");
		Handle_StepDimTol_StraightnessTolerance(const Handle_StepDimTol_StraightnessTolerance &aHandle);
		%feature("autodoc", "1");
		Handle_StepDimTol_StraightnessTolerance(const StepDimTol_StraightnessTolerance *anItem);
		%feature("autodoc", "1");
		Handle_StepDimTol_StraightnessTolerance const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepDimTol_StraightnessTolerance {
	StepDimTol_StraightnessTolerance* GetObject() {
	return (StepDimTol_StraightnessTolerance*)$self->Access();
	}
};
%extend Handle_StepDimTol_StraightnessTolerance {
	~Handle_StepDimTol_StraightnessTolerance() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepDimTol_StraightnessTolerance\n");}
	}
};

%nodefaultctor Handle_StepDimTol_FlatnessTolerance;
class Handle_StepDimTol_FlatnessTolerance : public Handle_StepDimTol_GeometricTolerance {
	public:
		%feature("autodoc", "1");
		Handle_StepDimTol_FlatnessTolerance();
		%feature("autodoc", "1");
		Handle_StepDimTol_FlatnessTolerance(const Handle_StepDimTol_FlatnessTolerance &aHandle);
		%feature("autodoc", "1");
		Handle_StepDimTol_FlatnessTolerance(const StepDimTol_FlatnessTolerance *anItem);
		%feature("autodoc", "1");
		Handle_StepDimTol_FlatnessTolerance const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepDimTol_FlatnessTolerance {
	StepDimTol_FlatnessTolerance* GetObject() {
	return (StepDimTol_FlatnessTolerance*)$self->Access();
	}
};
%extend Handle_StepDimTol_FlatnessTolerance {
	~Handle_StepDimTol_FlatnessTolerance() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepDimTol_FlatnessTolerance\n");}
	}
};

%nodefaultctor Handle_StepDimTol_DatumReference;
class Handle_StepDimTol_DatumReference : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepDimTol_DatumReference();
		%feature("autodoc", "1");
		Handle_StepDimTol_DatumReference(const Handle_StepDimTol_DatumReference &aHandle);
		%feature("autodoc", "1");
		Handle_StepDimTol_DatumReference(const StepDimTol_DatumReference *anItem);
		%feature("autodoc", "1");
		Handle_StepDimTol_DatumReference const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepDimTol_DatumReference {
	StepDimTol_DatumReference* GetObject() {
	return (StepDimTol_DatumReference*)$self->Access();
	}
};
%extend Handle_StepDimTol_DatumReference {
	~Handle_StepDimTol_DatumReference() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepDimTol_DatumReference\n");}
	}
};

%nodefaultctor Handle_StepDimTol_DatumFeature;
class Handle_StepDimTol_DatumFeature : public Handle_StepRepr_ShapeAspect {
	public:
		%feature("autodoc", "1");
		Handle_StepDimTol_DatumFeature();
		%feature("autodoc", "1");
		Handle_StepDimTol_DatumFeature(const Handle_StepDimTol_DatumFeature &aHandle);
		%feature("autodoc", "1");
		Handle_StepDimTol_DatumFeature(const StepDimTol_DatumFeature *anItem);
		%feature("autodoc", "1");
		Handle_StepDimTol_DatumFeature const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepDimTol_DatumFeature {
	StepDimTol_DatumFeature* GetObject() {
	return (StepDimTol_DatumFeature*)$self->Access();
	}
};
%extend Handle_StepDimTol_DatumFeature {
	~Handle_StepDimTol_DatumFeature() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepDimTol_DatumFeature\n");}
	}
};

%nodefaultctor Handle_StepDimTol_CylindricityTolerance;
class Handle_StepDimTol_CylindricityTolerance : public Handle_StepDimTol_GeometricTolerance {
	public:
		%feature("autodoc", "1");
		Handle_StepDimTol_CylindricityTolerance();
		%feature("autodoc", "1");
		Handle_StepDimTol_CylindricityTolerance(const Handle_StepDimTol_CylindricityTolerance &aHandle);
		%feature("autodoc", "1");
		Handle_StepDimTol_CylindricityTolerance(const StepDimTol_CylindricityTolerance *anItem);
		%feature("autodoc", "1");
		Handle_StepDimTol_CylindricityTolerance const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepDimTol_CylindricityTolerance {
	StepDimTol_CylindricityTolerance* GetObject() {
	return (StepDimTol_CylindricityTolerance*)$self->Access();
	}
};
%extend Handle_StepDimTol_CylindricityTolerance {
	~Handle_StepDimTol_CylindricityTolerance() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepDimTol_CylindricityTolerance\n");}
	}
};

%nodefaultctor Handle_StepDimTol_SymmetryTolerance;
class Handle_StepDimTol_SymmetryTolerance : public Handle_StepDimTol_GeometricToleranceWithDatumReference {
	public:
		%feature("autodoc", "1");
		Handle_StepDimTol_SymmetryTolerance();
		%feature("autodoc", "1");
		Handle_StepDimTol_SymmetryTolerance(const Handle_StepDimTol_SymmetryTolerance &aHandle);
		%feature("autodoc", "1");
		Handle_StepDimTol_SymmetryTolerance(const StepDimTol_SymmetryTolerance *anItem);
		%feature("autodoc", "1");
		Handle_StepDimTol_SymmetryTolerance const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepDimTol_SymmetryTolerance {
	StepDimTol_SymmetryTolerance* GetObject() {
	return (StepDimTol_SymmetryTolerance*)$self->Access();
	}
};
%extend Handle_StepDimTol_SymmetryTolerance {
	~Handle_StepDimTol_SymmetryTolerance() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepDimTol_SymmetryTolerance\n");}
	}
};

%nodefaultctor Handle_StepDimTol_SurfaceProfileTolerance;
class Handle_StepDimTol_SurfaceProfileTolerance : public Handle_StepDimTol_GeometricTolerance {
	public:
		%feature("autodoc", "1");
		Handle_StepDimTol_SurfaceProfileTolerance();
		%feature("autodoc", "1");
		Handle_StepDimTol_SurfaceProfileTolerance(const Handle_StepDimTol_SurfaceProfileTolerance &aHandle);
		%feature("autodoc", "1");
		Handle_StepDimTol_SurfaceProfileTolerance(const StepDimTol_SurfaceProfileTolerance *anItem);
		%feature("autodoc", "1");
		Handle_StepDimTol_SurfaceProfileTolerance const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepDimTol_SurfaceProfileTolerance {
	StepDimTol_SurfaceProfileTolerance* GetObject() {
	return (StepDimTol_SurfaceProfileTolerance*)$self->Access();
	}
};
%extend Handle_StepDimTol_SurfaceProfileTolerance {
	~Handle_StepDimTol_SurfaceProfileTolerance() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepDimTol_SurfaceProfileTolerance\n");}
	}
};

%nodefaultctor Handle_StepDimTol_ModifiedGeometricTolerance;
class Handle_StepDimTol_ModifiedGeometricTolerance : public Handle_StepDimTol_GeometricTolerance {
	public:
		%feature("autodoc", "1");
		Handle_StepDimTol_ModifiedGeometricTolerance();
		%feature("autodoc", "1");
		Handle_StepDimTol_ModifiedGeometricTolerance(const Handle_StepDimTol_ModifiedGeometricTolerance &aHandle);
		%feature("autodoc", "1");
		Handle_StepDimTol_ModifiedGeometricTolerance(const StepDimTol_ModifiedGeometricTolerance *anItem);
		%feature("autodoc", "1");
		Handle_StepDimTol_ModifiedGeometricTolerance const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepDimTol_ModifiedGeometricTolerance {
	StepDimTol_ModifiedGeometricTolerance* GetObject() {
	return (StepDimTol_ModifiedGeometricTolerance*)$self->Access();
	}
};
%extend Handle_StepDimTol_ModifiedGeometricTolerance {
	~Handle_StepDimTol_ModifiedGeometricTolerance() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepDimTol_ModifiedGeometricTolerance\n");}
	}
};

%nodefaultctor Handle_StepDimTol_CommonDatum;
class Handle_StepDimTol_CommonDatum : public Handle_StepRepr_CompositeShapeAspect {
	public:
		%feature("autodoc", "1");
		Handle_StepDimTol_CommonDatum();
		%feature("autodoc", "1");
		Handle_StepDimTol_CommonDatum(const Handle_StepDimTol_CommonDatum &aHandle);
		%feature("autodoc", "1");
		Handle_StepDimTol_CommonDatum(const StepDimTol_CommonDatum *anItem);
		%feature("autodoc", "1");
		Handle_StepDimTol_CommonDatum const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepDimTol_CommonDatum {
	StepDimTol_CommonDatum* GetObject() {
	return (StepDimTol_CommonDatum*)$self->Access();
	}
};
%extend Handle_StepDimTol_CommonDatum {
	~Handle_StepDimTol_CommonDatum() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepDimTol_CommonDatum\n");}
	}
};

%nodefaultctor Handle_StepDimTol_RoundnessTolerance;
class Handle_StepDimTol_RoundnessTolerance : public Handle_StepDimTol_GeometricTolerance {
	public:
		%feature("autodoc", "1");
		Handle_StepDimTol_RoundnessTolerance();
		%feature("autodoc", "1");
		Handle_StepDimTol_RoundnessTolerance(const Handle_StepDimTol_RoundnessTolerance &aHandle);
		%feature("autodoc", "1");
		Handle_StepDimTol_RoundnessTolerance(const StepDimTol_RoundnessTolerance *anItem);
		%feature("autodoc", "1");
		Handle_StepDimTol_RoundnessTolerance const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepDimTol_RoundnessTolerance {
	StepDimTol_RoundnessTolerance* GetObject() {
	return (StepDimTol_RoundnessTolerance*)$self->Access();
	}
};
%extend Handle_StepDimTol_RoundnessTolerance {
	~Handle_StepDimTol_RoundnessTolerance() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepDimTol_RoundnessTolerance\n");}
	}
};

%nodefaultctor Handle_StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol;
class Handle_StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol : public Handle_StepDimTol_GeometricTolerance {
	public:
		%feature("autodoc", "1");
		Handle_StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol();
		%feature("autodoc", "1");
		Handle_StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol(const Handle_StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol &aHandle);
		%feature("autodoc", "1");
		Handle_StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol(const StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol *anItem);
		%feature("autodoc", "1");
		Handle_StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol {
	StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol* GetObject() {
	return (StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol*)$self->Access();
	}
};
%extend Handle_StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol {
	~Handle_StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol\n");}
	}
};

%nodefaultctor StepDimTol_GeometricTolerance;
class StepDimTol_GeometricTolerance : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepDimTol_GeometricTolerance();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_TCollection_HAsciiString &aDescription, const Handle_StepBasic_MeasureWithUnit &aMagnitude, const Handle_StepRepr_ShapeAspect &aTolerancedShapeAspect);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Name() const;
		%feature("autodoc", "1");
		void SetName(const Handle_TCollection_HAsciiString &Name);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Description() const;
		%feature("autodoc", "1");
		void SetDescription(const Handle_TCollection_HAsciiString &Description);
		%feature("autodoc", "1");
		Handle_StepBasic_MeasureWithUnit Magnitude() const;
		%feature("autodoc", "1");
		void SetMagnitude(const Handle_StepBasic_MeasureWithUnit &Magnitude);
		%feature("autodoc", "1");
		Handle_StepRepr_ShapeAspect TolerancedShapeAspect() const;
		%feature("autodoc", "1");
		void SetTolerancedShapeAspect(const Handle_StepRepr_ShapeAspect &TolerancedShapeAspect);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepDimTol_GeometricTolerance {
	Handle_StepDimTol_GeometricTolerance GetHandle() {
	return *(Handle_StepDimTol_GeometricTolerance*) &$self;
	}
};
%extend StepDimTol_GeometricTolerance {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepDimTol_GeometricTolerance {
	~StepDimTol_GeometricTolerance() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepDimTol_GeometricTolerance\n");}
	}
};

%nodefaultctor StepDimTol_StraightnessTolerance;
class StepDimTol_StraightnessTolerance : public StepDimTol_GeometricTolerance {
	public:
		%feature("autodoc", "1");
		StepDimTol_StraightnessTolerance();

};
%extend StepDimTol_StraightnessTolerance {
	Handle_StepDimTol_StraightnessTolerance GetHandle() {
	return *(Handle_StepDimTol_StraightnessTolerance*) &$self;
	}
};
%extend StepDimTol_StraightnessTolerance {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepDimTol_StraightnessTolerance {
	~StepDimTol_StraightnessTolerance() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepDimTol_StraightnessTolerance\n");}
	}
};

%nodefaultctor StepDimTol_LineProfileTolerance;
class StepDimTol_LineProfileTolerance : public StepDimTol_GeometricTolerance {
	public:
		%feature("autodoc", "1");
		StepDimTol_LineProfileTolerance();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepDimTol_LineProfileTolerance {
	Handle_StepDimTol_LineProfileTolerance GetHandle() {
	return *(Handle_StepDimTol_LineProfileTolerance*) &$self;
	}
};
%extend StepDimTol_LineProfileTolerance {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepDimTol_LineProfileTolerance {
	~StepDimTol_LineProfileTolerance() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepDimTol_LineProfileTolerance\n");}
	}
};

%nodefaultctor StepDimTol_SurfaceProfileTolerance;
class StepDimTol_SurfaceProfileTolerance : public StepDimTol_GeometricTolerance {
	public:
		%feature("autodoc", "1");
		StepDimTol_SurfaceProfileTolerance();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepDimTol_SurfaceProfileTolerance {
	Handle_StepDimTol_SurfaceProfileTolerance GetHandle() {
	return *(Handle_StepDimTol_SurfaceProfileTolerance*) &$self;
	}
};
%extend StepDimTol_SurfaceProfileTolerance {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepDimTol_SurfaceProfileTolerance {
	~StepDimTol_SurfaceProfileTolerance() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepDimTol_SurfaceProfileTolerance\n");}
	}
};

%nodefaultctor StepDimTol_CylindricityTolerance;
class StepDimTol_CylindricityTolerance : public StepDimTol_GeometricTolerance {
	public:
		%feature("autodoc", "1");
		StepDimTol_CylindricityTolerance();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepDimTol_CylindricityTolerance {
	Handle_StepDimTol_CylindricityTolerance GetHandle() {
	return *(Handle_StepDimTol_CylindricityTolerance*) &$self;
	}
};
%extend StepDimTol_CylindricityTolerance {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepDimTol_CylindricityTolerance {
	~StepDimTol_CylindricityTolerance() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepDimTol_CylindricityTolerance\n");}
	}
};

%nodefaultctor StepDimTol_RoundnessTolerance;
class StepDimTol_RoundnessTolerance : public StepDimTol_GeometricTolerance {
	public:
		%feature("autodoc", "1");
		StepDimTol_RoundnessTolerance();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepDimTol_RoundnessTolerance {
	Handle_StepDimTol_RoundnessTolerance GetHandle() {
	return *(Handle_StepDimTol_RoundnessTolerance*) &$self;
	}
};
%extend StepDimTol_RoundnessTolerance {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepDimTol_RoundnessTolerance {
	~StepDimTol_RoundnessTolerance() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepDimTol_RoundnessTolerance\n");}
	}
};

%nodefaultctor StepDimTol_Array1OfDatumReference;
class StepDimTol_Array1OfDatumReference {
	public:
		%feature("autodoc", "1");
		StepDimTol_Array1OfDatumReference(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepDimTol_Array1OfDatumReference(const Handle_StepDimTol_DatumReference &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Handle_StepDimTol_DatumReference &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepDimTol_Array1OfDatumReference & Assign(const StepDimTol_Array1OfDatumReference &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StepDimTol_DatumReference &Value);
		%feature("autodoc", "1");
		const Handle_StepDimTol_DatumReference & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_StepDimTol_DatumReference & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_StepDimTol_DatumReference & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_StepDimTol_DatumReference & operator()(const Standard_Integer Index);

};
%extend StepDimTol_Array1OfDatumReference {
	~StepDimTol_Array1OfDatumReference() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepDimTol_Array1OfDatumReference\n");}
	}
};

%nodefaultctor StepDimTol_DatumTarget;
class StepDimTol_DatumTarget : public StepRepr_ShapeAspect {
	public:
		%feature("autodoc", "1");
		StepDimTol_DatumTarget();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aShapeAspect_Name, const Handle_TCollection_HAsciiString &aShapeAspect_Description, const Handle_StepRepr_ProductDefinitionShape &aShapeAspect_OfShape, const StepData_Logical aShapeAspect_ProductDefinitional, const Handle_TCollection_HAsciiString &aTargetId);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString TargetId() const;
		%feature("autodoc", "1");
		void SetTargetId(const Handle_TCollection_HAsciiString &TargetId);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepDimTol_DatumTarget {
	Handle_StepDimTol_DatumTarget GetHandle() {
	return *(Handle_StepDimTol_DatumTarget*) &$self;
	}
};
%extend StepDimTol_DatumTarget {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepDimTol_DatumTarget {
	~StepDimTol_DatumTarget() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepDimTol_DatumTarget\n");}
	}
};

%nodefaultctor StepDimTol_GeometricToleranceWithDatumReference;
class StepDimTol_GeometricToleranceWithDatumReference : public StepDimTol_GeometricTolerance {
	public:
		%feature("autodoc", "1");
		StepDimTol_GeometricToleranceWithDatumReference();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aGeometricTolerance_Name, const Handle_TCollection_HAsciiString &aGeometricTolerance_Description, const Handle_StepBasic_MeasureWithUnit &aGeometricTolerance_Magnitude, const Handle_StepRepr_ShapeAspect &aGeometricTolerance_TolerancedShapeAspect, const Handle_StepDimTol_HArray1OfDatumReference &aDatumSystem);
		%feature("autodoc", "1");
		Handle_StepDimTol_HArray1OfDatumReference DatumSystem() const;
		%feature("autodoc", "1");
		void SetDatumSystem(const Handle_StepDimTol_HArray1OfDatumReference &DatumSystem);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepDimTol_GeometricToleranceWithDatumReference {
	Handle_StepDimTol_GeometricToleranceWithDatumReference GetHandle() {
	return *(Handle_StepDimTol_GeometricToleranceWithDatumReference*) &$self;
	}
};
%extend StepDimTol_GeometricToleranceWithDatumReference {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepDimTol_GeometricToleranceWithDatumReference {
	~StepDimTol_GeometricToleranceWithDatumReference() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepDimTol_GeometricToleranceWithDatumReference\n");}
	}
};

%nodefaultctor StepDimTol_AngularityTolerance;
class StepDimTol_AngularityTolerance : public StepDimTol_GeometricToleranceWithDatumReference {
	public:
		%feature("autodoc", "1");
		StepDimTol_AngularityTolerance();

};
%extend StepDimTol_AngularityTolerance {
	Handle_StepDimTol_AngularityTolerance GetHandle() {
	return *(Handle_StepDimTol_AngularityTolerance*) &$self;
	}
};
%extend StepDimTol_AngularityTolerance {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepDimTol_AngularityTolerance {
	~StepDimTol_AngularityTolerance() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepDimTol_AngularityTolerance\n");}
	}
};

%nodefaultctor StepDimTol_ConcentricityTolerance;
class StepDimTol_ConcentricityTolerance : public StepDimTol_GeometricToleranceWithDatumReference {
	public:
		%feature("autodoc", "1");
		StepDimTol_ConcentricityTolerance();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepDimTol_ConcentricityTolerance {
	Handle_StepDimTol_ConcentricityTolerance GetHandle() {
	return *(Handle_StepDimTol_ConcentricityTolerance*) &$self;
	}
};
%extend StepDimTol_ConcentricityTolerance {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepDimTol_ConcentricityTolerance {
	~StepDimTol_ConcentricityTolerance() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepDimTol_ConcentricityTolerance\n");}
	}
};

%nodefaultctor StepDimTol_PlacedDatumTargetFeature;
class StepDimTol_PlacedDatumTargetFeature : public StepDimTol_DatumTarget {
	public:
		%feature("autodoc", "1");
		StepDimTol_PlacedDatumTargetFeature();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepDimTol_PlacedDatumTargetFeature {
	Handle_StepDimTol_PlacedDatumTargetFeature GetHandle() {
	return *(Handle_StepDimTol_PlacedDatumTargetFeature*) &$self;
	}
};
%extend StepDimTol_PlacedDatumTargetFeature {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepDimTol_PlacedDatumTargetFeature {
	~StepDimTol_PlacedDatumTargetFeature() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepDimTol_PlacedDatumTargetFeature\n");}
	}
};

%nodefaultctor StepDimTol_TotalRunoutTolerance;
class StepDimTol_TotalRunoutTolerance : public StepDimTol_GeometricToleranceWithDatumReference {
	public:
		%feature("autodoc", "1");
		StepDimTol_TotalRunoutTolerance();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepDimTol_TotalRunoutTolerance {
	Handle_StepDimTol_TotalRunoutTolerance GetHandle() {
	return *(Handle_StepDimTol_TotalRunoutTolerance*) &$self;
	}
};
%extend StepDimTol_TotalRunoutTolerance {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepDimTol_TotalRunoutTolerance {
	~StepDimTol_TotalRunoutTolerance() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepDimTol_TotalRunoutTolerance\n");}
	}
};

%nodefaultctor StepDimTol_ParallelismTolerance;
class StepDimTol_ParallelismTolerance : public StepDimTol_GeometricToleranceWithDatumReference {
	public:
		%feature("autodoc", "1");
		StepDimTol_ParallelismTolerance();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepDimTol_ParallelismTolerance {
	Handle_StepDimTol_ParallelismTolerance GetHandle() {
	return *(Handle_StepDimTol_ParallelismTolerance*) &$self;
	}
};
%extend StepDimTol_ParallelismTolerance {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepDimTol_ParallelismTolerance {
	~StepDimTol_ParallelismTolerance() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepDimTol_ParallelismTolerance\n");}
	}
};

%nodefaultctor StepDimTol_PerpendicularityTolerance;
class StepDimTol_PerpendicularityTolerance : public StepDimTol_GeometricToleranceWithDatumReference {
	public:
		%feature("autodoc", "1");
		StepDimTol_PerpendicularityTolerance();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepDimTol_PerpendicularityTolerance {
	Handle_StepDimTol_PerpendicularityTolerance GetHandle() {
	return *(Handle_StepDimTol_PerpendicularityTolerance*) &$self;
	}
};
%extend StepDimTol_PerpendicularityTolerance {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepDimTol_PerpendicularityTolerance {
	~StepDimTol_PerpendicularityTolerance() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepDimTol_PerpendicularityTolerance\n");}
	}
};

%nodefaultctor StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol;
class StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol : public StepDimTol_GeometricTolerance {
	public:
		%feature("autodoc", "1");
		StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_TCollection_HAsciiString &aDescription, const Handle_StepBasic_MeasureWithUnit &aMagnitude, const Handle_StepRepr_ShapeAspect &aTolerancedShapeAspect, const Handle_StepDimTol_GeometricToleranceWithDatumReference &aGTWDR, const Handle_StepDimTol_ModifiedGeometricTolerance &aMGT);
		%feature("autodoc", "1");
		void SetGeometricToleranceWithDatumReference(const Handle_StepDimTol_GeometricToleranceWithDatumReference &aGTWDR);
		%feature("autodoc", "1");
		Handle_StepDimTol_GeometricToleranceWithDatumReference GetGeometricToleranceWithDatumReference() const;
		%feature("autodoc", "1");
		void SetModifiedGeometricTolerance(const Handle_StepDimTol_ModifiedGeometricTolerance &aMGT);
		%feature("autodoc", "1");
		Handle_StepDimTol_ModifiedGeometricTolerance GetModifiedGeometricTolerance() const;
		%feature("autodoc", "1");
		void SetPositionTolerance(const Handle_StepDimTol_PositionTolerance &aPT);
		%feature("autodoc", "1");
		Handle_StepDimTol_PositionTolerance GetPositionTolerance() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol {
	Handle_StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol GetHandle() {
	return *(Handle_StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol*) &$self;
	}
};
%extend StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol {
	~StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol\n");}
	}
};

%nodefaultctor StepDimTol_CommonDatum;
class StepDimTol_CommonDatum : public StepRepr_CompositeShapeAspect {
	public:
		%feature("autodoc", "1");
		StepDimTol_CommonDatum();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aShapeAspect_Name, const Handle_TCollection_HAsciiString &aShapeAspect_Description, const Handle_StepRepr_ProductDefinitionShape &aShapeAspect_OfShape, const StepData_Logical aShapeAspect_ProductDefinitional, const Handle_TCollection_HAsciiString &aDatum_Name, const Handle_TCollection_HAsciiString &aDatum_Description, const Handle_StepRepr_ProductDefinitionShape &aDatum_OfShape, const StepData_Logical aDatum_ProductDefinitional, const Handle_TCollection_HAsciiString &aDatum_Identification);
		%feature("autodoc", "1");
		Handle_StepDimTol_Datum Datum() const;
		%feature("autodoc", "1");
		void SetDatum(const Handle_StepDimTol_Datum &Datum);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepDimTol_CommonDatum {
	Handle_StepDimTol_CommonDatum GetHandle() {
	return *(Handle_StepDimTol_CommonDatum*) &$self;
	}
};
%extend StepDimTol_CommonDatum {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepDimTol_CommonDatum {
	~StepDimTol_CommonDatum() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepDimTol_CommonDatum\n");}
	}
};

%nodefaultctor StepDimTol_ModifiedGeometricTolerance;
class StepDimTol_ModifiedGeometricTolerance : public StepDimTol_GeometricTolerance {
	public:
		%feature("autodoc", "1");
		StepDimTol_ModifiedGeometricTolerance();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aGeometricTolerance_Name, const Handle_TCollection_HAsciiString &aGeometricTolerance_Description, const Handle_StepBasic_MeasureWithUnit &aGeometricTolerance_Magnitude, const Handle_StepRepr_ShapeAspect &aGeometricTolerance_TolerancedShapeAspect, const StepDimTol_LimitCondition aModifier);
		%feature("autodoc", "1");
		StepDimTol_LimitCondition Modifier() const;
		%feature("autodoc", "1");
		void SetModifier(const StepDimTol_LimitCondition Modifier);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepDimTol_ModifiedGeometricTolerance {
	Handle_StepDimTol_ModifiedGeometricTolerance GetHandle() {
	return *(Handle_StepDimTol_ModifiedGeometricTolerance*) &$self;
	}
};
%extend StepDimTol_ModifiedGeometricTolerance {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepDimTol_ModifiedGeometricTolerance {
	~StepDimTol_ModifiedGeometricTolerance() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepDimTol_ModifiedGeometricTolerance\n");}
	}
};

%nodefaultctor StepDimTol_CircularRunoutTolerance;
class StepDimTol_CircularRunoutTolerance : public StepDimTol_GeometricToleranceWithDatumReference {
	public:
		%feature("autodoc", "1");
		StepDimTol_CircularRunoutTolerance();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepDimTol_CircularRunoutTolerance {
	Handle_StepDimTol_CircularRunoutTolerance GetHandle() {
	return *(Handle_StepDimTol_CircularRunoutTolerance*) &$self;
	}
};
%extend StepDimTol_CircularRunoutTolerance {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepDimTol_CircularRunoutTolerance {
	~StepDimTol_CircularRunoutTolerance() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepDimTol_CircularRunoutTolerance\n");}
	}
};

%nodefaultctor StepDimTol_CoaxialityTolerance;
class StepDimTol_CoaxialityTolerance : public StepDimTol_GeometricToleranceWithDatumReference {
	public:
		%feature("autodoc", "1");
		StepDimTol_CoaxialityTolerance();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepDimTol_CoaxialityTolerance {
	Handle_StepDimTol_CoaxialityTolerance GetHandle() {
	return *(Handle_StepDimTol_CoaxialityTolerance*) &$self;
	}
};
%extend StepDimTol_CoaxialityTolerance {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepDimTol_CoaxialityTolerance {
	~StepDimTol_CoaxialityTolerance() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepDimTol_CoaxialityTolerance\n");}
	}
};

%nodefaultctor StepDimTol_FlatnessTolerance;
class StepDimTol_FlatnessTolerance : public StepDimTol_GeometricTolerance {
	public:
		%feature("autodoc", "1");
		StepDimTol_FlatnessTolerance();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepDimTol_FlatnessTolerance {
	Handle_StepDimTol_FlatnessTolerance GetHandle() {
	return *(Handle_StepDimTol_FlatnessTolerance*) &$self;
	}
};
%extend StepDimTol_FlatnessTolerance {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepDimTol_FlatnessTolerance {
	~StepDimTol_FlatnessTolerance() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepDimTol_FlatnessTolerance\n");}
	}
};

%nodefaultctor StepDimTol_ShapeToleranceSelect;
class StepDimTol_ShapeToleranceSelect : public StepData_SelectType {
	public:
		%feature("autodoc", "1");
		StepDimTol_ShapeToleranceSelect();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseNum(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		Handle_StepDimTol_GeometricTolerance GeometricTolerance() const;
		%feature("autodoc", "1");
		Handle_StepShape_PlusMinusTolerance PlusMinusTolerance() const;

};
%extend StepDimTol_ShapeToleranceSelect {
	~StepDimTol_ShapeToleranceSelect() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepDimTol_ShapeToleranceSelect\n");}
	}
};

%nodefaultctor StepDimTol_DatumFeature;
class StepDimTol_DatumFeature : public StepRepr_ShapeAspect {
	public:
		%feature("autodoc", "1");
		StepDimTol_DatumFeature();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepDimTol_DatumFeature {
	Handle_StepDimTol_DatumFeature GetHandle() {
	return *(Handle_StepDimTol_DatumFeature*) &$self;
	}
};
%extend StepDimTol_DatumFeature {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepDimTol_DatumFeature {
	~StepDimTol_DatumFeature() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepDimTol_DatumFeature\n");}
	}
};

%nodefaultctor StepDimTol_SymmetryTolerance;
class StepDimTol_SymmetryTolerance : public StepDimTol_GeometricToleranceWithDatumReference {
	public:
		%feature("autodoc", "1");
		StepDimTol_SymmetryTolerance();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepDimTol_SymmetryTolerance {
	Handle_StepDimTol_SymmetryTolerance GetHandle() {
	return *(Handle_StepDimTol_SymmetryTolerance*) &$self;
	}
};
%extend StepDimTol_SymmetryTolerance {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepDimTol_SymmetryTolerance {
	~StepDimTol_SymmetryTolerance() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepDimTol_SymmetryTolerance\n");}
	}
};

%nodefaultctor StepDimTol_DatumReference;
class StepDimTol_DatumReference : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepDimTol_DatumReference();
		%feature("autodoc", "1");
		void Init(const Standard_Integer aPrecedence, const Handle_StepDimTol_Datum &aReferencedDatum);
		%feature("autodoc", "1");
		Standard_Integer Precedence() const;
		%feature("autodoc", "1");
		void SetPrecedence(const Standard_Integer Precedence);
		%feature("autodoc", "1");
		Handle_StepDimTol_Datum ReferencedDatum() const;
		%feature("autodoc", "1");
		void SetReferencedDatum(const Handle_StepDimTol_Datum &ReferencedDatum);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepDimTol_DatumReference {
	Handle_StepDimTol_DatumReference GetHandle() {
	return *(Handle_StepDimTol_DatumReference*) &$self;
	}
};
%extend StepDimTol_DatumReference {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepDimTol_DatumReference {
	~StepDimTol_DatumReference() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepDimTol_DatumReference\n");}
	}
};

%nodefaultctor StepDimTol_Datum;
class StepDimTol_Datum : public StepRepr_ShapeAspect {
	public:
		%feature("autodoc", "1");
		StepDimTol_Datum();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aShapeAspect_Name, const Handle_TCollection_HAsciiString &aShapeAspect_Description, const Handle_StepRepr_ProductDefinitionShape &aShapeAspect_OfShape, const StepData_Logical aShapeAspect_ProductDefinitional, const Handle_TCollection_HAsciiString &aIdentification);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Identification() const;
		%feature("autodoc", "1");
		void SetIdentification(const Handle_TCollection_HAsciiString &Identification);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepDimTol_Datum {
	Handle_StepDimTol_Datum GetHandle() {
	return *(Handle_StepDimTol_Datum*) &$self;
	}
};
%extend StepDimTol_Datum {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepDimTol_Datum {
	~StepDimTol_Datum() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepDimTol_Datum\n");}
	}
};

%nodefaultctor StepDimTol_PositionTolerance;
class StepDimTol_PositionTolerance : public StepDimTol_GeometricTolerance {
	public:
		%feature("autodoc", "1");
		StepDimTol_PositionTolerance();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepDimTol_PositionTolerance {
	Handle_StepDimTol_PositionTolerance GetHandle() {
	return *(Handle_StepDimTol_PositionTolerance*) &$self;
	}
};
%extend StepDimTol_PositionTolerance {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepDimTol_PositionTolerance {
	~StepDimTol_PositionTolerance() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepDimTol_PositionTolerance\n");}
	}
};

%nodefaultctor StepDimTol_GeometricToleranceRelationship;
class StepDimTol_GeometricToleranceRelationship : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepDimTol_GeometricToleranceRelationship();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_TCollection_HAsciiString &aDescription, const Handle_StepDimTol_GeometricTolerance &aRelatingGeometricTolerance, const Handle_StepDimTol_GeometricTolerance &aRelatedGeometricTolerance);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Name() const;
		%feature("autodoc", "1");
		void SetName(const Handle_TCollection_HAsciiString &Name);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Description() const;
		%feature("autodoc", "1");
		void SetDescription(const Handle_TCollection_HAsciiString &Description);
		%feature("autodoc", "1");
		Handle_StepDimTol_GeometricTolerance RelatingGeometricTolerance() const;
		%feature("autodoc", "1");
		void SetRelatingGeometricTolerance(const Handle_StepDimTol_GeometricTolerance &RelatingGeometricTolerance);
		%feature("autodoc", "1");
		Handle_StepDimTol_GeometricTolerance RelatedGeometricTolerance() const;
		%feature("autodoc", "1");
		void SetRelatedGeometricTolerance(const Handle_StepDimTol_GeometricTolerance &RelatedGeometricTolerance);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepDimTol_GeometricToleranceRelationship {
	Handle_StepDimTol_GeometricToleranceRelationship GetHandle() {
	return *(Handle_StepDimTol_GeometricToleranceRelationship*) &$self;
	}
};
%extend StepDimTol_GeometricToleranceRelationship {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepDimTol_GeometricToleranceRelationship {
	~StepDimTol_GeometricToleranceRelationship() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepDimTol_GeometricToleranceRelationship\n");}
	}
};

%nodefaultctor StepDimTol_HArray1OfDatumReference;
class StepDimTol_HArray1OfDatumReference : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepDimTol_HArray1OfDatumReference(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepDimTol_HArray1OfDatumReference(const Standard_Integer Low, const Standard_Integer Up, const Handle_StepDimTol_DatumReference &V);
		%feature("autodoc", "1");
		void Init(const Handle_StepDimTol_DatumReference &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StepDimTol_DatumReference &Value);
		%feature("autodoc", "1");
		const Handle_StepDimTol_DatumReference & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_StepDimTol_DatumReference & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const StepDimTol_Array1OfDatumReference & Array1() const;
		%feature("autodoc", "1");
		StepDimTol_Array1OfDatumReference & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepDimTol_HArray1OfDatumReference {
	Handle_StepDimTol_HArray1OfDatumReference GetHandle() {
	return *(Handle_StepDimTol_HArray1OfDatumReference*) &$self;
	}
};
%extend StepDimTol_HArray1OfDatumReference {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend StepDimTol_HArray1OfDatumReference {
	~StepDimTol_HArray1OfDatumReference() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StepDimTol_HArray1OfDatumReference\n");}
	}
};