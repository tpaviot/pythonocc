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
%module RWStepElement

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


%include RWStepElement_dependencies.i


%include RWStepElement_headers.i




%nodefaultctor RWStepElement_RWAnalysisItemWithinRepresentation;
class RWStepElement_RWAnalysisItemWithinRepresentation {
	public:
		%feature("autodoc", "1");
		~RWStepElement_RWAnalysisItemWithinRepresentation();
		%feature("autodoc", "1");
		RWStepElement_RWAnalysisItemWithinRepresentation();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepElement_AnalysisItemWithinRepresentation &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepElement_AnalysisItemWithinRepresentation &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepElement_AnalysisItemWithinRepresentation &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepElement_RWSurfaceSectionField;
class RWStepElement_RWSurfaceSectionField {
	public:
		%feature("autodoc", "1");
		~RWStepElement_RWSurfaceSectionField();
		%feature("autodoc", "1");
		RWStepElement_RWSurfaceSectionField();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepElement_SurfaceSectionField &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepElement_SurfaceSectionField &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepElement_SurfaceSectionField &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepElement_RWCurveElementSectionDefinition;
class RWStepElement_RWCurveElementSectionDefinition {
	public:
		%feature("autodoc", "1");
		~RWStepElement_RWCurveElementSectionDefinition();
		%feature("autodoc", "1");
		RWStepElement_RWCurveElementSectionDefinition();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepElement_CurveElementSectionDefinition &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepElement_CurveElementSectionDefinition &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepElement_CurveElementSectionDefinition &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepElement_RWCurve3dElementDescriptor;
class RWStepElement_RWCurve3dElementDescriptor {
	public:
		%feature("autodoc", "1");
		~RWStepElement_RWCurve3dElementDescriptor();
		%feature("autodoc", "1");
		RWStepElement_RWCurve3dElementDescriptor();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepElement_Curve3dElementDescriptor &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepElement_Curve3dElementDescriptor &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepElement_Curve3dElementDescriptor &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepElement_RWSurfaceSectionFieldVarying;
class RWStepElement_RWSurfaceSectionFieldVarying {
	public:
		%feature("autodoc", "1");
		~RWStepElement_RWSurfaceSectionFieldVarying();
		%feature("autodoc", "1");
		RWStepElement_RWSurfaceSectionFieldVarying();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepElement_SurfaceSectionFieldVarying &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepElement_SurfaceSectionFieldVarying &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepElement_SurfaceSectionFieldVarying &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepElement_RWCurveElementSectionDerivedDefinitions;
class RWStepElement_RWCurveElementSectionDerivedDefinitions {
	public:
		%feature("autodoc", "1");
		~RWStepElement_RWCurveElementSectionDerivedDefinitions();
		%feature("autodoc", "1");
		RWStepElement_RWCurveElementSectionDerivedDefinitions();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepElement_CurveElementSectionDerivedDefinitions &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepElement_CurveElementSectionDerivedDefinitions &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepElement_CurveElementSectionDerivedDefinitions &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepElement_RWUniformSurfaceSection;
class RWStepElement_RWUniformSurfaceSection {
	public:
		%feature("autodoc", "1");
		~RWStepElement_RWUniformSurfaceSection();
		%feature("autodoc", "1");
		RWStepElement_RWUniformSurfaceSection();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepElement_UniformSurfaceSection &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepElement_UniformSurfaceSection &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepElement_UniformSurfaceSection &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepElement_RWSurfaceSection;
class RWStepElement_RWSurfaceSection {
	public:
		%feature("autodoc", "1");
		~RWStepElement_RWSurfaceSection();
		%feature("autodoc", "1");
		RWStepElement_RWSurfaceSection();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepElement_SurfaceSection &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepElement_SurfaceSection &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepElement_SurfaceSection &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepElement_RWElementDescriptor;
class RWStepElement_RWElementDescriptor {
	public:
		%feature("autodoc", "1");
		~RWStepElement_RWElementDescriptor();
		%feature("autodoc", "1");
		RWStepElement_RWElementDescriptor();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepElement_ElementDescriptor &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepElement_ElementDescriptor &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepElement_ElementDescriptor &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepElement_RWElementMaterial;
class RWStepElement_RWElementMaterial {
	public:
		%feature("autodoc", "1");
		~RWStepElement_RWElementMaterial();
		%feature("autodoc", "1");
		RWStepElement_RWElementMaterial();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepElement_ElementMaterial &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepElement_ElementMaterial &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepElement_ElementMaterial &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepElement_RWCurveElementEndReleasePacket;
class RWStepElement_RWCurveElementEndReleasePacket {
	public:
		%feature("autodoc", "1");
		~RWStepElement_RWCurveElementEndReleasePacket();
		%feature("autodoc", "1");
		RWStepElement_RWCurveElementEndReleasePacket();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepElement_CurveElementEndReleasePacket &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepElement_CurveElementEndReleasePacket &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepElement_CurveElementEndReleasePacket &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepElement_RWSurface3dElementDescriptor;
class RWStepElement_RWSurface3dElementDescriptor {
	public:
		%feature("autodoc", "1");
		~RWStepElement_RWSurface3dElementDescriptor();
		%feature("autodoc", "1");
		RWStepElement_RWSurface3dElementDescriptor();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepElement_Surface3dElementDescriptor &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepElement_Surface3dElementDescriptor &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepElement_Surface3dElementDescriptor &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepElement_RWVolume3dElementDescriptor;
class RWStepElement_RWVolume3dElementDescriptor {
	public:
		%feature("autodoc", "1");
		~RWStepElement_RWVolume3dElementDescriptor();
		%feature("autodoc", "1");
		RWStepElement_RWVolume3dElementDescriptor();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepElement_Volume3dElementDescriptor &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepElement_Volume3dElementDescriptor &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepElement_Volume3dElementDescriptor &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepElement_RWSurfaceElementProperty;
class RWStepElement_RWSurfaceElementProperty {
	public:
		%feature("autodoc", "1");
		~RWStepElement_RWSurfaceElementProperty();
		%feature("autodoc", "1");
		RWStepElement_RWSurfaceElementProperty();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepElement_SurfaceElementProperty &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepElement_SurfaceElementProperty &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepElement_SurfaceElementProperty &ent, Interface_EntityIterator & iter) const;

};

%nodefaultctor RWStepElement_RWSurfaceSectionFieldConstant;
class RWStepElement_RWSurfaceSectionFieldConstant {
	public:
		%feature("autodoc", "1");
		~RWStepElement_RWSurfaceSectionFieldConstant();
		%feature("autodoc", "1");
		RWStepElement_RWSurfaceSectionFieldConstant();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepElement_SurfaceSectionFieldConstant &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepElement_SurfaceSectionFieldConstant &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepElement_SurfaceSectionFieldConstant &ent, Interface_EntityIterator & iter) const;

};