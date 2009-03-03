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
%module IGESGeom

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


%include IGESGeom_dependencies.i


%include IGESGeom_headers.i




%nodefaultctor Handle_IGESGeom_SpecificModule;
class Handle_IGESGeom_SpecificModule : public Handle_IGESData_SpecificModule {
	public:
		%feature("autodoc", "1");
		~Handle_IGESGeom_SpecificModule();
		%feature("autodoc", "1");
		Handle_IGESGeom_SpecificModule();
		%feature("autodoc", "1");
		Handle_IGESGeom_SpecificModule(const Handle_IGESGeom_SpecificModule &aHandle);
		%feature("autodoc", "1");
		Handle_IGESGeom_SpecificModule(const IGESGeom_SpecificModule *anItem);
		%feature("autodoc", "1");
		Handle_IGESGeom_SpecificModule const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESGeom_SpecificModule {
	IGESGeom_SpecificModule* GetObject() {
	return (IGESGeom_SpecificModule*)$self->Access();
	}
};

%nodefaultctor Handle_IGESGeom_CircularArc;
class Handle_IGESGeom_CircularArc : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		~Handle_IGESGeom_CircularArc();
		%feature("autodoc", "1");
		Handle_IGESGeom_CircularArc();
		%feature("autodoc", "1");
		Handle_IGESGeom_CircularArc(const Handle_IGESGeom_CircularArc &aHandle);
		%feature("autodoc", "1");
		Handle_IGESGeom_CircularArc(const IGESGeom_CircularArc *anItem);
		%feature("autodoc", "1");
		Handle_IGESGeom_CircularArc const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESGeom_CircularArc {
	IGESGeom_CircularArc* GetObject() {
	return (IGESGeom_CircularArc*)$self->Access();
	}
};

%nodefaultctor Handle_IGESGeom_SurfaceOfRevolution;
class Handle_IGESGeom_SurfaceOfRevolution : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		~Handle_IGESGeom_SurfaceOfRevolution();
		%feature("autodoc", "1");
		Handle_IGESGeom_SurfaceOfRevolution();
		%feature("autodoc", "1");
		Handle_IGESGeom_SurfaceOfRevolution(const Handle_IGESGeom_SurfaceOfRevolution &aHandle);
		%feature("autodoc", "1");
		Handle_IGESGeom_SurfaceOfRevolution(const IGESGeom_SurfaceOfRevolution *anItem);
		%feature("autodoc", "1");
		Handle_IGESGeom_SurfaceOfRevolution const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESGeom_SurfaceOfRevolution {
	IGESGeom_SurfaceOfRevolution* GetObject() {
	return (IGESGeom_SurfaceOfRevolution*)$self->Access();
	}
};

%nodefaultctor Handle_IGESGeom_Boundary;
class Handle_IGESGeom_Boundary : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		~Handle_IGESGeom_Boundary();
		%feature("autodoc", "1");
		Handle_IGESGeom_Boundary();
		%feature("autodoc", "1");
		Handle_IGESGeom_Boundary(const Handle_IGESGeom_Boundary &aHandle);
		%feature("autodoc", "1");
		Handle_IGESGeom_Boundary(const IGESGeom_Boundary *anItem);
		%feature("autodoc", "1");
		Handle_IGESGeom_Boundary const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESGeom_Boundary {
	IGESGeom_Boundary* GetObject() {
	return (IGESGeom_Boundary*)$self->Access();
	}
};

%nodefaultctor Handle_IGESGeom_HArray1OfTransformationMatrix;
class Handle_IGESGeom_HArray1OfTransformationMatrix : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_IGESGeom_HArray1OfTransformationMatrix();
		%feature("autodoc", "1");
		Handle_IGESGeom_HArray1OfTransformationMatrix();
		%feature("autodoc", "1");
		Handle_IGESGeom_HArray1OfTransformationMatrix(const Handle_IGESGeom_HArray1OfTransformationMatrix &aHandle);
		%feature("autodoc", "1");
		Handle_IGESGeom_HArray1OfTransformationMatrix(const IGESGeom_HArray1OfTransformationMatrix *anItem);
		%feature("autodoc", "1");
		Handle_IGESGeom_HArray1OfTransformationMatrix const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESGeom_HArray1OfTransformationMatrix {
	IGESGeom_HArray1OfTransformationMatrix* GetObject() {
	return (IGESGeom_HArray1OfTransformationMatrix*)$self->Access();
	}
};

%nodefaultctor Handle_IGESGeom_CurveOnSurface;
class Handle_IGESGeom_CurveOnSurface : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		~Handle_IGESGeom_CurveOnSurface();
		%feature("autodoc", "1");
		Handle_IGESGeom_CurveOnSurface();
		%feature("autodoc", "1");
		Handle_IGESGeom_CurveOnSurface(const Handle_IGESGeom_CurveOnSurface &aHandle);
		%feature("autodoc", "1");
		Handle_IGESGeom_CurveOnSurface(const IGESGeom_CurveOnSurface *anItem);
		%feature("autodoc", "1");
		Handle_IGESGeom_CurveOnSurface const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESGeom_CurveOnSurface {
	IGESGeom_CurveOnSurface* GetObject() {
	return (IGESGeom_CurveOnSurface*)$self->Access();
	}
};

%nodefaultctor Handle_IGESGeom_HArray1OfBoundary;
class Handle_IGESGeom_HArray1OfBoundary : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_IGESGeom_HArray1OfBoundary();
		%feature("autodoc", "1");
		Handle_IGESGeom_HArray1OfBoundary();
		%feature("autodoc", "1");
		Handle_IGESGeom_HArray1OfBoundary(const Handle_IGESGeom_HArray1OfBoundary &aHandle);
		%feature("autodoc", "1");
		Handle_IGESGeom_HArray1OfBoundary(const IGESGeom_HArray1OfBoundary *anItem);
		%feature("autodoc", "1");
		Handle_IGESGeom_HArray1OfBoundary const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESGeom_HArray1OfBoundary {
	IGESGeom_HArray1OfBoundary* GetObject() {
	return (IGESGeom_HArray1OfBoundary*)$self->Access();
	}
};

%nodefaultctor Handle_IGESGeom_CompositeCurve;
class Handle_IGESGeom_CompositeCurve : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		~Handle_IGESGeom_CompositeCurve();
		%feature("autodoc", "1");
		Handle_IGESGeom_CompositeCurve();
		%feature("autodoc", "1");
		Handle_IGESGeom_CompositeCurve(const Handle_IGESGeom_CompositeCurve &aHandle);
		%feature("autodoc", "1");
		Handle_IGESGeom_CompositeCurve(const IGESGeom_CompositeCurve *anItem);
		%feature("autodoc", "1");
		Handle_IGESGeom_CompositeCurve const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESGeom_CompositeCurve {
	IGESGeom_CompositeCurve* GetObject() {
	return (IGESGeom_CompositeCurve*)$self->Access();
	}
};

%nodefaultctor Handle_IGESGeom_HArray1OfCurveOnSurface;
class Handle_IGESGeom_HArray1OfCurveOnSurface : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_IGESGeom_HArray1OfCurveOnSurface();
		%feature("autodoc", "1");
		Handle_IGESGeom_HArray1OfCurveOnSurface();
		%feature("autodoc", "1");
		Handle_IGESGeom_HArray1OfCurveOnSurface(const Handle_IGESGeom_HArray1OfCurveOnSurface &aHandle);
		%feature("autodoc", "1");
		Handle_IGESGeom_HArray1OfCurveOnSurface(const IGESGeom_HArray1OfCurveOnSurface *anItem);
		%feature("autodoc", "1");
		Handle_IGESGeom_HArray1OfCurveOnSurface const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESGeom_HArray1OfCurveOnSurface {
	IGESGeom_HArray1OfCurveOnSurface* GetObject() {
	return (IGESGeom_HArray1OfCurveOnSurface*)$self->Access();
	}
};

%nodefaultctor Handle_IGESGeom_Flash;
class Handle_IGESGeom_Flash : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		~Handle_IGESGeom_Flash();
		%feature("autodoc", "1");
		Handle_IGESGeom_Flash();
		%feature("autodoc", "1");
		Handle_IGESGeom_Flash(const Handle_IGESGeom_Flash &aHandle);
		%feature("autodoc", "1");
		Handle_IGESGeom_Flash(const IGESGeom_Flash *anItem);
		%feature("autodoc", "1");
		Handle_IGESGeom_Flash const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESGeom_Flash {
	IGESGeom_Flash* GetObject() {
	return (IGESGeom_Flash*)$self->Access();
	}
};

%nodefaultctor Handle_IGESGeom_Line;
class Handle_IGESGeom_Line : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		~Handle_IGESGeom_Line();
		%feature("autodoc", "1");
		Handle_IGESGeom_Line();
		%feature("autodoc", "1");
		Handle_IGESGeom_Line(const Handle_IGESGeom_Line &aHandle);
		%feature("autodoc", "1");
		Handle_IGESGeom_Line(const IGESGeom_Line *anItem);
		%feature("autodoc", "1");
		Handle_IGESGeom_Line const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESGeom_Line {
	IGESGeom_Line* GetObject() {
	return (IGESGeom_Line*)$self->Access();
	}
};

%nodefaultctor Handle_IGESGeom_TransformationMatrix;
class Handle_IGESGeom_TransformationMatrix : public Handle_IGESData_TransfEntity {
	public:
		%feature("autodoc", "1");
		~Handle_IGESGeom_TransformationMatrix();
		%feature("autodoc", "1");
		Handle_IGESGeom_TransformationMatrix();
		%feature("autodoc", "1");
		Handle_IGESGeom_TransformationMatrix(const Handle_IGESGeom_TransformationMatrix &aHandle);
		%feature("autodoc", "1");
		Handle_IGESGeom_TransformationMatrix(const IGESGeom_TransformationMatrix *anItem);
		%feature("autodoc", "1");
		Handle_IGESGeom_TransformationMatrix const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESGeom_TransformationMatrix {
	IGESGeom_TransformationMatrix* GetObject() {
	return (IGESGeom_TransformationMatrix*)$self->Access();
	}
};

%nodefaultctor Handle_IGESGeom_RuledSurface;
class Handle_IGESGeom_RuledSurface : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		~Handle_IGESGeom_RuledSurface();
		%feature("autodoc", "1");
		Handle_IGESGeom_RuledSurface();
		%feature("autodoc", "1");
		Handle_IGESGeom_RuledSurface(const Handle_IGESGeom_RuledSurface &aHandle);
		%feature("autodoc", "1");
		Handle_IGESGeom_RuledSurface(const IGESGeom_RuledSurface *anItem);
		%feature("autodoc", "1");
		Handle_IGESGeom_RuledSurface const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESGeom_RuledSurface {
	IGESGeom_RuledSurface* GetObject() {
	return (IGESGeom_RuledSurface*)$self->Access();
	}
};

%nodefaultctor Handle_IGESGeom_Plane;
class Handle_IGESGeom_Plane : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		~Handle_IGESGeom_Plane();
		%feature("autodoc", "1");
		Handle_IGESGeom_Plane();
		%feature("autodoc", "1");
		Handle_IGESGeom_Plane(const Handle_IGESGeom_Plane &aHandle);
		%feature("autodoc", "1");
		Handle_IGESGeom_Plane(const IGESGeom_Plane *anItem);
		%feature("autodoc", "1");
		Handle_IGESGeom_Plane const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESGeom_Plane {
	IGESGeom_Plane* GetObject() {
	return (IGESGeom_Plane*)$self->Access();
	}
};

%nodefaultctor Handle_IGESGeom_BSplineCurve;
class Handle_IGESGeom_BSplineCurve : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		~Handle_IGESGeom_BSplineCurve();
		%feature("autodoc", "1");
		Handle_IGESGeom_BSplineCurve();
		%feature("autodoc", "1");
		Handle_IGESGeom_BSplineCurve(const Handle_IGESGeom_BSplineCurve &aHandle);
		%feature("autodoc", "1");
		Handle_IGESGeom_BSplineCurve(const IGESGeom_BSplineCurve *anItem);
		%feature("autodoc", "1");
		Handle_IGESGeom_BSplineCurve const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESGeom_BSplineCurve {
	IGESGeom_BSplineCurve* GetObject() {
	return (IGESGeom_BSplineCurve*)$self->Access();
	}
};

%nodefaultctor Handle_IGESGeom_BoundedSurface;
class Handle_IGESGeom_BoundedSurface : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		~Handle_IGESGeom_BoundedSurface();
		%feature("autodoc", "1");
		Handle_IGESGeom_BoundedSurface();
		%feature("autodoc", "1");
		Handle_IGESGeom_BoundedSurface(const Handle_IGESGeom_BoundedSurface &aHandle);
		%feature("autodoc", "1");
		Handle_IGESGeom_BoundedSurface(const IGESGeom_BoundedSurface *anItem);
		%feature("autodoc", "1");
		Handle_IGESGeom_BoundedSurface const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESGeom_BoundedSurface {
	IGESGeom_BoundedSurface* GetObject() {
	return (IGESGeom_BoundedSurface*)$self->Access();
	}
};

%nodefaultctor Handle_IGESGeom_Protocol;
class Handle_IGESGeom_Protocol : public Handle_IGESData_Protocol {
	public:
		%feature("autodoc", "1");
		~Handle_IGESGeom_Protocol();
		%feature("autodoc", "1");
		Handle_IGESGeom_Protocol();
		%feature("autodoc", "1");
		Handle_IGESGeom_Protocol(const Handle_IGESGeom_Protocol &aHandle);
		%feature("autodoc", "1");
		Handle_IGESGeom_Protocol(const IGESGeom_Protocol *anItem);
		%feature("autodoc", "1");
		Handle_IGESGeom_Protocol const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESGeom_Protocol {
	IGESGeom_Protocol* GetObject() {
	return (IGESGeom_Protocol*)$self->Access();
	}
};

%nodefaultctor Handle_IGESGeom_BSplineSurface;
class Handle_IGESGeom_BSplineSurface : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		~Handle_IGESGeom_BSplineSurface();
		%feature("autodoc", "1");
		Handle_IGESGeom_BSplineSurface();
		%feature("autodoc", "1");
		Handle_IGESGeom_BSplineSurface(const Handle_IGESGeom_BSplineSurface &aHandle);
		%feature("autodoc", "1");
		Handle_IGESGeom_BSplineSurface(const IGESGeom_BSplineSurface *anItem);
		%feature("autodoc", "1");
		Handle_IGESGeom_BSplineSurface const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESGeom_BSplineSurface {
	IGESGeom_BSplineSurface* GetObject() {
	return (IGESGeom_BSplineSurface*)$self->Access();
	}
};

%nodefaultctor Handle_IGESGeom_ConicArc;
class Handle_IGESGeom_ConicArc : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		~Handle_IGESGeom_ConicArc();
		%feature("autodoc", "1");
		Handle_IGESGeom_ConicArc();
		%feature("autodoc", "1");
		Handle_IGESGeom_ConicArc(const Handle_IGESGeom_ConicArc &aHandle);
		%feature("autodoc", "1");
		Handle_IGESGeom_ConicArc(const IGESGeom_ConicArc *anItem);
		%feature("autodoc", "1");
		Handle_IGESGeom_ConicArc const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESGeom_ConicArc {
	IGESGeom_ConicArc* GetObject() {
	return (IGESGeom_ConicArc*)$self->Access();
	}
};

%nodefaultctor Handle_IGESGeom_OffsetSurface;
class Handle_IGESGeom_OffsetSurface : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		~Handle_IGESGeom_OffsetSurface();
		%feature("autodoc", "1");
		Handle_IGESGeom_OffsetSurface();
		%feature("autodoc", "1");
		Handle_IGESGeom_OffsetSurface(const Handle_IGESGeom_OffsetSurface &aHandle);
		%feature("autodoc", "1");
		Handle_IGESGeom_OffsetSurface(const IGESGeom_OffsetSurface *anItem);
		%feature("autodoc", "1");
		Handle_IGESGeom_OffsetSurface const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESGeom_OffsetSurface {
	IGESGeom_OffsetSurface* GetObject() {
	return (IGESGeom_OffsetSurface*)$self->Access();
	}
};

%nodefaultctor Handle_IGESGeom_TrimmedSurface;
class Handle_IGESGeom_TrimmedSurface : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		~Handle_IGESGeom_TrimmedSurface();
		%feature("autodoc", "1");
		Handle_IGESGeom_TrimmedSurface();
		%feature("autodoc", "1");
		Handle_IGESGeom_TrimmedSurface(const Handle_IGESGeom_TrimmedSurface &aHandle);
		%feature("autodoc", "1");
		Handle_IGESGeom_TrimmedSurface(const IGESGeom_TrimmedSurface *anItem);
		%feature("autodoc", "1");
		Handle_IGESGeom_TrimmedSurface const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESGeom_TrimmedSurface {
	IGESGeom_TrimmedSurface* GetObject() {
	return (IGESGeom_TrimmedSurface*)$self->Access();
	}
};

%nodefaultctor Handle_IGESGeom_SplineCurve;
class Handle_IGESGeom_SplineCurve : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		~Handle_IGESGeom_SplineCurve();
		%feature("autodoc", "1");
		Handle_IGESGeom_SplineCurve();
		%feature("autodoc", "1");
		Handle_IGESGeom_SplineCurve(const Handle_IGESGeom_SplineCurve &aHandle);
		%feature("autodoc", "1");
		Handle_IGESGeom_SplineCurve(const IGESGeom_SplineCurve *anItem);
		%feature("autodoc", "1");
		Handle_IGESGeom_SplineCurve const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESGeom_SplineCurve {
	IGESGeom_SplineCurve* GetObject() {
	return (IGESGeom_SplineCurve*)$self->Access();
	}
};

%nodefaultctor Handle_IGESGeom_ReadWriteModule;
class Handle_IGESGeom_ReadWriteModule : public Handle_IGESData_ReadWriteModule {
	public:
		%feature("autodoc", "1");
		~Handle_IGESGeom_ReadWriteModule();
		%feature("autodoc", "1");
		Handle_IGESGeom_ReadWriteModule();
		%feature("autodoc", "1");
		Handle_IGESGeom_ReadWriteModule(const Handle_IGESGeom_ReadWriteModule &aHandle);
		%feature("autodoc", "1");
		Handle_IGESGeom_ReadWriteModule(const IGESGeom_ReadWriteModule *anItem);
		%feature("autodoc", "1");
		Handle_IGESGeom_ReadWriteModule const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESGeom_ReadWriteModule {
	IGESGeom_ReadWriteModule* GetObject() {
	return (IGESGeom_ReadWriteModule*)$self->Access();
	}
};

%nodefaultctor Handle_IGESGeom_Direction;
class Handle_IGESGeom_Direction : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		~Handle_IGESGeom_Direction();
		%feature("autodoc", "1");
		Handle_IGESGeom_Direction();
		%feature("autodoc", "1");
		Handle_IGESGeom_Direction(const Handle_IGESGeom_Direction &aHandle);
		%feature("autodoc", "1");
		Handle_IGESGeom_Direction(const IGESGeom_Direction *anItem);
		%feature("autodoc", "1");
		Handle_IGESGeom_Direction const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESGeom_Direction {
	IGESGeom_Direction* GetObject() {
	return (IGESGeom_Direction*)$self->Access();
	}
};

%nodefaultctor Handle_IGESGeom_Point;
class Handle_IGESGeom_Point : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		~Handle_IGESGeom_Point();
		%feature("autodoc", "1");
		Handle_IGESGeom_Point();
		%feature("autodoc", "1");
		Handle_IGESGeom_Point(const Handle_IGESGeom_Point &aHandle);
		%feature("autodoc", "1");
		Handle_IGESGeom_Point(const IGESGeom_Point *anItem);
		%feature("autodoc", "1");
		Handle_IGESGeom_Point const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESGeom_Point {
	IGESGeom_Point* GetObject() {
	return (IGESGeom_Point*)$self->Access();
	}
};

%nodefaultctor Handle_IGESGeom_SplineSurface;
class Handle_IGESGeom_SplineSurface : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		~Handle_IGESGeom_SplineSurface();
		%feature("autodoc", "1");
		Handle_IGESGeom_SplineSurface();
		%feature("autodoc", "1");
		Handle_IGESGeom_SplineSurface(const Handle_IGESGeom_SplineSurface &aHandle);
		%feature("autodoc", "1");
		Handle_IGESGeom_SplineSurface(const IGESGeom_SplineSurface *anItem);
		%feature("autodoc", "1");
		Handle_IGESGeom_SplineSurface const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESGeom_SplineSurface {
	IGESGeom_SplineSurface* GetObject() {
	return (IGESGeom_SplineSurface*)$self->Access();
	}
};

%nodefaultctor Handle_IGESGeom_CopiousData;
class Handle_IGESGeom_CopiousData : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		~Handle_IGESGeom_CopiousData();
		%feature("autodoc", "1");
		Handle_IGESGeom_CopiousData();
		%feature("autodoc", "1");
		Handle_IGESGeom_CopiousData(const Handle_IGESGeom_CopiousData &aHandle);
		%feature("autodoc", "1");
		Handle_IGESGeom_CopiousData(const IGESGeom_CopiousData *anItem);
		%feature("autodoc", "1");
		Handle_IGESGeom_CopiousData const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESGeom_CopiousData {
	IGESGeom_CopiousData* GetObject() {
	return (IGESGeom_CopiousData*)$self->Access();
	}
};

%nodefaultctor Handle_IGESGeom_TabulatedCylinder;
class Handle_IGESGeom_TabulatedCylinder : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		~Handle_IGESGeom_TabulatedCylinder();
		%feature("autodoc", "1");
		Handle_IGESGeom_TabulatedCylinder();
		%feature("autodoc", "1");
		Handle_IGESGeom_TabulatedCylinder(const Handle_IGESGeom_TabulatedCylinder &aHandle);
		%feature("autodoc", "1");
		Handle_IGESGeom_TabulatedCylinder(const IGESGeom_TabulatedCylinder *anItem);
		%feature("autodoc", "1");
		Handle_IGESGeom_TabulatedCylinder const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESGeom_TabulatedCylinder {
	IGESGeom_TabulatedCylinder* GetObject() {
	return (IGESGeom_TabulatedCylinder*)$self->Access();
	}
};

%nodefaultctor Handle_IGESGeom_OffsetCurve;
class Handle_IGESGeom_OffsetCurve : public Handle_IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		~Handle_IGESGeom_OffsetCurve();
		%feature("autodoc", "1");
		Handle_IGESGeom_OffsetCurve();
		%feature("autodoc", "1");
		Handle_IGESGeom_OffsetCurve(const Handle_IGESGeom_OffsetCurve &aHandle);
		%feature("autodoc", "1");
		Handle_IGESGeom_OffsetCurve(const IGESGeom_OffsetCurve *anItem);
		%feature("autodoc", "1");
		Handle_IGESGeom_OffsetCurve const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESGeom_OffsetCurve {
	IGESGeom_OffsetCurve* GetObject() {
	return (IGESGeom_OffsetCurve*)$self->Access();
	}
};

%nodefaultctor Handle_IGESGeom_GeneralModule;
class Handle_IGESGeom_GeneralModule : public Handle_IGESData_GeneralModule {
	public:
		%feature("autodoc", "1");
		~Handle_IGESGeom_GeneralModule();
		%feature("autodoc", "1");
		Handle_IGESGeom_GeneralModule();
		%feature("autodoc", "1");
		Handle_IGESGeom_GeneralModule(const Handle_IGESGeom_GeneralModule &aHandle);
		%feature("autodoc", "1");
		Handle_IGESGeom_GeneralModule(const IGESGeom_GeneralModule *anItem);
		%feature("autodoc", "1");
		Handle_IGESGeom_GeneralModule const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_IGESGeom_GeneralModule {
	IGESGeom_GeneralModule* GetObject() {
	return (IGESGeom_GeneralModule*)$self->Access();
	}
};

%nodefaultctor IGESGeom_ReadWriteModule;
class IGESGeom_ReadWriteModule : public IGESData_ReadWriteModule {
	public:
		%feature("autodoc", "1");
		IGESGeom_ReadWriteModule();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseIGES(const Standard_Integer typenum, const Standard_Integer formnum) const;
		%feature("autodoc", "1");
		virtual		void ReadOwnParams(const Standard_Integer CN, const Handle_IGESData_IGESEntity &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		virtual		void WriteOwnParams(const Standard_Integer CN, const Handle_IGESData_IGESEntity &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESGeom_ReadWriteModule();

};
%extend IGESGeom_ReadWriteModule {
	Handle_IGESGeom_ReadWriteModule GetHandle() {
	return *(Handle_IGESGeom_ReadWriteModule*) &$self;
	}
};

%nodefaultctor IGESGeom_SpecificModule;
class IGESGeom_SpecificModule : public IGESData_SpecificModule {
	public:
		%feature("autodoc", "1");
		IGESGeom_SpecificModule();
		%feature("autodoc", "1");
		virtual		void OwnDump(const Standard_Integer CN, const Handle_IGESData_IGESEntity &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean OwnCorrect(const Standard_Integer CN, const Handle_IGESData_IGESEntity &ent) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESGeom_SpecificModule();

};
%extend IGESGeom_SpecificModule {
	Handle_IGESGeom_SpecificModule GetHandle() {
	return *(Handle_IGESGeom_SpecificModule*) &$self;
	}
};

%nodefaultctor IGESGeom_SurfaceOfRevolution;
class IGESGeom_SurfaceOfRevolution : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESGeom_SurfaceOfRevolution();
		%feature("autodoc", "1");
		void Init(const Handle_IGESGeom_Line &anAxis, const Handle_IGESData_IGESEntity &aGeneratrix, const Standard_Real aStartAngle, const Standard_Real anEndAngle);
		%feature("autodoc", "1");
		Handle_IGESGeom_Line AxisOfRevolution() const;
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity Generatrix() const;
		%feature("autodoc", "1");
		Standard_Real StartAngle() const;
		%feature("autodoc", "1");
		Standard_Real EndAngle() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESGeom_SurfaceOfRevolution();

};
%extend IGESGeom_SurfaceOfRevolution {
	Handle_IGESGeom_SurfaceOfRevolution GetHandle() {
	return *(Handle_IGESGeom_SurfaceOfRevolution*) &$self;
	}
};

%nodefaultctor IGESGeom_TabulatedCylinder;
class IGESGeom_TabulatedCylinder : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESGeom_TabulatedCylinder();
		%feature("autodoc", "1");
		void Init(const Handle_IGESData_IGESEntity &aDirectrix, const gp_XYZ &anEnd);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity Directrix() const;
		%feature("autodoc", "1");
		gp_Pnt EndPoint() const;
		%feature("autodoc", "1");
		gp_Pnt TransformedEndPoint() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESGeom_TabulatedCylinder();

};
%extend IGESGeom_TabulatedCylinder {
	Handle_IGESGeom_TabulatedCylinder GetHandle() {
	return *(Handle_IGESGeom_TabulatedCylinder*) &$self;
	}
};

%nodefaultctor IGESGeom_Boundary;
class IGESGeom_Boundary : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESGeom_Boundary();
		%feature("autodoc", "1");
		void Init(const Standard_Integer aType, const Standard_Integer aPreference, const Handle_IGESData_IGESEntity &aSurface, const Handle_IGESData_HArray1OfIGESEntity &allModelCurves, const Handle_TColStd_HArray1OfInteger &allSenses, const Handle_IGESBasic_HArray1OfHArray1OfIGESEntity &allParameterCurves);
		%feature("autodoc", "1");
		Standard_Integer BoundaryType() const;
		%feature("autodoc", "1");
		Standard_Integer PreferenceType() const;
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity Surface() const;
		%feature("autodoc", "1");
		Standard_Integer NbModelSpaceCurves() const;
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity ModelSpaceCurve(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Integer Sense(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Integer NbParameterCurves(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_IGESData_HArray1OfIGESEntity ParameterCurves(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity ParameterCurve(const Standard_Integer Index, const Standard_Integer Num) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESGeom_Boundary();

};
%extend IGESGeom_Boundary {
	Handle_IGESGeom_Boundary GetHandle() {
	return *(Handle_IGESGeom_Boundary*) &$self;
	}
};

%nodefaultctor IGESGeom_Direction;
class IGESGeom_Direction : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESGeom_Direction();
		%feature("autodoc", "1");
		void Init(const gp_XYZ &aDirection);
		%feature("autodoc", "1");
		gp_Vec Value() const;
		%feature("autodoc", "1");
		gp_Vec TransformedValue() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESGeom_Direction();

};
%extend IGESGeom_Direction {
	Handle_IGESGeom_Direction GetHandle() {
	return *(Handle_IGESGeom_Direction*) &$self;
	}
};

%nodefaultctor IGESGeom_ToolOffsetSurface;
class IGESGeom_ToolOffsetSurface {
	public:
		%feature("autodoc", "1");
		~IGESGeom_ToolOffsetSurface();
		%feature("autodoc", "1");
		IGESGeom_ToolOffsetSurface();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESGeom_OffsetSurface &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESGeom_OffsetSurface &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESGeom_OffsetSurface &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESGeom_OffsetSurface &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESGeom_OffsetSurface &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESGeom_OffsetSurface &entfrom, const Handle_IGESGeom_OffsetSurface &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESGeom_OffsetSurface &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};

%nodefaultctor IGESGeom_Line;
class IGESGeom_Line : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESGeom_Line();
		%feature("autodoc", "1");
		void Init(const gp_XYZ &aStart, const gp_XYZ &anEnd);
		%feature("autodoc", "1");
		Standard_Integer Infinite() const;
		%feature("autodoc", "1");
		void SetInfinite(const Standard_Integer status);
		%feature("autodoc", "1");
		gp_Pnt StartPoint() const;
		%feature("autodoc", "1");
		gp_Pnt TransformedStartPoint() const;
		%feature("autodoc", "1");
		gp_Pnt EndPoint() const;
		%feature("autodoc", "1");
		gp_Pnt TransformedEndPoint() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESGeom_Line();

};
%extend IGESGeom_Line {
	Handle_IGESGeom_Line GetHandle() {
	return *(Handle_IGESGeom_Line*) &$self;
	}
};

%nodefaultctor IGESGeom_Flash;
class IGESGeom_Flash : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESGeom_Flash();
		%feature("autodoc", "1");
		void Init(const gp_XY &aPoint, const Standard_Real aDim, const Standard_Real anotherDim, const Standard_Real aRotation, const Handle_IGESData_IGESEntity &aReference);
		%feature("autodoc", "1");
		void SetFormNumber(const Standard_Integer form);
		%feature("autodoc", "1");
		gp_Pnt2d ReferencePoint() const;
		%feature("autodoc", "1");
		gp_Pnt TransformedReferencePoint() const;
		%feature("autodoc", "1");
		Standard_Real Dimension1() const;
		%feature("autodoc", "1");
		Standard_Real Dimension2() const;
		%feature("autodoc", "1");
		Standard_Real Rotation() const;
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity ReferenceEntity() const;
		%feature("autodoc", "1");
		Standard_Boolean HasReferenceEntity() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESGeom_Flash();

};
%extend IGESGeom_Flash {
	Handle_IGESGeom_Flash GetHandle() {
	return *(Handle_IGESGeom_Flash*) &$self;
	}
};

%nodefaultctor IGESGeom_ToolCopiousData;
class IGESGeom_ToolCopiousData {
	public:
		%feature("autodoc", "1");
		~IGESGeom_ToolCopiousData();
		%feature("autodoc", "1");
		IGESGeom_ToolCopiousData();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESGeom_CopiousData &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESGeom_CopiousData &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESGeom_CopiousData &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESGeom_CopiousData &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESGeom_CopiousData &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESGeom_CopiousData &entfrom, const Handle_IGESGeom_CopiousData &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESGeom_CopiousData &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};

%nodefaultctor IGESGeom_CurveOnSurface;
class IGESGeom_CurveOnSurface : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESGeom_CurveOnSurface();
		%feature("autodoc", "1");
		void Init(const Standard_Integer aMode, const Handle_IGESData_IGESEntity &aSurface, const Handle_IGESData_IGESEntity &aCurveUV, const Handle_IGESData_IGESEntity &aCurve3D, const Standard_Integer aPreference);
		%feature("autodoc", "1");
		Standard_Integer CreationMode() const;
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity Surface() const;
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity CurveUV() const;
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity Curve3D() const;
		%feature("autodoc", "1");
		Standard_Integer PreferenceMode() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESGeom_CurveOnSurface();

};
%extend IGESGeom_CurveOnSurface {
	Handle_IGESGeom_CurveOnSurface GetHandle() {
	return *(Handle_IGESGeom_CurveOnSurface*) &$self;
	}
};

%nodefaultctor IGESGeom_ToolSplineCurve;
class IGESGeom_ToolSplineCurve {
	public:
		%feature("autodoc", "1");
		~IGESGeom_ToolSplineCurve();
		%feature("autodoc", "1");
		IGESGeom_ToolSplineCurve();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESGeom_SplineCurve &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESGeom_SplineCurve &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESGeom_SplineCurve &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESGeom_SplineCurve &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESGeom_SplineCurve &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESGeom_SplineCurve &entfrom, const Handle_IGESGeom_SplineCurve &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESGeom_SplineCurve &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};

%nodefaultctor IGESGeom_RuledSurface;
class IGESGeom_RuledSurface : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESGeom_RuledSurface();
		%feature("autodoc", "1");
		void Init(const Handle_IGESData_IGESEntity &aCurve, const Handle_IGESData_IGESEntity &anotherCurve, const Standard_Integer aDirFlag, const Standard_Integer aDevFlag);
		%feature("autodoc", "1");
		void SetRuledByParameter(const Standard_Boolean mode);
		%feature("autodoc", "1");
		Standard_Boolean IsRuledByParameter() const;
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity FirstCurve() const;
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity SecondCurve() const;
		%feature("autodoc", "1");
		Standard_Integer DirectionFlag() const;
		%feature("autodoc", "1");
		Standard_Boolean IsDevelopable() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESGeom_RuledSurface();

};
%extend IGESGeom_RuledSurface {
	Handle_IGESGeom_RuledSurface GetHandle() {
	return *(Handle_IGESGeom_RuledSurface*) &$self;
	}
};

%nodefaultctor IGESGeom_ToolFlash;
class IGESGeom_ToolFlash {
	public:
		%feature("autodoc", "1");
		~IGESGeom_ToolFlash();
		%feature("autodoc", "1");
		IGESGeom_ToolFlash();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESGeom_Flash &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESGeom_Flash &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESGeom_Flash &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		Standard_Boolean OwnCorrect(const Handle_IGESGeom_Flash &ent) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESGeom_Flash &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESGeom_Flash &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESGeom_Flash &entfrom, const Handle_IGESGeom_Flash &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESGeom_Flash &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};

%nodefaultctor IGESGeom_ToolTransformationMatrix;
class IGESGeom_ToolTransformationMatrix {
	public:
		%feature("autodoc", "1");
		~IGESGeom_ToolTransformationMatrix();
		%feature("autodoc", "1");
		IGESGeom_ToolTransformationMatrix();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESGeom_TransformationMatrix &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESGeom_TransformationMatrix &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESGeom_TransformationMatrix &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		Standard_Boolean OwnCorrect(const Handle_IGESGeom_TransformationMatrix &ent) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESGeom_TransformationMatrix &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESGeom_TransformationMatrix &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESGeom_TransformationMatrix &entfrom, const Handle_IGESGeom_TransformationMatrix &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESGeom_TransformationMatrix &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};

%nodefaultctor IGESGeom_ToolTabulatedCylinder;
class IGESGeom_ToolTabulatedCylinder {
	public:
		%feature("autodoc", "1");
		~IGESGeom_ToolTabulatedCylinder();
		%feature("autodoc", "1");
		IGESGeom_ToolTabulatedCylinder();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESGeom_TabulatedCylinder &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESGeom_TabulatedCylinder &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESGeom_TabulatedCylinder &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESGeom_TabulatedCylinder &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESGeom_TabulatedCylinder &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESGeom_TabulatedCylinder &entfrom, const Handle_IGESGeom_TabulatedCylinder &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESGeom_TabulatedCylinder &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};

%nodefaultctor IGESGeom_ToolConicArc;
class IGESGeom_ToolConicArc {
	public:
		%feature("autodoc", "1");
		~IGESGeom_ToolConicArc();
		%feature("autodoc", "1");
		IGESGeom_ToolConicArc();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESGeom_ConicArc &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESGeom_ConicArc &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESGeom_ConicArc &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		Standard_Boolean OwnCorrect(const Handle_IGESGeom_ConicArc &ent) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESGeom_ConicArc &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESGeom_ConicArc &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESGeom_ConicArc &entfrom, const Handle_IGESGeom_ConicArc &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESGeom_ConicArc &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};

%nodefaultctor IGESGeom_OffsetSurface;
class IGESGeom_OffsetSurface : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESGeom_OffsetSurface();
		%feature("autodoc", "1");
		void Init(const gp_XYZ &anIndicatoR, const Standard_Real aDistance, const Handle_IGESData_IGESEntity &aSurface);
		%feature("autodoc", "1");
		gp_Vec OffsetIndicator() const;
		%feature("autodoc", "1");
		gp_Vec TransformedOffsetIndicator() const;
		%feature("autodoc", "1");
		Standard_Real Distance() const;
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity Surface() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESGeom_OffsetSurface();

};
%extend IGESGeom_OffsetSurface {
	Handle_IGESGeom_OffsetSurface GetHandle() {
	return *(Handle_IGESGeom_OffsetSurface*) &$self;
	}
};

%nodefaultctor IGESGeom_Array1OfCurveOnSurface;
class IGESGeom_Array1OfCurveOnSurface {
	public:
		%feature("autodoc", "1");
		IGESGeom_Array1OfCurveOnSurface(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		IGESGeom_Array1OfCurveOnSurface(const Handle_IGESGeom_CurveOnSurface &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Handle_IGESGeom_CurveOnSurface &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		~IGESGeom_Array1OfCurveOnSurface();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const IGESGeom_Array1OfCurveOnSurface & Assign(const IGESGeom_Array1OfCurveOnSurface &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_IGESGeom_CurveOnSurface &Value);
		%feature("autodoc", "1");
		const Handle_IGESGeom_CurveOnSurface & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_IGESGeom_CurveOnSurface & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_IGESGeom_CurveOnSurface & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_IGESGeom_CurveOnSurface & operator()(const Standard_Integer Index);

};

%nodefaultctor IGESGeom_BoundedSurface;
class IGESGeom_BoundedSurface : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESGeom_BoundedSurface();
		%feature("autodoc", "1");
		void Init(const Standard_Integer aType, const Handle_IGESData_IGESEntity &aSurface, const Handle_IGESGeom_HArray1OfBoundary &allBounds);
		%feature("autodoc", "1");
		Standard_Integer RepresentationType() const;
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity Surface() const;
		%feature("autodoc", "1");
		Standard_Integer NbBoundaries() const;
		%feature("autodoc", "1");
		Handle_IGESGeom_Boundary Boundary(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESGeom_BoundedSurface();

};
%extend IGESGeom_BoundedSurface {
	Handle_IGESGeom_BoundedSurface GetHandle() {
	return *(Handle_IGESGeom_BoundedSurface*) &$self;
	}
};

%nodefaultctor IGESGeom;
class IGESGeom {
	public:
		%feature("autodoc", "1");
		~IGESGeom();
		%feature("autodoc", "1");
		IGESGeom();
		%feature("autodoc", "1");
		void Init();
		%feature("autodoc", "1");
		Handle_IGESGeom_Protocol Protocol();

};

%nodefaultctor IGESGeom_ToolSplineSurface;
class IGESGeom_ToolSplineSurface {
	public:
		%feature("autodoc", "1");
		~IGESGeom_ToolSplineSurface();
		%feature("autodoc", "1");
		IGESGeom_ToolSplineSurface();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESGeom_SplineSurface &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESGeom_SplineSurface &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESGeom_SplineSurface &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESGeom_SplineSurface &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESGeom_SplineSurface &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESGeom_SplineSurface &entfrom, const Handle_IGESGeom_SplineSurface &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESGeom_SplineSurface &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};

%nodefaultctor IGESGeom_HArray1OfBoundary;
class IGESGeom_HArray1OfBoundary : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		IGESGeom_HArray1OfBoundary(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		IGESGeom_HArray1OfBoundary(const Standard_Integer Low, const Standard_Integer Up, const Handle_IGESGeom_Boundary &V);
		%feature("autodoc", "1");
		void Init(const Handle_IGESGeom_Boundary &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_IGESGeom_Boundary &Value);
		%feature("autodoc", "1");
		const Handle_IGESGeom_Boundary & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_IGESGeom_Boundary & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const IGESGeom_Array1OfBoundary & Array1() const;
		%feature("autodoc", "1");
		IGESGeom_Array1OfBoundary & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESGeom_HArray1OfBoundary();

};
%extend IGESGeom_HArray1OfBoundary {
	Handle_IGESGeom_HArray1OfBoundary GetHandle() {
	return *(Handle_IGESGeom_HArray1OfBoundary*) &$self;
	}
};

%nodefaultctor IGESGeom_ToolCurveOnSurface;
class IGESGeom_ToolCurveOnSurface {
	public:
		%feature("autodoc", "1");
		~IGESGeom_ToolCurveOnSurface();
		%feature("autodoc", "1");
		IGESGeom_ToolCurveOnSurface();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESGeom_CurveOnSurface &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESGeom_CurveOnSurface &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESGeom_CurveOnSurface &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		Standard_Boolean OwnCorrect(const Handle_IGESGeom_CurveOnSurface &ent) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESGeom_CurveOnSurface &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESGeom_CurveOnSurface &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESGeom_CurveOnSurface &entfrom, const Handle_IGESGeom_CurveOnSurface &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESGeom_CurveOnSurface &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};

%nodefaultctor IGESGeom_ToolRuledSurface;
class IGESGeom_ToolRuledSurface {
	public:
		%feature("autodoc", "1");
		~IGESGeom_ToolRuledSurface();
		%feature("autodoc", "1");
		IGESGeom_ToolRuledSurface();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESGeom_RuledSurface &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESGeom_RuledSurface &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESGeom_RuledSurface &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESGeom_RuledSurface &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESGeom_RuledSurface &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESGeom_RuledSurface &entfrom, const Handle_IGESGeom_RuledSurface &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESGeom_RuledSurface &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};

%nodefaultctor IGESGeom_ConicArc;
class IGESGeom_ConicArc : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESGeom_ConicArc();
		%feature("autodoc", "1");
		void Init(const Standard_Real A, const Standard_Real B, const Standard_Real C, const Standard_Real D, const Standard_Real E, const Standard_Real F, const Standard_Real ZT, const gp_XY &aStart, const gp_XY &anEnd);
		%feature("autodoc", "1");
		Standard_Boolean OwnCorrect();
		%feature("autodoc", "1");
		Standard_Integer ComputedFormNumber() const;
		%feature("autodoc", "1");
		void Equation(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Real ZPlane() const;
		%feature("autodoc", "1");
		gp_Pnt2d StartPoint() const;
		%feature("autodoc", "1");
		gp_Pnt TransformedStartPoint() const;
		%feature("autodoc", "1");
		gp_Pnt2d EndPoint() const;
		%feature("autodoc", "1");
		gp_Pnt TransformedEndPoint() const;
		%feature("autodoc", "1");
		Standard_Boolean IsFromEllipse() const;
		%feature("autodoc", "1");
		Standard_Boolean IsFromParabola() const;
		%feature("autodoc", "1");
		Standard_Boolean IsFromHyperbola() const;
		%feature("autodoc", "1");
		Standard_Boolean IsClosed() const;
		%feature("autodoc", "1");
		gp_Dir Axis() const;
		%feature("autodoc", "1");
		gp_Dir TransformedAxis() const;
		%feature("autodoc", "1");
		void Definition(gp_Pnt & Center, gp_Dir & MainAxis, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		void TransformedDefinition(gp_Pnt & Center, gp_Dir & MainAxis, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		void ComputedDefinition(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESGeom_ConicArc();

};
%extend IGESGeom_ConicArc {
	Handle_IGESGeom_ConicArc GetHandle() {
	return *(Handle_IGESGeom_ConicArc*) &$self;
	}
};

%nodefaultctor IGESGeom_Plane;
class IGESGeom_Plane : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESGeom_Plane();
		%feature("autodoc", "1");
		void Init(const Standard_Real A, const Standard_Real B, const Standard_Real C, const Standard_Real D, const Handle_IGESData_IGESEntity &aCurve, const gp_XYZ &attach, const Standard_Real aSize);
		%feature("autodoc", "1");
		void SetFormNumber(const Standard_Integer form);
		%feature("autodoc", "1");
		void Equation(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		void TransformedEquation(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Boolean HasBoundingCurve() const;
		%feature("autodoc", "1");
		Standard_Boolean HasBoundingCurveHole() const;
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity BoundingCurve() const;
		%feature("autodoc", "1");
		Standard_Boolean HasSymbolAttach() const;
		%feature("autodoc", "1");
		gp_Pnt SymbolAttach() const;
		%feature("autodoc", "1");
		gp_Pnt TransformedSymbolAttach() const;
		%feature("autodoc", "1");
		Standard_Real SymbolSize() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESGeom_Plane();

};
%extend IGESGeom_Plane {
	Handle_IGESGeom_Plane GetHandle() {
	return *(Handle_IGESGeom_Plane*) &$self;
	}
};

%nodefaultctor IGESGeom_ToolOffsetCurve;
class IGESGeom_ToolOffsetCurve {
	public:
		%feature("autodoc", "1");
		~IGESGeom_ToolOffsetCurve();
		%feature("autodoc", "1");
		IGESGeom_ToolOffsetCurve();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESGeom_OffsetCurve &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESGeom_OffsetCurve &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESGeom_OffsetCurve &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		Standard_Boolean OwnCorrect(const Handle_IGESGeom_OffsetCurve &ent) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESGeom_OffsetCurve &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESGeom_OffsetCurve &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESGeom_OffsetCurve &entfrom, const Handle_IGESGeom_OffsetCurve &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESGeom_OffsetCurve &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};

%nodefaultctor IGESGeom_BSplineCurve;
class IGESGeom_BSplineCurve : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESGeom_BSplineCurve();
		%feature("autodoc", "1");
		void Init(const Standard_Integer anIndex, const Standard_Integer aDegree, const Standard_Boolean aPlanar, const Standard_Boolean aClosed, const Standard_Boolean aPolynom, const Standard_Boolean aPeriodic, const Handle_TColStd_HArray1OfReal &allKnots, const Handle_TColStd_HArray1OfReal &allWeights, const Handle_TColgp_HArray1OfXYZ &allPoles, const Standard_Real aUmin, const Standard_Real aUmax, const gp_XYZ &aNorm);
		%feature("autodoc", "1");
		void SetFormNumber(const Standard_Integer form);
		%feature("autodoc", "1");
		Standard_Integer UpperIndex() const;
		%feature("autodoc", "1");
		Standard_Integer Degree() const;
		%feature("autodoc", "1");
		Standard_Boolean IsPlanar() const;
		%feature("autodoc", "1");
		Standard_Boolean IsClosed() const;
		%feature("autodoc", "1");
		Standard_Boolean IsPolynomial(const Standard_Boolean flag=0) const;
		%feature("autodoc", "1");
		Standard_Boolean IsPeriodic() const;
		%feature("autodoc", "1");
		Standard_Integer NbKnots() const;
		%feature("autodoc", "1");
		Standard_Real Knot(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		Standard_Integer NbPoles() const;
		%feature("autodoc", "1");
		Standard_Real Weight(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		gp_Pnt Pole(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		gp_Pnt TransformedPole(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		Standard_Real UMin() const;
		%feature("autodoc", "1");
		Standard_Real UMax() const;
		%feature("autodoc", "1");
		gp_XYZ Normal() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESGeom_BSplineCurve();

};
%extend IGESGeom_BSplineCurve {
	Handle_IGESGeom_BSplineCurve GetHandle() {
	return *(Handle_IGESGeom_BSplineCurve*) &$self;
	}
};

%nodefaultctor IGESGeom_SplineSurface;
class IGESGeom_SplineSurface : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESGeom_SplineSurface();
		%feature("autodoc", "1");
		void Init(const Standard_Integer aBoundaryType, const Standard_Integer aPatchType, const Handle_TColStd_HArray1OfReal &allUBreakpoints, const Handle_TColStd_HArray1OfReal &allVBreakpoints, const Handle_IGESBasic_HArray2OfHArray1OfReal &allXCoeffs, const Handle_IGESBasic_HArray2OfHArray1OfReal &allYCoeffs, const Handle_IGESBasic_HArray2OfHArray1OfReal &allZCoeffs);
		%feature("autodoc", "1");
		Standard_Integer NbUSegments() const;
		%feature("autodoc", "1");
		Standard_Integer NbVSegments() const;
		%feature("autodoc", "1");
		Standard_Integer BoundaryType() const;
		%feature("autodoc", "1");
		Standard_Integer PatchType() const;
		%feature("autodoc", "1");
		Standard_Real UBreakPoint(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		Standard_Real VBreakPoint(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal XPolynomial(const Standard_Integer anIndex1, const Standard_Integer anIndex2) const;
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal YPolynomial(const Standard_Integer anIndex1, const Standard_Integer anIndex2) const;
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal ZPolynomial(const Standard_Integer anIndex1, const Standard_Integer anIndex2) const;
		%feature("autodoc", "1");
		void Polynomials(Handle_IGESBasic_HArray2OfHArray1OfReal & XCoef, Handle_IGESBasic_HArray2OfHArray1OfReal & YCoef, Handle_IGESBasic_HArray2OfHArray1OfReal & ZCoef) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESGeom_SplineSurface();

};
%extend IGESGeom_SplineSurface {
	Handle_IGESGeom_SplineSurface GetHandle() {
	return *(Handle_IGESGeom_SplineSurface*) &$self;
	}
};

%nodefaultctor IGESGeom_ToolPlane;
class IGESGeom_ToolPlane {
	public:
		%feature("autodoc", "1");
		~IGESGeom_ToolPlane();
		%feature("autodoc", "1");
		IGESGeom_ToolPlane();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESGeom_Plane &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESGeom_Plane &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESGeom_Plane &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESGeom_Plane &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESGeom_Plane &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESGeom_Plane &entfrom, const Handle_IGESGeom_Plane &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESGeom_Plane &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};

%nodefaultctor IGESGeom_CompositeCurve;
class IGESGeom_CompositeCurve : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESGeom_CompositeCurve();
		%feature("autodoc", "1");
		void Init(const Handle_IGESData_HArray1OfIGESEntity &allEntities);
		%feature("autodoc", "1");
		Standard_Integer NbCurves() const;
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity Curve(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESGeom_CompositeCurve();

};
%extend IGESGeom_CompositeCurve {
	Handle_IGESGeom_CompositeCurve GetHandle() {
	return *(Handle_IGESGeom_CompositeCurve*) &$self;
	}
};

%nodefaultctor IGESGeom_Array1OfBoundary;
class IGESGeom_Array1OfBoundary {
	public:
		%feature("autodoc", "1");
		IGESGeom_Array1OfBoundary(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		IGESGeom_Array1OfBoundary(const Handle_IGESGeom_Boundary &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Handle_IGESGeom_Boundary &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		~IGESGeom_Array1OfBoundary();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const IGESGeom_Array1OfBoundary & Assign(const IGESGeom_Array1OfBoundary &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_IGESGeom_Boundary &Value);
		%feature("autodoc", "1");
		const Handle_IGESGeom_Boundary & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_IGESGeom_Boundary & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_IGESGeom_Boundary & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_IGESGeom_Boundary & operator()(const Standard_Integer Index);

};

%nodefaultctor IGESGeom_ToolLine;
class IGESGeom_ToolLine {
	public:
		%feature("autodoc", "1");
		~IGESGeom_ToolLine();
		%feature("autodoc", "1");
		IGESGeom_ToolLine();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESGeom_Line &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESGeom_Line &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESGeom_Line &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESGeom_Line &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESGeom_Line &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESGeom_Line &entfrom, const Handle_IGESGeom_Line &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESGeom_Line &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};

%nodefaultctor IGESGeom_BSplineSurface;
class IGESGeom_BSplineSurface : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESGeom_BSplineSurface();
		%feature("autodoc", "1");
		void Init(const Standard_Integer anIndexU, const Standard_Integer anIndexV, const Standard_Integer aDegU, const Standard_Integer aDegV, const Standard_Boolean aCloseU, const Standard_Boolean aCloseV, const Standard_Boolean aPolynom, const Standard_Boolean aPeriodU, const Standard_Boolean aPeriodV, const Handle_TColStd_HArray1OfReal &allKnotsU, const Handle_TColStd_HArray1OfReal &allKnotsV, const Handle_TColStd_HArray2OfReal &allWeights, const Handle_TColgp_HArray2OfXYZ &allPoles, const Standard_Real aUmin, const Standard_Real aUmax, const Standard_Real aVmin, const Standard_Real aVmax);
		%feature("autodoc", "1");
		void SetFormNumber(const Standard_Integer form);
		%feature("autodoc", "1");
		Standard_Integer UpperIndexU() const;
		%feature("autodoc", "1");
		Standard_Integer UpperIndexV() const;
		%feature("autodoc", "1");
		Standard_Integer DegreeU() const;
		%feature("autodoc", "1");
		Standard_Integer DegreeV() const;
		%feature("autodoc", "1");
		Standard_Boolean IsClosedU() const;
		%feature("autodoc", "1");
		Standard_Boolean IsClosedV() const;
		%feature("autodoc", "1");
		Standard_Boolean IsPolynomial(const Standard_Boolean flag=0) const;
		%feature("autodoc", "1");
		Standard_Boolean IsPeriodicU() const;
		%feature("autodoc", "1");
		Standard_Boolean IsPeriodicV() const;
		%feature("autodoc", "1");
		Standard_Integer NbKnotsU() const;
		%feature("autodoc", "1");
		Standard_Integer NbKnotsV() const;
		%feature("autodoc", "1");
		Standard_Real KnotU(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		Standard_Real KnotV(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		Standard_Integer NbPolesU() const;
		%feature("autodoc", "1");
		Standard_Integer NbPolesV() const;
		%feature("autodoc", "1");
		Standard_Real Weight(const Standard_Integer anIndex1, const Standard_Integer anIndex2) const;
		%feature("autodoc", "1");
		gp_Pnt Pole(const Standard_Integer anIndex1, const Standard_Integer anIndex2) const;
		%feature("autodoc", "1");
		gp_Pnt TransformedPole(const Standard_Integer anIndex1, const Standard_Integer anIndex2) const;
		%feature("autodoc", "1");
		Standard_Real UMin() const;
		%feature("autodoc", "1");
		Standard_Real UMax() const;
		%feature("autodoc", "1");
		Standard_Real VMin() const;
		%feature("autodoc", "1");
		Standard_Real VMax() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESGeom_BSplineSurface();

};
%extend IGESGeom_BSplineSurface {
	Handle_IGESGeom_BSplineSurface GetHandle() {
	return *(Handle_IGESGeom_BSplineSurface*) &$self;
	}
};

%nodefaultctor IGESGeom_ToolCircularArc;
class IGESGeom_ToolCircularArc {
	public:
		%feature("autodoc", "1");
		~IGESGeom_ToolCircularArc();
		%feature("autodoc", "1");
		IGESGeom_ToolCircularArc();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESGeom_CircularArc &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESGeom_CircularArc &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESGeom_CircularArc &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESGeom_CircularArc &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESGeom_CircularArc &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESGeom_CircularArc &entfrom, const Handle_IGESGeom_CircularArc &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESGeom_CircularArc &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};

%nodefaultctor IGESGeom_GeneralModule;
class IGESGeom_GeneralModule : public IGESData_GeneralModule {
	public:
		%feature("autodoc", "1");
		IGESGeom_GeneralModule();
		%feature("autodoc", "1");
		virtual		void OwnSharedCase(const Standard_Integer CN, const Handle_IGESData_IGESEntity &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		virtual		IGESData_DirChecker DirChecker(const Standard_Integer CN, const Handle_IGESData_IGESEntity &ent) const;
		%feature("autodoc", "1");
		virtual		void OwnCheckCase(const Standard_Integer CN, const Handle_IGESData_IGESEntity &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean NewVoid(const Standard_Integer CN, Handle_Standard_Transient & entto) const;
		%feature("autodoc", "1");
		virtual		void OwnCopyCase(const Standard_Integer CN, const Handle_IGESData_IGESEntity &entfrom, const Handle_IGESData_IGESEntity &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer CategoryNumber(const Standard_Integer CN, const Handle_Standard_Transient &ent, const Interface_ShareTool &shares) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESGeom_GeneralModule();

};
%extend IGESGeom_GeneralModule {
	Handle_IGESGeom_GeneralModule GetHandle() {
	return *(Handle_IGESGeom_GeneralModule*) &$self;
	}
};

%nodefaultctor IGESGeom_TrimmedSurface;
class IGESGeom_TrimmedSurface : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESGeom_TrimmedSurface();
		%feature("autodoc", "1");
		void Init(const Handle_IGESData_IGESEntity &aSurface, const Standard_Integer aFlag, const Handle_IGESGeom_CurveOnSurface &anOuter, const Handle_IGESGeom_HArray1OfCurveOnSurface &allInners);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity Surface() const;
		%feature("autodoc", "1");
		Standard_Boolean HasOuterContour() const;
		%feature("autodoc", "1");
		Handle_IGESGeom_CurveOnSurface OuterContour() const;
		%feature("autodoc", "1");
		Standard_Integer OuterBoundaryType() const;
		%feature("autodoc", "1");
		Standard_Integer NbInnerContours() const;
		%feature("autodoc", "1");
		Handle_IGESGeom_CurveOnSurface InnerContour(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESGeom_TrimmedSurface();

};
%extend IGESGeom_TrimmedSurface {
	Handle_IGESGeom_TrimmedSurface GetHandle() {
	return *(Handle_IGESGeom_TrimmedSurface*) &$self;
	}
};

%nodefaultctor IGESGeom_ToolDirection;
class IGESGeom_ToolDirection {
	public:
		%feature("autodoc", "1");
		~IGESGeom_ToolDirection();
		%feature("autodoc", "1");
		IGESGeom_ToolDirection();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESGeom_Direction &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESGeom_Direction &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESGeom_Direction &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESGeom_Direction &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESGeom_Direction &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESGeom_Direction &entfrom, const Handle_IGESGeom_Direction &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESGeom_Direction &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};

%nodefaultctor IGESGeom_TransformationMatrix;
class IGESGeom_TransformationMatrix : public IGESData_TransfEntity {
	public:
		%feature("autodoc", "1");
		IGESGeom_TransformationMatrix();
		%feature("autodoc", "1");
		void Init(const Handle_TColStd_HArray2OfReal &aMatrix);
		%feature("autodoc", "1");
		void SetFormNumber(const Standard_Integer form);
		%feature("autodoc", "1");
		Standard_Real Data(const Standard_Integer I, const Standard_Integer J) const;
		%feature("autodoc", "1");
		virtual		gp_GTrsf Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESGeom_TransformationMatrix();

};
%extend IGESGeom_TransformationMatrix {
	Handle_IGESGeom_TransformationMatrix GetHandle() {
	return *(Handle_IGESGeom_TransformationMatrix*) &$self;
	}
};

%nodefaultctor IGESGeom_HArray1OfCurveOnSurface;
class IGESGeom_HArray1OfCurveOnSurface : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		IGESGeom_HArray1OfCurveOnSurface(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		IGESGeom_HArray1OfCurveOnSurface(const Standard_Integer Low, const Standard_Integer Up, const Handle_IGESGeom_CurveOnSurface &V);
		%feature("autodoc", "1");
		void Init(const Handle_IGESGeom_CurveOnSurface &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_IGESGeom_CurveOnSurface &Value);
		%feature("autodoc", "1");
		const Handle_IGESGeom_CurveOnSurface & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_IGESGeom_CurveOnSurface & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const IGESGeom_Array1OfCurveOnSurface & Array1() const;
		%feature("autodoc", "1");
		IGESGeom_Array1OfCurveOnSurface & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESGeom_HArray1OfCurveOnSurface();

};
%extend IGESGeom_HArray1OfCurveOnSurface {
	Handle_IGESGeom_HArray1OfCurveOnSurface GetHandle() {
	return *(Handle_IGESGeom_HArray1OfCurveOnSurface*) &$self;
	}
};

%nodefaultctor IGESGeom_CopiousData;
class IGESGeom_CopiousData : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESGeom_CopiousData();
		%feature("autodoc", "1");
		void Init(const Standard_Integer aDataType, const Standard_Real aZPlane, const Handle_TColStd_HArray1OfReal &allData);
		%feature("autodoc", "1");
		void SetPolyline(const Standard_Boolean mode);
		%feature("autodoc", "1");
		void SetClosedPath2D();
		%feature("autodoc", "1");
		Standard_Boolean IsPointSet() const;
		%feature("autodoc", "1");
		Standard_Boolean IsPolyline() const;
		%feature("autodoc", "1");
		Standard_Boolean IsClosedPath2D() const;
		%feature("autodoc", "1");
		Standard_Integer DataType() const;
		%feature("autodoc", "1");
		Standard_Integer NbPoints() const;
		%feature("autodoc", "1");
		Standard_Real Data(const Standard_Integer NumPoint, const Standard_Integer NumData) const;
		%feature("autodoc", "1");
		Standard_Real ZPlane() const;
		%feature("autodoc", "1");
		gp_Pnt Point(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		gp_Pnt TransformedPoint(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		gp_Vec Vector(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		gp_Vec TransformedVector(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESGeom_CopiousData();

};
%extend IGESGeom_CopiousData {
	Handle_IGESGeom_CopiousData GetHandle() {
	return *(Handle_IGESGeom_CopiousData*) &$self;
	}
};

%nodefaultctor IGESGeom_ToolBSplineCurve;
class IGESGeom_ToolBSplineCurve {
	public:
		%feature("autodoc", "1");
		~IGESGeom_ToolBSplineCurve();
		%feature("autodoc", "1");
		IGESGeom_ToolBSplineCurve();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESGeom_BSplineCurve &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESGeom_BSplineCurve &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESGeom_BSplineCurve &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESGeom_BSplineCurve &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESGeom_BSplineCurve &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESGeom_BSplineCurve &entfrom, const Handle_IGESGeom_BSplineCurve &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESGeom_BSplineCurve &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};

%nodefaultctor IGESGeom_ToolBoundedSurface;
class IGESGeom_ToolBoundedSurface {
	public:
		%feature("autodoc", "1");
		~IGESGeom_ToolBoundedSurface();
		%feature("autodoc", "1");
		IGESGeom_ToolBoundedSurface();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESGeom_BoundedSurface &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESGeom_BoundedSurface &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESGeom_BoundedSurface &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESGeom_BoundedSurface &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESGeom_BoundedSurface &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESGeom_BoundedSurface &entfrom, const Handle_IGESGeom_BoundedSurface &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESGeom_BoundedSurface &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};

%nodefaultctor IGESGeom_Point;
class IGESGeom_Point : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESGeom_Point();
		%feature("autodoc", "1");
		void Init(const gp_XYZ &aPoint, const Handle_IGESBasic_SubfigureDef &aSymbol);
		%feature("autodoc", "1");
		gp_Pnt Value() const;
		%feature("autodoc", "1");
		gp_Pnt TransformedValue() const;
		%feature("autodoc", "1");
		Standard_Boolean HasDisplaySymbol() const;
		%feature("autodoc", "1");
		Handle_IGESBasic_SubfigureDef DisplaySymbol() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESGeom_Point();

};
%extend IGESGeom_Point {
	Handle_IGESGeom_Point GetHandle() {
	return *(Handle_IGESGeom_Point*) &$self;
	}
};

%nodefaultctor IGESGeom_SplineCurve;
class IGESGeom_SplineCurve : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESGeom_SplineCurve();
		%feature("autodoc", "1");
		void Init(const Standard_Integer aType, const Standard_Integer aDegree, const Standard_Integer nbDimensions, const Handle_TColStd_HArray1OfReal &allBreakPoints, const Handle_TColStd_HArray2OfReal &allXPolynomials, const Handle_TColStd_HArray2OfReal &allYPolynomials, const Handle_TColStd_HArray2OfReal &allZPolynomials, const Handle_TColStd_HArray1OfReal &allXvalues, const Handle_TColStd_HArray1OfReal &allYvalues, const Handle_TColStd_HArray1OfReal &allZvalues);
		%feature("autodoc", "1");
		Standard_Integer SplineType() const;
		%feature("autodoc", "1");
		Standard_Integer Degree() const;
		%feature("autodoc", "1");
		Standard_Integer NbDimensions() const;
		%feature("autodoc", "1");
		Standard_Integer NbSegments() const;
		%feature("autodoc", "1");
		Standard_Real BreakPoint(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void XCoordPolynomial(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		void YCoordPolynomial(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		void ZCoordPolynomial(const Standard_Integer Index, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		void XValues(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		void YValues(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		void ZValues(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESGeom_SplineCurve();

};
%extend IGESGeom_SplineCurve {
	Handle_IGESGeom_SplineCurve GetHandle() {
	return *(Handle_IGESGeom_SplineCurve*) &$self;
	}
};

%nodefaultctor IGESGeom_ToolCompositeCurve;
class IGESGeom_ToolCompositeCurve {
	public:
		%feature("autodoc", "1");
		~IGESGeom_ToolCompositeCurve();
		%feature("autodoc", "1");
		IGESGeom_ToolCompositeCurve();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESGeom_CompositeCurve &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESGeom_CompositeCurve &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESGeom_CompositeCurve &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESGeom_CompositeCurve &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESGeom_CompositeCurve &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESGeom_CompositeCurve &entfrom, const Handle_IGESGeom_CompositeCurve &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESGeom_CompositeCurve &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};

%nodefaultctor IGESGeom_HArray1OfTransformationMatrix;
class IGESGeom_HArray1OfTransformationMatrix : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		IGESGeom_HArray1OfTransformationMatrix(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		IGESGeom_HArray1OfTransformationMatrix(const Standard_Integer Low, const Standard_Integer Up, const Handle_IGESGeom_TransformationMatrix &V);
		%feature("autodoc", "1");
		void Init(const Handle_IGESGeom_TransformationMatrix &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_IGESGeom_TransformationMatrix &Value);
		%feature("autodoc", "1");
		const Handle_IGESGeom_TransformationMatrix & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_IGESGeom_TransformationMatrix & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const IGESGeom_Array1OfTransformationMatrix & Array1() const;
		%feature("autodoc", "1");
		IGESGeom_Array1OfTransformationMatrix & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESGeom_HArray1OfTransformationMatrix();

};
%extend IGESGeom_HArray1OfTransformationMatrix {
	Handle_IGESGeom_HArray1OfTransformationMatrix GetHandle() {
	return *(Handle_IGESGeom_HArray1OfTransformationMatrix*) &$self;
	}
};

%nodefaultctor IGESGeom_ToolPoint;
class IGESGeom_ToolPoint {
	public:
		%feature("autodoc", "1");
		~IGESGeom_ToolPoint();
		%feature("autodoc", "1");
		IGESGeom_ToolPoint();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESGeom_Point &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESGeom_Point &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESGeom_Point &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESGeom_Point &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESGeom_Point &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESGeom_Point &entfrom, const Handle_IGESGeom_Point &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESGeom_Point &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};

%nodefaultctor IGESGeom_CircularArc;
class IGESGeom_CircularArc : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESGeom_CircularArc();
		%feature("autodoc", "1");
		void Init(const Standard_Real aZT, const gp_XY &aCenter, const gp_XY &aStart, const gp_XY &anEnd);
		%feature("autodoc", "1");
		gp_Pnt2d Center() const;
		%feature("autodoc", "1");
		gp_Pnt TransformedCenter() const;
		%feature("autodoc", "1");
		gp_Pnt2d StartPoint() const;
		%feature("autodoc", "1");
		gp_Pnt TransformedStartPoint() const;
		%feature("autodoc", "1");
		Standard_Real ZPlane() const;
		%feature("autodoc", "1");
		gp_Pnt2d EndPoint() const;
		%feature("autodoc", "1");
		gp_Pnt TransformedEndPoint() const;
		%feature("autodoc", "1");
		Standard_Real Radius() const;
		%feature("autodoc", "1");
		Standard_Real Angle() const;
		%feature("autodoc", "1");
		gp_Dir Axis() const;
		%feature("autodoc", "1");
		gp_Dir TransformedAxis() const;
		%feature("autodoc", "1");
		Standard_Boolean IsClosed() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESGeom_CircularArc();

};
%extend IGESGeom_CircularArc {
	Handle_IGESGeom_CircularArc GetHandle() {
	return *(Handle_IGESGeom_CircularArc*) &$self;
	}
};

%nodefaultctor IGESGeom_Array1OfTransformationMatrix;
class IGESGeom_Array1OfTransformationMatrix {
	public:
		%feature("autodoc", "1");
		IGESGeom_Array1OfTransformationMatrix(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		IGESGeom_Array1OfTransformationMatrix(const Handle_IGESGeom_TransformationMatrix &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Handle_IGESGeom_TransformationMatrix &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		~IGESGeom_Array1OfTransformationMatrix();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const IGESGeom_Array1OfTransformationMatrix & Assign(const IGESGeom_Array1OfTransformationMatrix &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_IGESGeom_TransformationMatrix &Value);
		%feature("autodoc", "1");
		const Handle_IGESGeom_TransformationMatrix & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_IGESGeom_TransformationMatrix & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_IGESGeom_TransformationMatrix & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_IGESGeom_TransformationMatrix & operator()(const Standard_Integer Index);

};

%nodefaultctor IGESGeom_ToolBSplineSurface;
class IGESGeom_ToolBSplineSurface {
	public:
		%feature("autodoc", "1");
		~IGESGeom_ToolBSplineSurface();
		%feature("autodoc", "1");
		IGESGeom_ToolBSplineSurface();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESGeom_BSplineSurface &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESGeom_BSplineSurface &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESGeom_BSplineSurface &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESGeom_BSplineSurface &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESGeom_BSplineSurface &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESGeom_BSplineSurface &entfrom, const Handle_IGESGeom_BSplineSurface &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESGeom_BSplineSurface &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};

%nodefaultctor IGESGeom_ToolTrimmedSurface;
class IGESGeom_ToolTrimmedSurface {
	public:
		%feature("autodoc", "1");
		~IGESGeom_ToolTrimmedSurface();
		%feature("autodoc", "1");
		IGESGeom_ToolTrimmedSurface();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESGeom_TrimmedSurface &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESGeom_TrimmedSurface &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESGeom_TrimmedSurface &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESGeom_TrimmedSurface &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESGeom_TrimmedSurface &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESGeom_TrimmedSurface &entfrom, const Handle_IGESGeom_TrimmedSurface &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESGeom_TrimmedSurface &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};

%nodefaultctor IGESGeom_ToolSurfaceOfRevolution;
class IGESGeom_ToolSurfaceOfRevolution {
	public:
		%feature("autodoc", "1");
		~IGESGeom_ToolSurfaceOfRevolution();
		%feature("autodoc", "1");
		IGESGeom_ToolSurfaceOfRevolution();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESGeom_SurfaceOfRevolution &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESGeom_SurfaceOfRevolution &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESGeom_SurfaceOfRevolution &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESGeom_SurfaceOfRevolution &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESGeom_SurfaceOfRevolution &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESGeom_SurfaceOfRevolution &entfrom, const Handle_IGESGeom_SurfaceOfRevolution &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESGeom_SurfaceOfRevolution &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};

%nodefaultctor IGESGeom_ToolBoundary;
class IGESGeom_ToolBoundary {
	public:
		%feature("autodoc", "1");
		~IGESGeom_ToolBoundary();
		%feature("autodoc", "1");
		IGESGeom_ToolBoundary();
		%feature("autodoc", "1");
		void ReadOwnParams(const Handle_IGESGeom_Boundary &ent, const Handle_IGESData_IGESReaderData &IR, IGESData_ParamReader & PR) const;
		%feature("autodoc", "1");
		void WriteOwnParams(const Handle_IGESGeom_Boundary &ent, IGESData_IGESWriter & IW) const;
		%feature("autodoc", "1");
		void OwnShared(const Handle_IGESGeom_Boundary &ent, Interface_EntityIterator & iter) const;
		%feature("autodoc", "1");
		Standard_Boolean OwnCorrect(const Handle_IGESGeom_Boundary &ent) const;
		%feature("autodoc", "1");
		IGESData_DirChecker DirChecker(const Handle_IGESGeom_Boundary &ent) const;
		%feature("autodoc", "1");
		void OwnCheck(const Handle_IGESGeom_Boundary &ent, const Interface_ShareTool &shares, Handle_Interface_Check & ach) const;
		%feature("autodoc", "1");
		void OwnCopy(const Handle_IGESGeom_Boundary &entfrom, const Handle_IGESGeom_Boundary &entto, Interface_CopyTool & TC) const;
		%feature("autodoc", "1");
		void OwnDump(const Handle_IGESGeom_Boundary &ent, const IGESData_IGESDumper &dumper, const Handle_Message_Messenger &S, const Standard_Integer own) const;

};

%nodefaultctor IGESGeom_OffsetCurve;
class IGESGeom_OffsetCurve : public IGESData_IGESEntity {
	public:
		%feature("autodoc", "1");
		IGESGeom_OffsetCurve();
		%feature("autodoc", "1");
		void Init(const Handle_IGESData_IGESEntity &aBaseCurve, const Standard_Integer anOffsetType, const Handle_IGESData_IGESEntity &aFunction, const Standard_Integer aFunctionCoord, const Standard_Integer aTaperedOffsetType, const Standard_Real offDistance1, const Standard_Real arcLength1, const Standard_Real offDistance2, const Standard_Real arcLength2, const gp_XYZ &aNormalVec, const Standard_Real anOffsetParam, const Standard_Real anotherOffsetParam);
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity BaseCurve() const;
		%feature("autodoc", "1");
		Standard_Integer OffsetType() const;
		%feature("autodoc", "1");
		Handle_IGESData_IGESEntity Function() const;
		%feature("autodoc", "1");
		Standard_Boolean HasFunction() const;
		%feature("autodoc", "1");
		Standard_Integer FunctionParameter() const;
		%feature("autodoc", "1");
		Standard_Integer TaperedOffsetType() const;
		%feature("autodoc", "1");
		Standard_Real FirstOffsetDistance() const;
		%feature("autodoc", "1");
		Standard_Real ArcLength1() const;
		%feature("autodoc", "1");
		Standard_Real SecondOffsetDistance() const;
		%feature("autodoc", "1");
		Standard_Real ArcLength2() const;
		%feature("autodoc", "1");
		gp_Vec NormalVector() const;
		%feature("autodoc", "1");
		gp_Vec TransformedNormalVector() const;
		%feature("autodoc", "1");
		void Parameters(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Real StartParameter() const;
		%feature("autodoc", "1");
		Standard_Real EndParameter() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~IGESGeom_OffsetCurve();

};
%extend IGESGeom_OffsetCurve {
	Handle_IGESGeom_OffsetCurve GetHandle() {
	return *(Handle_IGESGeom_OffsetCurve*) &$self;
	}
};