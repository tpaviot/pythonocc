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
%module StepDimTol

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
		~Handle_StepDimTol_DatumTarget();
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

%nodefaultctor Handle_StepDimTol_PlacedDatumTargetFeature;
class Handle_StepDimTol_PlacedDatumTargetFeature : public Handle_StepDimTol_DatumTarget {
	public:
		%feature("autodoc", "1");
		~Handle_StepDimTol_PlacedDatumTargetFeature();
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

%nodefaultctor Handle_StepDimTol_HArray1OfDatumReference;
class Handle_StepDimTol_HArray1OfDatumReference : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_StepDimTol_HArray1OfDatumReference();
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

%nodefaultctor Handle_StepDimTol_GeometricTolerance;
class Handle_StepDimTol_GeometricTolerance : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_StepDimTol_GeometricTolerance();
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

%nodefaultctor Handle_StepDimTol_GeometricToleranceWithDatumReference;
class Handle_StepDimTol_GeometricToleranceWithDatumReference : public Handle_StepDimTol_GeometricTolerance {
	public:
		%feature("autodoc", "1");
		~Handle_StepDimTol_GeometricToleranceWithDatumReference();
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

%nodefaultctor Handle_StepDimTol_CoaxialityTolerance;
class Handle_StepDimTol_CoaxialityTolerance : public Handle_StepDimTol_GeometricToleranceWithDatumReference {
	public:
		%feature("autodoc", "1");
		~Handle_StepDimTol_CoaxialityTolerance();
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

%nodefaultctor Handle_StepDimTol_Datum;
class Handle_StepDimTol_Datum : public Handle_StepRepr_ShapeAspect {
	public:
		%feature("autodoc", "1");
		~Handle_StepDimTol_Datum();
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

%nodefaultctor Handle_StepDimTol_LineProfileTolerance;
class Handle_StepDimTol_LineProfileTolerance : public Handle_StepDimTol_GeometricTolerance {
	public:
		%feature("autodoc", "1");
		~Handle_StepDimTol_LineProfileTolerance();
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

%nodefaultctor Handle_StepDimTol_AngularityTolerance;
class Handle_StepDimTol_AngularityTolerance : public Handle_StepDimTol_GeometricToleranceWithDatumReference {
	public:
		%feature("autodoc", "1");
		~Handle_StepDimTol_AngularityTolerance();
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

%nodefaultctor Handle_StepDimTol_CircularRunoutTolerance;
class Handle_StepDimTol_CircularRunoutTolerance : public Handle_StepDimTol_GeometricToleranceWithDatumReference {
	public:
		%feature("autodoc", "1");
		~Handle_StepDimTol_CircularRunoutTolerance();
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

%nodefaultctor Handle_StepDimTol_TotalRunoutTolerance;
class Handle_StepDimTol_TotalRunoutTolerance : public Handle_StepDimTol_GeometricToleranceWithDatumReference {
	public:
		%feature("autodoc", "1");
		~Handle_StepDimTol_TotalRunoutTolerance();
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

%nodefaultctor Handle_StepDimTol_PositionTolerance;
class Handle_StepDimTol_PositionTolerance : public Handle_StepDimTol_GeometricTolerance {
	public:
		%feature("autodoc", "1");
		~Handle_StepDimTol_PositionTolerance();
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

%nodefaultctor Handle_StepDimTol_GeometricToleranceRelationship;
class Handle_StepDimTol_GeometricToleranceRelationship : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_StepDimTol_GeometricToleranceRelationship();
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

%nodefaultctor Handle_StepDimTol_ConcentricityTolerance;
class Handle_StepDimTol_ConcentricityTolerance : public Handle_StepDimTol_GeometricToleranceWithDatumReference {
	public:
		%feature("autodoc", "1");
		~Handle_StepDimTol_ConcentricityTolerance();
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

%nodefaultctor Handle_StepDimTol_ParallelismTolerance;
class Handle_StepDimTol_ParallelismTolerance : public Handle_StepDimTol_GeometricToleranceWithDatumReference {
	public:
		%feature("autodoc", "1");
		~Handle_StepDimTol_ParallelismTolerance();
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

%nodefaultctor Handle_StepDimTol_PerpendicularityTolerance;
class Handle_StepDimTol_PerpendicularityTolerance : public Handle_StepDimTol_GeometricToleranceWithDatumReference {
	public:
		%feature("autodoc", "1");
		~Handle_StepDimTol_PerpendicularityTolerance();
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

%nodefaultctor Handle_StepDimTol_StraightnessTolerance;
class Handle_StepDimTol_StraightnessTolerance : public Handle_StepDimTol_GeometricTolerance {
	public:
		%feature("autodoc", "1");
		~Handle_StepDimTol_StraightnessTolerance();
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

%nodefaultctor Handle_StepDimTol_FlatnessTolerance;
class Handle_StepDimTol_FlatnessTolerance : public Handle_StepDimTol_GeometricTolerance {
	public:
		%feature("autodoc", "1");
		~Handle_StepDimTol_FlatnessTolerance();
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

%nodefaultctor Handle_StepDimTol_DatumReference;
class Handle_StepDimTol_DatumReference : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_StepDimTol_DatumReference();
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

%nodefaultctor Handle_StepDimTol_DatumFeature;
class Handle_StepDimTol_DatumFeature : public Handle_StepRepr_ShapeAspect {
	public:
		%feature("autodoc", "1");
		~Handle_StepDimTol_DatumFeature();
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

%nodefaultctor Handle_StepDimTol_CylindricityTolerance;
class Handle_StepDimTol_CylindricityTolerance : public Handle_StepDimTol_GeometricTolerance {
	public:
		%feature("autodoc", "1");
		~Handle_StepDimTol_CylindricityTolerance();
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

%nodefaultctor Handle_StepDimTol_SymmetryTolerance;
class Handle_StepDimTol_SymmetryTolerance : public Handle_StepDimTol_GeometricToleranceWithDatumReference {
	public:
		%feature("autodoc", "1");
		~Handle_StepDimTol_SymmetryTolerance();
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

%nodefaultctor Handle_StepDimTol_SurfaceProfileTolerance;
class Handle_StepDimTol_SurfaceProfileTolerance : public Handle_StepDimTol_GeometricTolerance {
	public:
		%feature("autodoc", "1");
		~Handle_StepDimTol_SurfaceProfileTolerance();
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

%nodefaultctor Handle_StepDimTol_ModifiedGeometricTolerance;
class Handle_StepDimTol_ModifiedGeometricTolerance : public Handle_StepDimTol_GeometricTolerance {
	public:
		%feature("autodoc", "1");
		~Handle_StepDimTol_ModifiedGeometricTolerance();
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

%nodefaultctor Handle_StepDimTol_CommonDatum;
class Handle_StepDimTol_CommonDatum : public Handle_StepRepr_CompositeShapeAspect {
	public:
		%feature("autodoc", "1");
		~Handle_StepDimTol_CommonDatum();
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

%nodefaultctor Handle_StepDimTol_RoundnessTolerance;
class Handle_StepDimTol_RoundnessTolerance : public Handle_StepDimTol_GeometricTolerance {
	public:
		%feature("autodoc", "1");
		~Handle_StepDimTol_RoundnessTolerance();
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

%nodefaultctor Handle_StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol;
class Handle_StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol : public Handle_StepDimTol_GeometricTolerance {
	public:
		%feature("autodoc", "1");
		~Handle_StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol();
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
		%feature("autodoc", "1");
		virtual		~StepDimTol_GeometricTolerance();

};
%extend StepDimTol_GeometricTolerance {
	Handle_StepDimTol_GeometricTolerance GetHandle() {
	return *(Handle_StepDimTol_GeometricTolerance*) &$self;
	}
};

%nodefaultctor StepDimTol_StraightnessTolerance;
class StepDimTol_StraightnessTolerance : public StepDimTol_GeometricTolerance {
	public:
		%feature("autodoc", "1");
		StepDimTol_StraightnessTolerance();
		%feature("autodoc", "1");
		virtual		~StepDimTol_StraightnessTolerance();

};
%extend StepDimTol_StraightnessTolerance {
	Handle_StepDimTol_StraightnessTolerance GetHandle() {
	return *(Handle_StepDimTol_StraightnessTolerance*) &$self;
	}
};

%nodefaultctor StepDimTol_LineProfileTolerance;
class StepDimTol_LineProfileTolerance : public StepDimTol_GeometricTolerance {
	public:
		%feature("autodoc", "1");
		StepDimTol_LineProfileTolerance();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepDimTol_LineProfileTolerance();

};
%extend StepDimTol_LineProfileTolerance {
	Handle_StepDimTol_LineProfileTolerance GetHandle() {
	return *(Handle_StepDimTol_LineProfileTolerance*) &$self;
	}
};

%nodefaultctor StepDimTol_SurfaceProfileTolerance;
class StepDimTol_SurfaceProfileTolerance : public StepDimTol_GeometricTolerance {
	public:
		%feature("autodoc", "1");
		StepDimTol_SurfaceProfileTolerance();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepDimTol_SurfaceProfileTolerance();

};
%extend StepDimTol_SurfaceProfileTolerance {
	Handle_StepDimTol_SurfaceProfileTolerance GetHandle() {
	return *(Handle_StepDimTol_SurfaceProfileTolerance*) &$self;
	}
};

%nodefaultctor StepDimTol_CylindricityTolerance;
class StepDimTol_CylindricityTolerance : public StepDimTol_GeometricTolerance {
	public:
		%feature("autodoc", "1");
		StepDimTol_CylindricityTolerance();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepDimTol_CylindricityTolerance();

};
%extend StepDimTol_CylindricityTolerance {
	Handle_StepDimTol_CylindricityTolerance GetHandle() {
	return *(Handle_StepDimTol_CylindricityTolerance*) &$self;
	}
};

%nodefaultctor StepDimTol_RoundnessTolerance;
class StepDimTol_RoundnessTolerance : public StepDimTol_GeometricTolerance {
	public:
		%feature("autodoc", "1");
		StepDimTol_RoundnessTolerance();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepDimTol_RoundnessTolerance();

};
%extend StepDimTol_RoundnessTolerance {
	Handle_StepDimTol_RoundnessTolerance GetHandle() {
	return *(Handle_StepDimTol_RoundnessTolerance*) &$self;
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
		~StepDimTol_Array1OfDatumReference();
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
		%feature("autodoc", "1");
		virtual		~StepDimTol_DatumTarget();

};
%extend StepDimTol_DatumTarget {
	Handle_StepDimTol_DatumTarget GetHandle() {
	return *(Handle_StepDimTol_DatumTarget*) &$self;
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
		%feature("autodoc", "1");
		virtual		~StepDimTol_GeometricToleranceWithDatumReference();

};
%extend StepDimTol_GeometricToleranceWithDatumReference {
	Handle_StepDimTol_GeometricToleranceWithDatumReference GetHandle() {
	return *(Handle_StepDimTol_GeometricToleranceWithDatumReference*) &$self;
	}
};

%nodefaultctor StepDimTol_AngularityTolerance;
class StepDimTol_AngularityTolerance : public StepDimTol_GeometricToleranceWithDatumReference {
	public:
		%feature("autodoc", "1");
		StepDimTol_AngularityTolerance();
		%feature("autodoc", "1");
		virtual		~StepDimTol_AngularityTolerance();

};
%extend StepDimTol_AngularityTolerance {
	Handle_StepDimTol_AngularityTolerance GetHandle() {
	return *(Handle_StepDimTol_AngularityTolerance*) &$self;
	}
};

%nodefaultctor StepDimTol_ConcentricityTolerance;
class StepDimTol_ConcentricityTolerance : public StepDimTol_GeometricToleranceWithDatumReference {
	public:
		%feature("autodoc", "1");
		StepDimTol_ConcentricityTolerance();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepDimTol_ConcentricityTolerance();

};
%extend StepDimTol_ConcentricityTolerance {
	Handle_StepDimTol_ConcentricityTolerance GetHandle() {
	return *(Handle_StepDimTol_ConcentricityTolerance*) &$self;
	}
};

%nodefaultctor StepDimTol_PlacedDatumTargetFeature;
class StepDimTol_PlacedDatumTargetFeature : public StepDimTol_DatumTarget {
	public:
		%feature("autodoc", "1");
		StepDimTol_PlacedDatumTargetFeature();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepDimTol_PlacedDatumTargetFeature();

};
%extend StepDimTol_PlacedDatumTargetFeature {
	Handle_StepDimTol_PlacedDatumTargetFeature GetHandle() {
	return *(Handle_StepDimTol_PlacedDatumTargetFeature*) &$self;
	}
};

%nodefaultctor StepDimTol_TotalRunoutTolerance;
class StepDimTol_TotalRunoutTolerance : public StepDimTol_GeometricToleranceWithDatumReference {
	public:
		%feature("autodoc", "1");
		StepDimTol_TotalRunoutTolerance();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepDimTol_TotalRunoutTolerance();

};
%extend StepDimTol_TotalRunoutTolerance {
	Handle_StepDimTol_TotalRunoutTolerance GetHandle() {
	return *(Handle_StepDimTol_TotalRunoutTolerance*) &$self;
	}
};

%nodefaultctor StepDimTol_ParallelismTolerance;
class StepDimTol_ParallelismTolerance : public StepDimTol_GeometricToleranceWithDatumReference {
	public:
		%feature("autodoc", "1");
		StepDimTol_ParallelismTolerance();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepDimTol_ParallelismTolerance();

};
%extend StepDimTol_ParallelismTolerance {
	Handle_StepDimTol_ParallelismTolerance GetHandle() {
	return *(Handle_StepDimTol_ParallelismTolerance*) &$self;
	}
};

%nodefaultctor StepDimTol_PerpendicularityTolerance;
class StepDimTol_PerpendicularityTolerance : public StepDimTol_GeometricToleranceWithDatumReference {
	public:
		%feature("autodoc", "1");
		StepDimTol_PerpendicularityTolerance();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepDimTol_PerpendicularityTolerance();

};
%extend StepDimTol_PerpendicularityTolerance {
	Handle_StepDimTol_PerpendicularityTolerance GetHandle() {
	return *(Handle_StepDimTol_PerpendicularityTolerance*) &$self;
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
		%feature("autodoc", "1");
		virtual		~StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol();

};
%extend StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol {
	Handle_StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol GetHandle() {
	return *(Handle_StepDimTol_GeoTolAndGeoTolWthDatRefAndModGeoTolAndPosTol*) &$self;
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
		%feature("autodoc", "1");
		virtual		~StepDimTol_CommonDatum();

};
%extend StepDimTol_CommonDatum {
	Handle_StepDimTol_CommonDatum GetHandle() {
	return *(Handle_StepDimTol_CommonDatum*) &$self;
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
		%feature("autodoc", "1");
		virtual		~StepDimTol_ModifiedGeometricTolerance();

};
%extend StepDimTol_ModifiedGeometricTolerance {
	Handle_StepDimTol_ModifiedGeometricTolerance GetHandle() {
	return *(Handle_StepDimTol_ModifiedGeometricTolerance*) &$self;
	}
};

%nodefaultctor StepDimTol_CircularRunoutTolerance;
class StepDimTol_CircularRunoutTolerance : public StepDimTol_GeometricToleranceWithDatumReference {
	public:
		%feature("autodoc", "1");
		StepDimTol_CircularRunoutTolerance();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepDimTol_CircularRunoutTolerance();

};
%extend StepDimTol_CircularRunoutTolerance {
	Handle_StepDimTol_CircularRunoutTolerance GetHandle() {
	return *(Handle_StepDimTol_CircularRunoutTolerance*) &$self;
	}
};

%nodefaultctor StepDimTol_CoaxialityTolerance;
class StepDimTol_CoaxialityTolerance : public StepDimTol_GeometricToleranceWithDatumReference {
	public:
		%feature("autodoc", "1");
		StepDimTol_CoaxialityTolerance();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepDimTol_CoaxialityTolerance();

};
%extend StepDimTol_CoaxialityTolerance {
	Handle_StepDimTol_CoaxialityTolerance GetHandle() {
	return *(Handle_StepDimTol_CoaxialityTolerance*) &$self;
	}
};

%nodefaultctor StepDimTol_FlatnessTolerance;
class StepDimTol_FlatnessTolerance : public StepDimTol_GeometricTolerance {
	public:
		%feature("autodoc", "1");
		StepDimTol_FlatnessTolerance();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepDimTol_FlatnessTolerance();

};
%extend StepDimTol_FlatnessTolerance {
	Handle_StepDimTol_FlatnessTolerance GetHandle() {
	return *(Handle_StepDimTol_FlatnessTolerance*) &$self;
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
		%feature("autodoc", "1");
		virtual		~StepDimTol_ShapeToleranceSelect();

};

%nodefaultctor StepDimTol_DatumFeature;
class StepDimTol_DatumFeature : public StepRepr_ShapeAspect {
	public:
		%feature("autodoc", "1");
		StepDimTol_DatumFeature();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepDimTol_DatumFeature();

};
%extend StepDimTol_DatumFeature {
	Handle_StepDimTol_DatumFeature GetHandle() {
	return *(Handle_StepDimTol_DatumFeature*) &$self;
	}
};

%nodefaultctor StepDimTol_SymmetryTolerance;
class StepDimTol_SymmetryTolerance : public StepDimTol_GeometricToleranceWithDatumReference {
	public:
		%feature("autodoc", "1");
		StepDimTol_SymmetryTolerance();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepDimTol_SymmetryTolerance();

};
%extend StepDimTol_SymmetryTolerance {
	Handle_StepDimTol_SymmetryTolerance GetHandle() {
	return *(Handle_StepDimTol_SymmetryTolerance*) &$self;
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
		%feature("autodoc", "1");
		virtual		~StepDimTol_DatumReference();

};
%extend StepDimTol_DatumReference {
	Handle_StepDimTol_DatumReference GetHandle() {
	return *(Handle_StepDimTol_DatumReference*) &$self;
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
		%feature("autodoc", "1");
		virtual		~StepDimTol_Datum();

};
%extend StepDimTol_Datum {
	Handle_StepDimTol_Datum GetHandle() {
	return *(Handle_StepDimTol_Datum*) &$self;
	}
};

%nodefaultctor StepDimTol_PositionTolerance;
class StepDimTol_PositionTolerance : public StepDimTol_GeometricTolerance {
	public:
		%feature("autodoc", "1");
		StepDimTol_PositionTolerance();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~StepDimTol_PositionTolerance();

};
%extend StepDimTol_PositionTolerance {
	Handle_StepDimTol_PositionTolerance GetHandle() {
	return *(Handle_StepDimTol_PositionTolerance*) &$self;
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
		%feature("autodoc", "1");
		virtual		~StepDimTol_GeometricToleranceRelationship();

};
%extend StepDimTol_GeometricToleranceRelationship {
	Handle_StepDimTol_GeometricToleranceRelationship GetHandle() {
	return *(Handle_StepDimTol_GeometricToleranceRelationship*) &$self;
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
		%feature("autodoc", "1");
		virtual		~StepDimTol_HArray1OfDatumReference();

};
%extend StepDimTol_HArray1OfDatumReference {
	Handle_StepDimTol_HArray1OfDatumReference GetHandle() {
	return *(Handle_StepDimTol_HArray1OfDatumReference*) &$self;
	}
};