/*

Copyright 2008-2009 Thomas Paviot (tpaviot@gmail.com)

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
%module RWStepElement

%include RWStepElement_renames.i
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include RWStepElement_dependencies.i


%include RWStepElement_headers.i




%nodefaultctor RWStepElement_RWAnalysisItemWithinRepresentation;
class RWStepElement_RWAnalysisItemWithinRepresentation {
	public:
		%feature("autodoc", "1");
		RWStepElement_RWAnalysisItemWithinRepresentation();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepElement_AnalysisItemWithinRepresentation &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepElement_AnalysisItemWithinRepresentation &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepElement_AnalysisItemWithinRepresentation &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepElement_RWAnalysisItemWithinRepresentation {
	~RWStepElement_RWAnalysisItemWithinRepresentation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepElement_RWAnalysisItemWithinRepresentation\n");}
	}
};


%nodefaultctor RWStepElement_RWSurfaceSectionField;
class RWStepElement_RWSurfaceSectionField {
	public:
		%feature("autodoc", "1");
		RWStepElement_RWSurfaceSectionField();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepElement_SurfaceSectionField &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepElement_SurfaceSectionField &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepElement_SurfaceSectionField &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepElement_RWSurfaceSectionField {
	~RWStepElement_RWSurfaceSectionField() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepElement_RWSurfaceSectionField\n");}
	}
};


%nodefaultctor RWStepElement_RWCurveElementSectionDefinition;
class RWStepElement_RWCurveElementSectionDefinition {
	public:
		%feature("autodoc", "1");
		RWStepElement_RWCurveElementSectionDefinition();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepElement_CurveElementSectionDefinition &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepElement_CurveElementSectionDefinition &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepElement_CurveElementSectionDefinition &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepElement_RWCurveElementSectionDefinition {
	~RWStepElement_RWCurveElementSectionDefinition() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepElement_RWCurveElementSectionDefinition\n");}
	}
};


%nodefaultctor RWStepElement_RWCurve3dElementDescriptor;
class RWStepElement_RWCurve3dElementDescriptor {
	public:
		%feature("autodoc", "1");
		RWStepElement_RWCurve3dElementDescriptor();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepElement_Curve3dElementDescriptor &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepElement_Curve3dElementDescriptor &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepElement_Curve3dElementDescriptor &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepElement_RWCurve3dElementDescriptor {
	~RWStepElement_RWCurve3dElementDescriptor() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepElement_RWCurve3dElementDescriptor\n");}
	}
};


%nodefaultctor RWStepElement_RWSurfaceSectionFieldVarying;
class RWStepElement_RWSurfaceSectionFieldVarying {
	public:
		%feature("autodoc", "1");
		RWStepElement_RWSurfaceSectionFieldVarying();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepElement_SurfaceSectionFieldVarying &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepElement_SurfaceSectionFieldVarying &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepElement_SurfaceSectionFieldVarying &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepElement_RWSurfaceSectionFieldVarying {
	~RWStepElement_RWSurfaceSectionFieldVarying() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepElement_RWSurfaceSectionFieldVarying\n");}
	}
};


%nodefaultctor RWStepElement_RWCurveElementSectionDerivedDefinitions;
class RWStepElement_RWCurveElementSectionDerivedDefinitions {
	public:
		%feature("autodoc", "1");
		RWStepElement_RWCurveElementSectionDerivedDefinitions();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepElement_CurveElementSectionDerivedDefinitions &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepElement_CurveElementSectionDerivedDefinitions &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepElement_CurveElementSectionDerivedDefinitions &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepElement_RWCurveElementSectionDerivedDefinitions {
	~RWStepElement_RWCurveElementSectionDerivedDefinitions() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepElement_RWCurveElementSectionDerivedDefinitions\n");}
	}
};


%nodefaultctor RWStepElement_RWUniformSurfaceSection;
class RWStepElement_RWUniformSurfaceSection {
	public:
		%feature("autodoc", "1");
		RWStepElement_RWUniformSurfaceSection();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepElement_UniformSurfaceSection &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepElement_UniformSurfaceSection &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepElement_UniformSurfaceSection &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepElement_RWUniformSurfaceSection {
	~RWStepElement_RWUniformSurfaceSection() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepElement_RWUniformSurfaceSection\n");}
	}
};


%nodefaultctor RWStepElement_RWSurfaceSection;
class RWStepElement_RWSurfaceSection {
	public:
		%feature("autodoc", "1");
		RWStepElement_RWSurfaceSection();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepElement_SurfaceSection &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepElement_SurfaceSection &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepElement_SurfaceSection &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepElement_RWSurfaceSection {
	~RWStepElement_RWSurfaceSection() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepElement_RWSurfaceSection\n");}
	}
};


%nodefaultctor RWStepElement_RWElementDescriptor;
class RWStepElement_RWElementDescriptor {
	public:
		%feature("autodoc", "1");
		RWStepElement_RWElementDescriptor();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepElement_ElementDescriptor &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepElement_ElementDescriptor &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepElement_ElementDescriptor &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepElement_RWElementDescriptor {
	~RWStepElement_RWElementDescriptor() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepElement_RWElementDescriptor\n");}
	}
};


%nodefaultctor RWStepElement_RWElementMaterial;
class RWStepElement_RWElementMaterial {
	public:
		%feature("autodoc", "1");
		RWStepElement_RWElementMaterial();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepElement_ElementMaterial &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepElement_ElementMaterial &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepElement_ElementMaterial &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepElement_RWElementMaterial {
	~RWStepElement_RWElementMaterial() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepElement_RWElementMaterial\n");}
	}
};


%nodefaultctor RWStepElement_RWCurveElementEndReleasePacket;
class RWStepElement_RWCurveElementEndReleasePacket {
	public:
		%feature("autodoc", "1");
		RWStepElement_RWCurveElementEndReleasePacket();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepElement_CurveElementEndReleasePacket &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepElement_CurveElementEndReleasePacket &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepElement_CurveElementEndReleasePacket &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepElement_RWCurveElementEndReleasePacket {
	~RWStepElement_RWCurveElementEndReleasePacket() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepElement_RWCurveElementEndReleasePacket\n");}
	}
};


%nodefaultctor RWStepElement_RWSurface3dElementDescriptor;
class RWStepElement_RWSurface3dElementDescriptor {
	public:
		%feature("autodoc", "1");
		RWStepElement_RWSurface3dElementDescriptor();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepElement_Surface3dElementDescriptor &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepElement_Surface3dElementDescriptor &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepElement_Surface3dElementDescriptor &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepElement_RWSurface3dElementDescriptor {
	~RWStepElement_RWSurface3dElementDescriptor() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepElement_RWSurface3dElementDescriptor\n");}
	}
};


%nodefaultctor RWStepElement_RWVolume3dElementDescriptor;
class RWStepElement_RWVolume3dElementDescriptor {
	public:
		%feature("autodoc", "1");
		RWStepElement_RWVolume3dElementDescriptor();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepElement_Volume3dElementDescriptor &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepElement_Volume3dElementDescriptor &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepElement_Volume3dElementDescriptor &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepElement_RWVolume3dElementDescriptor {
	~RWStepElement_RWVolume3dElementDescriptor() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepElement_RWVolume3dElementDescriptor\n");}
	}
};


%nodefaultctor RWStepElement_RWSurfaceElementProperty;
class RWStepElement_RWSurfaceElementProperty {
	public:
		%feature("autodoc", "1");
		RWStepElement_RWSurfaceElementProperty();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepElement_SurfaceElementProperty &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepElement_SurfaceElementProperty &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepElement_SurfaceElementProperty &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepElement_RWSurfaceElementProperty {
	~RWStepElement_RWSurfaceElementProperty() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepElement_RWSurfaceElementProperty\n");}
	}
};


%nodefaultctor RWStepElement_RWSurfaceSectionFieldConstant;
class RWStepElement_RWSurfaceSectionFieldConstant {
	public:
		%feature("autodoc", "1");
		RWStepElement_RWSurfaceSectionFieldConstant();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepElement_SurfaceSectionFieldConstant &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepElement_SurfaceSectionFieldConstant &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepElement_SurfaceSectionFieldConstant &ent, Interface_EntityIterator & iter) const;

};
%extend RWStepElement_RWSurfaceSectionFieldConstant {
	~RWStepElement_RWSurfaceSectionFieldConstant() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of RWStepElement_RWSurfaceSectionFieldConstant\n");}
	}
};
