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

%module StepElement
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include StepElement_renames.i


%include StepElement_required_python_modules.i


%include StepElement_dependencies.i


%include StepElement_headers.i


enum StepElement_ElementOrder {
	StepElement_Linear,
	StepElement_Quadratic,
	StepElement_Cubic,
	};

enum StepElement_UnspecifiedValue {
	StepElement_Unspecified,
	};

enum StepElement_EnumeratedCurveElementFreedom {
	StepElement_XTranslation,
	StepElement_YTranslation,
	StepElement_ZTranslation,
	StepElement_XRotation,
	StepElement_YRotation,
	StepElement_ZRotation,
	StepElement_Warp,
	StepElement_None,
	};

enum StepElement_EnumeratedCurveElementPurpose {
	StepElement_Axial,
	StepElement_YYBending,
	StepElement_ZZBending,
	StepElement_Torsion,
	StepElement_XYShear,
	StepElement_XZShear,
	StepElement_Warping,
	};

enum StepElement_Volume3dElementShape {
	StepElement_Hexahedron,
	StepElement_Wedge,
	StepElement_Tetrahedron,
	StepElement_Pyramid,
	};

enum StepElement_ElementVolume {
	StepElement_Volume,
	};

enum StepElement_EnumeratedSurfaceElementPurpose {
	StepElement_MembraneDirect,
	StepElement_MembraneShear,
	StepElement_BendingDirect,
	StepElement_BendingTorsion,
	StepElement_NormalToPlaneShear,
	};

enum StepElement_CurveEdge {
	StepElement_ElementEdge,
	};

enum StepElement_EnumeratedVolumeElementPurpose {
	StepElement_StressDisplacement,
	};

enum StepElement_Element2dShape {
	StepElement_Quadrilateral,
	StepElement_Triangle,
	};



