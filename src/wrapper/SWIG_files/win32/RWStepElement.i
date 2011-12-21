/*

Copyright 2008-2011 Thomas Paviot (tpaviot@gmail.com)

This file is part of pythonOCC.

pythonOCC is free software: you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

pythonOCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public License
along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.

$Revision$
$Date$
$Author$
$HeaderURL$

*/


%{
#ifdef WNT
#pragma warning(disable : 4716)
#endif
%}

%module RWStepElement
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include RWStepElement_renames.i


%include RWStepElement_required_python_modules.i


%include RWStepElement_dependencies.i


%include RWStepElement_headers.i




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
%feature("shadow") RWStepElement_RWSurfaceSectionFieldVarying::~RWStepElement_RWSurfaceSectionFieldVarying %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepElement_RWSurfaceSectionFieldVarying {
	void _kill_pointed() {
		delete $self;
	}
};


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
%feature("shadow") RWStepElement_RWAnalysisItemWithinRepresentation::~RWStepElement_RWAnalysisItemWithinRepresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepElement_RWAnalysisItemWithinRepresentation {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") RWStepElement_RWCurveElementSectionDefinition::~RWStepElement_RWCurveElementSectionDefinition %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepElement_RWCurveElementSectionDefinition {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") RWStepElement_RWCurve3dElementDescriptor::~RWStepElement_RWCurve3dElementDescriptor %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepElement_RWCurve3dElementDescriptor {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") RWStepElement_RWSurfaceSectionField::~RWStepElement_RWSurfaceSectionField %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepElement_RWSurfaceSectionField {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") RWStepElement_RWCurveElementSectionDerivedDefinitions::~RWStepElement_RWCurveElementSectionDerivedDefinitions %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepElement_RWCurveElementSectionDerivedDefinitions {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") RWStepElement_RWUniformSurfaceSection::~RWStepElement_RWUniformSurfaceSection %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepElement_RWUniformSurfaceSection {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") RWStepElement_RWSurfaceSection::~RWStepElement_RWSurfaceSection %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepElement_RWSurfaceSection {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") RWStepElement_RWElementDescriptor::~RWStepElement_RWElementDescriptor %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepElement_RWElementDescriptor {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") RWStepElement_RWElementMaterial::~RWStepElement_RWElementMaterial %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepElement_RWElementMaterial {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") RWStepElement_RWCurveElementEndReleasePacket::~RWStepElement_RWCurveElementEndReleasePacket %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepElement_RWCurveElementEndReleasePacket {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") RWStepElement_RWSurface3dElementDescriptor::~RWStepElement_RWSurface3dElementDescriptor %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepElement_RWSurface3dElementDescriptor {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") RWStepElement_RWVolume3dElementDescriptor::~RWStepElement_RWVolume3dElementDescriptor %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepElement_RWVolume3dElementDescriptor {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") RWStepElement_RWSurfaceElementProperty::~RWStepElement_RWSurfaceElementProperty %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepElement_RWSurfaceElementProperty {
	void _kill_pointed() {
		delete $self;
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
%feature("shadow") RWStepElement_RWSurfaceSectionFieldConstant::~RWStepElement_RWSurfaceSectionFieldConstant %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepElement_RWSurfaceSectionFieldConstant {
	void _kill_pointed() {
		delete $self;
	}
};