%nodefaultctor Handle_StepElement_CurveElementSectionDefinition;
class Handle_StepElement_CurveElementSectionDefinition : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepElement_CurveElementSectionDefinition();
		%feature("autodoc", "1");
		Handle_StepElement_CurveElementSectionDefinition(const Handle_StepElement_CurveElementSectionDefinition &aHandle);
		%feature("autodoc", "1");
		Handle_StepElement_CurveElementSectionDefinition(const StepElement_CurveElementSectionDefinition *anItem);
		%feature("autodoc", "1");
		Handle_StepElement_CurveElementSectionDefinition & operator=(const Handle_StepElement_CurveElementSectionDefinition &aHandle);
		%feature("autodoc", "1");
		Handle_StepElement_CurveElementSectionDefinition & operator=(const StepElement_CurveElementSectionDefinition *anItem);
		%feature("autodoc", "1");
		static		Handle_StepElement_CurveElementSectionDefinition DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepElement_CurveElementSectionDefinition {
	StepElement_CurveElementSectionDefinition* GetObject() {
	return (StepElement_CurveElementSectionDefinition*)$self->Access();
	}
};
%feature("shadow") Handle_StepElement_CurveElementSectionDefinition::~Handle_StepElement_CurveElementSectionDefinition %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepElement_CurveElementSectionDefinition {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepElement_CurveElementSectionDerivedDefinitions;
class Handle_StepElement_CurveElementSectionDerivedDefinitions : public Handle_StepElement_CurveElementSectionDefinition {
	public:
		%feature("autodoc", "1");
		Handle_StepElement_CurveElementSectionDerivedDefinitions();
		%feature("autodoc", "1");
		Handle_StepElement_CurveElementSectionDerivedDefinitions(const Handle_StepElement_CurveElementSectionDerivedDefinitions &aHandle);
		%feature("autodoc", "1");
		Handle_StepElement_CurveElementSectionDerivedDefinitions(const StepElement_CurveElementSectionDerivedDefinitions *anItem);
		%feature("autodoc", "1");
		Handle_StepElement_CurveElementSectionDerivedDefinitions & operator=(const Handle_StepElement_CurveElementSectionDerivedDefinitions &aHandle);
		%feature("autodoc", "1");
		Handle_StepElement_CurveElementSectionDerivedDefinitions & operator=(const StepElement_CurveElementSectionDerivedDefinitions *anItem);
		%feature("autodoc", "1");
		static		Handle_StepElement_CurveElementSectionDerivedDefinitions DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepElement_CurveElementSectionDerivedDefinitions {
	StepElement_CurveElementSectionDerivedDefinitions* GetObject() {
	return (StepElement_CurveElementSectionDerivedDefinitions*)$self->Access();
	}
};
%feature("shadow") Handle_StepElement_CurveElementSectionDerivedDefinitions::~Handle_StepElement_CurveElementSectionDerivedDefinitions %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepElement_CurveElementSectionDerivedDefinitions {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepElement_ElementDescriptor;
class Handle_StepElement_ElementDescriptor : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepElement_ElementDescriptor();
		%feature("autodoc", "1");
		Handle_StepElement_ElementDescriptor(const Handle_StepElement_ElementDescriptor &aHandle);
		%feature("autodoc", "1");
		Handle_StepElement_ElementDescriptor(const StepElement_ElementDescriptor *anItem);
		%feature("autodoc", "1");
		Handle_StepElement_ElementDescriptor & operator=(const Handle_StepElement_ElementDescriptor &aHandle);
		%feature("autodoc", "1");
		Handle_StepElement_ElementDescriptor & operator=(const StepElement_ElementDescriptor *anItem);
		%feature("autodoc", "1");
		static		Handle_StepElement_ElementDescriptor DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepElement_ElementDescriptor {
	StepElement_ElementDescriptor* GetObject() {
	return (StepElement_ElementDescriptor*)$self->Access();
	}
};
%feature("shadow") Handle_StepElement_ElementDescriptor::~Handle_StepElement_ElementDescriptor %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepElement_ElementDescriptor {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepElement_Surface3dElementDescriptor;
class Handle_StepElement_Surface3dElementDescriptor : public Handle_StepElement_ElementDescriptor {
	public:
		%feature("autodoc", "1");
		Handle_StepElement_Surface3dElementDescriptor();
		%feature("autodoc", "1");
		Handle_StepElement_Surface3dElementDescriptor(const Handle_StepElement_Surface3dElementDescriptor &aHandle);
		%feature("autodoc", "1");
		Handle_StepElement_Surface3dElementDescriptor(const StepElement_Surface3dElementDescriptor *anItem);
		%feature("autodoc", "1");
		Handle_StepElement_Surface3dElementDescriptor & operator=(const Handle_StepElement_Surface3dElementDescriptor &aHandle);
		%feature("autodoc", "1");
		Handle_StepElement_Surface3dElementDescriptor & operator=(const StepElement_Surface3dElementDescriptor *anItem);
		%feature("autodoc", "1");
		static		Handle_StepElement_Surface3dElementDescriptor DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepElement_Surface3dElementDescriptor {
	StepElement_Surface3dElementDescriptor* GetObject() {
	return (StepElement_Surface3dElementDescriptor*)$self->Access();
	}
};
%feature("shadow") Handle_StepElement_Surface3dElementDescriptor::~Handle_StepElement_Surface3dElementDescriptor %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepElement_Surface3dElementDescriptor {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepElement_SurfaceElementPurposeMember;
class Handle_StepElement_SurfaceElementPurposeMember : public Handle_StepData_SelectNamed {
	public:
		%feature("autodoc", "1");
		Handle_StepElement_SurfaceElementPurposeMember();
		%feature("autodoc", "1");
		Handle_StepElement_SurfaceElementPurposeMember(const Handle_StepElement_SurfaceElementPurposeMember &aHandle);
		%feature("autodoc", "1");
		Handle_StepElement_SurfaceElementPurposeMember(const StepElement_SurfaceElementPurposeMember *anItem);
		%feature("autodoc", "1");
		Handle_StepElement_SurfaceElementPurposeMember & operator=(const Handle_StepElement_SurfaceElementPurposeMember &aHandle);
		%feature("autodoc", "1");
		Handle_StepElement_SurfaceElementPurposeMember & operator=(const StepElement_SurfaceElementPurposeMember *anItem);
		%feature("autodoc", "1");
		static		Handle_StepElement_SurfaceElementPurposeMember DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepElement_SurfaceElementPurposeMember {
	StepElement_SurfaceElementPurposeMember* GetObject() {
	return (StepElement_SurfaceElementPurposeMember*)$self->Access();
	}
};
%feature("shadow") Handle_StepElement_SurfaceElementPurposeMember::~Handle_StepElement_SurfaceElementPurposeMember %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepElement_SurfaceElementPurposeMember {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepElement_SurfaceSection;
class Handle_StepElement_SurfaceSection : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepElement_SurfaceSection();
		%feature("autodoc", "1");
		Handle_StepElement_SurfaceSection(const Handle_StepElement_SurfaceSection &aHandle);
		%feature("autodoc", "1");
		Handle_StepElement_SurfaceSection(const StepElement_SurfaceSection *anItem);
		%feature("autodoc", "1");
		Handle_StepElement_SurfaceSection & operator=(const Handle_StepElement_SurfaceSection &aHandle);
		%feature("autodoc", "1");
		Handle_StepElement_SurfaceSection & operator=(const StepElement_SurfaceSection *anItem);
		%feature("autodoc", "1");
		static		Handle_StepElement_SurfaceSection DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepElement_SurfaceSection {
	StepElement_SurfaceSection* GetObject() {
	return (StepElement_SurfaceSection*)$self->Access();
	}
};
%feature("shadow") Handle_StepElement_SurfaceSection::~Handle_StepElement_SurfaceSection %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepElement_SurfaceSection {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepElement_HSequenceOfElementMaterial;
class Handle_StepElement_HSequenceOfElementMaterial : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepElement_HSequenceOfElementMaterial();
		%feature("autodoc", "1");
		Handle_StepElement_HSequenceOfElementMaterial(const Handle_StepElement_HSequenceOfElementMaterial &aHandle);
		%feature("autodoc", "1");
		Handle_StepElement_HSequenceOfElementMaterial(const StepElement_HSequenceOfElementMaterial *anItem);
		%feature("autodoc", "1");
		Handle_StepElement_HSequenceOfElementMaterial & operator=(const Handle_StepElement_HSequenceOfElementMaterial &aHandle);
		%feature("autodoc", "1");
		Handle_StepElement_HSequenceOfElementMaterial & operator=(const StepElement_HSequenceOfElementMaterial *anItem);
		%feature("autodoc", "1");
		static		Handle_StepElement_HSequenceOfElementMaterial DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepElement_HSequenceOfElementMaterial {
	StepElement_HSequenceOfElementMaterial* GetObject() {
	return (StepElement_HSequenceOfElementMaterial*)$self->Access();
	}
};
%feature("shadow") Handle_StepElement_HSequenceOfElementMaterial::~Handle_StepElement_HSequenceOfElementMaterial %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepElement_HSequenceOfElementMaterial {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepElement_HArray1OfHSequenceOfSurfaceElementPurposeMember;
class Handle_StepElement_HArray1OfHSequenceOfSurfaceElementPurposeMember : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepElement_HArray1OfHSequenceOfSurfaceElementPurposeMember();
		%feature("autodoc", "1");
		Handle_StepElement_HArray1OfHSequenceOfSurfaceElementPurposeMember(const Handle_StepElement_HArray1OfHSequenceOfSurfaceElementPurposeMember &aHandle);
		%feature("autodoc", "1");
		Handle_StepElement_HArray1OfHSequenceOfSurfaceElementPurposeMember(const StepElement_HArray1OfHSequenceOfSurfaceElementPurposeMember *anItem);
		%feature("autodoc", "1");
		Handle_StepElement_HArray1OfHSequenceOfSurfaceElementPurposeMember & operator=(const Handle_StepElement_HArray1OfHSequenceOfSurfaceElementPurposeMember &aHandle);
		%feature("autodoc", "1");
		Handle_StepElement_HArray1OfHSequenceOfSurfaceElementPurposeMember & operator=(const StepElement_HArray1OfHSequenceOfSurfaceElementPurposeMember *anItem);
		%feature("autodoc", "1");
		static		Handle_StepElement_HArray1OfHSequenceOfSurfaceElementPurposeMember DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepElement_HArray1OfHSequenceOfSurfaceElementPurposeMember {
	StepElement_HArray1OfHSequenceOfSurfaceElementPurposeMember* GetObject() {
	return (StepElement_HArray1OfHSequenceOfSurfaceElementPurposeMember*)$self->Access();
	}
};
%feature("shadow") Handle_StepElement_HArray1OfHSequenceOfSurfaceElementPurposeMember::~Handle_StepElement_HArray1OfHSequenceOfSurfaceElementPurposeMember %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepElement_HArray1OfHSequenceOfSurfaceElementPurposeMember {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepElement_SequenceNodeOfSequenceOfElementMaterial;
class Handle_StepElement_SequenceNodeOfSequenceOfElementMaterial : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_StepElement_SequenceNodeOfSequenceOfElementMaterial();
		%feature("autodoc", "1");
		Handle_StepElement_SequenceNodeOfSequenceOfElementMaterial(const Handle_StepElement_SequenceNodeOfSequenceOfElementMaterial &aHandle);
		%feature("autodoc", "1");
		Handle_StepElement_SequenceNodeOfSequenceOfElementMaterial(const StepElement_SequenceNodeOfSequenceOfElementMaterial *anItem);
		%feature("autodoc", "1");
		Handle_StepElement_SequenceNodeOfSequenceOfElementMaterial & operator=(const Handle_StepElement_SequenceNodeOfSequenceOfElementMaterial &aHandle);
		%feature("autodoc", "1");
		Handle_StepElement_SequenceNodeOfSequenceOfElementMaterial & operator=(const StepElement_SequenceNodeOfSequenceOfElementMaterial *anItem);
		%feature("autodoc", "1");
		static		Handle_StepElement_SequenceNodeOfSequenceOfElementMaterial DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepElement_SequenceNodeOfSequenceOfElementMaterial {
	StepElement_SequenceNodeOfSequenceOfElementMaterial* GetObject() {
	return (StepElement_SequenceNodeOfSequenceOfElementMaterial*)$self->Access();
	}
};
%feature("shadow") Handle_StepElement_SequenceNodeOfSequenceOfElementMaterial::~Handle_StepElement_SequenceNodeOfSequenceOfElementMaterial %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepElement_SequenceNodeOfSequenceOfElementMaterial {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepElement_SequenceNodeOfSequenceOfCurveElementPurposeMember;
class Handle_StepElement_SequenceNodeOfSequenceOfCurveElementPurposeMember : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_StepElement_SequenceNodeOfSequenceOfCurveElementPurposeMember();
		%feature("autodoc", "1");
		Handle_StepElement_SequenceNodeOfSequenceOfCurveElementPurposeMember(const Handle_StepElement_SequenceNodeOfSequenceOfCurveElementPurposeMember &aHandle);
		%feature("autodoc", "1");
		Handle_StepElement_SequenceNodeOfSequenceOfCurveElementPurposeMember(const StepElement_SequenceNodeOfSequenceOfCurveElementPurposeMember *anItem);
		%feature("autodoc", "1");
		Handle_StepElement_SequenceNodeOfSequenceOfCurveElementPurposeMember & operator=(const Handle_StepElement_SequenceNodeOfSequenceOfCurveElementPurposeMember &aHandle);
		%feature("autodoc", "1");
		Handle_StepElement_SequenceNodeOfSequenceOfCurveElementPurposeMember & operator=(const StepElement_SequenceNodeOfSequenceOfCurveElementPurposeMember *anItem);
		%feature("autodoc", "1");
		static		Handle_StepElement_SequenceNodeOfSequenceOfCurveElementPurposeMember DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepElement_SequenceNodeOfSequenceOfCurveElementPurposeMember {
	StepElement_SequenceNodeOfSequenceOfCurveElementPurposeMember* GetObject() {
	return (StepElement_SequenceNodeOfSequenceOfCurveElementPurposeMember*)$self->Access();
	}
};
%feature("shadow") Handle_StepElement_SequenceNodeOfSequenceOfCurveElementPurposeMember::~Handle_StepElement_SequenceNodeOfSequenceOfCurveElementPurposeMember %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepElement_SequenceNodeOfSequenceOfCurveElementPurposeMember {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepElement_HArray2OfSurfaceElementPurpose;
class Handle_StepElement_HArray2OfSurfaceElementPurpose : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepElement_HArray2OfSurfaceElementPurpose();
		%feature("autodoc", "1");
		Handle_StepElement_HArray2OfSurfaceElementPurpose(const Handle_StepElement_HArray2OfSurfaceElementPurpose &aHandle);
		%feature("autodoc", "1");
		Handle_StepElement_HArray2OfSurfaceElementPurpose(const StepElement_HArray2OfSurfaceElementPurpose *anItem);
		%feature("autodoc", "1");
		Handle_StepElement_HArray2OfSurfaceElementPurpose & operator=(const Handle_StepElement_HArray2OfSurfaceElementPurpose &aHandle);
		%feature("autodoc", "1");
		Handle_StepElement_HArray2OfSurfaceElementPurpose & operator=(const StepElement_HArray2OfSurfaceElementPurpose *anItem);
		%feature("autodoc", "1");
		static		Handle_StepElement_HArray2OfSurfaceElementPurpose DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepElement_HArray2OfSurfaceElementPurpose {
	StepElement_HArray2OfSurfaceElementPurpose* GetObject() {
	return (StepElement_HArray2OfSurfaceElementPurpose*)$self->Access();
	}
};
%feature("shadow") Handle_StepElement_HArray2OfSurfaceElementPurpose::~Handle_StepElement_HArray2OfSurfaceElementPurpose %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepElement_HArray2OfSurfaceElementPurpose {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepElement_HArray2OfSurfaceElementPurposeMember;
class Handle_StepElement_HArray2OfSurfaceElementPurposeMember : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepElement_HArray2OfSurfaceElementPurposeMember();
		%feature("autodoc", "1");
		Handle_StepElement_HArray2OfSurfaceElementPurposeMember(const Handle_StepElement_HArray2OfSurfaceElementPurposeMember &aHandle);
		%feature("autodoc", "1");
		Handle_StepElement_HArray2OfSurfaceElementPurposeMember(const StepElement_HArray2OfSurfaceElementPurposeMember *anItem);
		%feature("autodoc", "1");
		Handle_StepElement_HArray2OfSurfaceElementPurposeMember & operator=(const Handle_StepElement_HArray2OfSurfaceElementPurposeMember &aHandle);
		%feature("autodoc", "1");
		Handle_StepElement_HArray2OfSurfaceElementPurposeMember & operator=(const StepElement_HArray2OfSurfaceElementPurposeMember *anItem);
		%feature("autodoc", "1");
		static		Handle_StepElement_HArray2OfSurfaceElementPurposeMember DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepElement_HArray2OfSurfaceElementPurposeMember {
	StepElement_HArray2OfSurfaceElementPurposeMember* GetObject() {
	return (StepElement_HArray2OfSurfaceElementPurposeMember*)$self->Access();
	}
};
%feature("shadow") Handle_StepElement_HArray2OfSurfaceElementPurposeMember::~Handle_StepElement_HArray2OfSurfaceElementPurposeMember %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepElement_HArray2OfSurfaceElementPurposeMember {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepElement_HArray1OfMeasureOrUnspecifiedValue;
class Handle_StepElement_HArray1OfMeasureOrUnspecifiedValue : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepElement_HArray1OfMeasureOrUnspecifiedValue();
		%feature("autodoc", "1");
		Handle_StepElement_HArray1OfMeasureOrUnspecifiedValue(const Handle_StepElement_HArray1OfMeasureOrUnspecifiedValue &aHandle);
		%feature("autodoc", "1");
		Handle_StepElement_HArray1OfMeasureOrUnspecifiedValue(const StepElement_HArray1OfMeasureOrUnspecifiedValue *anItem);
		%feature("autodoc", "1");
		Handle_StepElement_HArray1OfMeasureOrUnspecifiedValue & operator=(const Handle_StepElement_HArray1OfMeasureOrUnspecifiedValue &aHandle);
		%feature("autodoc", "1");
		Handle_StepElement_HArray1OfMeasureOrUnspecifiedValue & operator=(const StepElement_HArray1OfMeasureOrUnspecifiedValue *anItem);
		%feature("autodoc", "1");
		static		Handle_StepElement_HArray1OfMeasureOrUnspecifiedValue DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepElement_HArray1OfMeasureOrUnspecifiedValue {
	StepElement_HArray1OfMeasureOrUnspecifiedValue* GetObject() {
	return (StepElement_HArray1OfMeasureOrUnspecifiedValue*)$self->Access();
	}
};
%feature("shadow") Handle_StepElement_HArray1OfMeasureOrUnspecifiedValue::~Handle_StepElement_HArray1OfMeasureOrUnspecifiedValue %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepElement_HArray1OfMeasureOrUnspecifiedValue {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepElement_ElementAspectMember;
class Handle_StepElement_ElementAspectMember : public Handle_StepData_SelectNamed {
	public:
		%feature("autodoc", "1");
		Handle_StepElement_ElementAspectMember();
		%feature("autodoc", "1");
		Handle_StepElement_ElementAspectMember(const Handle_StepElement_ElementAspectMember &aHandle);
		%feature("autodoc", "1");
		Handle_StepElement_ElementAspectMember(const StepElement_ElementAspectMember *anItem);
		%feature("autodoc", "1");
		Handle_StepElement_ElementAspectMember & operator=(const Handle_StepElement_ElementAspectMember &aHandle);
		%feature("autodoc", "1");
		Handle_StepElement_ElementAspectMember & operator=(const StepElement_ElementAspectMember *anItem);
		%feature("autodoc", "1");
		static		Handle_StepElement_ElementAspectMember DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepElement_ElementAspectMember {
	StepElement_ElementAspectMember* GetObject() {
	return (StepElement_ElementAspectMember*)$self->Access();
	}
};
%feature("shadow") Handle_StepElement_ElementAspectMember::~Handle_StepElement_ElementAspectMember %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepElement_ElementAspectMember {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepElement_CurveElementFreedomMember;
class Handle_StepElement_CurveElementFreedomMember : public Handle_StepData_SelectNamed {
	public:
		%feature("autodoc", "1");
		Handle_StepElement_CurveElementFreedomMember();
		%feature("autodoc", "1");
		Handle_StepElement_CurveElementFreedomMember(const Handle_StepElement_CurveElementFreedomMember &aHandle);
		%feature("autodoc", "1");
		Handle_StepElement_CurveElementFreedomMember(const StepElement_CurveElementFreedomMember *anItem);
		%feature("autodoc", "1");
		Handle_StepElement_CurveElementFreedomMember & operator=(const Handle_StepElement_CurveElementFreedomMember &aHandle);
		%feature("autodoc", "1");
		Handle_StepElement_CurveElementFreedomMember & operator=(const StepElement_CurveElementFreedomMember *anItem);
		%feature("autodoc", "1");
		static		Handle_StepElement_CurveElementFreedomMember DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepElement_CurveElementFreedomMember {
	StepElement_CurveElementFreedomMember* GetObject() {
	return (StepElement_CurveElementFreedomMember*)$self->Access();
	}
};
%feature("shadow") Handle_StepElement_CurveElementFreedomMember::~Handle_StepElement_CurveElementFreedomMember %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepElement_CurveElementFreedomMember {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepElement_SequenceNodeOfSequenceOfSurfaceElementPurposeMember;
class Handle_StepElement_SequenceNodeOfSequenceOfSurfaceElementPurposeMember : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_StepElement_SequenceNodeOfSequenceOfSurfaceElementPurposeMember();
		%feature("autodoc", "1");
		Handle_StepElement_SequenceNodeOfSequenceOfSurfaceElementPurposeMember(const Handle_StepElement_SequenceNodeOfSequenceOfSurfaceElementPurposeMember &aHandle);
		%feature("autodoc", "1");
		Handle_StepElement_SequenceNodeOfSequenceOfSurfaceElementPurposeMember(const StepElement_SequenceNodeOfSequenceOfSurfaceElementPurposeMember *anItem);
		%feature("autodoc", "1");
		Handle_StepElement_SequenceNodeOfSequenceOfSurfaceElementPurposeMember & operator=(const Handle_StepElement_SequenceNodeOfSequenceOfSurfaceElementPurposeMember &aHandle);
		%feature("autodoc", "1");
		Handle_StepElement_SequenceNodeOfSequenceOfSurfaceElementPurposeMember & operator=(const StepElement_SequenceNodeOfSequenceOfSurfaceElementPurposeMember *anItem);
		%feature("autodoc", "1");
		static		Handle_StepElement_SequenceNodeOfSequenceOfSurfaceElementPurposeMember DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepElement_SequenceNodeOfSequenceOfSurfaceElementPurposeMember {
	StepElement_SequenceNodeOfSequenceOfSurfaceElementPurposeMember* GetObject() {
	return (StepElement_SequenceNodeOfSequenceOfSurfaceElementPurposeMember*)$self->Access();
	}
};
%feature("shadow") Handle_StepElement_SequenceNodeOfSequenceOfSurfaceElementPurposeMember::~Handle_StepElement_SequenceNodeOfSequenceOfSurfaceElementPurposeMember %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepElement_SequenceNodeOfSequenceOfSurfaceElementPurposeMember {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepElement_HArray1OfHSequenceOfCurveElementPurposeMember;
class Handle_StepElement_HArray1OfHSequenceOfCurveElementPurposeMember : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepElement_HArray1OfHSequenceOfCurveElementPurposeMember();
		%feature("autodoc", "1");
		Handle_StepElement_HArray1OfHSequenceOfCurveElementPurposeMember(const Handle_StepElement_HArray1OfHSequenceOfCurveElementPurposeMember &aHandle);
		%feature("autodoc", "1");
		Handle_StepElement_HArray1OfHSequenceOfCurveElementPurposeMember(const StepElement_HArray1OfHSequenceOfCurveElementPurposeMember *anItem);
		%feature("autodoc", "1");
		Handle_StepElement_HArray1OfHSequenceOfCurveElementPurposeMember & operator=(const Handle_StepElement_HArray1OfHSequenceOfCurveElementPurposeMember &aHandle);
		%feature("autodoc", "1");
		Handle_StepElement_HArray1OfHSequenceOfCurveElementPurposeMember & operator=(const StepElement_HArray1OfHSequenceOfCurveElementPurposeMember *anItem);
		%feature("autodoc", "1");
		static		Handle_StepElement_HArray1OfHSequenceOfCurveElementPurposeMember DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepElement_HArray1OfHSequenceOfCurveElementPurposeMember {
	StepElement_HArray1OfHSequenceOfCurveElementPurposeMember* GetObject() {
	return (StepElement_HArray1OfHSequenceOfCurveElementPurposeMember*)$self->Access();
	}
};
%feature("shadow") Handle_StepElement_HArray1OfHSequenceOfCurveElementPurposeMember::~Handle_StepElement_HArray1OfHSequenceOfCurveElementPurposeMember %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepElement_HArray1OfHSequenceOfCurveElementPurposeMember {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepElement_SurfaceElementProperty;
class Handle_StepElement_SurfaceElementProperty : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepElement_SurfaceElementProperty();
		%feature("autodoc", "1");
		Handle_StepElement_SurfaceElementProperty(const Handle_StepElement_SurfaceElementProperty &aHandle);
		%feature("autodoc", "1");
		Handle_StepElement_SurfaceElementProperty(const StepElement_SurfaceElementProperty *anItem);
		%feature("autodoc", "1");
		Handle_StepElement_SurfaceElementProperty & operator=(const Handle_StepElement_SurfaceElementProperty &aHandle);
		%feature("autodoc", "1");
		Handle_StepElement_SurfaceElementProperty & operator=(const StepElement_SurfaceElementProperty *anItem);
		%feature("autodoc", "1");
		static		Handle_StepElement_SurfaceElementProperty DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepElement_SurfaceElementProperty {
	StepElement_SurfaceElementProperty* GetObject() {
	return (StepElement_SurfaceElementProperty*)$self->Access();
	}
};
%feature("shadow") Handle_StepElement_SurfaceElementProperty::~Handle_StepElement_SurfaceElementProperty %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepElement_SurfaceElementProperty {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepElement_HArray2OfCurveElementPurposeMember;
class Handle_StepElement_HArray2OfCurveElementPurposeMember : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepElement_HArray2OfCurveElementPurposeMember();
		%feature("autodoc", "1");
		Handle_StepElement_HArray2OfCurveElementPurposeMember(const Handle_StepElement_HArray2OfCurveElementPurposeMember &aHandle);
		%feature("autodoc", "1");
		Handle_StepElement_HArray2OfCurveElementPurposeMember(const StepElement_HArray2OfCurveElementPurposeMember *anItem);
		%feature("autodoc", "1");
		Handle_StepElement_HArray2OfCurveElementPurposeMember & operator=(const Handle_StepElement_HArray2OfCurveElementPurposeMember &aHandle);
		%feature("autodoc", "1");
		Handle_StepElement_HArray2OfCurveElementPurposeMember & operator=(const StepElement_HArray2OfCurveElementPurposeMember *anItem);
		%feature("autodoc", "1");
		static		Handle_StepElement_HArray2OfCurveElementPurposeMember DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepElement_HArray2OfCurveElementPurposeMember {
	StepElement_HArray2OfCurveElementPurposeMember* GetObject() {
	return (StepElement_HArray2OfCurveElementPurposeMember*)$self->Access();
	}
};
%feature("shadow") Handle_StepElement_HArray2OfCurveElementPurposeMember::~Handle_StepElement_HArray2OfCurveElementPurposeMember %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepElement_HArray2OfCurveElementPurposeMember {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepElement_SurfaceSectionField;
class Handle_StepElement_SurfaceSectionField : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepElement_SurfaceSectionField();
		%feature("autodoc", "1");
		Handle_StepElement_SurfaceSectionField(const Handle_StepElement_SurfaceSectionField &aHandle);
		%feature("autodoc", "1");
		Handle_StepElement_SurfaceSectionField(const StepElement_SurfaceSectionField *anItem);
		%feature("autodoc", "1");
		Handle_StepElement_SurfaceSectionField & operator=(const Handle_StepElement_SurfaceSectionField &aHandle);
		%feature("autodoc", "1");
		Handle_StepElement_SurfaceSectionField & operator=(const StepElement_SurfaceSectionField *anItem);
		%feature("autodoc", "1");
		static		Handle_StepElement_SurfaceSectionField DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepElement_SurfaceSectionField {
	StepElement_SurfaceSectionField* GetObject() {
	return (StepElement_SurfaceSectionField*)$self->Access();
	}
};
%feature("shadow") Handle_StepElement_SurfaceSectionField::~Handle_StepElement_SurfaceSectionField %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepElement_SurfaceSectionField {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepElement_SurfaceSectionFieldConstant;
class Handle_StepElement_SurfaceSectionFieldConstant : public Handle_StepElement_SurfaceSectionField {
	public:
		%feature("autodoc", "1");
		Handle_StepElement_SurfaceSectionFieldConstant();
		%feature("autodoc", "1");
		Handle_StepElement_SurfaceSectionFieldConstant(const Handle_StepElement_SurfaceSectionFieldConstant &aHandle);
		%feature("autodoc", "1");
		Handle_StepElement_SurfaceSectionFieldConstant(const StepElement_SurfaceSectionFieldConstant *anItem);
		%feature("autodoc", "1");
		Handle_StepElement_SurfaceSectionFieldConstant & operator=(const Handle_StepElement_SurfaceSectionFieldConstant &aHandle);
		%feature("autodoc", "1");
		Handle_StepElement_SurfaceSectionFieldConstant & operator=(const StepElement_SurfaceSectionFieldConstant *anItem);
		%feature("autodoc", "1");
		static		Handle_StepElement_SurfaceSectionFieldConstant DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepElement_SurfaceSectionFieldConstant {
	StepElement_SurfaceSectionFieldConstant* GetObject() {
	return (StepElement_SurfaceSectionFieldConstant*)$self->Access();
	}
};
%feature("shadow") Handle_StepElement_SurfaceSectionFieldConstant::~Handle_StepElement_SurfaceSectionFieldConstant %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepElement_SurfaceSectionFieldConstant {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepElement_HSequenceOfCurveElementPurposeMember;
class Handle_StepElement_HSequenceOfCurveElementPurposeMember : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepElement_HSequenceOfCurveElementPurposeMember();
		%feature("autodoc", "1");
		Handle_StepElement_HSequenceOfCurveElementPurposeMember(const Handle_StepElement_HSequenceOfCurveElementPurposeMember &aHandle);
		%feature("autodoc", "1");
		Handle_StepElement_HSequenceOfCurveElementPurposeMember(const StepElement_HSequenceOfCurveElementPurposeMember *anItem);
		%feature("autodoc", "1");
		Handle_StepElement_HSequenceOfCurveElementPurposeMember & operator=(const Handle_StepElement_HSequenceOfCurveElementPurposeMember &aHandle);
		%feature("autodoc", "1");
		Handle_StepElement_HSequenceOfCurveElementPurposeMember & operator=(const StepElement_HSequenceOfCurveElementPurposeMember *anItem);
		%feature("autodoc", "1");
		static		Handle_StepElement_HSequenceOfCurveElementPurposeMember DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepElement_HSequenceOfCurveElementPurposeMember {
	StepElement_HSequenceOfCurveElementPurposeMember* GetObject() {
	return (StepElement_HSequenceOfCurveElementPurposeMember*)$self->Access();
	}
};
%feature("shadow") Handle_StepElement_HSequenceOfCurveElementPurposeMember::~Handle_StepElement_HSequenceOfCurveElementPurposeMember %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepElement_HSequenceOfCurveElementPurposeMember {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepElement_HArray1OfCurveElementEndReleasePacket;
class Handle_StepElement_HArray1OfCurveElementEndReleasePacket : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepElement_HArray1OfCurveElementEndReleasePacket();
		%feature("autodoc", "1");
		Handle_StepElement_HArray1OfCurveElementEndReleasePacket(const Handle_StepElement_HArray1OfCurveElementEndReleasePacket &aHandle);
		%feature("autodoc", "1");
		Handle_StepElement_HArray1OfCurveElementEndReleasePacket(const StepElement_HArray1OfCurveElementEndReleasePacket *anItem);
		%feature("autodoc", "1");
		Handle_StepElement_HArray1OfCurveElementEndReleasePacket & operator=(const Handle_StepElement_HArray1OfCurveElementEndReleasePacket &aHandle);
		%feature("autodoc", "1");
		Handle_StepElement_HArray1OfCurveElementEndReleasePacket & operator=(const StepElement_HArray1OfCurveElementEndReleasePacket *anItem);
		%feature("autodoc", "1");
		static		Handle_StepElement_HArray1OfCurveElementEndReleasePacket DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepElement_HArray1OfCurveElementEndReleasePacket {
	StepElement_HArray1OfCurveElementEndReleasePacket* GetObject() {
	return (StepElement_HArray1OfCurveElementEndReleasePacket*)$self->Access();
	}
};
%feature("shadow") Handle_StepElement_HArray1OfCurveElementEndReleasePacket::~Handle_StepElement_HArray1OfCurveElementEndReleasePacket %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepElement_HArray1OfCurveElementEndReleasePacket {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepElement_UniformSurfaceSection;
class Handle_StepElement_UniformSurfaceSection : public Handle_StepElement_SurfaceSection {
	public:
		%feature("autodoc", "1");
		Handle_StepElement_UniformSurfaceSection();
		%feature("autodoc", "1");
		Handle_StepElement_UniformSurfaceSection(const Handle_StepElement_UniformSurfaceSection &aHandle);
		%feature("autodoc", "1");
		Handle_StepElement_UniformSurfaceSection(const StepElement_UniformSurfaceSection *anItem);
		%feature("autodoc", "1");
		Handle_StepElement_UniformSurfaceSection & operator=(const Handle_StepElement_UniformSurfaceSection &aHandle);
		%feature("autodoc", "1");
		Handle_StepElement_UniformSurfaceSection & operator=(const StepElement_UniformSurfaceSection *anItem);
		%feature("autodoc", "1");
		static		Handle_StepElement_UniformSurfaceSection DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepElement_UniformSurfaceSection {
	StepElement_UniformSurfaceSection* GetObject() {
	return (StepElement_UniformSurfaceSection*)$self->Access();
	}
};
%feature("shadow") Handle_StepElement_UniformSurfaceSection::~Handle_StepElement_UniformSurfaceSection %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepElement_UniformSurfaceSection {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepElement_VolumeElementPurposeMember;
class Handle_StepElement_VolumeElementPurposeMember : public Handle_StepData_SelectNamed {
	public:
		%feature("autodoc", "1");
		Handle_StepElement_VolumeElementPurposeMember();
		%feature("autodoc", "1");
		Handle_StepElement_VolumeElementPurposeMember(const Handle_StepElement_VolumeElementPurposeMember &aHandle);
		%feature("autodoc", "1");
		Handle_StepElement_VolumeElementPurposeMember(const StepElement_VolumeElementPurposeMember *anItem);
		%feature("autodoc", "1");
		Handle_StepElement_VolumeElementPurposeMember & operator=(const Handle_StepElement_VolumeElementPurposeMember &aHandle);
		%feature("autodoc", "1");
		Handle_StepElement_VolumeElementPurposeMember & operator=(const StepElement_VolumeElementPurposeMember *anItem);
		%feature("autodoc", "1");
		static		Handle_StepElement_VolumeElementPurposeMember DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepElement_VolumeElementPurposeMember {
	StepElement_VolumeElementPurposeMember* GetObject() {
	return (StepElement_VolumeElementPurposeMember*)$self->Access();
	}
};
%feature("shadow") Handle_StepElement_VolumeElementPurposeMember::~Handle_StepElement_VolumeElementPurposeMember %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepElement_VolumeElementPurposeMember {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepElement_CurveElementEndReleasePacket;
class Handle_StepElement_CurveElementEndReleasePacket : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepElement_CurveElementEndReleasePacket();
		%feature("autodoc", "1");
		Handle_StepElement_CurveElementEndReleasePacket(const Handle_StepElement_CurveElementEndReleasePacket &aHandle);
		%feature("autodoc", "1");
		Handle_StepElement_CurveElementEndReleasePacket(const StepElement_CurveElementEndReleasePacket *anItem);
		%feature("autodoc", "1");
		Handle_StepElement_CurveElementEndReleasePacket & operator=(const Handle_StepElement_CurveElementEndReleasePacket &aHandle);
		%feature("autodoc", "1");
		Handle_StepElement_CurveElementEndReleasePacket & operator=(const StepElement_CurveElementEndReleasePacket *anItem);
		%feature("autodoc", "1");
		static		Handle_StepElement_CurveElementEndReleasePacket DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepElement_CurveElementEndReleasePacket {
	StepElement_CurveElementEndReleasePacket* GetObject() {
	return (StepElement_CurveElementEndReleasePacket*)$self->Access();
	}
};
%feature("shadow") Handle_StepElement_CurveElementEndReleasePacket::~Handle_StepElement_CurveElementEndReleasePacket %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepElement_CurveElementEndReleasePacket {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepElement_MeasureOrUnspecifiedValueMember;
class Handle_StepElement_MeasureOrUnspecifiedValueMember : public Handle_StepData_SelectNamed {
	public:
		%feature("autodoc", "1");
		Handle_StepElement_MeasureOrUnspecifiedValueMember();
		%feature("autodoc", "1");
		Handle_StepElement_MeasureOrUnspecifiedValueMember(const Handle_StepElement_MeasureOrUnspecifiedValueMember &aHandle);
		%feature("autodoc", "1");
		Handle_StepElement_MeasureOrUnspecifiedValueMember(const StepElement_MeasureOrUnspecifiedValueMember *anItem);
		%feature("autodoc", "1");
		Handle_StepElement_MeasureOrUnspecifiedValueMember & operator=(const Handle_StepElement_MeasureOrUnspecifiedValueMember &aHandle);
		%feature("autodoc", "1");
		Handle_StepElement_MeasureOrUnspecifiedValueMember & operator=(const StepElement_MeasureOrUnspecifiedValueMember *anItem);
		%feature("autodoc", "1");
		static		Handle_StepElement_MeasureOrUnspecifiedValueMember DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepElement_MeasureOrUnspecifiedValueMember {
	StepElement_MeasureOrUnspecifiedValueMember* GetObject() {
	return (StepElement_MeasureOrUnspecifiedValueMember*)$self->Access();
	}
};
%feature("shadow") Handle_StepElement_MeasureOrUnspecifiedValueMember::~Handle_StepElement_MeasureOrUnspecifiedValueMember %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepElement_MeasureOrUnspecifiedValueMember {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepElement_HSequenceOfCurveElementSectionDefinition;
class Handle_StepElement_HSequenceOfCurveElementSectionDefinition : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepElement_HSequenceOfCurveElementSectionDefinition();
		%feature("autodoc", "1");
		Handle_StepElement_HSequenceOfCurveElementSectionDefinition(const Handle_StepElement_HSequenceOfCurveElementSectionDefinition &aHandle);
		%feature("autodoc", "1");
		Handle_StepElement_HSequenceOfCurveElementSectionDefinition(const StepElement_HSequenceOfCurveElementSectionDefinition *anItem);
		%feature("autodoc", "1");
		Handle_StepElement_HSequenceOfCurveElementSectionDefinition & operator=(const Handle_StepElement_HSequenceOfCurveElementSectionDefinition &aHandle);
		%feature("autodoc", "1");
		Handle_StepElement_HSequenceOfCurveElementSectionDefinition & operator=(const StepElement_HSequenceOfCurveElementSectionDefinition *anItem);
		%feature("autodoc", "1");
		static		Handle_StepElement_HSequenceOfCurveElementSectionDefinition DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepElement_HSequenceOfCurveElementSectionDefinition {
	StepElement_HSequenceOfCurveElementSectionDefinition* GetObject() {
	return (StepElement_HSequenceOfCurveElementSectionDefinition*)$self->Access();
	}
};
%feature("shadow") Handle_StepElement_HSequenceOfCurveElementSectionDefinition::~Handle_StepElement_HSequenceOfCurveElementSectionDefinition %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepElement_HSequenceOfCurveElementSectionDefinition {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepElement_HSequenceOfSurfaceElementPurposeMember;
class Handle_StepElement_HSequenceOfSurfaceElementPurposeMember : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepElement_HSequenceOfSurfaceElementPurposeMember();
		%feature("autodoc", "1");
		Handle_StepElement_HSequenceOfSurfaceElementPurposeMember(const Handle_StepElement_HSequenceOfSurfaceElementPurposeMember &aHandle);
		%feature("autodoc", "1");
		Handle_StepElement_HSequenceOfSurfaceElementPurposeMember(const StepElement_HSequenceOfSurfaceElementPurposeMember *anItem);
		%feature("autodoc", "1");
		Handle_StepElement_HSequenceOfSurfaceElementPurposeMember & operator=(const Handle_StepElement_HSequenceOfSurfaceElementPurposeMember &aHandle);
		%feature("autodoc", "1");
		Handle_StepElement_HSequenceOfSurfaceElementPurposeMember & operator=(const StepElement_HSequenceOfSurfaceElementPurposeMember *anItem);
		%feature("autodoc", "1");
		static		Handle_StepElement_HSequenceOfSurfaceElementPurposeMember DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepElement_HSequenceOfSurfaceElementPurposeMember {
	StepElement_HSequenceOfSurfaceElementPurposeMember* GetObject() {
	return (StepElement_HSequenceOfSurfaceElementPurposeMember*)$self->Access();
	}
};
%feature("shadow") Handle_StepElement_HSequenceOfSurfaceElementPurposeMember::~Handle_StepElement_HSequenceOfSurfaceElementPurposeMember %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepElement_HSequenceOfSurfaceElementPurposeMember {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepElement_HArray1OfSurfaceSection;
class Handle_StepElement_HArray1OfSurfaceSection : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepElement_HArray1OfSurfaceSection();
		%feature("autodoc", "1");
		Handle_StepElement_HArray1OfSurfaceSection(const Handle_StepElement_HArray1OfSurfaceSection &aHandle);
		%feature("autodoc", "1");
		Handle_StepElement_HArray1OfSurfaceSection(const StepElement_HArray1OfSurfaceSection *anItem);
		%feature("autodoc", "1");
		Handle_StepElement_HArray1OfSurfaceSection & operator=(const Handle_StepElement_HArray1OfSurfaceSection &aHandle);
		%feature("autodoc", "1");
		Handle_StepElement_HArray1OfSurfaceSection & operator=(const StepElement_HArray1OfSurfaceSection *anItem);
		%feature("autodoc", "1");
		static		Handle_StepElement_HArray1OfSurfaceSection DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepElement_HArray1OfSurfaceSection {
	StepElement_HArray1OfSurfaceSection* GetObject() {
	return (StepElement_HArray1OfSurfaceSection*)$self->Access();
	}
};
%feature("shadow") Handle_StepElement_HArray1OfSurfaceSection::~Handle_StepElement_HArray1OfSurfaceSection %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepElement_HArray1OfSurfaceSection {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepElement_CurveElementPurposeMember;
class Handle_StepElement_CurveElementPurposeMember : public Handle_StepData_SelectNamed {
	public:
		%feature("autodoc", "1");
		Handle_StepElement_CurveElementPurposeMember();
		%feature("autodoc", "1");
		Handle_StepElement_CurveElementPurposeMember(const Handle_StepElement_CurveElementPurposeMember &aHandle);
		%feature("autodoc", "1");
		Handle_StepElement_CurveElementPurposeMember(const StepElement_CurveElementPurposeMember *anItem);
		%feature("autodoc", "1");
		Handle_StepElement_CurveElementPurposeMember & operator=(const Handle_StepElement_CurveElementPurposeMember &aHandle);
		%feature("autodoc", "1");
		Handle_StepElement_CurveElementPurposeMember & operator=(const StepElement_CurveElementPurposeMember *anItem);
		%feature("autodoc", "1");
		static		Handle_StepElement_CurveElementPurposeMember DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepElement_CurveElementPurposeMember {
	StepElement_CurveElementPurposeMember* GetObject() {
	return (StepElement_CurveElementPurposeMember*)$self->Access();
	}
};
%feature("shadow") Handle_StepElement_CurveElementPurposeMember::~Handle_StepElement_CurveElementPurposeMember %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepElement_CurveElementPurposeMember {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepElement_Volume3dElementDescriptor;
class Handle_StepElement_Volume3dElementDescriptor : public Handle_StepElement_ElementDescriptor {
	public:
		%feature("autodoc", "1");
		Handle_StepElement_Volume3dElementDescriptor();
		%feature("autodoc", "1");
		Handle_StepElement_Volume3dElementDescriptor(const Handle_StepElement_Volume3dElementDescriptor &aHandle);
		%feature("autodoc", "1");
		Handle_StepElement_Volume3dElementDescriptor(const StepElement_Volume3dElementDescriptor *anItem);
		%feature("autodoc", "1");
		Handle_StepElement_Volume3dElementDescriptor & operator=(const Handle_StepElement_Volume3dElementDescriptor &aHandle);
		%feature("autodoc", "1");
		Handle_StepElement_Volume3dElementDescriptor & operator=(const StepElement_Volume3dElementDescriptor *anItem);
		%feature("autodoc", "1");
		static		Handle_StepElement_Volume3dElementDescriptor DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepElement_Volume3dElementDescriptor {
	StepElement_Volume3dElementDescriptor* GetObject() {
	return (StepElement_Volume3dElementDescriptor*)$self->Access();
	}
};
%feature("shadow") Handle_StepElement_Volume3dElementDescriptor::~Handle_StepElement_Volume3dElementDescriptor %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepElement_Volume3dElementDescriptor {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepElement_SurfaceSectionFieldVarying;
class Handle_StepElement_SurfaceSectionFieldVarying : public Handle_StepElement_SurfaceSectionField {
	public:
		%feature("autodoc", "1");
		Handle_StepElement_SurfaceSectionFieldVarying();
		%feature("autodoc", "1");
		Handle_StepElement_SurfaceSectionFieldVarying(const Handle_StepElement_SurfaceSectionFieldVarying &aHandle);
		%feature("autodoc", "1");
		Handle_StepElement_SurfaceSectionFieldVarying(const StepElement_SurfaceSectionFieldVarying *anItem);
		%feature("autodoc", "1");
		Handle_StepElement_SurfaceSectionFieldVarying & operator=(const Handle_StepElement_SurfaceSectionFieldVarying &aHandle);
		%feature("autodoc", "1");
		Handle_StepElement_SurfaceSectionFieldVarying & operator=(const StepElement_SurfaceSectionFieldVarying *anItem);
		%feature("autodoc", "1");
		static		Handle_StepElement_SurfaceSectionFieldVarying DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepElement_SurfaceSectionFieldVarying {
	StepElement_SurfaceSectionFieldVarying* GetObject() {
	return (StepElement_SurfaceSectionFieldVarying*)$self->Access();
	}
};
%feature("shadow") Handle_StepElement_SurfaceSectionFieldVarying::~Handle_StepElement_SurfaceSectionFieldVarying %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepElement_SurfaceSectionFieldVarying {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepElement_HArray1OfCurveElementSectionDefinition;
class Handle_StepElement_HArray1OfCurveElementSectionDefinition : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepElement_HArray1OfCurveElementSectionDefinition();
		%feature("autodoc", "1");
		Handle_StepElement_HArray1OfCurveElementSectionDefinition(const Handle_StepElement_HArray1OfCurveElementSectionDefinition &aHandle);
		%feature("autodoc", "1");
		Handle_StepElement_HArray1OfCurveElementSectionDefinition(const StepElement_HArray1OfCurveElementSectionDefinition *anItem);
		%feature("autodoc", "1");
		Handle_StepElement_HArray1OfCurveElementSectionDefinition & operator=(const Handle_StepElement_HArray1OfCurveElementSectionDefinition &aHandle);
		%feature("autodoc", "1");
		Handle_StepElement_HArray1OfCurveElementSectionDefinition & operator=(const StepElement_HArray1OfCurveElementSectionDefinition *anItem);
		%feature("autodoc", "1");
		static		Handle_StepElement_HArray1OfCurveElementSectionDefinition DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepElement_HArray1OfCurveElementSectionDefinition {
	StepElement_HArray1OfCurveElementSectionDefinition* GetObject() {
	return (StepElement_HArray1OfCurveElementSectionDefinition*)$self->Access();
	}
};
%feature("shadow") Handle_StepElement_HArray1OfCurveElementSectionDefinition::~Handle_StepElement_HArray1OfCurveElementSectionDefinition %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepElement_HArray1OfCurveElementSectionDefinition {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepElement_SequenceNodeOfSequenceOfCurveElementSectionDefinition;
class Handle_StepElement_SequenceNodeOfSequenceOfCurveElementSectionDefinition : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_StepElement_SequenceNodeOfSequenceOfCurveElementSectionDefinition();
		%feature("autodoc", "1");
		Handle_StepElement_SequenceNodeOfSequenceOfCurveElementSectionDefinition(const Handle_StepElement_SequenceNodeOfSequenceOfCurveElementSectionDefinition &aHandle);
		%feature("autodoc", "1");
		Handle_StepElement_SequenceNodeOfSequenceOfCurveElementSectionDefinition(const StepElement_SequenceNodeOfSequenceOfCurveElementSectionDefinition *anItem);
		%feature("autodoc", "1");
		Handle_StepElement_SequenceNodeOfSequenceOfCurveElementSectionDefinition & operator=(const Handle_StepElement_SequenceNodeOfSequenceOfCurveElementSectionDefinition &aHandle);
		%feature("autodoc", "1");
		Handle_StepElement_SequenceNodeOfSequenceOfCurveElementSectionDefinition & operator=(const StepElement_SequenceNodeOfSequenceOfCurveElementSectionDefinition *anItem);
		%feature("autodoc", "1");
		static		Handle_StepElement_SequenceNodeOfSequenceOfCurveElementSectionDefinition DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepElement_SequenceNodeOfSequenceOfCurveElementSectionDefinition {
	StepElement_SequenceNodeOfSequenceOfCurveElementSectionDefinition* GetObject() {
	return (StepElement_SequenceNodeOfSequenceOfCurveElementSectionDefinition*)$self->Access();
	}
};
%feature("shadow") Handle_StepElement_SequenceNodeOfSequenceOfCurveElementSectionDefinition::~Handle_StepElement_SequenceNodeOfSequenceOfCurveElementSectionDefinition %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepElement_SequenceNodeOfSequenceOfCurveElementSectionDefinition {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepElement_AnalysisItemWithinRepresentation;
class Handle_StepElement_AnalysisItemWithinRepresentation : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepElement_AnalysisItemWithinRepresentation();
		%feature("autodoc", "1");
		Handle_StepElement_AnalysisItemWithinRepresentation(const Handle_StepElement_AnalysisItemWithinRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepElement_AnalysisItemWithinRepresentation(const StepElement_AnalysisItemWithinRepresentation *anItem);
		%feature("autodoc", "1");
		Handle_StepElement_AnalysisItemWithinRepresentation & operator=(const Handle_StepElement_AnalysisItemWithinRepresentation &aHandle);
		%feature("autodoc", "1");
		Handle_StepElement_AnalysisItemWithinRepresentation & operator=(const StepElement_AnalysisItemWithinRepresentation *anItem);
		%feature("autodoc", "1");
		static		Handle_StepElement_AnalysisItemWithinRepresentation DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepElement_AnalysisItemWithinRepresentation {
	StepElement_AnalysisItemWithinRepresentation* GetObject() {
	return (StepElement_AnalysisItemWithinRepresentation*)$self->Access();
	}
};
%feature("shadow") Handle_StepElement_AnalysisItemWithinRepresentation::~Handle_StepElement_AnalysisItemWithinRepresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepElement_AnalysisItemWithinRepresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepElement_HArray1OfVolumeElementPurposeMember;
class Handle_StepElement_HArray1OfVolumeElementPurposeMember : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepElement_HArray1OfVolumeElementPurposeMember();
		%feature("autodoc", "1");
		Handle_StepElement_HArray1OfVolumeElementPurposeMember(const Handle_StepElement_HArray1OfVolumeElementPurposeMember &aHandle);
		%feature("autodoc", "1");
		Handle_StepElement_HArray1OfVolumeElementPurposeMember(const StepElement_HArray1OfVolumeElementPurposeMember *anItem);
		%feature("autodoc", "1");
		Handle_StepElement_HArray1OfVolumeElementPurposeMember & operator=(const Handle_StepElement_HArray1OfVolumeElementPurposeMember &aHandle);
		%feature("autodoc", "1");
		Handle_StepElement_HArray1OfVolumeElementPurposeMember & operator=(const StepElement_HArray1OfVolumeElementPurposeMember *anItem);
		%feature("autodoc", "1");
		static		Handle_StepElement_HArray1OfVolumeElementPurposeMember DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepElement_HArray1OfVolumeElementPurposeMember {
	StepElement_HArray1OfVolumeElementPurposeMember* GetObject() {
	return (StepElement_HArray1OfVolumeElementPurposeMember*)$self->Access();
	}
};
%feature("shadow") Handle_StepElement_HArray1OfVolumeElementPurposeMember::~Handle_StepElement_HArray1OfVolumeElementPurposeMember %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepElement_HArray1OfVolumeElementPurposeMember {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepElement_ElementMaterial;
class Handle_StepElement_ElementMaterial : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepElement_ElementMaterial();
		%feature("autodoc", "1");
		Handle_StepElement_ElementMaterial(const Handle_StepElement_ElementMaterial &aHandle);
		%feature("autodoc", "1");
		Handle_StepElement_ElementMaterial(const StepElement_ElementMaterial *anItem);
		%feature("autodoc", "1");
		Handle_StepElement_ElementMaterial & operator=(const Handle_StepElement_ElementMaterial &aHandle);
		%feature("autodoc", "1");
		Handle_StepElement_ElementMaterial & operator=(const StepElement_ElementMaterial *anItem);
		%feature("autodoc", "1");
		static		Handle_StepElement_ElementMaterial DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepElement_ElementMaterial {
	StepElement_ElementMaterial* GetObject() {
	return (StepElement_ElementMaterial*)$self->Access();
	}
};
%feature("shadow") Handle_StepElement_ElementMaterial::~Handle_StepElement_ElementMaterial %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepElement_ElementMaterial {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepElement_Curve3dElementDescriptor;
class Handle_StepElement_Curve3dElementDescriptor : public Handle_StepElement_ElementDescriptor {
	public:
		%feature("autodoc", "1");
		Handle_StepElement_Curve3dElementDescriptor();
		%feature("autodoc", "1");
		Handle_StepElement_Curve3dElementDescriptor(const Handle_StepElement_Curve3dElementDescriptor &aHandle);
		%feature("autodoc", "1");
		Handle_StepElement_Curve3dElementDescriptor(const StepElement_Curve3dElementDescriptor *anItem);
		%feature("autodoc", "1");
		Handle_StepElement_Curve3dElementDescriptor & operator=(const Handle_StepElement_Curve3dElementDescriptor &aHandle);
		%feature("autodoc", "1");
		Handle_StepElement_Curve3dElementDescriptor & operator=(const StepElement_Curve3dElementDescriptor *anItem);
		%feature("autodoc", "1");
		static		Handle_StepElement_Curve3dElementDescriptor DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepElement_Curve3dElementDescriptor {
	StepElement_Curve3dElementDescriptor* GetObject() {
	return (StepElement_Curve3dElementDescriptor*)$self->Access();
	}
};
%feature("shadow") Handle_StepElement_Curve3dElementDescriptor::~Handle_StepElement_Curve3dElementDescriptor %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepElement_Curve3dElementDescriptor {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_StepElement_HArray1OfVolumeElementPurpose;
class Handle_StepElement_HArray1OfVolumeElementPurpose : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_StepElement_HArray1OfVolumeElementPurpose();
		%feature("autodoc", "1");
		Handle_StepElement_HArray1OfVolumeElementPurpose(const Handle_StepElement_HArray1OfVolumeElementPurpose &aHandle);
		%feature("autodoc", "1");
		Handle_StepElement_HArray1OfVolumeElementPurpose(const StepElement_HArray1OfVolumeElementPurpose *anItem);
		%feature("autodoc", "1");
		Handle_StepElement_HArray1OfVolumeElementPurpose & operator=(const Handle_StepElement_HArray1OfVolumeElementPurpose &aHandle);
		%feature("autodoc", "1");
		Handle_StepElement_HArray1OfVolumeElementPurpose & operator=(const StepElement_HArray1OfVolumeElementPurpose *anItem);
		%feature("autodoc", "1");
		static		Handle_StepElement_HArray1OfVolumeElementPurpose DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_StepElement_HArray1OfVolumeElementPurpose {
	StepElement_HArray1OfVolumeElementPurpose* GetObject() {
	return (StepElement_HArray1OfVolumeElementPurpose*)$self->Access();
	}
};
%feature("shadow") Handle_StepElement_HArray1OfVolumeElementPurpose::~Handle_StepElement_HArray1OfVolumeElementPurpose %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_StepElement_HArray1OfVolumeElementPurpose {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepElement_SequenceOfSurfaceElementPurposeMember;
class StepElement_SequenceOfSurfaceElementPurposeMember : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		StepElement_SequenceOfSurfaceElementPurposeMember();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const StepElement_SequenceOfSurfaceElementPurposeMember & Assign(const StepElement_SequenceOfSurfaceElementPurposeMember &Other);
		%feature("autodoc", "1");
		const StepElement_SequenceOfSurfaceElementPurposeMember & operator=(const StepElement_SequenceOfSurfaceElementPurposeMember &Other);
		%feature("autodoc", "1");
		void Append(const Handle_StepElement_SurfaceElementPurposeMember &T);
		%feature("autodoc", "1");
		void Append(StepElement_SequenceOfSurfaceElementPurposeMember & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_StepElement_SurfaceElementPurposeMember &T);
		%feature("autodoc", "1");
		void Prepend(StepElement_SequenceOfSurfaceElementPurposeMember & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_StepElement_SurfaceElementPurposeMember &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, StepElement_SequenceOfSurfaceElementPurposeMember & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_StepElement_SurfaceElementPurposeMember &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, StepElement_SequenceOfSurfaceElementPurposeMember & S);
		%feature("autodoc", "1");
		const Handle_StepElement_SurfaceElementPurposeMember & First() const;
		%feature("autodoc", "1");
		const Handle_StepElement_SurfaceElementPurposeMember & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, StepElement_SequenceOfSurfaceElementPurposeMember & S);
		%feature("autodoc", "1");
		const Handle_StepElement_SurfaceElementPurposeMember & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_StepElement_SurfaceElementPurposeMember & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StepElement_SurfaceElementPurposeMember &I);
		%feature("autodoc", "1");
		Handle_StepElement_SurfaceElementPurposeMember & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_StepElement_SurfaceElementPurposeMember & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") StepElement_SequenceOfSurfaceElementPurposeMember::~StepElement_SequenceOfSurfaceElementPurposeMember %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepElement_SequenceOfSurfaceElementPurposeMember {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepElement_SequenceNodeOfSequenceOfElementMaterial;
class StepElement_SequenceNodeOfSequenceOfElementMaterial : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		StepElement_SequenceNodeOfSequenceOfElementMaterial(const Handle_StepElement_ElementMaterial &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_StepElement_ElementMaterial & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepElement_SequenceNodeOfSequenceOfElementMaterial {
	Handle_StepElement_SequenceNodeOfSequenceOfElementMaterial GetHandle() {
	return *(Handle_StepElement_SequenceNodeOfSequenceOfElementMaterial*) &$self;
	}
};
%extend StepElement_SequenceNodeOfSequenceOfElementMaterial {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") StepElement_SequenceNodeOfSequenceOfElementMaterial::~StepElement_SequenceNodeOfSequenceOfElementMaterial %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepElement_SequenceNodeOfSequenceOfElementMaterial {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepElement_SequenceNodeOfSequenceOfSurfaceElementPurposeMember;
class StepElement_SequenceNodeOfSequenceOfSurfaceElementPurposeMember : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		StepElement_SequenceNodeOfSequenceOfSurfaceElementPurposeMember(const Handle_StepElement_SurfaceElementPurposeMember &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_StepElement_SurfaceElementPurposeMember & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepElement_SequenceNodeOfSequenceOfSurfaceElementPurposeMember {
	Handle_StepElement_SequenceNodeOfSequenceOfSurfaceElementPurposeMember GetHandle() {
	return *(Handle_StepElement_SequenceNodeOfSequenceOfSurfaceElementPurposeMember*) &$self;
	}
};
%extend StepElement_SequenceNodeOfSequenceOfSurfaceElementPurposeMember {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") StepElement_SequenceNodeOfSequenceOfSurfaceElementPurposeMember::~StepElement_SequenceNodeOfSequenceOfSurfaceElementPurposeMember %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepElement_SequenceNodeOfSequenceOfSurfaceElementPurposeMember {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepElement_SequenceOfCurveElementPurposeMember;
class StepElement_SequenceOfCurveElementPurposeMember : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		StepElement_SequenceOfCurveElementPurposeMember();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const StepElement_SequenceOfCurveElementPurposeMember & Assign(const StepElement_SequenceOfCurveElementPurposeMember &Other);
		%feature("autodoc", "1");
		const StepElement_SequenceOfCurveElementPurposeMember & operator=(const StepElement_SequenceOfCurveElementPurposeMember &Other);
		%feature("autodoc", "1");
		void Append(const Handle_StepElement_CurveElementPurposeMember &T);
		%feature("autodoc", "1");
		void Append(StepElement_SequenceOfCurveElementPurposeMember & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_StepElement_CurveElementPurposeMember &T);
		%feature("autodoc", "1");
		void Prepend(StepElement_SequenceOfCurveElementPurposeMember & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_StepElement_CurveElementPurposeMember &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, StepElement_SequenceOfCurveElementPurposeMember & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_StepElement_CurveElementPurposeMember &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, StepElement_SequenceOfCurveElementPurposeMember & S);
		%feature("autodoc", "1");
		const Handle_StepElement_CurveElementPurposeMember & First() const;
		%feature("autodoc", "1");
		const Handle_StepElement_CurveElementPurposeMember & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, StepElement_SequenceOfCurveElementPurposeMember & S);
		%feature("autodoc", "1");
		const Handle_StepElement_CurveElementPurposeMember & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_StepElement_CurveElementPurposeMember & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StepElement_CurveElementPurposeMember &I);
		%feature("autodoc", "1");
		Handle_StepElement_CurveElementPurposeMember & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_StepElement_CurveElementPurposeMember & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") StepElement_SequenceOfCurveElementPurposeMember::~StepElement_SequenceOfCurveElementPurposeMember %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepElement_SequenceOfCurveElementPurposeMember {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepElement_Array1OfSurfaceSection;
class StepElement_Array1OfSurfaceSection {
	public:
		%feature("autodoc", "1");
		StepElement_Array1OfSurfaceSection(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepElement_Array1OfSurfaceSection(const Handle_StepElement_SurfaceSection &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Handle_StepElement_SurfaceSection &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepElement_Array1OfSurfaceSection & Assign(const StepElement_Array1OfSurfaceSection &Other);
		%feature("autodoc", "1");
		const StepElement_Array1OfSurfaceSection & operator=(const StepElement_Array1OfSurfaceSection &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StepElement_SurfaceSection &Value);
		%feature("autodoc", "1");
		const Handle_StepElement_SurfaceSection & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_StepElement_SurfaceSection & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_StepElement_SurfaceSection & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_StepElement_SurfaceSection & operator()(const Standard_Integer Index);

};
%feature("shadow") StepElement_Array1OfSurfaceSection::~StepElement_Array1OfSurfaceSection %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepElement_Array1OfSurfaceSection {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepElement_HSequenceOfElementMaterial;
class StepElement_HSequenceOfElementMaterial : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepElement_HSequenceOfElementMaterial();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const Handle_StepElement_ElementMaterial &anItem);
		%feature("autodoc", "1");
		void Append(const Handle_StepElement_HSequenceOfElementMaterial &aSequence);
		%feature("autodoc", "1");
		void Prepend(const Handle_StepElement_ElementMaterial &anItem);
		%feature("autodoc", "1");
		void Prepend(const Handle_StepElement_HSequenceOfElementMaterial &aSequence);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_StepElement_ElementMaterial &anItem);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_StepElement_HSequenceOfElementMaterial &aSequence);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_StepElement_ElementMaterial &anItem);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_StepElement_HSequenceOfElementMaterial &aSequence);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer anIndex, const Standard_Integer anOtherIndex);
		%feature("autodoc", "1");
		Handle_StepElement_HSequenceOfElementMaterial Split(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer anIndex, const Handle_StepElement_ElementMaterial &anItem);
		%feature("autodoc", "1");
		const Handle_StepElement_ElementMaterial & Value(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		Handle_StepElement_ElementMaterial & ChangeValue(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer fromIndex, const Standard_Integer toIndex);
		%feature("autodoc", "1");
		const StepElement_SequenceOfElementMaterial & Sequence() const;
		%feature("autodoc", "1");
		StepElement_SequenceOfElementMaterial & ChangeSequence();
		%feature("autodoc", "1");
		Handle_StepElement_HSequenceOfElementMaterial ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepElement_HSequenceOfElementMaterial {
	Handle_StepElement_HSequenceOfElementMaterial GetHandle() {
	return *(Handle_StepElement_HSequenceOfElementMaterial*) &$self;
	}
};
%extend StepElement_HSequenceOfElementMaterial {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") StepElement_HSequenceOfElementMaterial::~StepElement_HSequenceOfElementMaterial %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepElement_HSequenceOfElementMaterial {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepElement_HArray1OfVolumeElementPurposeMember;
class StepElement_HArray1OfVolumeElementPurposeMember : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepElement_HArray1OfVolumeElementPurposeMember(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepElement_HArray1OfVolumeElementPurposeMember(const Standard_Integer Low, const Standard_Integer Up, const Handle_StepElement_VolumeElementPurposeMember &V);
		%feature("autodoc", "1");
		void Init(const Handle_StepElement_VolumeElementPurposeMember &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StepElement_VolumeElementPurposeMember &Value);
		%feature("autodoc", "1");
		const Handle_StepElement_VolumeElementPurposeMember & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_StepElement_VolumeElementPurposeMember & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const StepElement_Array1OfVolumeElementPurposeMember & Array1() const;
		%feature("autodoc", "1");
		StepElement_Array1OfVolumeElementPurposeMember & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepElement_HArray1OfVolumeElementPurposeMember {
	Handle_StepElement_HArray1OfVolumeElementPurposeMember GetHandle() {
	return *(Handle_StepElement_HArray1OfVolumeElementPurposeMember*) &$self;
	}
};
%extend StepElement_HArray1OfVolumeElementPurposeMember {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") StepElement_HArray1OfVolumeElementPurposeMember::~StepElement_HArray1OfVolumeElementPurposeMember %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepElement_HArray1OfVolumeElementPurposeMember {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepElement_ElementAspect;
class StepElement_ElementAspect : public StepData_SelectType {
	public:
		%feature("autodoc", "1");
		StepElement_ElementAspect();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseNum(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseMem(const Handle_StepData_SelectMember &ent) const;
		%feature("autodoc", "1");
		virtual		Handle_StepData_SelectMember NewMember() const;
		%feature("autodoc", "1");
		void SetElementVolume(const StepElement_ElementVolume aVal);
		%feature("autodoc", "1");
		StepElement_ElementVolume ElementVolume() const;
		%feature("autodoc", "1");
		void SetVolume3dFace(const Standard_Integer aVal);
		%feature("autodoc", "1");
		Standard_Integer Volume3dFace() const;
		%feature("autodoc", "1");
		void SetVolume2dFace(const Standard_Integer aVal);
		%feature("autodoc", "1");
		Standard_Integer Volume2dFace() const;
		%feature("autodoc", "1");
		void SetVolume3dEdge(const Standard_Integer aVal);
		%feature("autodoc", "1");
		Standard_Integer Volume3dEdge() const;
		%feature("autodoc", "1");
		void SetVolume2dEdge(const Standard_Integer aVal);
		%feature("autodoc", "1");
		Standard_Integer Volume2dEdge() const;
		%feature("autodoc", "1");
		void SetSurface3dFace(const Standard_Integer aVal);
		%feature("autodoc", "1");
		Standard_Integer Surface3dFace() const;
		%feature("autodoc", "1");
		void SetSurface2dFace(const Standard_Integer aVal);
		%feature("autodoc", "1");
		Standard_Integer Surface2dFace() const;
		%feature("autodoc", "1");
		void SetSurface3dEdge(const Standard_Integer aVal);
		%feature("autodoc", "1");
		Standard_Integer Surface3dEdge() const;
		%feature("autodoc", "1");
		void SetSurface2dEdge(const Standard_Integer aVal);
		%feature("autodoc", "1");
		Standard_Integer Surface2dEdge() const;
		%feature("autodoc", "1");
		void SetCurveEdge(const StepElement_CurveEdge aVal);
		%feature("autodoc", "1");
		StepElement_CurveEdge CurveEdge() const;

};
%feature("shadow") StepElement_ElementAspect::~StepElement_ElementAspect %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepElement_ElementAspect {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepElement_SequenceNodeOfSequenceOfCurveElementPurposeMember;
class StepElement_SequenceNodeOfSequenceOfCurveElementPurposeMember : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		StepElement_SequenceNodeOfSequenceOfCurveElementPurposeMember(const Handle_StepElement_CurveElementPurposeMember &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_StepElement_CurveElementPurposeMember & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepElement_SequenceNodeOfSequenceOfCurveElementPurposeMember {
	Handle_StepElement_SequenceNodeOfSequenceOfCurveElementPurposeMember GetHandle() {
	return *(Handle_StepElement_SequenceNodeOfSequenceOfCurveElementPurposeMember*) &$self;
	}
};
%extend StepElement_SequenceNodeOfSequenceOfCurveElementPurposeMember {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") StepElement_SequenceNodeOfSequenceOfCurveElementPurposeMember::~StepElement_SequenceNodeOfSequenceOfCurveElementPurposeMember %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepElement_SequenceNodeOfSequenceOfCurveElementPurposeMember {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepElement_ElementDescriptor;
class StepElement_ElementDescriptor : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepElement_ElementDescriptor();
		%feature("autodoc", "1");
		void Init(const StepElement_ElementOrder aTopologyOrder, const Handle_TCollection_HAsciiString &aDescription);
		%feature("autodoc", "1");
		StepElement_ElementOrder TopologyOrder() const;
		%feature("autodoc", "1");
		void SetTopologyOrder(const StepElement_ElementOrder TopologyOrder);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Description() const;
		%feature("autodoc", "1");
		void SetDescription(const Handle_TCollection_HAsciiString &Description);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepElement_ElementDescriptor {
	Handle_StepElement_ElementDescriptor GetHandle() {
	return *(Handle_StepElement_ElementDescriptor*) &$self;
	}
};
%extend StepElement_ElementDescriptor {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") StepElement_ElementDescriptor::~StepElement_ElementDescriptor %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepElement_ElementDescriptor {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepElement_Surface3dElementDescriptor;
class StepElement_Surface3dElementDescriptor : public StepElement_ElementDescriptor {
	public:
		%feature("autodoc", "1");
		StepElement_Surface3dElementDescriptor();
		%feature("autodoc", "1");
		void Init(const StepElement_ElementOrder aElementDescriptor_TopologyOrder, const Handle_TCollection_HAsciiString &aElementDescriptor_Description, const Handle_StepElement_HArray1OfHSequenceOfSurfaceElementPurposeMember &aPurpose, const StepElement_Element2dShape aShape);
		%feature("autodoc", "1");
		Handle_StepElement_HArray1OfHSequenceOfSurfaceElementPurposeMember Purpose() const;
		%feature("autodoc", "1");
		void SetPurpose(const Handle_StepElement_HArray1OfHSequenceOfSurfaceElementPurposeMember &Purpose);
		%feature("autodoc", "1");
		StepElement_Element2dShape Shape() const;
		%feature("autodoc", "1");
		void SetShape(const StepElement_Element2dShape Shape);

};
%extend StepElement_Surface3dElementDescriptor {
	Handle_StepElement_Surface3dElementDescriptor GetHandle() {
	return *(Handle_StepElement_Surface3dElementDescriptor*) &$self;
	}
};
%extend StepElement_Surface3dElementDescriptor {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") StepElement_Surface3dElementDescriptor::~StepElement_Surface3dElementDescriptor %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepElement_Surface3dElementDescriptor {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepElement_SurfaceElementProperty;
class StepElement_SurfaceElementProperty : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepElement_SurfaceElementProperty();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aPropertyId, const Handle_TCollection_HAsciiString &aDescription, const Handle_StepElement_SurfaceSectionField &aSection);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString PropertyId() const;
		%feature("autodoc", "1");
		void SetPropertyId(const Handle_TCollection_HAsciiString &PropertyId);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Description() const;
		%feature("autodoc", "1");
		void SetDescription(const Handle_TCollection_HAsciiString &Description);
		%feature("autodoc", "1");
		Handle_StepElement_SurfaceSectionField Section() const;
		%feature("autodoc", "1");
		void SetSection(const Handle_StepElement_SurfaceSectionField &Section);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepElement_SurfaceElementProperty {
	Handle_StepElement_SurfaceElementProperty GetHandle() {
	return *(Handle_StepElement_SurfaceElementProperty*) &$self;
	}
};
%extend StepElement_SurfaceElementProperty {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") StepElement_SurfaceElementProperty::~StepElement_SurfaceElementProperty %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepElement_SurfaceElementProperty {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepElement_Array1OfHSequenceOfCurveElementPurposeMember;
class StepElement_Array1OfHSequenceOfCurveElementPurposeMember {
	public:
		%feature("autodoc", "1");
		StepElement_Array1OfHSequenceOfCurveElementPurposeMember(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepElement_Array1OfHSequenceOfCurveElementPurposeMember(const Handle_StepElement_HSequenceOfCurveElementPurposeMember &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Handle_StepElement_HSequenceOfCurveElementPurposeMember &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepElement_Array1OfHSequenceOfCurveElementPurposeMember & Assign(const StepElement_Array1OfHSequenceOfCurveElementPurposeMember &Other);
		%feature("autodoc", "1");
		const StepElement_Array1OfHSequenceOfCurveElementPurposeMember & operator=(const StepElement_Array1OfHSequenceOfCurveElementPurposeMember &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StepElement_HSequenceOfCurveElementPurposeMember &Value);
		%feature("autodoc", "1");
		const Handle_StepElement_HSequenceOfCurveElementPurposeMember & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_StepElement_HSequenceOfCurveElementPurposeMember & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_StepElement_HSequenceOfCurveElementPurposeMember & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_StepElement_HSequenceOfCurveElementPurposeMember & operator()(const Standard_Integer Index);

};
%feature("shadow") StepElement_Array1OfHSequenceOfCurveElementPurposeMember::~StepElement_Array1OfHSequenceOfCurveElementPurposeMember %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepElement_Array1OfHSequenceOfCurveElementPurposeMember {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepElement_ElementAspectMember;
class StepElement_ElementAspectMember : public StepData_SelectNamed {
	public:
		%feature("autodoc", "1");
		StepElement_ElementAspectMember();
		%feature("autodoc", "1");
		virtual		Standard_Boolean HasName() const;
		%feature("autodoc", "1");
		virtual		char * Name() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean SetName(const char * name);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Matches(const char * name) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepElement_ElementAspectMember {
	Handle_StepElement_ElementAspectMember GetHandle() {
	return *(Handle_StepElement_ElementAspectMember*) &$self;
	}
};
%extend StepElement_ElementAspectMember {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") StepElement_ElementAspectMember::~StepElement_ElementAspectMember %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepElement_ElementAspectMember {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepElement_HArray1OfVolumeElementPurpose;
class StepElement_HArray1OfVolumeElementPurpose : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepElement_HArray1OfVolumeElementPurpose(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepElement_HArray1OfVolumeElementPurpose(const Standard_Integer Low, const Standard_Integer Up, const StepElement_VolumeElementPurpose &V);
		%feature("autodoc", "1");
		void Init(const StepElement_VolumeElementPurpose &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepElement_VolumeElementPurpose &Value);
		%feature("autodoc", "1");
		const StepElement_VolumeElementPurpose & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepElement_VolumeElementPurpose & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const StepElement_Array1OfVolumeElementPurpose & Array1() const;
		%feature("autodoc", "1");
		StepElement_Array1OfVolumeElementPurpose & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepElement_HArray1OfVolumeElementPurpose {
	Handle_StepElement_HArray1OfVolumeElementPurpose GetHandle() {
	return *(Handle_StepElement_HArray1OfVolumeElementPurpose*) &$self;
	}
};
%extend StepElement_HArray1OfVolumeElementPurpose {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") StepElement_HArray1OfVolumeElementPurpose::~StepElement_HArray1OfVolumeElementPurpose %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepElement_HArray1OfVolumeElementPurpose {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepElement_Array2OfSurfaceElementPurposeMember;
class StepElement_Array2OfSurfaceElementPurposeMember {
	public:
		%feature("autodoc", "1");
		StepElement_Array2OfSurfaceElementPurposeMember(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		StepElement_Array2OfSurfaceElementPurposeMember(const Handle_StepElement_SurfaceElementPurposeMember &Item, const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		void Init(const Handle_StepElement_SurfaceElementPurposeMember &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		const StepElement_Array2OfSurfaceElementPurposeMember & Assign(const StepElement_Array2OfSurfaceElementPurposeMember &Other);
		%feature("autodoc", "1");
		const StepElement_Array2OfSurfaceElementPurposeMember & operator=(const StepElement_Array2OfSurfaceElementPurposeMember &Other);
		%feature("autodoc", "1");
		Standard_Integer ColLength() const;
		%feature("autodoc", "1");
		Standard_Integer RowLength() const;
		%feature("autodoc", "1");
		Standard_Integer LowerCol() const;
		%feature("autodoc", "1");
		Standard_Integer LowerRow() const;
		%feature("autodoc", "1");
		Standard_Integer UpperCol() const;
		%feature("autodoc", "1");
		Standard_Integer UpperRow() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const Handle_StepElement_SurfaceElementPurposeMember &Value);
		%feature("autodoc", "1");
		const Handle_StepElement_SurfaceElementPurposeMember & Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		const Handle_StepElement_SurfaceElementPurposeMember & operator()(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		Handle_StepElement_SurfaceElementPurposeMember & ChangeValue(const Standard_Integer Row, const Standard_Integer Col);
		%feature("autodoc", "1");
		Handle_StepElement_SurfaceElementPurposeMember & operator()(const Standard_Integer Row, const Standard_Integer Col);

};
%feature("shadow") StepElement_Array2OfSurfaceElementPurposeMember::~StepElement_Array2OfSurfaceElementPurposeMember %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepElement_Array2OfSurfaceElementPurposeMember {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepElement_HSequenceOfCurveElementPurposeMember;
class StepElement_HSequenceOfCurveElementPurposeMember : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepElement_HSequenceOfCurveElementPurposeMember();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const Handle_StepElement_CurveElementPurposeMember &anItem);
		%feature("autodoc", "1");
		void Append(const Handle_StepElement_HSequenceOfCurveElementPurposeMember &aSequence);
		%feature("autodoc", "1");
		void Prepend(const Handle_StepElement_CurveElementPurposeMember &anItem);
		%feature("autodoc", "1");
		void Prepend(const Handle_StepElement_HSequenceOfCurveElementPurposeMember &aSequence);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_StepElement_CurveElementPurposeMember &anItem);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_StepElement_HSequenceOfCurveElementPurposeMember &aSequence);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_StepElement_CurveElementPurposeMember &anItem);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_StepElement_HSequenceOfCurveElementPurposeMember &aSequence);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer anIndex, const Standard_Integer anOtherIndex);
		%feature("autodoc", "1");
		Handle_StepElement_HSequenceOfCurveElementPurposeMember Split(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer anIndex, const Handle_StepElement_CurveElementPurposeMember &anItem);
		%feature("autodoc", "1");
		const Handle_StepElement_CurveElementPurposeMember & Value(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		Handle_StepElement_CurveElementPurposeMember & ChangeValue(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer fromIndex, const Standard_Integer toIndex);
		%feature("autodoc", "1");
		const StepElement_SequenceOfCurveElementPurposeMember & Sequence() const;
		%feature("autodoc", "1");
		StepElement_SequenceOfCurveElementPurposeMember & ChangeSequence();
		%feature("autodoc", "1");
		Handle_StepElement_HSequenceOfCurveElementPurposeMember ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepElement_HSequenceOfCurveElementPurposeMember {
	Handle_StepElement_HSequenceOfCurveElementPurposeMember GetHandle() {
	return *(Handle_StepElement_HSequenceOfCurveElementPurposeMember*) &$self;
	}
};
%extend StepElement_HSequenceOfCurveElementPurposeMember {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") StepElement_HSequenceOfCurveElementPurposeMember::~StepElement_HSequenceOfCurveElementPurposeMember %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepElement_HSequenceOfCurveElementPurposeMember {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepElement_HArray1OfCurveElementEndReleasePacket;
class StepElement_HArray1OfCurveElementEndReleasePacket : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepElement_HArray1OfCurveElementEndReleasePacket(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepElement_HArray1OfCurveElementEndReleasePacket(const Standard_Integer Low, const Standard_Integer Up, const Handle_StepElement_CurveElementEndReleasePacket &V);
		%feature("autodoc", "1");
		void Init(const Handle_StepElement_CurveElementEndReleasePacket &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StepElement_CurveElementEndReleasePacket &Value);
		%feature("autodoc", "1");
		const Handle_StepElement_CurveElementEndReleasePacket & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_StepElement_CurveElementEndReleasePacket & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const StepElement_Array1OfCurveElementEndReleasePacket & Array1() const;
		%feature("autodoc", "1");
		StepElement_Array1OfCurveElementEndReleasePacket & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepElement_HArray1OfCurveElementEndReleasePacket {
	Handle_StepElement_HArray1OfCurveElementEndReleasePacket GetHandle() {
	return *(Handle_StepElement_HArray1OfCurveElementEndReleasePacket*) &$self;
	}
};
%extend StepElement_HArray1OfCurveElementEndReleasePacket {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") StepElement_HArray1OfCurveElementEndReleasePacket::~StepElement_HArray1OfCurveElementEndReleasePacket %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepElement_HArray1OfCurveElementEndReleasePacket {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepElement_MeasureOrUnspecifiedValue;
class StepElement_MeasureOrUnspecifiedValue : public StepData_SelectType {
	public:
		%feature("autodoc", "1");
		StepElement_MeasureOrUnspecifiedValue();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseNum(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseMem(const Handle_StepData_SelectMember &ent) const;
		%feature("autodoc", "1");
		virtual		Handle_StepData_SelectMember NewMember() const;
		%feature("autodoc", "1");
		void SetContextDependentMeasure(const Standard_Real aVal);
		%feature("autodoc", "1");
		Standard_Real ContextDependentMeasure() const;
		%feature("autodoc", "1");
		void SetUnspecifiedValue(const StepElement_UnspecifiedValue aVal);
		%feature("autodoc", "1");
		StepElement_UnspecifiedValue UnspecifiedValue() const;

};
%feature("shadow") StepElement_MeasureOrUnspecifiedValue::~StepElement_MeasureOrUnspecifiedValue %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepElement_MeasureOrUnspecifiedValue {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepElement_CurveElementPurposeMember;
class StepElement_CurveElementPurposeMember : public StepData_SelectNamed {
	public:
		%feature("autodoc", "1");
		StepElement_CurveElementPurposeMember();
		%feature("autodoc", "1");
		virtual		Standard_Boolean HasName() const;
		%feature("autodoc", "1");
		virtual		char * Name() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean SetName(const char * name);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Matches(const char * name) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepElement_CurveElementPurposeMember {
	Handle_StepElement_CurveElementPurposeMember GetHandle() {
	return *(Handle_StepElement_CurveElementPurposeMember*) &$self;
	}
};
%extend StepElement_CurveElementPurposeMember {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") StepElement_CurveElementPurposeMember::~StepElement_CurveElementPurposeMember %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepElement_CurveElementPurposeMember {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepElement_MeasureOrUnspecifiedValueMember;
class StepElement_MeasureOrUnspecifiedValueMember : public StepData_SelectNamed {
	public:
		%feature("autodoc", "1");
		StepElement_MeasureOrUnspecifiedValueMember();
		%feature("autodoc", "1");
		virtual		Standard_Boolean HasName() const;
		%feature("autodoc", "1");
		virtual		char * Name() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean SetName(const char * name);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Matches(const char * name) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepElement_MeasureOrUnspecifiedValueMember {
	Handle_StepElement_MeasureOrUnspecifiedValueMember GetHandle() {
	return *(Handle_StepElement_MeasureOrUnspecifiedValueMember*) &$self;
	}
};
%extend StepElement_MeasureOrUnspecifiedValueMember {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") StepElement_MeasureOrUnspecifiedValueMember::~StepElement_MeasureOrUnspecifiedValueMember %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepElement_MeasureOrUnspecifiedValueMember {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepElement_CurveElementSectionDefinition;
class StepElement_CurveElementSectionDefinition : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepElement_CurveElementSectionDefinition();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aDescription, const Standard_Real aSectionAngle);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Description() const;
		%feature("autodoc", "1");
		void SetDescription(const Handle_TCollection_HAsciiString &Description);
		%feature("autodoc", "1");
		Standard_Real SectionAngle() const;
		%feature("autodoc", "1");
		void SetSectionAngle(const Standard_Real SectionAngle);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepElement_CurveElementSectionDefinition {
	Handle_StepElement_CurveElementSectionDefinition GetHandle() {
	return *(Handle_StepElement_CurveElementSectionDefinition*) &$self;
	}
};
%extend StepElement_CurveElementSectionDefinition {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") StepElement_CurveElementSectionDefinition::~StepElement_CurveElementSectionDefinition %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepElement_CurveElementSectionDefinition {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepElement_CurveElementFreedomMember;
class StepElement_CurveElementFreedomMember : public StepData_SelectNamed {
	public:
		%feature("autodoc", "1");
		StepElement_CurveElementFreedomMember();
		%feature("autodoc", "1");
		virtual		Standard_Boolean HasName() const;
		%feature("autodoc", "1");
		virtual		char * Name() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean SetName(const char * name);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Matches(const char * name) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepElement_CurveElementFreedomMember {
	Handle_StepElement_CurveElementFreedomMember GetHandle() {
	return *(Handle_StepElement_CurveElementFreedomMember*) &$self;
	}
};
%extend StepElement_CurveElementFreedomMember {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") StepElement_CurveElementFreedomMember::~StepElement_CurveElementFreedomMember %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepElement_CurveElementFreedomMember {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepElement_HSequenceOfSurfaceElementPurposeMember;
class StepElement_HSequenceOfSurfaceElementPurposeMember : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepElement_HSequenceOfSurfaceElementPurposeMember();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const Handle_StepElement_SurfaceElementPurposeMember &anItem);
		%feature("autodoc", "1");
		void Append(const Handle_StepElement_HSequenceOfSurfaceElementPurposeMember &aSequence);
		%feature("autodoc", "1");
		void Prepend(const Handle_StepElement_SurfaceElementPurposeMember &anItem);
		%feature("autodoc", "1");
		void Prepend(const Handle_StepElement_HSequenceOfSurfaceElementPurposeMember &aSequence);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_StepElement_SurfaceElementPurposeMember &anItem);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_StepElement_HSequenceOfSurfaceElementPurposeMember &aSequence);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_StepElement_SurfaceElementPurposeMember &anItem);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_StepElement_HSequenceOfSurfaceElementPurposeMember &aSequence);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer anIndex, const Standard_Integer anOtherIndex);
		%feature("autodoc", "1");
		Handle_StepElement_HSequenceOfSurfaceElementPurposeMember Split(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer anIndex, const Handle_StepElement_SurfaceElementPurposeMember &anItem);
		%feature("autodoc", "1");
		const Handle_StepElement_SurfaceElementPurposeMember & Value(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		Handle_StepElement_SurfaceElementPurposeMember & ChangeValue(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer fromIndex, const Standard_Integer toIndex);
		%feature("autodoc", "1");
		const StepElement_SequenceOfSurfaceElementPurposeMember & Sequence() const;
		%feature("autodoc", "1");
		StepElement_SequenceOfSurfaceElementPurposeMember & ChangeSequence();
		%feature("autodoc", "1");
		Handle_StepElement_HSequenceOfSurfaceElementPurposeMember ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepElement_HSequenceOfSurfaceElementPurposeMember {
	Handle_StepElement_HSequenceOfSurfaceElementPurposeMember GetHandle() {
	return *(Handle_StepElement_HSequenceOfSurfaceElementPurposeMember*) &$self;
	}
};
%extend StepElement_HSequenceOfSurfaceElementPurposeMember {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") StepElement_HSequenceOfSurfaceElementPurposeMember::~StepElement_HSequenceOfSurfaceElementPurposeMember %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepElement_HSequenceOfSurfaceElementPurposeMember {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepElement_CurveElementFreedom;
class StepElement_CurveElementFreedom : public StepData_SelectType {
	public:
		%feature("autodoc", "1");
		StepElement_CurveElementFreedom();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseNum(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseMem(const Handle_StepData_SelectMember &ent) const;
		%feature("autodoc", "1");
		virtual		Handle_StepData_SelectMember NewMember() const;
		%feature("autodoc", "1");
		void SetEnumeratedCurveElementFreedom(const StepElement_EnumeratedCurveElementFreedom aVal);
		%feature("autodoc", "1");
		StepElement_EnumeratedCurveElementFreedom EnumeratedCurveElementFreedom() const;
		%feature("autodoc", "1");
		void SetApplicationDefinedDegreeOfFreedom(const Handle_TCollection_HAsciiString &aVal);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString ApplicationDefinedDegreeOfFreedom() const;

};
%feature("shadow") StepElement_CurveElementFreedom::~StepElement_CurveElementFreedom %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepElement_CurveElementFreedom {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepElement_HArray1OfSurfaceSection;
class StepElement_HArray1OfSurfaceSection : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepElement_HArray1OfSurfaceSection(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepElement_HArray1OfSurfaceSection(const Standard_Integer Low, const Standard_Integer Up, const Handle_StepElement_SurfaceSection &V);
		%feature("autodoc", "1");
		void Init(const Handle_StepElement_SurfaceSection &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StepElement_SurfaceSection &Value);
		%feature("autodoc", "1");
		const Handle_StepElement_SurfaceSection & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_StepElement_SurfaceSection & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const StepElement_Array1OfSurfaceSection & Array1() const;
		%feature("autodoc", "1");
		StepElement_Array1OfSurfaceSection & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepElement_HArray1OfSurfaceSection {
	Handle_StepElement_HArray1OfSurfaceSection GetHandle() {
	return *(Handle_StepElement_HArray1OfSurfaceSection*) &$self;
	}
};
%extend StepElement_HArray1OfSurfaceSection {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") StepElement_HArray1OfSurfaceSection::~StepElement_HArray1OfSurfaceSection %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepElement_HArray1OfSurfaceSection {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepElement_SurfaceSectionField;
class StepElement_SurfaceSectionField : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepElement_SurfaceSectionField();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepElement_SurfaceSectionField {
	Handle_StepElement_SurfaceSectionField GetHandle() {
	return *(Handle_StepElement_SurfaceSectionField*) &$self;
	}
};
%extend StepElement_SurfaceSectionField {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") StepElement_SurfaceSectionField::~StepElement_SurfaceSectionField %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepElement_SurfaceSectionField {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepElement_AnalysisItemWithinRepresentation;
class StepElement_AnalysisItemWithinRepresentation : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepElement_AnalysisItemWithinRepresentation();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aName, const Handle_TCollection_HAsciiString &aDescription, const Handle_StepRepr_RepresentationItem &aItem, const Handle_StepRepr_Representation &aRep);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Name() const;
		%feature("autodoc", "1");
		void SetName(const Handle_TCollection_HAsciiString &Name);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Description() const;
		%feature("autodoc", "1");
		void SetDescription(const Handle_TCollection_HAsciiString &Description);
		%feature("autodoc", "1");
		Handle_StepRepr_RepresentationItem Item() const;
		%feature("autodoc", "1");
		void SetItem(const Handle_StepRepr_RepresentationItem &Item);
		%feature("autodoc", "1");
		Handle_StepRepr_Representation Rep() const;
		%feature("autodoc", "1");
		void SetRep(const Handle_StepRepr_Representation &Rep);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepElement_AnalysisItemWithinRepresentation {
	Handle_StepElement_AnalysisItemWithinRepresentation GetHandle() {
	return *(Handle_StepElement_AnalysisItemWithinRepresentation*) &$self;
	}
};
%extend StepElement_AnalysisItemWithinRepresentation {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") StepElement_AnalysisItemWithinRepresentation::~StepElement_AnalysisItemWithinRepresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepElement_AnalysisItemWithinRepresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepElement_Curve3dElementDescriptor;
class StepElement_Curve3dElementDescriptor : public StepElement_ElementDescriptor {
	public:
		%feature("autodoc", "1");
		StepElement_Curve3dElementDescriptor();
		%feature("autodoc", "1");
		void Init(const StepElement_ElementOrder aElementDescriptor_TopologyOrder, const Handle_TCollection_HAsciiString &aElementDescriptor_Description, const Handle_StepElement_HArray1OfHSequenceOfCurveElementPurposeMember &aPurpose);
		%feature("autodoc", "1");
		Handle_StepElement_HArray1OfHSequenceOfCurveElementPurposeMember Purpose() const;
		%feature("autodoc", "1");
		void SetPurpose(const Handle_StepElement_HArray1OfHSequenceOfCurveElementPurposeMember &Purpose);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepElement_Curve3dElementDescriptor {
	Handle_StepElement_Curve3dElementDescriptor GetHandle() {
	return *(Handle_StepElement_Curve3dElementDescriptor*) &$self;
	}
};
%extend StepElement_Curve3dElementDescriptor {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") StepElement_Curve3dElementDescriptor::~StepElement_Curve3dElementDescriptor %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepElement_Curve3dElementDescriptor {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepElement_SurfaceSection;
class StepElement_SurfaceSection : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepElement_SurfaceSection();
		%feature("autodoc", "1");
		void Init(const StepElement_MeasureOrUnspecifiedValue &aOffset, const StepElement_MeasureOrUnspecifiedValue &aNonStructuralMass, const StepElement_MeasureOrUnspecifiedValue &aNonStructuralMassOffset);
		%feature("autodoc", "1");
		StepElement_MeasureOrUnspecifiedValue Offset() const;
		%feature("autodoc", "1");
		void SetOffset(const StepElement_MeasureOrUnspecifiedValue &Offset);
		%feature("autodoc", "1");
		StepElement_MeasureOrUnspecifiedValue NonStructuralMass() const;
		%feature("autodoc", "1");
		void SetNonStructuralMass(const StepElement_MeasureOrUnspecifiedValue &NonStructuralMass);
		%feature("autodoc", "1");
		StepElement_MeasureOrUnspecifiedValue NonStructuralMassOffset() const;
		%feature("autodoc", "1");
		void SetNonStructuralMassOffset(const StepElement_MeasureOrUnspecifiedValue &NonStructuralMassOffset);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepElement_SurfaceSection {
	Handle_StepElement_SurfaceSection GetHandle() {
	return *(Handle_StepElement_SurfaceSection*) &$self;
	}
};
%extend StepElement_SurfaceSection {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") StepElement_SurfaceSection::~StepElement_SurfaceSection %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepElement_SurfaceSection {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepElement_UniformSurfaceSection;
class StepElement_UniformSurfaceSection : public StepElement_SurfaceSection {
	public:
		%feature("autodoc", "1");
		StepElement_UniformSurfaceSection();
		%feature("autodoc", "1");
		void Init(const StepElement_MeasureOrUnspecifiedValue &aSurfaceSection_Offset, const StepElement_MeasureOrUnspecifiedValue &aSurfaceSection_NonStructuralMass, const StepElement_MeasureOrUnspecifiedValue &aSurfaceSection_NonStructuralMassOffset, const Standard_Real aThickness, const StepElement_MeasureOrUnspecifiedValue &aBendingThickness, const StepElement_MeasureOrUnspecifiedValue &aShearThickness);
		%feature("autodoc", "1");
		Standard_Real Thickness() const;
		%feature("autodoc", "1");
		void SetThickness(const Standard_Real Thickness);
		%feature("autodoc", "1");
		StepElement_MeasureOrUnspecifiedValue BendingThickness() const;
		%feature("autodoc", "1");
		void SetBendingThickness(const StepElement_MeasureOrUnspecifiedValue &BendingThickness);
		%feature("autodoc", "1");
		StepElement_MeasureOrUnspecifiedValue ShearThickness() const;
		%feature("autodoc", "1");
		void SetShearThickness(const StepElement_MeasureOrUnspecifiedValue &ShearThickness);

};
%extend StepElement_UniformSurfaceSection {
	Handle_StepElement_UniformSurfaceSection GetHandle() {
	return *(Handle_StepElement_UniformSurfaceSection*) &$self;
	}
};
%extend StepElement_UniformSurfaceSection {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") StepElement_UniformSurfaceSection::~StepElement_UniformSurfaceSection %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepElement_UniformSurfaceSection {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepElement_SurfaceElementPurpose;
class StepElement_SurfaceElementPurpose : public StepData_SelectType {
	public:
		%feature("autodoc", "1");
		StepElement_SurfaceElementPurpose();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseNum(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseMem(const Handle_StepData_SelectMember &ent) const;
		%feature("autodoc", "1");
		virtual		Handle_StepData_SelectMember NewMember() const;
		%feature("autodoc", "1");
		void SetEnumeratedSurfaceElementPurpose(const StepElement_EnumeratedSurfaceElementPurpose aVal);
		%feature("autodoc", "1");
		StepElement_EnumeratedSurfaceElementPurpose EnumeratedSurfaceElementPurpose() const;
		%feature("autodoc", "1");
		void SetApplicationDefinedElementPurpose(const Handle_TCollection_HAsciiString &aVal);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString ApplicationDefinedElementPurpose() const;

};
%feature("shadow") StepElement_SurfaceElementPurpose::~StepElement_SurfaceElementPurpose %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepElement_SurfaceElementPurpose {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepElement_Array1OfVolumeElementPurpose;
class StepElement_Array1OfVolumeElementPurpose {
	public:
		%feature("autodoc", "1");
		StepElement_Array1OfVolumeElementPurpose(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepElement_Array1OfVolumeElementPurpose(const StepElement_VolumeElementPurpose &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const StepElement_VolumeElementPurpose &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepElement_Array1OfVolumeElementPurpose & Assign(const StepElement_Array1OfVolumeElementPurpose &Other);
		%feature("autodoc", "1");
		const StepElement_Array1OfVolumeElementPurpose & operator=(const StepElement_Array1OfVolumeElementPurpose &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepElement_VolumeElementPurpose &Value);
		%feature("autodoc", "1");
		const StepElement_VolumeElementPurpose & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const StepElement_VolumeElementPurpose & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepElement_VolumeElementPurpose & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		StepElement_VolumeElementPurpose & operator()(const Standard_Integer Index);

};
%feature("shadow") StepElement_Array1OfVolumeElementPurpose::~StepElement_Array1OfVolumeElementPurpose %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepElement_Array1OfVolumeElementPurpose {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepElement_VolumeElementPurposeMember;
class StepElement_VolumeElementPurposeMember : public StepData_SelectNamed {
	public:
		%feature("autodoc", "1");
		StepElement_VolumeElementPurposeMember();
		%feature("autodoc", "1");
		virtual		Standard_Boolean HasName() const;
		%feature("autodoc", "1");
		virtual		char * Name() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean SetName(const char * name);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Matches(const char * name) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepElement_VolumeElementPurposeMember {
	Handle_StepElement_VolumeElementPurposeMember GetHandle() {
	return *(Handle_StepElement_VolumeElementPurposeMember*) &$self;
	}
};
%extend StepElement_VolumeElementPurposeMember {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") StepElement_VolumeElementPurposeMember::~StepElement_VolumeElementPurposeMember %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepElement_VolumeElementPurposeMember {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepElement_CurveElementPurpose;
class StepElement_CurveElementPurpose : public StepData_SelectType {
	public:
		%feature("autodoc", "1");
		StepElement_CurveElementPurpose();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseNum(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseMem(const Handle_StepData_SelectMember &ent) const;
		%feature("autodoc", "1");
		virtual		Handle_StepData_SelectMember NewMember() const;
		%feature("autodoc", "1");
		void SetEnumeratedCurveElementPurpose(const StepElement_EnumeratedCurveElementPurpose aVal);
		%feature("autodoc", "1");
		StepElement_EnumeratedCurveElementPurpose EnumeratedCurveElementPurpose() const;
		%feature("autodoc", "1");
		void SetApplicationDefinedElementPurpose(const Handle_TCollection_HAsciiString &aVal);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString ApplicationDefinedElementPurpose() const;

};
%feature("shadow") StepElement_CurveElementPurpose::~StepElement_CurveElementPurpose %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepElement_CurveElementPurpose {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepElement_SurfaceElementPurposeMember;
class StepElement_SurfaceElementPurposeMember : public StepData_SelectNamed {
	public:
		%feature("autodoc", "1");
		StepElement_SurfaceElementPurposeMember();
		%feature("autodoc", "1");
		virtual		Standard_Boolean HasName() const;
		%feature("autodoc", "1");
		virtual		char * Name() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean SetName(const char * name);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Matches(const char * name) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepElement_SurfaceElementPurposeMember {
	Handle_StepElement_SurfaceElementPurposeMember GetHandle() {
	return *(Handle_StepElement_SurfaceElementPurposeMember*) &$self;
	}
};
%extend StepElement_SurfaceElementPurposeMember {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") StepElement_SurfaceElementPurposeMember::~StepElement_SurfaceElementPurposeMember %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepElement_SurfaceElementPurposeMember {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepElement_HSequenceOfCurveElementSectionDefinition;
class StepElement_HSequenceOfCurveElementSectionDefinition : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepElement_HSequenceOfCurveElementSectionDefinition();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const Handle_StepElement_CurveElementSectionDefinition &anItem);
		%feature("autodoc", "1");
		void Append(const Handle_StepElement_HSequenceOfCurveElementSectionDefinition &aSequence);
		%feature("autodoc", "1");
		void Prepend(const Handle_StepElement_CurveElementSectionDefinition &anItem);
		%feature("autodoc", "1");
		void Prepend(const Handle_StepElement_HSequenceOfCurveElementSectionDefinition &aSequence);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_StepElement_CurveElementSectionDefinition &anItem);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_StepElement_HSequenceOfCurveElementSectionDefinition &aSequence);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_StepElement_CurveElementSectionDefinition &anItem);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_StepElement_HSequenceOfCurveElementSectionDefinition &aSequence);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer anIndex, const Standard_Integer anOtherIndex);
		%feature("autodoc", "1");
		Handle_StepElement_HSequenceOfCurveElementSectionDefinition Split(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer anIndex, const Handle_StepElement_CurveElementSectionDefinition &anItem);
		%feature("autodoc", "1");
		const Handle_StepElement_CurveElementSectionDefinition & Value(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		Handle_StepElement_CurveElementSectionDefinition & ChangeValue(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer fromIndex, const Standard_Integer toIndex);
		%feature("autodoc", "1");
		const StepElement_SequenceOfCurveElementSectionDefinition & Sequence() const;
		%feature("autodoc", "1");
		StepElement_SequenceOfCurveElementSectionDefinition & ChangeSequence();
		%feature("autodoc", "1");
		Handle_StepElement_HSequenceOfCurveElementSectionDefinition ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepElement_HSequenceOfCurveElementSectionDefinition {
	Handle_StepElement_HSequenceOfCurveElementSectionDefinition GetHandle() {
	return *(Handle_StepElement_HSequenceOfCurveElementSectionDefinition*) &$self;
	}
};
%extend StepElement_HSequenceOfCurveElementSectionDefinition {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") StepElement_HSequenceOfCurveElementSectionDefinition::~StepElement_HSequenceOfCurveElementSectionDefinition %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepElement_HSequenceOfCurveElementSectionDefinition {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepElement_Array1OfMeasureOrUnspecifiedValue;
class StepElement_Array1OfMeasureOrUnspecifiedValue {
	public:
		%feature("autodoc", "1");
		StepElement_Array1OfMeasureOrUnspecifiedValue(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepElement_Array1OfMeasureOrUnspecifiedValue(const StepElement_MeasureOrUnspecifiedValue &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const StepElement_MeasureOrUnspecifiedValue &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepElement_Array1OfMeasureOrUnspecifiedValue & Assign(const StepElement_Array1OfMeasureOrUnspecifiedValue &Other);
		%feature("autodoc", "1");
		const StepElement_Array1OfMeasureOrUnspecifiedValue & operator=(const StepElement_Array1OfMeasureOrUnspecifiedValue &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepElement_MeasureOrUnspecifiedValue &Value);
		%feature("autodoc", "1");
		const StepElement_MeasureOrUnspecifiedValue & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const StepElement_MeasureOrUnspecifiedValue & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepElement_MeasureOrUnspecifiedValue & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		StepElement_MeasureOrUnspecifiedValue & operator()(const Standard_Integer Index);

};
%feature("shadow") StepElement_Array1OfMeasureOrUnspecifiedValue::~StepElement_Array1OfMeasureOrUnspecifiedValue %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepElement_Array1OfMeasureOrUnspecifiedValue {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepElement_CurveElementSectionDerivedDefinitions;
class StepElement_CurveElementSectionDerivedDefinitions : public StepElement_CurveElementSectionDefinition {
	public:
		%feature("autodoc", "1");
		StepElement_CurveElementSectionDerivedDefinitions();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aCurveElementSectionDefinition_Description, const Standard_Real aCurveElementSectionDefinition_SectionAngle, const Standard_Real aCrossSectionalArea, const Handle_StepElement_HArray1OfMeasureOrUnspecifiedValue &aShearArea, const Handle_TColStd_HArray1OfReal &aSecondMomentOfArea, const Standard_Real aTorsionalConstant, const StepElement_MeasureOrUnspecifiedValue &aWarpingConstant, const Handle_StepElement_HArray1OfMeasureOrUnspecifiedValue &aLocationOfCentroid, const Handle_StepElement_HArray1OfMeasureOrUnspecifiedValue &aLocationOfShearCentre, const Handle_StepElement_HArray1OfMeasureOrUnspecifiedValue &aLocationOfNonStructuralMass, const StepElement_MeasureOrUnspecifiedValue &aNonStructuralMass, const StepElement_MeasureOrUnspecifiedValue &aPolarMoment);
		%feature("autodoc", "1");
		Standard_Real CrossSectionalArea() const;
		%feature("autodoc", "1");
		void SetCrossSectionalArea(const Standard_Real CrossSectionalArea);
		%feature("autodoc", "1");
		Handle_StepElement_HArray1OfMeasureOrUnspecifiedValue ShearArea() const;
		%feature("autodoc", "1");
		void SetShearArea(const Handle_StepElement_HArray1OfMeasureOrUnspecifiedValue &ShearArea);
		%feature("autodoc", "1");
		Handle_TColStd_HArray1OfReal SecondMomentOfArea() const;
		%feature("autodoc", "1");
		void SetSecondMomentOfArea(const Handle_TColStd_HArray1OfReal &SecondMomentOfArea);
		%feature("autodoc", "1");
		Standard_Real TorsionalConstant() const;
		%feature("autodoc", "1");
		void SetTorsionalConstant(const Standard_Real TorsionalConstant);
		%feature("autodoc", "1");
		StepElement_MeasureOrUnspecifiedValue WarpingConstant() const;
		%feature("autodoc", "1");
		void SetWarpingConstant(const StepElement_MeasureOrUnspecifiedValue &WarpingConstant);
		%feature("autodoc", "1");
		Handle_StepElement_HArray1OfMeasureOrUnspecifiedValue LocationOfCentroid() const;
		%feature("autodoc", "1");
		void SetLocationOfCentroid(const Handle_StepElement_HArray1OfMeasureOrUnspecifiedValue &LocationOfCentroid);
		%feature("autodoc", "1");
		Handle_StepElement_HArray1OfMeasureOrUnspecifiedValue LocationOfShearCentre() const;
		%feature("autodoc", "1");
		void SetLocationOfShearCentre(const Handle_StepElement_HArray1OfMeasureOrUnspecifiedValue &LocationOfShearCentre);
		%feature("autodoc", "1");
		Handle_StepElement_HArray1OfMeasureOrUnspecifiedValue LocationOfNonStructuralMass() const;
		%feature("autodoc", "1");
		void SetLocationOfNonStructuralMass(const Handle_StepElement_HArray1OfMeasureOrUnspecifiedValue &LocationOfNonStructuralMass);
		%feature("autodoc", "1");
		StepElement_MeasureOrUnspecifiedValue NonStructuralMass() const;
		%feature("autodoc", "1");
		void SetNonStructuralMass(const StepElement_MeasureOrUnspecifiedValue &NonStructuralMass);
		%feature("autodoc", "1");
		StepElement_MeasureOrUnspecifiedValue PolarMoment() const;
		%feature("autodoc", "1");
		void SetPolarMoment(const StepElement_MeasureOrUnspecifiedValue &PolarMoment);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepElement_CurveElementSectionDerivedDefinitions {
	Handle_StepElement_CurveElementSectionDerivedDefinitions GetHandle() {
	return *(Handle_StepElement_CurveElementSectionDerivedDefinitions*) &$self;
	}
};
%extend StepElement_CurveElementSectionDerivedDefinitions {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") StepElement_CurveElementSectionDerivedDefinitions::~StepElement_CurveElementSectionDerivedDefinitions %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepElement_CurveElementSectionDerivedDefinitions {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepElement_SurfaceSectionFieldVarying;
class StepElement_SurfaceSectionFieldVarying : public StepElement_SurfaceSectionField {
	public:
		%feature("autodoc", "1");
		StepElement_SurfaceSectionFieldVarying();
		%feature("autodoc", "1");
		void Init(const Handle_StepElement_HArray1OfSurfaceSection &aDefinitions, const Standard_Boolean aAdditionalNodeValues);
		%feature("autodoc", "1");
		Handle_StepElement_HArray1OfSurfaceSection Definitions() const;
		%feature("autodoc", "1");
		void SetDefinitions(const Handle_StepElement_HArray1OfSurfaceSection &Definitions);
		%feature("autodoc", "1");
		Standard_Boolean AdditionalNodeValues() const;
		%feature("autodoc", "1");
		void SetAdditionalNodeValues(const Standard_Boolean AdditionalNodeValues);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepElement_SurfaceSectionFieldVarying {
	Handle_StepElement_SurfaceSectionFieldVarying GetHandle() {
	return *(Handle_StepElement_SurfaceSectionFieldVarying*) &$self;
	}
};
%extend StepElement_SurfaceSectionFieldVarying {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") StepElement_SurfaceSectionFieldVarying::~StepElement_SurfaceSectionFieldVarying %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepElement_SurfaceSectionFieldVarying {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepElement_Array1OfCurveElementSectionDefinition;
class StepElement_Array1OfCurveElementSectionDefinition {
	public:
		%feature("autodoc", "1");
		StepElement_Array1OfCurveElementSectionDefinition(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepElement_Array1OfCurveElementSectionDefinition(const Handle_StepElement_CurveElementSectionDefinition &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Handle_StepElement_CurveElementSectionDefinition &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepElement_Array1OfCurveElementSectionDefinition & Assign(const StepElement_Array1OfCurveElementSectionDefinition &Other);
		%feature("autodoc", "1");
		const StepElement_Array1OfCurveElementSectionDefinition & operator=(const StepElement_Array1OfCurveElementSectionDefinition &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StepElement_CurveElementSectionDefinition &Value);
		%feature("autodoc", "1");
		const Handle_StepElement_CurveElementSectionDefinition & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_StepElement_CurveElementSectionDefinition & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_StepElement_CurveElementSectionDefinition & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_StepElement_CurveElementSectionDefinition & operator()(const Standard_Integer Index);

};
%feature("shadow") StepElement_Array1OfCurveElementSectionDefinition::~StepElement_Array1OfCurveElementSectionDefinition %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepElement_Array1OfCurveElementSectionDefinition {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepElement_Array1OfHSequenceOfSurfaceElementPurposeMember;
class StepElement_Array1OfHSequenceOfSurfaceElementPurposeMember {
	public:
		%feature("autodoc", "1");
		StepElement_Array1OfHSequenceOfSurfaceElementPurposeMember(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepElement_Array1OfHSequenceOfSurfaceElementPurposeMember(const Handle_StepElement_HSequenceOfSurfaceElementPurposeMember &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Handle_StepElement_HSequenceOfSurfaceElementPurposeMember &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepElement_Array1OfHSequenceOfSurfaceElementPurposeMember & Assign(const StepElement_Array1OfHSequenceOfSurfaceElementPurposeMember &Other);
		%feature("autodoc", "1");
		const StepElement_Array1OfHSequenceOfSurfaceElementPurposeMember & operator=(const StepElement_Array1OfHSequenceOfSurfaceElementPurposeMember &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StepElement_HSequenceOfSurfaceElementPurposeMember &Value);
		%feature("autodoc", "1");
		const Handle_StepElement_HSequenceOfSurfaceElementPurposeMember & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_StepElement_HSequenceOfSurfaceElementPurposeMember & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_StepElement_HSequenceOfSurfaceElementPurposeMember & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_StepElement_HSequenceOfSurfaceElementPurposeMember & operator()(const Standard_Integer Index);

};
%feature("shadow") StepElement_Array1OfHSequenceOfSurfaceElementPurposeMember::~StepElement_Array1OfHSequenceOfSurfaceElementPurposeMember %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepElement_Array1OfHSequenceOfSurfaceElementPurposeMember {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepElement_HArray2OfSurfaceElementPurposeMember;
class StepElement_HArray2OfSurfaceElementPurposeMember : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepElement_HArray2OfSurfaceElementPurposeMember(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		StepElement_HArray2OfSurfaceElementPurposeMember(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2, const Handle_StepElement_SurfaceElementPurposeMember &V);
		%feature("autodoc", "1");
		void Init(const Handle_StepElement_SurfaceElementPurposeMember &V);
		%feature("autodoc", "1");
		Standard_Integer ColLength() const;
		%feature("autodoc", "1");
		Standard_Integer RowLength() const;
		%feature("autodoc", "1");
		Standard_Integer LowerCol() const;
		%feature("autodoc", "1");
		Standard_Integer LowerRow() const;
		%feature("autodoc", "1");
		Standard_Integer UpperCol() const;
		%feature("autodoc", "1");
		Standard_Integer UpperRow() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const Handle_StepElement_SurfaceElementPurposeMember &Value);
		%feature("autodoc", "1");
		const Handle_StepElement_SurfaceElementPurposeMember & Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		Handle_StepElement_SurfaceElementPurposeMember & ChangeValue(const Standard_Integer Row, const Standard_Integer Col);
		%feature("autodoc", "1");
		const StepElement_Array2OfSurfaceElementPurposeMember & Array2() const;
		%feature("autodoc", "1");
		StepElement_Array2OfSurfaceElementPurposeMember & ChangeArray2();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepElement_HArray2OfSurfaceElementPurposeMember {
	Handle_StepElement_HArray2OfSurfaceElementPurposeMember GetHandle() {
	return *(Handle_StepElement_HArray2OfSurfaceElementPurposeMember*) &$self;
	}
};
%extend StepElement_HArray2OfSurfaceElementPurposeMember {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") StepElement_HArray2OfSurfaceElementPurposeMember::~StepElement_HArray2OfSurfaceElementPurposeMember %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepElement_HArray2OfSurfaceElementPurposeMember {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepElement_Volume3dElementDescriptor;
class StepElement_Volume3dElementDescriptor : public StepElement_ElementDescriptor {
	public:
		%feature("autodoc", "1");
		StepElement_Volume3dElementDescriptor();
		%feature("autodoc", "1");
		void Init(const StepElement_ElementOrder aElementDescriptor_TopologyOrder, const Handle_TCollection_HAsciiString &aElementDescriptor_Description, const Handle_StepElement_HArray1OfVolumeElementPurposeMember &aPurpose, const StepElement_Volume3dElementShape aShape);
		%feature("autodoc", "1");
		Handle_StepElement_HArray1OfVolumeElementPurposeMember Purpose() const;
		%feature("autodoc", "1");
		void SetPurpose(const Handle_StepElement_HArray1OfVolumeElementPurposeMember &Purpose);
		%feature("autodoc", "1");
		StepElement_Volume3dElementShape Shape() const;
		%feature("autodoc", "1");
		void SetShape(const StepElement_Volume3dElementShape Shape);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepElement_Volume3dElementDescriptor {
	Handle_StepElement_Volume3dElementDescriptor GetHandle() {
	return *(Handle_StepElement_Volume3dElementDescriptor*) &$self;
	}
};
%extend StepElement_Volume3dElementDescriptor {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") StepElement_Volume3dElementDescriptor::~StepElement_Volume3dElementDescriptor %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepElement_Volume3dElementDescriptor {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepElement_SequenceOfCurveElementSectionDefinition;
class StepElement_SequenceOfCurveElementSectionDefinition : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		StepElement_SequenceOfCurveElementSectionDefinition();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const StepElement_SequenceOfCurveElementSectionDefinition & Assign(const StepElement_SequenceOfCurveElementSectionDefinition &Other);
		%feature("autodoc", "1");
		const StepElement_SequenceOfCurveElementSectionDefinition & operator=(const StepElement_SequenceOfCurveElementSectionDefinition &Other);
		%feature("autodoc", "1");
		void Append(const Handle_StepElement_CurveElementSectionDefinition &T);
		%feature("autodoc", "1");
		void Append(StepElement_SequenceOfCurveElementSectionDefinition & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_StepElement_CurveElementSectionDefinition &T);
		%feature("autodoc", "1");
		void Prepend(StepElement_SequenceOfCurveElementSectionDefinition & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_StepElement_CurveElementSectionDefinition &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, StepElement_SequenceOfCurveElementSectionDefinition & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_StepElement_CurveElementSectionDefinition &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, StepElement_SequenceOfCurveElementSectionDefinition & S);
		%feature("autodoc", "1");
		const Handle_StepElement_CurveElementSectionDefinition & First() const;
		%feature("autodoc", "1");
		const Handle_StepElement_CurveElementSectionDefinition & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, StepElement_SequenceOfCurveElementSectionDefinition & S);
		%feature("autodoc", "1");
		const Handle_StepElement_CurveElementSectionDefinition & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_StepElement_CurveElementSectionDefinition & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StepElement_CurveElementSectionDefinition &I);
		%feature("autodoc", "1");
		Handle_StepElement_CurveElementSectionDefinition & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_StepElement_CurveElementSectionDefinition & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") StepElement_SequenceOfCurveElementSectionDefinition::~StepElement_SequenceOfCurveElementSectionDefinition %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepElement_SequenceOfCurveElementSectionDefinition {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepElement_HArray1OfHSequenceOfCurveElementPurposeMember;
class StepElement_HArray1OfHSequenceOfCurveElementPurposeMember : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepElement_HArray1OfHSequenceOfCurveElementPurposeMember(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepElement_HArray1OfHSequenceOfCurveElementPurposeMember(const Standard_Integer Low, const Standard_Integer Up, const Handle_StepElement_HSequenceOfCurveElementPurposeMember &V);
		%feature("autodoc", "1");
		void Init(const Handle_StepElement_HSequenceOfCurveElementPurposeMember &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StepElement_HSequenceOfCurveElementPurposeMember &Value);
		%feature("autodoc", "1");
		const Handle_StepElement_HSequenceOfCurveElementPurposeMember & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_StepElement_HSequenceOfCurveElementPurposeMember & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const StepElement_Array1OfHSequenceOfCurveElementPurposeMember & Array1() const;
		%feature("autodoc", "1");
		StepElement_Array1OfHSequenceOfCurveElementPurposeMember & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepElement_HArray1OfHSequenceOfCurveElementPurposeMember {
	Handle_StepElement_HArray1OfHSequenceOfCurveElementPurposeMember GetHandle() {
	return *(Handle_StepElement_HArray1OfHSequenceOfCurveElementPurposeMember*) &$self;
	}
};
%extend StepElement_HArray1OfHSequenceOfCurveElementPurposeMember {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") StepElement_HArray1OfHSequenceOfCurveElementPurposeMember::~StepElement_HArray1OfHSequenceOfCurveElementPurposeMember %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepElement_HArray1OfHSequenceOfCurveElementPurposeMember {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepElement_HArray1OfMeasureOrUnspecifiedValue;
class StepElement_HArray1OfMeasureOrUnspecifiedValue : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepElement_HArray1OfMeasureOrUnspecifiedValue(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepElement_HArray1OfMeasureOrUnspecifiedValue(const Standard_Integer Low, const Standard_Integer Up, const StepElement_MeasureOrUnspecifiedValue &V);
		%feature("autodoc", "1");
		void Init(const StepElement_MeasureOrUnspecifiedValue &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const StepElement_MeasureOrUnspecifiedValue &Value);
		%feature("autodoc", "1");
		const StepElement_MeasureOrUnspecifiedValue & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		StepElement_MeasureOrUnspecifiedValue & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const StepElement_Array1OfMeasureOrUnspecifiedValue & Array1() const;
		%feature("autodoc", "1");
		StepElement_Array1OfMeasureOrUnspecifiedValue & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepElement_HArray1OfMeasureOrUnspecifiedValue {
	Handle_StepElement_HArray1OfMeasureOrUnspecifiedValue GetHandle() {
	return *(Handle_StepElement_HArray1OfMeasureOrUnspecifiedValue*) &$self;
	}
};
%extend StepElement_HArray1OfMeasureOrUnspecifiedValue {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") StepElement_HArray1OfMeasureOrUnspecifiedValue::~StepElement_HArray1OfMeasureOrUnspecifiedValue %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepElement_HArray1OfMeasureOrUnspecifiedValue {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepElement_Array2OfCurveElementPurposeMember;
class StepElement_Array2OfCurveElementPurposeMember {
	public:
		%feature("autodoc", "1");
		StepElement_Array2OfCurveElementPurposeMember(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		StepElement_Array2OfCurveElementPurposeMember(const Handle_StepElement_CurveElementPurposeMember &Item, const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		void Init(const Handle_StepElement_CurveElementPurposeMember &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		const StepElement_Array2OfCurveElementPurposeMember & Assign(const StepElement_Array2OfCurveElementPurposeMember &Other);
		%feature("autodoc", "1");
		const StepElement_Array2OfCurveElementPurposeMember & operator=(const StepElement_Array2OfCurveElementPurposeMember &Other);
		%feature("autodoc", "1");
		Standard_Integer ColLength() const;
		%feature("autodoc", "1");
		Standard_Integer RowLength() const;
		%feature("autodoc", "1");
		Standard_Integer LowerCol() const;
		%feature("autodoc", "1");
		Standard_Integer LowerRow() const;
		%feature("autodoc", "1");
		Standard_Integer UpperCol() const;
		%feature("autodoc", "1");
		Standard_Integer UpperRow() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const Handle_StepElement_CurveElementPurposeMember &Value);
		%feature("autodoc", "1");
		const Handle_StepElement_CurveElementPurposeMember & Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		const Handle_StepElement_CurveElementPurposeMember & operator()(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		Handle_StepElement_CurveElementPurposeMember & ChangeValue(const Standard_Integer Row, const Standard_Integer Col);
		%feature("autodoc", "1");
		Handle_StepElement_CurveElementPurposeMember & operator()(const Standard_Integer Row, const Standard_Integer Col);

};
%feature("shadow") StepElement_Array2OfCurveElementPurposeMember::~StepElement_Array2OfCurveElementPurposeMember %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepElement_Array2OfCurveElementPurposeMember {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepElement_SequenceOfElementMaterial;
class StepElement_SequenceOfElementMaterial : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		StepElement_SequenceOfElementMaterial();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const StepElement_SequenceOfElementMaterial & Assign(const StepElement_SequenceOfElementMaterial &Other);
		%feature("autodoc", "1");
		const StepElement_SequenceOfElementMaterial & operator=(const StepElement_SequenceOfElementMaterial &Other);
		%feature("autodoc", "1");
		void Append(const Handle_StepElement_ElementMaterial &T);
		%feature("autodoc", "1");
		void Append(StepElement_SequenceOfElementMaterial & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_StepElement_ElementMaterial &T);
		%feature("autodoc", "1");
		void Prepend(StepElement_SequenceOfElementMaterial & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_StepElement_ElementMaterial &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, StepElement_SequenceOfElementMaterial & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_StepElement_ElementMaterial &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, StepElement_SequenceOfElementMaterial & S);
		%feature("autodoc", "1");
		const Handle_StepElement_ElementMaterial & First() const;
		%feature("autodoc", "1");
		const Handle_StepElement_ElementMaterial & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, StepElement_SequenceOfElementMaterial & S);
		%feature("autodoc", "1");
		const Handle_StepElement_ElementMaterial & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_StepElement_ElementMaterial & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StepElement_ElementMaterial &I);
		%feature("autodoc", "1");
		Handle_StepElement_ElementMaterial & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_StepElement_ElementMaterial & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") StepElement_SequenceOfElementMaterial::~StepElement_SequenceOfElementMaterial %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepElement_SequenceOfElementMaterial {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepElement_Array2OfSurfaceElementPurpose;
class StepElement_Array2OfSurfaceElementPurpose {
	public:
		%feature("autodoc", "1");
		StepElement_Array2OfSurfaceElementPurpose(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		StepElement_Array2OfSurfaceElementPurpose(const StepElement_SurfaceElementPurpose &Item, const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		void Init(const StepElement_SurfaceElementPurpose &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		const StepElement_Array2OfSurfaceElementPurpose & Assign(const StepElement_Array2OfSurfaceElementPurpose &Other);
		%feature("autodoc", "1");
		const StepElement_Array2OfSurfaceElementPurpose & operator=(const StepElement_Array2OfSurfaceElementPurpose &Other);
		%feature("autodoc", "1");
		Standard_Integer ColLength() const;
		%feature("autodoc", "1");
		Standard_Integer RowLength() const;
		%feature("autodoc", "1");
		Standard_Integer LowerCol() const;
		%feature("autodoc", "1");
		Standard_Integer LowerRow() const;
		%feature("autodoc", "1");
		Standard_Integer UpperCol() const;
		%feature("autodoc", "1");
		Standard_Integer UpperRow() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const StepElement_SurfaceElementPurpose &Value);
		%feature("autodoc", "1");
		const StepElement_SurfaceElementPurpose & Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		const StepElement_SurfaceElementPurpose & operator()(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		StepElement_SurfaceElementPurpose & ChangeValue(const Standard_Integer Row, const Standard_Integer Col);
		%feature("autodoc", "1");
		StepElement_SurfaceElementPurpose & operator()(const Standard_Integer Row, const Standard_Integer Col);

};
%feature("shadow") StepElement_Array2OfSurfaceElementPurpose::~StepElement_Array2OfSurfaceElementPurpose %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepElement_Array2OfSurfaceElementPurpose {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepElement_Array1OfVolumeElementPurposeMember;
class StepElement_Array1OfVolumeElementPurposeMember {
	public:
		%feature("autodoc", "1");
		StepElement_Array1OfVolumeElementPurposeMember(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepElement_Array1OfVolumeElementPurposeMember(const Handle_StepElement_VolumeElementPurposeMember &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Handle_StepElement_VolumeElementPurposeMember &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepElement_Array1OfVolumeElementPurposeMember & Assign(const StepElement_Array1OfVolumeElementPurposeMember &Other);
		%feature("autodoc", "1");
		const StepElement_Array1OfVolumeElementPurposeMember & operator=(const StepElement_Array1OfVolumeElementPurposeMember &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StepElement_VolumeElementPurposeMember &Value);
		%feature("autodoc", "1");
		const Handle_StepElement_VolumeElementPurposeMember & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_StepElement_VolumeElementPurposeMember & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_StepElement_VolumeElementPurposeMember & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_StepElement_VolumeElementPurposeMember & operator()(const Standard_Integer Index);

};
%feature("shadow") StepElement_Array1OfVolumeElementPurposeMember::~StepElement_Array1OfVolumeElementPurposeMember %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepElement_Array1OfVolumeElementPurposeMember {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepElement_HArray2OfSurfaceElementPurpose;
class StepElement_HArray2OfSurfaceElementPurpose : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepElement_HArray2OfSurfaceElementPurpose(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		StepElement_HArray2OfSurfaceElementPurpose(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2, const StepElement_SurfaceElementPurpose &V);
		%feature("autodoc", "1");
		void Init(const StepElement_SurfaceElementPurpose &V);
		%feature("autodoc", "1");
		Standard_Integer ColLength() const;
		%feature("autodoc", "1");
		Standard_Integer RowLength() const;
		%feature("autodoc", "1");
		Standard_Integer LowerCol() const;
		%feature("autodoc", "1");
		Standard_Integer LowerRow() const;
		%feature("autodoc", "1");
		Standard_Integer UpperCol() const;
		%feature("autodoc", "1");
		Standard_Integer UpperRow() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const StepElement_SurfaceElementPurpose &Value);
		%feature("autodoc", "1");
		const StepElement_SurfaceElementPurpose & Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		StepElement_SurfaceElementPurpose & ChangeValue(const Standard_Integer Row, const Standard_Integer Col);
		%feature("autodoc", "1");
		const StepElement_Array2OfSurfaceElementPurpose & Array2() const;
		%feature("autodoc", "1");
		StepElement_Array2OfSurfaceElementPurpose & ChangeArray2();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepElement_HArray2OfSurfaceElementPurpose {
	Handle_StepElement_HArray2OfSurfaceElementPurpose GetHandle() {
	return *(Handle_StepElement_HArray2OfSurfaceElementPurpose*) &$self;
	}
};
%extend StepElement_HArray2OfSurfaceElementPurpose {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") StepElement_HArray2OfSurfaceElementPurpose::~StepElement_HArray2OfSurfaceElementPurpose %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepElement_HArray2OfSurfaceElementPurpose {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepElement_HArray1OfHSequenceOfSurfaceElementPurposeMember;
class StepElement_HArray1OfHSequenceOfSurfaceElementPurposeMember : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepElement_HArray1OfHSequenceOfSurfaceElementPurposeMember(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepElement_HArray1OfHSequenceOfSurfaceElementPurposeMember(const Standard_Integer Low, const Standard_Integer Up, const Handle_StepElement_HSequenceOfSurfaceElementPurposeMember &V);
		%feature("autodoc", "1");
		void Init(const Handle_StepElement_HSequenceOfSurfaceElementPurposeMember &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StepElement_HSequenceOfSurfaceElementPurposeMember &Value);
		%feature("autodoc", "1");
		const Handle_StepElement_HSequenceOfSurfaceElementPurposeMember & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_StepElement_HSequenceOfSurfaceElementPurposeMember & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const StepElement_Array1OfHSequenceOfSurfaceElementPurposeMember & Array1() const;
		%feature("autodoc", "1");
		StepElement_Array1OfHSequenceOfSurfaceElementPurposeMember & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepElement_HArray1OfHSequenceOfSurfaceElementPurposeMember {
	Handle_StepElement_HArray1OfHSequenceOfSurfaceElementPurposeMember GetHandle() {
	return *(Handle_StepElement_HArray1OfHSequenceOfSurfaceElementPurposeMember*) &$self;
	}
};
%extend StepElement_HArray1OfHSequenceOfSurfaceElementPurposeMember {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") StepElement_HArray1OfHSequenceOfSurfaceElementPurposeMember::~StepElement_HArray1OfHSequenceOfSurfaceElementPurposeMember %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepElement_HArray1OfHSequenceOfSurfaceElementPurposeMember {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepElement_HArray2OfCurveElementPurposeMember;
class StepElement_HArray2OfCurveElementPurposeMember : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepElement_HArray2OfCurveElementPurposeMember(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		StepElement_HArray2OfCurveElementPurposeMember(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2, const Handle_StepElement_CurveElementPurposeMember &V);
		%feature("autodoc", "1");
		void Init(const Handle_StepElement_CurveElementPurposeMember &V);
		%feature("autodoc", "1");
		Standard_Integer ColLength() const;
		%feature("autodoc", "1");
		Standard_Integer RowLength() const;
		%feature("autodoc", "1");
		Standard_Integer LowerCol() const;
		%feature("autodoc", "1");
		Standard_Integer LowerRow() const;
		%feature("autodoc", "1");
		Standard_Integer UpperCol() const;
		%feature("autodoc", "1");
		Standard_Integer UpperRow() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const Handle_StepElement_CurveElementPurposeMember &Value);
		%feature("autodoc", "1");
		const Handle_StepElement_CurveElementPurposeMember & Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		Handle_StepElement_CurveElementPurposeMember & ChangeValue(const Standard_Integer Row, const Standard_Integer Col);
		%feature("autodoc", "1");
		const StepElement_Array2OfCurveElementPurposeMember & Array2() const;
		%feature("autodoc", "1");
		StepElement_Array2OfCurveElementPurposeMember & ChangeArray2();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepElement_HArray2OfCurveElementPurposeMember {
	Handle_StepElement_HArray2OfCurveElementPurposeMember GetHandle() {
	return *(Handle_StepElement_HArray2OfCurveElementPurposeMember*) &$self;
	}
};
%extend StepElement_HArray2OfCurveElementPurposeMember {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") StepElement_HArray2OfCurveElementPurposeMember::~StepElement_HArray2OfCurveElementPurposeMember %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepElement_HArray2OfCurveElementPurposeMember {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepElement_SurfaceSectionFieldConstant;
class StepElement_SurfaceSectionFieldConstant : public StepElement_SurfaceSectionField {
	public:
		%feature("autodoc", "1");
		StepElement_SurfaceSectionFieldConstant();
		%feature("autodoc", "1");
		void Init(const Handle_StepElement_SurfaceSection &aDefinition);
		%feature("autodoc", "1");
		Handle_StepElement_SurfaceSection Definition() const;
		%feature("autodoc", "1");
		void SetDefinition(const Handle_StepElement_SurfaceSection &Definition);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepElement_SurfaceSectionFieldConstant {
	Handle_StepElement_SurfaceSectionFieldConstant GetHandle() {
	return *(Handle_StepElement_SurfaceSectionFieldConstant*) &$self;
	}
};
%extend StepElement_SurfaceSectionFieldConstant {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") StepElement_SurfaceSectionFieldConstant::~StepElement_SurfaceSectionFieldConstant %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepElement_SurfaceSectionFieldConstant {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepElement_SequenceNodeOfSequenceOfCurveElementSectionDefinition;
class StepElement_SequenceNodeOfSequenceOfCurveElementSectionDefinition : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		StepElement_SequenceNodeOfSequenceOfCurveElementSectionDefinition(const Handle_StepElement_CurveElementSectionDefinition &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_StepElement_CurveElementSectionDefinition & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepElement_SequenceNodeOfSequenceOfCurveElementSectionDefinition {
	Handle_StepElement_SequenceNodeOfSequenceOfCurveElementSectionDefinition GetHandle() {
	return *(Handle_StepElement_SequenceNodeOfSequenceOfCurveElementSectionDefinition*) &$self;
	}
};
%extend StepElement_SequenceNodeOfSequenceOfCurveElementSectionDefinition {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") StepElement_SequenceNodeOfSequenceOfCurveElementSectionDefinition::~StepElement_SequenceNodeOfSequenceOfCurveElementSectionDefinition %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepElement_SequenceNodeOfSequenceOfCurveElementSectionDefinition {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepElement_VolumeElementPurpose;
class StepElement_VolumeElementPurpose : public StepData_SelectType {
	public:
		%feature("autodoc", "1");
		StepElement_VolumeElementPurpose();
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseNum(const Handle_Standard_Transient &ent) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer CaseMem(const Handle_StepData_SelectMember &ent) const;
		%feature("autodoc", "1");
		virtual		Handle_StepData_SelectMember NewMember() const;
		%feature("autodoc", "1");
		void SetEnumeratedVolumeElementPurpose(const StepElement_EnumeratedVolumeElementPurpose aVal);
		%feature("autodoc", "1");
		StepElement_EnumeratedVolumeElementPurpose EnumeratedVolumeElementPurpose() const;
		%feature("autodoc", "1");
		void SetApplicationDefinedElementPurpose(const Handle_TCollection_HAsciiString &aVal);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString ApplicationDefinedElementPurpose() const;

};
%feature("shadow") StepElement_VolumeElementPurpose::~StepElement_VolumeElementPurpose %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepElement_VolumeElementPurpose {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepElement_HArray1OfCurveElementSectionDefinition;
class StepElement_HArray1OfCurveElementSectionDefinition : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepElement_HArray1OfCurveElementSectionDefinition(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepElement_HArray1OfCurveElementSectionDefinition(const Standard_Integer Low, const Standard_Integer Up, const Handle_StepElement_CurveElementSectionDefinition &V);
		%feature("autodoc", "1");
		void Init(const Handle_StepElement_CurveElementSectionDefinition &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StepElement_CurveElementSectionDefinition &Value);
		%feature("autodoc", "1");
		const Handle_StepElement_CurveElementSectionDefinition & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_StepElement_CurveElementSectionDefinition & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const StepElement_Array1OfCurveElementSectionDefinition & Array1() const;
		%feature("autodoc", "1");
		StepElement_Array1OfCurveElementSectionDefinition & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepElement_HArray1OfCurveElementSectionDefinition {
	Handle_StepElement_HArray1OfCurveElementSectionDefinition GetHandle() {
	return *(Handle_StepElement_HArray1OfCurveElementSectionDefinition*) &$self;
	}
};
%extend StepElement_HArray1OfCurveElementSectionDefinition {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") StepElement_HArray1OfCurveElementSectionDefinition::~StepElement_HArray1OfCurveElementSectionDefinition %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepElement_HArray1OfCurveElementSectionDefinition {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepElement_Array1OfCurveElementEndReleasePacket;
class StepElement_Array1OfCurveElementEndReleasePacket {
	public:
		%feature("autodoc", "1");
		StepElement_Array1OfCurveElementEndReleasePacket(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		StepElement_Array1OfCurveElementEndReleasePacket(const Handle_StepElement_CurveElementEndReleasePacket &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Handle_StepElement_CurveElementEndReleasePacket &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const StepElement_Array1OfCurveElementEndReleasePacket & Assign(const StepElement_Array1OfCurveElementEndReleasePacket &Other);
		%feature("autodoc", "1");
		const StepElement_Array1OfCurveElementEndReleasePacket & operator=(const StepElement_Array1OfCurveElementEndReleasePacket &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_StepElement_CurveElementEndReleasePacket &Value);
		%feature("autodoc", "1");
		const Handle_StepElement_CurveElementEndReleasePacket & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_StepElement_CurveElementEndReleasePacket & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_StepElement_CurveElementEndReleasePacket & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_StepElement_CurveElementEndReleasePacket & operator()(const Standard_Integer Index);

};
%feature("shadow") StepElement_Array1OfCurveElementEndReleasePacket::~StepElement_Array1OfCurveElementEndReleasePacket %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepElement_Array1OfCurveElementEndReleasePacket {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepElement_ElementMaterial;
class StepElement_ElementMaterial : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepElement_ElementMaterial();
		%feature("autodoc", "1");
		void Init(const Handle_TCollection_HAsciiString &aMaterialId, const Handle_TCollection_HAsciiString &aDescription, const Handle_StepRepr_HArray1OfMaterialPropertyRepresentation &aProperties);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString MaterialId() const;
		%feature("autodoc", "1");
		void SetMaterialId(const Handle_TCollection_HAsciiString &MaterialId);
		%feature("autodoc", "1");
		Handle_TCollection_HAsciiString Description() const;
		%feature("autodoc", "1");
		void SetDescription(const Handle_TCollection_HAsciiString &Description);
		%feature("autodoc", "1");
		Handle_StepRepr_HArray1OfMaterialPropertyRepresentation Properties() const;
		%feature("autodoc", "1");
		void SetProperties(const Handle_StepRepr_HArray1OfMaterialPropertyRepresentation &Properties);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepElement_ElementMaterial {
	Handle_StepElement_ElementMaterial GetHandle() {
	return *(Handle_StepElement_ElementMaterial*) &$self;
	}
};
%extend StepElement_ElementMaterial {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") StepElement_ElementMaterial::~StepElement_ElementMaterial %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepElement_ElementMaterial {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor StepElement_CurveElementEndReleasePacket;
class StepElement_CurveElementEndReleasePacket : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		StepElement_CurveElementEndReleasePacket();
		%feature("autodoc", "1");
		void Init(const StepElement_CurveElementFreedom &aReleaseFreedom, const Standard_Real aReleaseStiffness);
		%feature("autodoc", "1");
		StepElement_CurveElementFreedom ReleaseFreedom() const;
		%feature("autodoc", "1");
		void SetReleaseFreedom(const StepElement_CurveElementFreedom &ReleaseFreedom);
		%feature("autodoc", "1");
		Standard_Real ReleaseStiffness() const;
		%feature("autodoc", "1");
		void SetReleaseStiffness(const Standard_Real ReleaseStiffness);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend StepElement_CurveElementEndReleasePacket {
	Handle_StepElement_CurveElementEndReleasePacket GetHandle() {
	return *(Handle_StepElement_CurveElementEndReleasePacket*) &$self;
	}
};
%extend StepElement_CurveElementEndReleasePacket {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") StepElement_CurveElementEndReleasePacket::~StepElement_CurveElementEndReleasePacket %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend StepElement_CurveElementEndReleasePacket {
	void _kill_pointed() {
		delete $self;
	}
};
