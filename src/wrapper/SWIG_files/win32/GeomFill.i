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

%module GeomFill
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include GeomFill_renames.i


%include GeomFill_required_python_modules.i


%include GeomFill_dependencies.i


%include GeomFill_headers.i


enum GeomFill_Trihedron {
	GeomFill_IsCorrectedFrenet,
	GeomFill_IsFixed,
	GeomFill_IsFrenet,
	GeomFill_IsConstantNormal,
	GeomFill_IsDarboux,
	GeomFill_IsGuideAC,
	GeomFill_IsGuidePlan,
	GeomFill_IsGuideACWithContact,
	GeomFill_IsGuidePlanWithContact,
	};

enum GeomFill_ApproxStyle {
	GeomFill_Section,
	GeomFill_Location,
	};

enum GeomFill_FillingStyle {
	GeomFill_StretchStyle,
	GeomFill_CoonsStyle,
	GeomFill_CurvedStyle,
	};

enum GeomFill_PipeError {
	GeomFill_PipeOk,
	GeomFill_PipeNotOk,
	GeomFill_PlaneNotIntersectGuide,
	GeomFill_ImpossibleContact,
	};



%nodefaultctor Handle_GeomFill_TrihedronLaw;
class Handle_GeomFill_TrihedronLaw : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_GeomFill_TrihedronLaw();
		%feature("autodoc", "1");
		Handle_GeomFill_TrihedronLaw(const Handle_GeomFill_TrihedronLaw &aHandle);
		%feature("autodoc", "1");
		Handle_GeomFill_TrihedronLaw(const GeomFill_TrihedronLaw *anItem);
		%feature("autodoc", "1");
		Handle_GeomFill_TrihedronLaw & operator=(const Handle_GeomFill_TrihedronLaw &aHandle);
		%feature("autodoc", "1");
		Handle_GeomFill_TrihedronLaw & operator=(const GeomFill_TrihedronLaw *anItem);
		%feature("autodoc", "1");
		static		Handle_GeomFill_TrihedronLaw DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GeomFill_TrihedronLaw {
	GeomFill_TrihedronLaw* GetObject() {
	return (GeomFill_TrihedronLaw*)$self->Access();
	}
};
%feature("shadow") Handle_GeomFill_TrihedronLaw::~Handle_GeomFill_TrihedronLaw %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GeomFill_TrihedronLaw {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GeomFill_TrihedronWithGuide;
class Handle_GeomFill_TrihedronWithGuide : public Handle_GeomFill_TrihedronLaw {
	public:
		%feature("autodoc", "1");
		Handle_GeomFill_TrihedronWithGuide();
		%feature("autodoc", "1");
		Handle_GeomFill_TrihedronWithGuide(const Handle_GeomFill_TrihedronWithGuide &aHandle);
		%feature("autodoc", "1");
		Handle_GeomFill_TrihedronWithGuide(const GeomFill_TrihedronWithGuide *anItem);
		%feature("autodoc", "1");
		Handle_GeomFill_TrihedronWithGuide & operator=(const Handle_GeomFill_TrihedronWithGuide &aHandle);
		%feature("autodoc", "1");
		Handle_GeomFill_TrihedronWithGuide & operator=(const GeomFill_TrihedronWithGuide *anItem);
		%feature("autodoc", "1");
		static		Handle_GeomFill_TrihedronWithGuide DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GeomFill_TrihedronWithGuide {
	GeomFill_TrihedronWithGuide* GetObject() {
	return (GeomFill_TrihedronWithGuide*)$self->Access();
	}
};
%feature("shadow") Handle_GeomFill_TrihedronWithGuide::~Handle_GeomFill_TrihedronWithGuide %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GeomFill_TrihedronWithGuide {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GeomFill_GuideTrihedronAC;
class Handle_GeomFill_GuideTrihedronAC : public Handle_GeomFill_TrihedronWithGuide {
	public:
		%feature("autodoc", "1");
		Handle_GeomFill_GuideTrihedronAC();
		%feature("autodoc", "1");
		Handle_GeomFill_GuideTrihedronAC(const Handle_GeomFill_GuideTrihedronAC &aHandle);
		%feature("autodoc", "1");
		Handle_GeomFill_GuideTrihedronAC(const GeomFill_GuideTrihedronAC *anItem);
		%feature("autodoc", "1");
		Handle_GeomFill_GuideTrihedronAC & operator=(const Handle_GeomFill_GuideTrihedronAC &aHandle);
		%feature("autodoc", "1");
		Handle_GeomFill_GuideTrihedronAC & operator=(const GeomFill_GuideTrihedronAC *anItem);
		%feature("autodoc", "1");
		static		Handle_GeomFill_GuideTrihedronAC DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GeomFill_GuideTrihedronAC {
	GeomFill_GuideTrihedronAC* GetObject() {
	return (GeomFill_GuideTrihedronAC*)$self->Access();
	}
};
%feature("shadow") Handle_GeomFill_GuideTrihedronAC::~Handle_GeomFill_GuideTrihedronAC %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GeomFill_GuideTrihedronAC {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GeomFill_CircularBlendFunc;
class Handle_GeomFill_CircularBlendFunc : public Handle_Approx_SweepFunction {
	public:
		%feature("autodoc", "1");
		Handle_GeomFill_CircularBlendFunc();
		%feature("autodoc", "1");
		Handle_GeomFill_CircularBlendFunc(const Handle_GeomFill_CircularBlendFunc &aHandle);
		%feature("autodoc", "1");
		Handle_GeomFill_CircularBlendFunc(const GeomFill_CircularBlendFunc *anItem);
		%feature("autodoc", "1");
		Handle_GeomFill_CircularBlendFunc & operator=(const Handle_GeomFill_CircularBlendFunc &aHandle);
		%feature("autodoc", "1");
		Handle_GeomFill_CircularBlendFunc & operator=(const GeomFill_CircularBlendFunc *anItem);
		%feature("autodoc", "1");
		static		Handle_GeomFill_CircularBlendFunc DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GeomFill_CircularBlendFunc {
	GeomFill_CircularBlendFunc* GetObject() {
	return (GeomFill_CircularBlendFunc*)$self->Access();
	}
};
%feature("shadow") Handle_GeomFill_CircularBlendFunc::~Handle_GeomFill_CircularBlendFunc %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GeomFill_CircularBlendFunc {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GeomFill_CoonsAlgPatch;
class Handle_GeomFill_CoonsAlgPatch : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_GeomFill_CoonsAlgPatch();
		%feature("autodoc", "1");
		Handle_GeomFill_CoonsAlgPatch(const Handle_GeomFill_CoonsAlgPatch &aHandle);
		%feature("autodoc", "1");
		Handle_GeomFill_CoonsAlgPatch(const GeomFill_CoonsAlgPatch *anItem);
		%feature("autodoc", "1");
		Handle_GeomFill_CoonsAlgPatch & operator=(const Handle_GeomFill_CoonsAlgPatch &aHandle);
		%feature("autodoc", "1");
		Handle_GeomFill_CoonsAlgPatch & operator=(const GeomFill_CoonsAlgPatch *anItem);
		%feature("autodoc", "1");
		static		Handle_GeomFill_CoonsAlgPatch DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GeomFill_CoonsAlgPatch {
	GeomFill_CoonsAlgPatch* GetObject() {
	return (GeomFill_CoonsAlgPatch*)$self->Access();
	}
};
%feature("shadow") Handle_GeomFill_CoonsAlgPatch::~Handle_GeomFill_CoonsAlgPatch %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GeomFill_CoonsAlgPatch {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GeomFill_HArray1OfLocationLaw;
class Handle_GeomFill_HArray1OfLocationLaw : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_GeomFill_HArray1OfLocationLaw();
		%feature("autodoc", "1");
		Handle_GeomFill_HArray1OfLocationLaw(const Handle_GeomFill_HArray1OfLocationLaw &aHandle);
		%feature("autodoc", "1");
		Handle_GeomFill_HArray1OfLocationLaw(const GeomFill_HArray1OfLocationLaw *anItem);
		%feature("autodoc", "1");
		Handle_GeomFill_HArray1OfLocationLaw & operator=(const Handle_GeomFill_HArray1OfLocationLaw &aHandle);
		%feature("autodoc", "1");
		Handle_GeomFill_HArray1OfLocationLaw & operator=(const GeomFill_HArray1OfLocationLaw *anItem);
		%feature("autodoc", "1");
		static		Handle_GeomFill_HArray1OfLocationLaw DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GeomFill_HArray1OfLocationLaw {
	GeomFill_HArray1OfLocationLaw* GetObject() {
	return (GeomFill_HArray1OfLocationLaw*)$self->Access();
	}
};
%feature("shadow") Handle_GeomFill_HArray1OfLocationLaw::~Handle_GeomFill_HArray1OfLocationLaw %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GeomFill_HArray1OfLocationLaw {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GeomFill_GuideTrihedronPlan;
class Handle_GeomFill_GuideTrihedronPlan : public Handle_GeomFill_TrihedronWithGuide {
	public:
		%feature("autodoc", "1");
		Handle_GeomFill_GuideTrihedronPlan();
		%feature("autodoc", "1");
		Handle_GeomFill_GuideTrihedronPlan(const Handle_GeomFill_GuideTrihedronPlan &aHandle);
		%feature("autodoc", "1");
		Handle_GeomFill_GuideTrihedronPlan(const GeomFill_GuideTrihedronPlan *anItem);
		%feature("autodoc", "1");
		Handle_GeomFill_GuideTrihedronPlan & operator=(const Handle_GeomFill_GuideTrihedronPlan &aHandle);
		%feature("autodoc", "1");
		Handle_GeomFill_GuideTrihedronPlan & operator=(const GeomFill_GuideTrihedronPlan *anItem);
		%feature("autodoc", "1");
		static		Handle_GeomFill_GuideTrihedronPlan DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GeomFill_GuideTrihedronPlan {
	GeomFill_GuideTrihedronPlan* GetObject() {
	return (GeomFill_GuideTrihedronPlan*)$self->Access();
	}
};
%feature("shadow") Handle_GeomFill_GuideTrihedronPlan::~Handle_GeomFill_GuideTrihedronPlan %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GeomFill_GuideTrihedronPlan {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GeomFill_LocationLaw;
class Handle_GeomFill_LocationLaw : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_GeomFill_LocationLaw();
		%feature("autodoc", "1");
		Handle_GeomFill_LocationLaw(const Handle_GeomFill_LocationLaw &aHandle);
		%feature("autodoc", "1");
		Handle_GeomFill_LocationLaw(const GeomFill_LocationLaw *anItem);
		%feature("autodoc", "1");
		Handle_GeomFill_LocationLaw & operator=(const Handle_GeomFill_LocationLaw &aHandle);
		%feature("autodoc", "1");
		Handle_GeomFill_LocationLaw & operator=(const GeomFill_LocationLaw *anItem);
		%feature("autodoc", "1");
		static		Handle_GeomFill_LocationLaw DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GeomFill_LocationLaw {
	GeomFill_LocationLaw* GetObject() {
	return (GeomFill_LocationLaw*)$self->Access();
	}
};
%feature("shadow") Handle_GeomFill_LocationLaw::~Handle_GeomFill_LocationLaw %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GeomFill_LocationLaw {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GeomFill_CurveAndTrihedron;
class Handle_GeomFill_CurveAndTrihedron : public Handle_GeomFill_LocationLaw {
	public:
		%feature("autodoc", "1");
		Handle_GeomFill_CurveAndTrihedron();
		%feature("autodoc", "1");
		Handle_GeomFill_CurveAndTrihedron(const Handle_GeomFill_CurveAndTrihedron &aHandle);
		%feature("autodoc", "1");
		Handle_GeomFill_CurveAndTrihedron(const GeomFill_CurveAndTrihedron *anItem);
		%feature("autodoc", "1");
		Handle_GeomFill_CurveAndTrihedron & operator=(const Handle_GeomFill_CurveAndTrihedron &aHandle);
		%feature("autodoc", "1");
		Handle_GeomFill_CurveAndTrihedron & operator=(const GeomFill_CurveAndTrihedron *anItem);
		%feature("autodoc", "1");
		static		Handle_GeomFill_CurveAndTrihedron DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GeomFill_CurveAndTrihedron {
	GeomFill_CurveAndTrihedron* GetObject() {
	return (GeomFill_CurveAndTrihedron*)$self->Access();
	}
};
%feature("shadow") Handle_GeomFill_CurveAndTrihedron::~Handle_GeomFill_CurveAndTrihedron %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GeomFill_CurveAndTrihedron {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GeomFill_LocationDraft;
class Handle_GeomFill_LocationDraft : public Handle_GeomFill_LocationLaw {
	public:
		%feature("autodoc", "1");
		Handle_GeomFill_LocationDraft();
		%feature("autodoc", "1");
		Handle_GeomFill_LocationDraft(const Handle_GeomFill_LocationDraft &aHandle);
		%feature("autodoc", "1");
		Handle_GeomFill_LocationDraft(const GeomFill_LocationDraft *anItem);
		%feature("autodoc", "1");
		Handle_GeomFill_LocationDraft & operator=(const Handle_GeomFill_LocationDraft &aHandle);
		%feature("autodoc", "1");
		Handle_GeomFill_LocationDraft & operator=(const GeomFill_LocationDraft *anItem);
		%feature("autodoc", "1");
		static		Handle_GeomFill_LocationDraft DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GeomFill_LocationDraft {
	GeomFill_LocationDraft* GetObject() {
	return (GeomFill_LocationDraft*)$self->Access();
	}
};
%feature("shadow") Handle_GeomFill_LocationDraft::~Handle_GeomFill_LocationDraft %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GeomFill_LocationDraft {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GeomFill_Boundary;
class Handle_GeomFill_Boundary : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_GeomFill_Boundary();
		%feature("autodoc", "1");
		Handle_GeomFill_Boundary(const Handle_GeomFill_Boundary &aHandle);
		%feature("autodoc", "1");
		Handle_GeomFill_Boundary(const GeomFill_Boundary *anItem);
		%feature("autodoc", "1");
		Handle_GeomFill_Boundary & operator=(const Handle_GeomFill_Boundary &aHandle);
		%feature("autodoc", "1");
		Handle_GeomFill_Boundary & operator=(const GeomFill_Boundary *anItem);
		%feature("autodoc", "1");
		static		Handle_GeomFill_Boundary DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GeomFill_Boundary {
	GeomFill_Boundary* GetObject() {
	return (GeomFill_Boundary*)$self->Access();
	}
};
%feature("shadow") Handle_GeomFill_Boundary::~Handle_GeomFill_Boundary %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GeomFill_Boundary {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GeomFill_BoundWithSurf;
class Handle_GeomFill_BoundWithSurf : public Handle_GeomFill_Boundary {
	public:
		%feature("autodoc", "1");
		Handle_GeomFill_BoundWithSurf();
		%feature("autodoc", "1");
		Handle_GeomFill_BoundWithSurf(const Handle_GeomFill_BoundWithSurf &aHandle);
		%feature("autodoc", "1");
		Handle_GeomFill_BoundWithSurf(const GeomFill_BoundWithSurf *anItem);
		%feature("autodoc", "1");
		Handle_GeomFill_BoundWithSurf & operator=(const Handle_GeomFill_BoundWithSurf &aHandle);
		%feature("autodoc", "1");
		Handle_GeomFill_BoundWithSurf & operator=(const GeomFill_BoundWithSurf *anItem);
		%feature("autodoc", "1");
		static		Handle_GeomFill_BoundWithSurf DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GeomFill_BoundWithSurf {
	GeomFill_BoundWithSurf* GetObject() {
	return (GeomFill_BoundWithSurf*)$self->Access();
	}
};
%feature("shadow") Handle_GeomFill_BoundWithSurf::~Handle_GeomFill_BoundWithSurf %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GeomFill_BoundWithSurf {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GeomFill_Fixed;
class Handle_GeomFill_Fixed : public Handle_GeomFill_TrihedronLaw {
	public:
		%feature("autodoc", "1");
		Handle_GeomFill_Fixed();
		%feature("autodoc", "1");
		Handle_GeomFill_Fixed(const Handle_GeomFill_Fixed &aHandle);
		%feature("autodoc", "1");
		Handle_GeomFill_Fixed(const GeomFill_Fixed *anItem);
		%feature("autodoc", "1");
		Handle_GeomFill_Fixed & operator=(const Handle_GeomFill_Fixed &aHandle);
		%feature("autodoc", "1");
		Handle_GeomFill_Fixed & operator=(const GeomFill_Fixed *anItem);
		%feature("autodoc", "1");
		static		Handle_GeomFill_Fixed DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GeomFill_Fixed {
	GeomFill_Fixed* GetObject() {
	return (GeomFill_Fixed*)$self->Access();
	}
};
%feature("shadow") Handle_GeomFill_Fixed::~Handle_GeomFill_Fixed %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GeomFill_Fixed {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GeomFill_Line;
class Handle_GeomFill_Line : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_GeomFill_Line();
		%feature("autodoc", "1");
		Handle_GeomFill_Line(const Handle_GeomFill_Line &aHandle);
		%feature("autodoc", "1");
		Handle_GeomFill_Line(const GeomFill_Line *anItem);
		%feature("autodoc", "1");
		Handle_GeomFill_Line & operator=(const Handle_GeomFill_Line &aHandle);
		%feature("autodoc", "1");
		Handle_GeomFill_Line & operator=(const GeomFill_Line *anItem);
		%feature("autodoc", "1");
		static		Handle_GeomFill_Line DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GeomFill_Line {
	GeomFill_Line* GetObject() {
	return (GeomFill_Line*)$self->Access();
	}
};
%feature("shadow") Handle_GeomFill_Line::~Handle_GeomFill_Line %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GeomFill_Line {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GeomFill_TgtField;
class Handle_GeomFill_TgtField : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_GeomFill_TgtField();
		%feature("autodoc", "1");
		Handle_GeomFill_TgtField(const Handle_GeomFill_TgtField &aHandle);
		%feature("autodoc", "1");
		Handle_GeomFill_TgtField(const GeomFill_TgtField *anItem);
		%feature("autodoc", "1");
		Handle_GeomFill_TgtField & operator=(const Handle_GeomFill_TgtField &aHandle);
		%feature("autodoc", "1");
		Handle_GeomFill_TgtField & operator=(const GeomFill_TgtField *anItem);
		%feature("autodoc", "1");
		static		Handle_GeomFill_TgtField DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GeomFill_TgtField {
	GeomFill_TgtField* GetObject() {
	return (GeomFill_TgtField*)$self->Access();
	}
};
%feature("shadow") Handle_GeomFill_TgtField::~Handle_GeomFill_TgtField %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GeomFill_TgtField {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GeomFill_Frenet;
class Handle_GeomFill_Frenet : public Handle_GeomFill_TrihedronLaw {
	public:
		%feature("autodoc", "1");
		Handle_GeomFill_Frenet();
		%feature("autodoc", "1");
		Handle_GeomFill_Frenet(const Handle_GeomFill_Frenet &aHandle);
		%feature("autodoc", "1");
		Handle_GeomFill_Frenet(const GeomFill_Frenet *anItem);
		%feature("autodoc", "1");
		Handle_GeomFill_Frenet & operator=(const Handle_GeomFill_Frenet &aHandle);
		%feature("autodoc", "1");
		Handle_GeomFill_Frenet & operator=(const GeomFill_Frenet *anItem);
		%feature("autodoc", "1");
		static		Handle_GeomFill_Frenet DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GeomFill_Frenet {
	GeomFill_Frenet* GetObject() {
	return (GeomFill_Frenet*)$self->Access();
	}
};
%feature("shadow") Handle_GeomFill_Frenet::~Handle_GeomFill_Frenet %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GeomFill_Frenet {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GeomFill_Darboux;
class Handle_GeomFill_Darboux : public Handle_GeomFill_TrihedronLaw {
	public:
		%feature("autodoc", "1");
		Handle_GeomFill_Darboux();
		%feature("autodoc", "1");
		Handle_GeomFill_Darboux(const Handle_GeomFill_Darboux &aHandle);
		%feature("autodoc", "1");
		Handle_GeomFill_Darboux(const GeomFill_Darboux *anItem);
		%feature("autodoc", "1");
		Handle_GeomFill_Darboux & operator=(const Handle_GeomFill_Darboux &aHandle);
		%feature("autodoc", "1");
		Handle_GeomFill_Darboux & operator=(const GeomFill_Darboux *anItem);
		%feature("autodoc", "1");
		static		Handle_GeomFill_Darboux DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GeomFill_Darboux {
	GeomFill_Darboux* GetObject() {
	return (GeomFill_Darboux*)$self->Access();
	}
};
%feature("shadow") Handle_GeomFill_Darboux::~Handle_GeomFill_Darboux %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GeomFill_Darboux {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GeomFill_ConstantBiNormal;
class Handle_GeomFill_ConstantBiNormal : public Handle_GeomFill_TrihedronLaw {
	public:
		%feature("autodoc", "1");
		Handle_GeomFill_ConstantBiNormal();
		%feature("autodoc", "1");
		Handle_GeomFill_ConstantBiNormal(const Handle_GeomFill_ConstantBiNormal &aHandle);
		%feature("autodoc", "1");
		Handle_GeomFill_ConstantBiNormal(const GeomFill_ConstantBiNormal *anItem);
		%feature("autodoc", "1");
		Handle_GeomFill_ConstantBiNormal & operator=(const Handle_GeomFill_ConstantBiNormal &aHandle);
		%feature("autodoc", "1");
		Handle_GeomFill_ConstantBiNormal & operator=(const GeomFill_ConstantBiNormal *anItem);
		%feature("autodoc", "1");
		static		Handle_GeomFill_ConstantBiNormal DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GeomFill_ConstantBiNormal {
	GeomFill_ConstantBiNormal* GetObject() {
	return (GeomFill_ConstantBiNormal*)$self->Access();
	}
};
%feature("shadow") Handle_GeomFill_ConstantBiNormal::~Handle_GeomFill_ConstantBiNormal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GeomFill_ConstantBiNormal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GeomFill_CorrectedFrenet;
class Handle_GeomFill_CorrectedFrenet : public Handle_GeomFill_TrihedronLaw {
	public:
		%feature("autodoc", "1");
		Handle_GeomFill_CorrectedFrenet();
		%feature("autodoc", "1");
		Handle_GeomFill_CorrectedFrenet(const Handle_GeomFill_CorrectedFrenet &aHandle);
		%feature("autodoc", "1");
		Handle_GeomFill_CorrectedFrenet(const GeomFill_CorrectedFrenet *anItem);
		%feature("autodoc", "1");
		Handle_GeomFill_CorrectedFrenet & operator=(const Handle_GeomFill_CorrectedFrenet &aHandle);
		%feature("autodoc", "1");
		Handle_GeomFill_CorrectedFrenet & operator=(const GeomFill_CorrectedFrenet *anItem);
		%feature("autodoc", "1");
		static		Handle_GeomFill_CorrectedFrenet DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GeomFill_CorrectedFrenet {
	GeomFill_CorrectedFrenet* GetObject() {
	return (GeomFill_CorrectedFrenet*)$self->Access();
	}
};
%feature("shadow") Handle_GeomFill_CorrectedFrenet::~Handle_GeomFill_CorrectedFrenet %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GeomFill_CorrectedFrenet {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GeomFill_SimpleBound;
class Handle_GeomFill_SimpleBound : public Handle_GeomFill_Boundary {
	public:
		%feature("autodoc", "1");
		Handle_GeomFill_SimpleBound();
		%feature("autodoc", "1");
		Handle_GeomFill_SimpleBound(const Handle_GeomFill_SimpleBound &aHandle);
		%feature("autodoc", "1");
		Handle_GeomFill_SimpleBound(const GeomFill_SimpleBound *anItem);
		%feature("autodoc", "1");
		Handle_GeomFill_SimpleBound & operator=(const Handle_GeomFill_SimpleBound &aHandle);
		%feature("autodoc", "1");
		Handle_GeomFill_SimpleBound & operator=(const GeomFill_SimpleBound *anItem);
		%feature("autodoc", "1");
		static		Handle_GeomFill_SimpleBound DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GeomFill_SimpleBound {
	GeomFill_SimpleBound* GetObject() {
	return (GeomFill_SimpleBound*)$self->Access();
	}
};
%feature("shadow") Handle_GeomFill_SimpleBound::~Handle_GeomFill_SimpleBound %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GeomFill_SimpleBound {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GeomFill_TgtOnCoons;
class Handle_GeomFill_TgtOnCoons : public Handle_GeomFill_TgtField {
	public:
		%feature("autodoc", "1");
		Handle_GeomFill_TgtOnCoons();
		%feature("autodoc", "1");
		Handle_GeomFill_TgtOnCoons(const Handle_GeomFill_TgtOnCoons &aHandle);
		%feature("autodoc", "1");
		Handle_GeomFill_TgtOnCoons(const GeomFill_TgtOnCoons *anItem);
		%feature("autodoc", "1");
		Handle_GeomFill_TgtOnCoons & operator=(const Handle_GeomFill_TgtOnCoons &aHandle);
		%feature("autodoc", "1");
		Handle_GeomFill_TgtOnCoons & operator=(const GeomFill_TgtOnCoons *anItem);
		%feature("autodoc", "1");
		static		Handle_GeomFill_TgtOnCoons DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GeomFill_TgtOnCoons {
	GeomFill_TgtOnCoons* GetObject() {
	return (GeomFill_TgtOnCoons*)$self->Access();
	}
};
%feature("shadow") Handle_GeomFill_TgtOnCoons::~Handle_GeomFill_TgtOnCoons %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GeomFill_TgtOnCoons {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GeomFill_HArray1OfSectionLaw;
class Handle_GeomFill_HArray1OfSectionLaw : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_GeomFill_HArray1OfSectionLaw();
		%feature("autodoc", "1");
		Handle_GeomFill_HArray1OfSectionLaw(const Handle_GeomFill_HArray1OfSectionLaw &aHandle);
		%feature("autodoc", "1");
		Handle_GeomFill_HArray1OfSectionLaw(const GeomFill_HArray1OfSectionLaw *anItem);
		%feature("autodoc", "1");
		Handle_GeomFill_HArray1OfSectionLaw & operator=(const Handle_GeomFill_HArray1OfSectionLaw &aHandle);
		%feature("autodoc", "1");
		Handle_GeomFill_HArray1OfSectionLaw & operator=(const GeomFill_HArray1OfSectionLaw *anItem);
		%feature("autodoc", "1");
		static		Handle_GeomFill_HArray1OfSectionLaw DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GeomFill_HArray1OfSectionLaw {
	GeomFill_HArray1OfSectionLaw* GetObject() {
	return (GeomFill_HArray1OfSectionLaw*)$self->Access();
	}
};
%feature("shadow") Handle_GeomFill_HArray1OfSectionLaw::~Handle_GeomFill_HArray1OfSectionLaw %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GeomFill_HArray1OfSectionLaw {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GeomFill_SectionLaw;
class Handle_GeomFill_SectionLaw : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_GeomFill_SectionLaw();
		%feature("autodoc", "1");
		Handle_GeomFill_SectionLaw(const Handle_GeomFill_SectionLaw &aHandle);
		%feature("autodoc", "1");
		Handle_GeomFill_SectionLaw(const GeomFill_SectionLaw *anItem);
		%feature("autodoc", "1");
		Handle_GeomFill_SectionLaw & operator=(const Handle_GeomFill_SectionLaw &aHandle);
		%feature("autodoc", "1");
		Handle_GeomFill_SectionLaw & operator=(const GeomFill_SectionLaw *anItem);
		%feature("autodoc", "1");
		static		Handle_GeomFill_SectionLaw DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GeomFill_SectionLaw {
	GeomFill_SectionLaw* GetObject() {
	return (GeomFill_SectionLaw*)$self->Access();
	}
};
%feature("shadow") Handle_GeomFill_SectionLaw::~Handle_GeomFill_SectionLaw %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GeomFill_SectionLaw {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GeomFill_NSections;
class Handle_GeomFill_NSections : public Handle_GeomFill_SectionLaw {
	public:
		%feature("autodoc", "1");
		Handle_GeomFill_NSections();
		%feature("autodoc", "1");
		Handle_GeomFill_NSections(const Handle_GeomFill_NSections &aHandle);
		%feature("autodoc", "1");
		Handle_GeomFill_NSections(const GeomFill_NSections *anItem);
		%feature("autodoc", "1");
		Handle_GeomFill_NSections & operator=(const Handle_GeomFill_NSections &aHandle);
		%feature("autodoc", "1");
		Handle_GeomFill_NSections & operator=(const GeomFill_NSections *anItem);
		%feature("autodoc", "1");
		static		Handle_GeomFill_NSections DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GeomFill_NSections {
	GeomFill_NSections* GetObject() {
	return (GeomFill_NSections*)$self->Access();
	}
};
%feature("shadow") Handle_GeomFill_NSections::~Handle_GeomFill_NSections %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GeomFill_NSections {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GeomFill_UniformSection;
class Handle_GeomFill_UniformSection : public Handle_GeomFill_SectionLaw {
	public:
		%feature("autodoc", "1");
		Handle_GeomFill_UniformSection();
		%feature("autodoc", "1");
		Handle_GeomFill_UniformSection(const Handle_GeomFill_UniformSection &aHandle);
		%feature("autodoc", "1");
		Handle_GeomFill_UniformSection(const GeomFill_UniformSection *anItem);
		%feature("autodoc", "1");
		Handle_GeomFill_UniformSection & operator=(const Handle_GeomFill_UniformSection &aHandle);
		%feature("autodoc", "1");
		Handle_GeomFill_UniformSection & operator=(const GeomFill_UniformSection *anItem);
		%feature("autodoc", "1");
		static		Handle_GeomFill_UniformSection DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GeomFill_UniformSection {
	GeomFill_UniformSection* GetObject() {
	return (GeomFill_UniformSection*)$self->Access();
	}
};
%feature("shadow") Handle_GeomFill_UniformSection::~Handle_GeomFill_UniformSection %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GeomFill_UniformSection {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GeomFill_SequenceNodeOfSequenceOfTrsf;
class Handle_GeomFill_SequenceNodeOfSequenceOfTrsf : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_GeomFill_SequenceNodeOfSequenceOfTrsf();
		%feature("autodoc", "1");
		Handle_GeomFill_SequenceNodeOfSequenceOfTrsf(const Handle_GeomFill_SequenceNodeOfSequenceOfTrsf &aHandle);
		%feature("autodoc", "1");
		Handle_GeomFill_SequenceNodeOfSequenceOfTrsf(const GeomFill_SequenceNodeOfSequenceOfTrsf *anItem);
		%feature("autodoc", "1");
		Handle_GeomFill_SequenceNodeOfSequenceOfTrsf & operator=(const Handle_GeomFill_SequenceNodeOfSequenceOfTrsf &aHandle);
		%feature("autodoc", "1");
		Handle_GeomFill_SequenceNodeOfSequenceOfTrsf & operator=(const GeomFill_SequenceNodeOfSequenceOfTrsf *anItem);
		%feature("autodoc", "1");
		static		Handle_GeomFill_SequenceNodeOfSequenceOfTrsf DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GeomFill_SequenceNodeOfSequenceOfTrsf {
	GeomFill_SequenceNodeOfSequenceOfTrsf* GetObject() {
	return (GeomFill_SequenceNodeOfSequenceOfTrsf*)$self->Access();
	}
};
%feature("shadow") Handle_GeomFill_SequenceNodeOfSequenceOfTrsf::~Handle_GeomFill_SequenceNodeOfSequenceOfTrsf %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GeomFill_SequenceNodeOfSequenceOfTrsf {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GeomFill_DegeneratedBound;
class Handle_GeomFill_DegeneratedBound : public Handle_GeomFill_Boundary {
	public:
		%feature("autodoc", "1");
		Handle_GeomFill_DegeneratedBound();
		%feature("autodoc", "1");
		Handle_GeomFill_DegeneratedBound(const Handle_GeomFill_DegeneratedBound &aHandle);
		%feature("autodoc", "1");
		Handle_GeomFill_DegeneratedBound(const GeomFill_DegeneratedBound *anItem);
		%feature("autodoc", "1");
		Handle_GeomFill_DegeneratedBound & operator=(const Handle_GeomFill_DegeneratedBound &aHandle);
		%feature("autodoc", "1");
		Handle_GeomFill_DegeneratedBound & operator=(const GeomFill_DegeneratedBound *anItem);
		%feature("autodoc", "1");
		static		Handle_GeomFill_DegeneratedBound DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GeomFill_DegeneratedBound {
	GeomFill_DegeneratedBound* GetObject() {
	return (GeomFill_DegeneratedBound*)$self->Access();
	}
};
%feature("shadow") Handle_GeomFill_DegeneratedBound::~Handle_GeomFill_DegeneratedBound %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GeomFill_DegeneratedBound {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GeomFill_EvolvedSection;
class Handle_GeomFill_EvolvedSection : public Handle_GeomFill_SectionLaw {
	public:
		%feature("autodoc", "1");
		Handle_GeomFill_EvolvedSection();
		%feature("autodoc", "1");
		Handle_GeomFill_EvolvedSection(const Handle_GeomFill_EvolvedSection &aHandle);
		%feature("autodoc", "1");
		Handle_GeomFill_EvolvedSection(const GeomFill_EvolvedSection *anItem);
		%feature("autodoc", "1");
		Handle_GeomFill_EvolvedSection & operator=(const Handle_GeomFill_EvolvedSection &aHandle);
		%feature("autodoc", "1");
		Handle_GeomFill_EvolvedSection & operator=(const GeomFill_EvolvedSection *anItem);
		%feature("autodoc", "1");
		static		Handle_GeomFill_EvolvedSection DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GeomFill_EvolvedSection {
	GeomFill_EvolvedSection* GetObject() {
	return (GeomFill_EvolvedSection*)$self->Access();
	}
};
%feature("shadow") Handle_GeomFill_EvolvedSection::~Handle_GeomFill_EvolvedSection %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GeomFill_EvolvedSection {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GeomFill_DraftTrihedron;
class Handle_GeomFill_DraftTrihedron : public Handle_GeomFill_TrihedronLaw {
	public:
		%feature("autodoc", "1");
		Handle_GeomFill_DraftTrihedron();
		%feature("autodoc", "1");
		Handle_GeomFill_DraftTrihedron(const Handle_GeomFill_DraftTrihedron &aHandle);
		%feature("autodoc", "1");
		Handle_GeomFill_DraftTrihedron(const GeomFill_DraftTrihedron *anItem);
		%feature("autodoc", "1");
		Handle_GeomFill_DraftTrihedron & operator=(const Handle_GeomFill_DraftTrihedron &aHandle);
		%feature("autodoc", "1");
		Handle_GeomFill_DraftTrihedron & operator=(const GeomFill_DraftTrihedron *anItem);
		%feature("autodoc", "1");
		static		Handle_GeomFill_DraftTrihedron DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GeomFill_DraftTrihedron {
	GeomFill_DraftTrihedron* GetObject() {
	return (GeomFill_DraftTrihedron*)$self->Access();
	}
};
%feature("shadow") Handle_GeomFill_DraftTrihedron::~Handle_GeomFill_DraftTrihedron %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GeomFill_DraftTrihedron {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GeomFill_SweepFunction;
class Handle_GeomFill_SweepFunction : public Handle_Approx_SweepFunction {
	public:
		%feature("autodoc", "1");
		Handle_GeomFill_SweepFunction();
		%feature("autodoc", "1");
		Handle_GeomFill_SweepFunction(const Handle_GeomFill_SweepFunction &aHandle);
		%feature("autodoc", "1");
		Handle_GeomFill_SweepFunction(const GeomFill_SweepFunction *anItem);
		%feature("autodoc", "1");
		Handle_GeomFill_SweepFunction & operator=(const Handle_GeomFill_SweepFunction &aHandle);
		%feature("autodoc", "1");
		Handle_GeomFill_SweepFunction & operator=(const GeomFill_SweepFunction *anItem);
		%feature("autodoc", "1");
		static		Handle_GeomFill_SweepFunction DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GeomFill_SweepFunction {
	GeomFill_SweepFunction* GetObject() {
	return (GeomFill_SweepFunction*)$self->Access();
	}
};
%feature("shadow") Handle_GeomFill_SweepFunction::~Handle_GeomFill_SweepFunction %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GeomFill_SweepFunction {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_GeomFill_LocationGuide;
class Handle_GeomFill_LocationGuide : public Handle_GeomFill_LocationLaw {
	public:
		%feature("autodoc", "1");
		Handle_GeomFill_LocationGuide();
		%feature("autodoc", "1");
		Handle_GeomFill_LocationGuide(const Handle_GeomFill_LocationGuide &aHandle);
		%feature("autodoc", "1");
		Handle_GeomFill_LocationGuide(const GeomFill_LocationGuide *anItem);
		%feature("autodoc", "1");
		Handle_GeomFill_LocationGuide & operator=(const Handle_GeomFill_LocationGuide &aHandle);
		%feature("autodoc", "1");
		Handle_GeomFill_LocationGuide & operator=(const GeomFill_LocationGuide *anItem);
		%feature("autodoc", "1");
		static		Handle_GeomFill_LocationGuide DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_GeomFill_LocationGuide {
	GeomFill_LocationGuide* GetObject() {
	return (GeomFill_LocationGuide*)$self->Access();
	}
};
%feature("shadow") Handle_GeomFill_LocationGuide::~Handle_GeomFill_LocationGuide %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_GeomFill_LocationGuide {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomFill_TrihedronLaw;
class GeomFill_TrihedronLaw : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		virtual		void SetCurve(const Handle_Adaptor3d_HCurve &C);
		%feature("autodoc", "1");
		virtual		Handle_GeomFill_TrihedronLaw Copy() const;
		%feature("autodoc", "1");
		virtual		GeomFill_PipeError ErrorStatus() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean D0(const Standard_Real Param, gp_Vec & Tangent, gp_Vec & Normal, gp_Vec & BiNormal);
		%feature("autodoc", "1");
		virtual		Standard_Boolean D1(const Standard_Real Param, gp_Vec & Tangent, gp_Vec & DTangent, gp_Vec & Normal, gp_Vec & DNormal, gp_Vec & BiNormal, gp_Vec & DBiNormal);
		%feature("autodoc", "1");
		virtual		Standard_Boolean D2(const Standard_Real Param, gp_Vec & Tangent, gp_Vec & DTangent, gp_Vec & D2Tangent, gp_Vec & Normal, gp_Vec & DNormal, gp_Vec & D2Normal, gp_Vec & BiNormal, gp_Vec & DBiNormal, gp_Vec & D2BiNormal);
		%feature("autodoc", "1");
		virtual		Standard_Integer NbIntervals(const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		virtual		void Intervals(TColStd_Array1OfReal & T, const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		virtual		void SetInterval(const Standard_Real First, const Standard_Real Last);
		%feature("autodoc","GetInterval() -> [Standard_Real, Standard_Real]");

		void GetInterval(Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		void GetAverageLaw(gp_Vec & ATangent, gp_Vec & ANormal, gp_Vec & ABiNormal);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsConstant() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsOnlyBy3dCurve() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GeomFill_TrihedronLaw {
	Handle_GeomFill_TrihedronLaw GetHandle() {
	return *(Handle_GeomFill_TrihedronLaw*) &$self;
	}
};
%extend GeomFill_TrihedronLaw {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") GeomFill_TrihedronLaw::~GeomFill_TrihedronLaw %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomFill_TrihedronLaw {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomFill_TgtField;
class GeomFill_TgtField : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsScalable() const;
		%feature("autodoc", "1");
		virtual		void Scale(const Handle_Law_BSpline &Func);
		%feature("autodoc", "1");
		virtual		gp_Vec Value(const Standard_Real W) const;
		%feature("autodoc", "1");
		virtual		gp_Vec D1(const Standard_Real W) const;
		%feature("autodoc", "1");
		virtual		void D1(const Standard_Real W, gp_Vec & V, gp_Vec & DV) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GeomFill_TgtField {
	Handle_GeomFill_TgtField GetHandle() {
	return *(Handle_GeomFill_TgtField*) &$self;
	}
};
%extend GeomFill_TgtField {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") GeomFill_TgtField::~GeomFill_TgtField %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomFill_TgtField {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomFill_SectionPlacement;
class GeomFill_SectionPlacement {
	public:
		%feature("autodoc", "1");
		GeomFill_SectionPlacement(const Handle_GeomFill_LocationLaw &L, const Handle_Geom_Geometry &Section);
		%feature("autodoc", "1");
		void SetLocation(const Handle_GeomFill_LocationLaw &L);
		%feature("autodoc", "1");
		void Perform(const Standard_Real Tol);
		%feature("autodoc", "1");
		void Perform(const Handle_Adaptor3d_HCurve &Path, const Standard_Real Tol);
		%feature("autodoc", "1");
		void Perform(const Standard_Real ParamOnPath, const Standard_Real Tol);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Real ParameterOnPath() const;
		%feature("autodoc", "1");
		Standard_Real ParameterOnSection() const;
		%feature("autodoc", "1");
		Standard_Real Distance() const;
		%feature("autodoc", "1");
		Standard_Real Angle() const;
		%feature("autodoc", "1");
		gp_Trsf Transformation(const Standard_Boolean WithTranslation, const Standard_Boolean WithCorrection=0) const;
		%feature("autodoc", "1");
		Handle_Geom_Curve Section(const Standard_Boolean WithTranslation) const;
		%feature("autodoc", "1");
		Handle_Geom_Curve ModifiedSection(const Standard_Boolean WithTranslation) const;

};
%feature("shadow") GeomFill_SectionPlacement::~GeomFill_SectionPlacement %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomFill_SectionPlacement {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomFill_Boundary;
class GeomFill_Boundary : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		virtual		gp_Pnt Value(const Standard_Real U) const;
		%feature("autodoc", "1");
		virtual		void D1(const Standard_Real U, gp_Pnt & P, gp_Vec & V) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean HasNormals() const;
		%feature("autodoc", "1");
		virtual		gp_Vec Norm(const Standard_Real U) const;
		%feature("autodoc", "1");
		virtual		void D1Norm(const Standard_Real U, gp_Vec & N, gp_Vec & DN) const;
		%feature("autodoc", "1");
		virtual		void Reparametrize(const Standard_Real First, const Standard_Real Last, const Standard_Boolean HasDF, const Standard_Boolean HasDL, const Standard_Real DF, const Standard_Real DL, const Standard_Boolean Rev);
		%feature("autodoc", "1");
		void Points(gp_Pnt & PFirst, gp_Pnt & PLast) const;
		%feature("autodoc","Bounds() -> [Standard_Real, Standard_Real]");

		virtual		void Bounds(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsDegenerated() const;
		%feature("autodoc", "1");
		Standard_Real Tol3d() const;
		%feature("autodoc", "1");
		void Tol3d(const Standard_Real Tol);
		%feature("autodoc", "1");
		Standard_Real Tolang() const;
		%feature("autodoc", "1");
		void Tolang(const Standard_Real Tol);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GeomFill_Boundary {
	Handle_GeomFill_Boundary GetHandle() {
	return *(Handle_GeomFill_Boundary*) &$self;
	}
};
%extend GeomFill_Boundary {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") GeomFill_Boundary::~GeomFill_Boundary %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomFill_Boundary {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomFill_DegeneratedBound;
class GeomFill_DegeneratedBound : public GeomFill_Boundary {
	public:
		%feature("autodoc", "1");
		GeomFill_DegeneratedBound(const gp_Pnt Point, const Standard_Real First, const Standard_Real Last, const Standard_Real Tol3d, const Standard_Real Tolang);

};
%extend GeomFill_DegeneratedBound {
	Handle_GeomFill_DegeneratedBound GetHandle() {
	return *(Handle_GeomFill_DegeneratedBound*) &$self;
	}
};
%extend GeomFill_DegeneratedBound {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") GeomFill_DegeneratedBound::~GeomFill_DegeneratedBound %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomFill_DegeneratedBound {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomFill_TgtOnCoons;
class GeomFill_TgtOnCoons : public GeomFill_TgtField {
	public:
		%feature("autodoc", "1");
		GeomFill_TgtOnCoons(const Handle_GeomFill_CoonsAlgPatch &K, const Standard_Integer I);
		%feature("autodoc", "1");
		virtual		gp_Vec Value(const Standard_Real W) const;
		%feature("autodoc", "1");
		virtual		gp_Vec D1(const Standard_Real W) const;
		%feature("autodoc", "1");
		virtual		void D1(const Standard_Real W, gp_Vec & T, gp_Vec & DT) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GeomFill_TgtOnCoons {
	Handle_GeomFill_TgtOnCoons GetHandle() {
	return *(Handle_GeomFill_TgtOnCoons*) &$self;
	}
};
%extend GeomFill_TgtOnCoons {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") GeomFill_TgtOnCoons::~GeomFill_TgtOnCoons %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomFill_TgtOnCoons {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomFill_Frenet;
class GeomFill_Frenet : public GeomFill_TrihedronLaw {
	public:
		%feature("autodoc", "1");
		GeomFill_Frenet();
		%feature("autodoc", "1");
		virtual		Handle_GeomFill_TrihedronLaw Copy() const;
		%feature("autodoc", "1");
		void Init();
		%feature("autodoc", "1");
		virtual		void SetCurve(const Handle_Adaptor3d_HCurve &C);
		%feature("autodoc", "1");
		virtual		Standard_Boolean D0(const Standard_Real Param, gp_Vec & Tangent, gp_Vec & Normal, gp_Vec & BiNormal);
		%feature("autodoc", "1");
		virtual		Standard_Boolean D1(const Standard_Real Param, gp_Vec & Tangent, gp_Vec & DTangent, gp_Vec & Normal, gp_Vec & DNormal, gp_Vec & BiNormal, gp_Vec & DBiNormal);
		%feature("autodoc", "1");
		virtual		Standard_Boolean D2(const Standard_Real Param, gp_Vec & Tangent, gp_Vec & DTangent, gp_Vec & D2Tangent, gp_Vec & Normal, gp_Vec & DNormal, gp_Vec & D2Normal, gp_Vec & BiNormal, gp_Vec & DBiNormal, gp_Vec & D2BiNormal);
		%feature("autodoc", "1");
		virtual		Standard_Integer NbIntervals(const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		virtual		void Intervals(TColStd_Array1OfReal & T, const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		virtual		void GetAverageLaw(gp_Vec & ATangent, gp_Vec & ANormal, gp_Vec & ABiNormal);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsConstant() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsOnlyBy3dCurve() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GeomFill_Frenet {
	Handle_GeomFill_Frenet GetHandle() {
	return *(Handle_GeomFill_Frenet*) &$self;
	}
};
%extend GeomFill_Frenet {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") GeomFill_Frenet::~GeomFill_Frenet %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomFill_Frenet {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomFill_Profiler;
class GeomFill_Profiler {
	public:
		%feature("autodoc", "1");
		GeomFill_Profiler();
		%feature("autodoc", "1");
		virtual		void Delete();
		%feature("autodoc", "1");
		void AddCurve(const Handle_Geom_Curve &Curve);
		%feature("autodoc", "1");
		virtual		void Perform(const Standard_Real PTol);
		%feature("autodoc", "1");
		Standard_Integer Degree() const;
		%feature("autodoc", "1");
		Standard_Boolean IsPeriodic() const;
		%feature("autodoc", "1");
		Standard_Integer NbPoles() const;
		%feature("autodoc", "1");
		void Poles(const Standard_Integer Index, TColgp_Array1OfPnt & Poles) const;
		%feature("autodoc", "1");
		void Weights(const Standard_Integer Index, TColStd_Array1OfReal & Weights) const;
		%feature("autodoc", "1");
		Standard_Integer NbKnots() const;
		%feature("autodoc", "1");
		void KnotsAndMults(TColStd_Array1OfReal & Knots, TColStd_Array1OfInteger & Mults) const;
		%feature("autodoc", "1");
		const Handle_Geom_Curve & Curve(const Standard_Integer Index) const;

};
%feature("shadow") GeomFill_Profiler::~GeomFill_Profiler %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomFill_Profiler {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomFill_Generator;
class GeomFill_Generator : public GeomFill_Profiler {
	public:
		%feature("autodoc", "1");
		GeomFill_Generator();
		%feature("autodoc", "1");
		const Handle_Geom_Surface & Surface() const;

};
%feature("shadow") GeomFill_Generator::~GeomFill_Generator %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomFill_Generator {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomFill_CornerState;
class GeomFill_CornerState {
	public:
		%feature("autodoc", "1");
		GeomFill_CornerState();
		%feature("autodoc", "1");
		Standard_Real Gap() const;
		%feature("autodoc", "1");
		void Gap(const Standard_Real G);
		%feature("autodoc", "1");
		Standard_Real TgtAng() const;
		%feature("autodoc", "1");
		void TgtAng(const Standard_Real Ang);
		%feature("autodoc", "1");
		Standard_Boolean HasConstraint() const;
		%feature("autodoc", "1");
		void Constraint();
		%feature("autodoc", "1");
		Standard_Real NorAng() const;
		%feature("autodoc", "1");
		void NorAng(const Standard_Real Ang);
		%feature("autodoc","IsToKill() -> Standard_Real");

		Standard_Boolean IsToKill(Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		void DoKill(const Standard_Real Scal);

};
%feature("shadow") GeomFill_CornerState::~GeomFill_CornerState %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomFill_CornerState {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomFill_Darboux;
class GeomFill_Darboux : public GeomFill_TrihedronLaw {
	public:
		%feature("autodoc", "1");
		GeomFill_Darboux();
		%feature("autodoc", "1");
		virtual		Handle_GeomFill_TrihedronLaw Copy() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean D0(const Standard_Real Param, gp_Vec & Tangent, gp_Vec & Normal, gp_Vec & BiNormal);
		%feature("autodoc", "1");
		virtual		Standard_Boolean D1(const Standard_Real Param, gp_Vec & Tangent, gp_Vec & DTangent, gp_Vec & Normal, gp_Vec & DNormal, gp_Vec & BiNormal, gp_Vec & DBiNormal);
		%feature("autodoc", "1");
		virtual		Standard_Boolean D2(const Standard_Real Param, gp_Vec & Tangent, gp_Vec & DTangent, gp_Vec & D2Tangent, gp_Vec & Normal, gp_Vec & DNormal, gp_Vec & D2Normal, gp_Vec & BiNormal, gp_Vec & DBiNormal, gp_Vec & D2BiNormal);
		%feature("autodoc", "1");
		virtual		Standard_Integer NbIntervals(const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		virtual		void Intervals(TColStd_Array1OfReal & T, const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		virtual		void GetAverageLaw(gp_Vec & ATangent, gp_Vec & ANormal, gp_Vec & ABiNormal);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsConstant() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsOnlyBy3dCurve() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GeomFill_Darboux {
	Handle_GeomFill_Darboux GetHandle() {
	return *(Handle_GeomFill_Darboux*) &$self;
	}
};
%extend GeomFill_Darboux {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") GeomFill_Darboux::~GeomFill_Darboux %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomFill_Darboux {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomFill_Array1OfSectionLaw;
class GeomFill_Array1OfSectionLaw {
	public:
		%feature("autodoc", "1");
		GeomFill_Array1OfSectionLaw(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		GeomFill_Array1OfSectionLaw(const Handle_GeomFill_SectionLaw &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Handle_GeomFill_SectionLaw &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const GeomFill_Array1OfSectionLaw & Assign(const GeomFill_Array1OfSectionLaw &Other);
		%feature("autodoc", "1");
		const GeomFill_Array1OfSectionLaw & operator=(const GeomFill_Array1OfSectionLaw &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_GeomFill_SectionLaw &Value);
		%feature("autodoc", "1");
		const Handle_GeomFill_SectionLaw & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_GeomFill_SectionLaw & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_GeomFill_SectionLaw & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_GeomFill_SectionLaw & operator()(const Standard_Integer Index);

};
%feature("shadow") GeomFill_Array1OfSectionLaw::~GeomFill_Array1OfSectionLaw %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomFill_Array1OfSectionLaw {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomFill_PlanFunc;
class GeomFill_PlanFunc : public math_FunctionWithDerivative {
	public:
		%feature("autodoc", "1");
		GeomFill_PlanFunc(const gp_Pnt P, const gp_Vec V, const Handle_Adaptor3d_HCurve &C);
		%feature("autodoc","Value(Standard_Real X) -> Standard_Real");

		virtual		Standard_Boolean Value(const Standard_Real X, Standard_Real &OutValue);
		%feature("autodoc","Derivative(Standard_Real X) -> Standard_Real");

		virtual		Standard_Boolean Derivative(const Standard_Real X, Standard_Real &OutValue);
		%feature("autodoc","Values(Standard_Real X) -> [Standard_Real, Standard_Real]");

		virtual		Standard_Boolean Values(const Standard_Real X, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc","D2(Standard_Real X) -> [Standard_Real, Standard_Real, Standard_Real]");

		void D2(const Standard_Real X, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc","DEDT(Standard_Real X, const DP, const DV) -> Standard_Real");

		void DEDT(const Standard_Real X, const gp_Vec DP, const gp_Vec DV, Standard_Real &OutValue);
		%feature("autodoc","D2E(Standard_Real X, const DP, const D2P, const DV, const D2V) -> [Standard_Real, Standard_Real, Standard_Real]");

		void D2E(const Standard_Real X, const gp_Vec DP, const gp_Vec D2P, const gp_Vec DV, const gp_Vec D2V, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);

};
%feature("shadow") GeomFill_PlanFunc::~GeomFill_PlanFunc %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomFill_PlanFunc {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomFill_CoonsAlgPatch;
class GeomFill_CoonsAlgPatch : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		GeomFill_CoonsAlgPatch(const Handle_GeomFill_Boundary &B1, const Handle_GeomFill_Boundary &B2, const Handle_GeomFill_Boundary &B3, const Handle_GeomFill_Boundary &B4);
		%feature("autodoc", "1");
		void Func(Handle_Law_Function & f1, Handle_Law_Function & f2) const;
		%feature("autodoc", "1");
		void SetFunc(const Handle_Law_Function &f1, const Handle_Law_Function &f2);
		%feature("autodoc", "1");
		gp_Pnt Value(const Standard_Real U, const Standard_Real V) const;
		%feature("autodoc", "1");
		gp_Vec D1U(const Standard_Real U, const Standard_Real V) const;
		%feature("autodoc", "1");
		gp_Vec D1V(const Standard_Real U, const Standard_Real V) const;
		%feature("autodoc", "1");
		gp_Vec DUV(const Standard_Real U, const Standard_Real V) const;
		%feature("autodoc", "1");
		const gp_Pnt  Corner(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const Handle_GeomFill_Boundary & Bound(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const Handle_Law_Function & Func(const Standard_Integer I) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GeomFill_CoonsAlgPatch {
	Handle_GeomFill_CoonsAlgPatch GetHandle() {
	return *(Handle_GeomFill_CoonsAlgPatch*) &$self;
	}
};
%extend GeomFill_CoonsAlgPatch {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") GeomFill_CoonsAlgPatch::~GeomFill_CoonsAlgPatch %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomFill_CoonsAlgPatch {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomFill_ConstantBiNormal;
class GeomFill_ConstantBiNormal : public GeomFill_TrihedronLaw {
	public:
		%feature("autodoc", "1");
		GeomFill_ConstantBiNormal(const gp_Dir BiNormal);
		%feature("autodoc", "1");
		virtual		Handle_GeomFill_TrihedronLaw Copy() const;
		%feature("autodoc", "1");
		virtual		void SetCurve(const Handle_Adaptor3d_HCurve &C);
		%feature("autodoc", "1");
		virtual		Standard_Boolean D0(const Standard_Real Param, gp_Vec & Tangent, gp_Vec & Normal, gp_Vec & BiNormal);
		%feature("autodoc", "1");
		virtual		Standard_Boolean D1(const Standard_Real Param, gp_Vec & Tangent, gp_Vec & DTangent, gp_Vec & Normal, gp_Vec & DNormal, gp_Vec & BiNormal, gp_Vec & DBiNormal);
		%feature("autodoc", "1");
		virtual		Standard_Boolean D2(const Standard_Real Param, gp_Vec & Tangent, gp_Vec & DTangent, gp_Vec & D2Tangent, gp_Vec & Normal, gp_Vec & DNormal, gp_Vec & D2Normal, gp_Vec & BiNormal, gp_Vec & DBiNormal, gp_Vec & D2BiNormal);
		%feature("autodoc", "1");
		virtual		Standard_Integer NbIntervals(const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		virtual		void Intervals(TColStd_Array1OfReal & T, const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		virtual		void GetAverageLaw(gp_Vec & ATangent, gp_Vec & ANormal, gp_Vec & ABiNormal);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsConstant() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsOnlyBy3dCurve() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GeomFill_ConstantBiNormal {
	Handle_GeomFill_ConstantBiNormal GetHandle() {
	return *(Handle_GeomFill_ConstantBiNormal*) &$self;
	}
};
%extend GeomFill_ConstantBiNormal {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") GeomFill_ConstantBiNormal::~GeomFill_ConstantBiNormal %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomFill_ConstantBiNormal {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomFill_FunctionDraft;
class GeomFill_FunctionDraft : public math_FunctionSetWithDerivatives {
	public:
		%feature("autodoc", "1");
		GeomFill_FunctionDraft(const Handle_Adaptor3d_HSurface &S, const Handle_Adaptor3d_HCurve &C);
		%feature("autodoc", "1");
		virtual		Standard_Integer NbVariables() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbEquations() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Value(const math_Vector &X, math_Vector & F);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Derivatives(const math_Vector &X, math_Matrix & D);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Values(const math_Vector &X, math_Vector & F, math_Matrix & D);
		%feature("autodoc", "1");
		Standard_Boolean DerivT(const Handle_Adaptor3d_HCurve &C, const Standard_Real Param, const Standard_Real W, const gp_Vec dN, const Standard_Real teta, math_Vector & F);
		%feature("autodoc", "1");
		Standard_Boolean Deriv2T(const Handle_Adaptor3d_HCurve &C, const Standard_Real Param, const Standard_Real W, const gp_Vec d2N, const Standard_Real teta, math_Vector & F);
		%feature("autodoc", "1");
		Standard_Boolean DerivTX(const gp_Vec dN, const Standard_Real teta, math_Matrix & D);
		%feature("autodoc", "1");
		Standard_Boolean Deriv2X(const math_Vector &X, GeomFill_Tensor & T);

};
%feature("shadow") GeomFill_FunctionDraft::~GeomFill_FunctionDraft %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomFill_FunctionDraft {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomFill_LocationLaw;
class GeomFill_LocationLaw : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		virtual		void SetCurve(const Handle_Adaptor3d_HCurve &C);
		%feature("autodoc", "1");
		virtual		const Handle_Adaptor3d_HCurve & GetCurve() const;
		%feature("autodoc", "1");
		virtual		void SetTrsf(const gp_Mat Transfo);
		%feature("autodoc", "1");
		virtual		Handle_GeomFill_LocationLaw Copy() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean D0(const Standard_Real Param, gp_Mat & M, gp_Vec & V);
		%feature("autodoc", "1");
		virtual		Standard_Boolean D0(const Standard_Real Param, gp_Mat & M, gp_Vec & V, TColgp_Array1OfPnt2d & Poles2d);
		%feature("autodoc", "1");
		virtual		Standard_Boolean D1(const Standard_Real Param, gp_Mat & M, gp_Vec & V, gp_Mat & DM, gp_Vec & DV, TColgp_Array1OfPnt2d & Poles2d, TColgp_Array1OfVec2d & DPoles2d);
		%feature("autodoc", "1");
		virtual		Standard_Boolean D2(const Standard_Real Param, gp_Mat & M, gp_Vec & V, gp_Mat & DM, gp_Vec & DV, gp_Mat & D2M, gp_Vec & D2V, TColgp_Array1OfPnt2d & Poles2d, TColgp_Array1OfVec2d & DPoles2d, TColgp_Array1OfVec2d & D2Poles2d);
		%feature("autodoc", "1");
		Standard_Integer Nb2dCurves() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean HasFirstRestriction() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean HasLastRestriction() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer TraceNumber() const;
		%feature("autodoc", "1");
		virtual		GeomFill_PipeError ErrorStatus() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbIntervals(const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		virtual		void Intervals(TColStd_Array1OfReal & T, const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		virtual		void SetInterval(const Standard_Real First, const Standard_Real Last);
		%feature("autodoc","GetInterval() -> [Standard_Real, Standard_Real]");

		virtual		void GetInterval(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","GetDomain() -> [Standard_Real, Standard_Real]");

		virtual		void GetDomain(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","Resolution(Standard_Integer Index, Standard_Real Tol) -> [Standard_Real, Standard_Real]");

		virtual		void Resolution(const Standard_Integer Index, const Standard_Real Tol, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		virtual		void SetTolerance(const Standard_Real Tol3d, const Standard_Real Tol2d);
		%feature("autodoc", "1");
		virtual		Standard_Real GetMaximalNorm();
		%feature("autodoc", "1");
		virtual		void GetAverageLaw(gp_Mat & AM, gp_Vec & AV);
		%feature("autodoc","IsTranslation() -> Standard_Real");

		virtual		Standard_Boolean IsTranslation(Standard_Real &OutValue) const;
		%feature("autodoc","IsRotation() -> Standard_Real");

		virtual		Standard_Boolean IsRotation(Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		virtual		void Rotation(gp_Pnt & Center) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GeomFill_LocationLaw {
	Handle_GeomFill_LocationLaw GetHandle() {
	return *(Handle_GeomFill_LocationLaw*) &$self;
	}
};
%extend GeomFill_LocationLaw {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") GeomFill_LocationLaw::~GeomFill_LocationLaw %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomFill_LocationLaw {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomFill_LocationDraft;
class GeomFill_LocationDraft : public GeomFill_LocationLaw {
	public:
		%feature("autodoc", "1");
		GeomFill_LocationDraft(const gp_Dir Direction, const Standard_Real Angle);
		%feature("autodoc", "1");
		void SetStopSurf(const Handle_Adaptor3d_HSurface &Surf);
		%feature("autodoc", "1");
		void SetAngle(const Standard_Real Angle);
		%feature("autodoc", "1");
		Standard_Boolean IsIntersec() const;
		%feature("autodoc", "1");
		gp_Dir Direction() const;

};
%extend GeomFill_LocationDraft {
	Handle_GeomFill_LocationDraft GetHandle() {
	return *(Handle_GeomFill_LocationDraft*) &$self;
	}
};
%extend GeomFill_LocationDraft {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") GeomFill_LocationDraft::~GeomFill_LocationDraft %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomFill_LocationDraft {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomFill_Filling;
class GeomFill_Filling {
	public:
		%feature("autodoc", "1");
		GeomFill_Filling();
		%feature("autodoc", "1");
		Standard_Integer NbUPoles() const;
		%feature("autodoc", "1");
		Standard_Integer NbVPoles() const;
		%feature("autodoc", "1");
		void Poles(TColgp_Array2OfPnt & Poles) const;
		%feature("autodoc", "1");
		Standard_Boolean isRational() const;
		%feature("autodoc", "1");
		void Weights(TColStd_Array2OfReal & Weights) const;

};
%feature("shadow") GeomFill_Filling::~GeomFill_Filling %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomFill_Filling {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomFill_Pipe;
class GeomFill_Pipe {
	public:
		%feature("autodoc", "1");
		GeomFill_Pipe();
		%feature("autodoc", "1");
		GeomFill_Pipe(const Handle_Geom_Curve &Path, const Standard_Real Radius);
		%feature("autodoc", "1");
		GeomFill_Pipe(const Handle_Geom_Curve &Path, const Handle_Geom_Curve &FirstSect, const GeomFill_Trihedron Option=GeomFill_IsCorrectedFrenet);
		%feature("autodoc", "1");
		GeomFill_Pipe(const Handle_Geom2d_Curve &Path, const Handle_Geom_Surface &Support, const Handle_Geom_Curve &FirstSect);
		%feature("autodoc", "1");
		GeomFill_Pipe(const Handle_Geom_Curve &Path, const Handle_Geom_Curve &FirstSect, const gp_Dir Dir);
		%feature("autodoc", "1");
		GeomFill_Pipe(const Handle_Geom_Curve &Path, const Handle_Geom_Curve &FirstSect, const Handle_Geom_Curve &LastSect);
		%feature("autodoc", "1");
		GeomFill_Pipe(const Handle_Geom_Curve &Path, const TColGeom_SequenceOfCurve &NSections);
		%feature("autodoc", "1");
		GeomFill_Pipe(const Handle_Geom_Curve &Path, const Handle_Geom_Curve &Curve1, const Handle_Geom_Curve &Curve2, const Standard_Real Radius);
		%feature("autodoc", "1");
		GeomFill_Pipe(const Handle_Adaptor3d_HCurve &Path, const Handle_Adaptor3d_HCurve &Curve1, const Handle_Adaptor3d_HCurve &Curve2, const Standard_Real Radius);
		%feature("autodoc", "1");
		GeomFill_Pipe(const Handle_Geom_Curve &Path, const Handle_Adaptor3d_HCurve &Guide, const Handle_Geom_Curve &FirstSect, const Standard_Boolean ByACR, const Standard_Boolean rotat);
		%feature("autodoc", "1");
		void Init(const Handle_Geom_Curve &Path, const Standard_Real Radius);
		%feature("autodoc", "1");
		void Init(const Handle_Geom_Curve &Path, const Handle_Geom_Curve &FirstSect, const GeomFill_Trihedron Option=GeomFill_IsCorrectedFrenet);
		%feature("autodoc", "1");
		void Init(const Handle_Geom2d_Curve &Path, const Handle_Geom_Surface &Support, const Handle_Geom_Curve &FirstSect);
		%feature("autodoc", "1");
		void Init(const Handle_Geom_Curve &Path, const Handle_Geom_Curve &FirstSect, const gp_Dir Dir);
		%feature("autodoc", "1");
		void Init(const Handle_Geom_Curve &Path, const Handle_Geom_Curve &FirstSect, const Handle_Geom_Curve &LastSect);
		%feature("autodoc", "1");
		void Init(const Handle_Geom_Curve &Path, const TColGeom_SequenceOfCurve &NSections);
		%feature("autodoc", "1");
		void Init(const Handle_Adaptor3d_HCurve &Path, const Handle_Adaptor3d_HCurve &Curve1, const Handle_Adaptor3d_HCurve &Curve2, const Standard_Real Radius);
		%feature("autodoc", "1");
		void Init(const Handle_Geom_Curve &Path, const Handle_Adaptor3d_HCurve &Guide, const Handle_Geom_Curve &FirstSect, const Standard_Boolean ByACR, const Standard_Boolean rotat);
		%feature("autodoc", "1");
		void Perform(const Standard_Boolean WithParameters=0, const Standard_Boolean myPolynomial=0);
		%feature("autodoc", "1");
		void Perform(const Standard_Real Tol, const Standard_Boolean Polynomial, const GeomAbs_Shape Conti=GeomAbs_C1, const Standard_Integer MaxDegree=11, const Standard_Integer NbMaxSegment=30);
		%feature("autodoc", "1");
		const Handle_Geom_Surface & Surface() const;
		%feature("autodoc", "1");
		Standard_Boolean ExchangeUV() const;
		%feature("autodoc", "1");
		void GenerateParticularCase(const Standard_Boolean B);
		%feature("autodoc", "1");
		Standard_Boolean GenerateParticularCase() const;
		%feature("autodoc", "1");
		Standard_Real ErrorOnSurf() const;

};
%feature("shadow") GeomFill_Pipe::~GeomFill_Pipe %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomFill_Pipe {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomFill_TrihedronWithGuide;
class GeomFill_TrihedronWithGuide : public GeomFill_TrihedronLaw {
	public:
		%feature("autodoc", "1");
		virtual		Handle_Adaptor3d_HCurve Guide() const;
		%feature("autodoc", "1");
		virtual		void Origine(const Standard_Real Param1, const Standard_Real Param2);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GeomFill_TrihedronWithGuide {
	Handle_GeomFill_TrihedronWithGuide GetHandle() {
	return *(Handle_GeomFill_TrihedronWithGuide*) &$self;
	}
};
%extend GeomFill_TrihedronWithGuide {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") GeomFill_TrihedronWithGuide::~GeomFill_TrihedronWithGuide %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomFill_TrihedronWithGuide {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomFill_GuideTrihedronAC;
class GeomFill_GuideTrihedronAC : public GeomFill_TrihedronWithGuide {
	public:
		%feature("autodoc", "1");
		GeomFill_GuideTrihedronAC(const Handle_Adaptor3d_HCurve &guide);
		%feature("autodoc", "1");
		virtual		void SetCurve(const Handle_Adaptor3d_HCurve &C);
		%feature("autodoc", "1");
		virtual		Handle_GeomFill_TrihedronLaw Copy() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean D0(const Standard_Real Param, gp_Vec & Tangent, gp_Vec & Normal, gp_Vec & BiNormal);
		%feature("autodoc", "1");
		virtual		Standard_Boolean D1(const Standard_Real Param, gp_Vec & Tangent, gp_Vec & DTangent, gp_Vec & Normal, gp_Vec & DNormal, gp_Vec & BiNormal, gp_Vec & DBiNormal);
		%feature("autodoc", "1");
		virtual		Standard_Boolean D2(const Standard_Real Param, gp_Vec & Tangent, gp_Vec & DTangent, gp_Vec & D2Tangent, gp_Vec & Normal, gp_Vec & DNormal, gp_Vec & D2Normal, gp_Vec & BiNormal, gp_Vec & DBiNormal, gp_Vec & D2BiNormal);
		%feature("autodoc", "1");
		virtual		Standard_Integer NbIntervals(const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		virtual		void Intervals(TColStd_Array1OfReal & T, const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		virtual		void SetInterval(const Standard_Real First, const Standard_Real Last);
		%feature("autodoc", "1");
		virtual		void GetAverageLaw(gp_Vec & ATangent, gp_Vec & ANormal, gp_Vec & ABiNormal);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsConstant() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsOnlyBy3dCurve() const;
		%feature("autodoc", "1");
		virtual		void Origine(const Standard_Real OrACR1, const Standard_Real OrACR2);

};
%extend GeomFill_GuideTrihedronAC {
	Handle_GeomFill_GuideTrihedronAC GetHandle() {
	return *(Handle_GeomFill_GuideTrihedronAC*) &$self;
	}
};
%extend GeomFill_GuideTrihedronAC {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") GeomFill_GuideTrihedronAC::~GeomFill_GuideTrihedronAC %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomFill_GuideTrihedronAC {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomFill_SnglrFunc;
class GeomFill_SnglrFunc : public Adaptor3d_Curve {
	public:
		%feature("autodoc", "1");
		GeomFill_SnglrFunc(const Handle_Adaptor3d_HCurve &HC);
		%feature("autodoc", "1");
		void SetRatio(const Standard_Real Ratio);
		%feature("autodoc", "1");
		virtual		Standard_Real FirstParameter() const;
		%feature("autodoc", "1");
		virtual		Standard_Real LastParameter() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbIntervals(const GeomAbs_Shape S);
		%feature("autodoc", "1");
		virtual		void Intervals(TColStd_Array1OfReal & T, const GeomAbs_Shape S);
		%feature("autodoc", "1");
		virtual		gp_Pnt Value(const Standard_Real U) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsPeriodic() const;
		%feature("autodoc", "1");
		virtual		Standard_Real Period() const;
		%feature("autodoc", "1");
		virtual		void D0(const Standard_Real U, gp_Pnt & P) const;
		%feature("autodoc", "1");
		virtual		void D1(const Standard_Real U, gp_Pnt & P, gp_Vec & V) const;
		%feature("autodoc", "1");
		virtual		void D2(const Standard_Real U, gp_Pnt & P, gp_Vec & V1, gp_Vec & V2) const;
		%feature("autodoc", "1");
		virtual		Standard_Real Resolution(const Standard_Real R3d) const;
		%feature("autodoc", "1");
		virtual		GeomAbs_CurveType GetType() const;

};
%feature("shadow") GeomFill_SnglrFunc::~GeomFill_SnglrFunc %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomFill_SnglrFunc {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomFill_PolynomialConvertor;
class GeomFill_PolynomialConvertor {
	public:
		%feature("autodoc", "1");
		GeomFill_PolynomialConvertor();
		%feature("autodoc", "1");
		Standard_Boolean Initialized() const;
		%feature("autodoc", "1");
		void Init();
		%feature("autodoc", "1");
		void Section(const gp_Pnt FirstPnt, const gp_Pnt Center, const gp_Vec Dir, const Standard_Real Angle, TColgp_Array1OfPnt & Poles) const;
		%feature("autodoc", "1");
		void Section(const gp_Pnt FirstPnt, const gp_Vec DFirstPnt, const gp_Pnt Center, const gp_Vec DCenter, const gp_Vec Dir, const gp_Vec DDir, const Standard_Real Angle, const Standard_Real DAngle, TColgp_Array1OfPnt & Poles, TColgp_Array1OfVec & DPoles) const;
		%feature("autodoc", "1");
		void Section(const gp_Pnt FirstPnt, const gp_Vec DFirstPnt, const gp_Vec D2FirstPnt, const gp_Pnt Center, const gp_Vec DCenter, const gp_Vec D2Center, const gp_Vec Dir, const gp_Vec DDir, const gp_Vec D2Dir, const Standard_Real Angle, const Standard_Real DAngle, const Standard_Real D2Angle, TColgp_Array1OfPnt & Poles, TColgp_Array1OfVec & DPoles, TColgp_Array1OfVec & D2Poles) const;

};
%feature("shadow") GeomFill_PolynomialConvertor::~GeomFill_PolynomialConvertor %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomFill_PolynomialConvertor {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomFill_CircularBlendFunc;
class GeomFill_CircularBlendFunc : public Approx_SweepFunction {
	public:
		%feature("autodoc", "1");
		GeomFill_CircularBlendFunc(const Handle_Adaptor3d_HCurve &Path, const Handle_Adaptor3d_HCurve &Curve1, const Handle_Adaptor3d_HCurve &Curve2, const Standard_Real Radius, const Standard_Boolean Polynomial=0);
		%feature("autodoc", "1");
		virtual		Standard_Boolean D0(const Standard_Real Param, const Standard_Real First, const Standard_Real Last, TColgp_Array1OfPnt & Poles, TColgp_Array1OfPnt2d & Poles2d, TColStd_Array1OfReal & Weigths);
		%feature("autodoc", "1");
		virtual		Standard_Boolean D1(const Standard_Real Param, const Standard_Real First, const Standard_Real Last, TColgp_Array1OfPnt & Poles, TColgp_Array1OfVec & DPoles, TColgp_Array1OfPnt2d & Poles2d, TColgp_Array1OfVec2d & DPoles2d, TColStd_Array1OfReal & Weigths, TColStd_Array1OfReal & DWeigths);
		%feature("autodoc", "1");
		virtual		Standard_Boolean D2(const Standard_Real Param, const Standard_Real First, const Standard_Real Last, TColgp_Array1OfPnt & Poles, TColgp_Array1OfVec & DPoles, TColgp_Array1OfVec & D2Poles, TColgp_Array1OfPnt2d & Poles2d, TColgp_Array1OfVec2d & DPoles2d, TColgp_Array1OfVec2d & D2Poles2d, TColStd_Array1OfReal & Weigths, TColStd_Array1OfReal & DWeigths, TColStd_Array1OfReal & D2Weigths);
		%feature("autodoc", "1");
		virtual		Standard_Integer Nb2dCurves() const;
		%feature("autodoc","SectionShape() -> [Standard_Integer, Standard_Integer, Standard_Integer]");

		virtual		void SectionShape(Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		virtual		void Knots(TColStd_Array1OfReal & TKnots) const;
		%feature("autodoc", "1");
		virtual		void Mults(TColStd_Array1OfInteger & TMults) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsRational() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbIntervals(const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		virtual		void Intervals(TColStd_Array1OfReal & T, const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		virtual		void SetInterval(const Standard_Real First, const Standard_Real Last);
		%feature("autodoc", "1");
		virtual		void GetTolerance(const Standard_Real BoundTol, const Standard_Real SurfTol, const Standard_Real AngleTol, TColStd_Array1OfReal & Tol3d) const;
		%feature("autodoc", "1");
		virtual		void SetTolerance(const Standard_Real Tol3d, const Standard_Real Tol2d);
		%feature("autodoc", "1");
		virtual		gp_Pnt BarycentreOfSurf() const;
		%feature("autodoc", "1");
		virtual		Standard_Real MaximalSection() const;
		%feature("autodoc", "1");
		virtual		void GetMinimalWeight(TColStd_Array1OfReal & Weigths) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GeomFill_CircularBlendFunc {
	Handle_GeomFill_CircularBlendFunc GetHandle() {
	return *(Handle_GeomFill_CircularBlendFunc*) &$self;
	}
};
%extend GeomFill_CircularBlendFunc {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") GeomFill_CircularBlendFunc::~GeomFill_CircularBlendFunc %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomFill_CircularBlendFunc {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomFill_SectionLaw;
class GeomFill_SectionLaw : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		virtual		Standard_Boolean D0(const Standard_Real Param, TColgp_Array1OfPnt & Poles, TColStd_Array1OfReal & Weigths);
		%feature("autodoc", "1");
		virtual		Standard_Boolean D1(const Standard_Real Param, TColgp_Array1OfPnt & Poles, TColgp_Array1OfVec & DPoles, TColStd_Array1OfReal & Weigths, TColStd_Array1OfReal & DWeigths);
		%feature("autodoc", "1");
		virtual		Standard_Boolean D2(const Standard_Real Param, TColgp_Array1OfPnt & Poles, TColgp_Array1OfVec & DPoles, TColgp_Array1OfVec & D2Poles, TColStd_Array1OfReal & Weigths, TColStd_Array1OfReal & DWeigths, TColStd_Array1OfReal & D2Weigths);
		%feature("autodoc", "1");
		virtual		Handle_Geom_BSplineSurface BSplineSurface() const;
		%feature("autodoc","SectionShape() -> [Standard_Integer, Standard_Integer, Standard_Integer]");

		virtual		void SectionShape(Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		virtual		void Knots(TColStd_Array1OfReal & TKnots) const;
		%feature("autodoc", "1");
		virtual		void Mults(TColStd_Array1OfInteger & TMults) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsRational() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsUPeriodic() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsVPeriodic() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbIntervals(const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		virtual		void Intervals(TColStd_Array1OfReal & T, const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		virtual		void SetInterval(const Standard_Real First, const Standard_Real Last);
		%feature("autodoc","GetInterval() -> [Standard_Real, Standard_Real]");

		virtual		void GetInterval(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","GetDomain() -> [Standard_Real, Standard_Real]");

		virtual		void GetDomain(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		virtual		void GetTolerance(const Standard_Real BoundTol, const Standard_Real SurfTol, const Standard_Real AngleTol, TColStd_Array1OfReal & Tol3d) const;
		%feature("autodoc", "1");
		virtual		void SetTolerance(const Standard_Real Tol3d, const Standard_Real Tol2d);
		%feature("autodoc", "1");
		virtual		gp_Pnt BarycentreOfSurf() const;
		%feature("autodoc", "1");
		virtual		Standard_Real MaximalSection() const;
		%feature("autodoc", "1");
		virtual		void GetMinimalWeight(TColStd_Array1OfReal & Weigths) const;
		%feature("autodoc","IsConstant() -> Standard_Real");

		virtual		Standard_Boolean IsConstant(Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		virtual		Handle_Geom_Curve ConstantSection() const;
		%feature("autodoc","IsConicalLaw() -> Standard_Real");

		virtual		Standard_Boolean IsConicalLaw(Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		virtual		Handle_Geom_Curve CirclSection(const Standard_Real Param) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GeomFill_SectionLaw {
	Handle_GeomFill_SectionLaw GetHandle() {
	return *(Handle_GeomFill_SectionLaw*) &$self;
	}
};
%extend GeomFill_SectionLaw {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") GeomFill_SectionLaw::~GeomFill_SectionLaw %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomFill_SectionLaw {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomFill_Fixed;
class GeomFill_Fixed : public GeomFill_TrihedronLaw {
	public:
		%feature("autodoc", "1");
		GeomFill_Fixed(const gp_Vec Tangent, const gp_Vec Normal);
		%feature("autodoc", "1");
		virtual		Handle_GeomFill_TrihedronLaw Copy() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean D0(const Standard_Real Param, gp_Vec & Tangent, gp_Vec & Normal, gp_Vec & BiNormal);
		%feature("autodoc", "1");
		virtual		Standard_Boolean D1(const Standard_Real Param, gp_Vec & Tangent, gp_Vec & DTangent, gp_Vec & Normal, gp_Vec & DNormal, gp_Vec & BiNormal, gp_Vec & DBiNormal);
		%feature("autodoc", "1");
		virtual		Standard_Boolean D2(const Standard_Real Param, gp_Vec & Tangent, gp_Vec & DTangent, gp_Vec & D2Tangent, gp_Vec & Normal, gp_Vec & DNormal, gp_Vec & D2Normal, gp_Vec & BiNormal, gp_Vec & DBiNormal, gp_Vec & D2BiNormal);
		%feature("autodoc", "1");
		virtual		Standard_Integer NbIntervals(const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		virtual		void Intervals(TColStd_Array1OfReal & T, const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		virtual		void GetAverageLaw(gp_Vec & ATangent, gp_Vec & ANormal, gp_Vec & ABiNormal);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsConstant() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GeomFill_Fixed {
	Handle_GeomFill_Fixed GetHandle() {
	return *(Handle_GeomFill_Fixed*) &$self;
	}
};
%extend GeomFill_Fixed {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") GeomFill_Fixed::~GeomFill_Fixed %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomFill_Fixed {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomFill_HArray1OfLocationLaw;
class GeomFill_HArray1OfLocationLaw : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		GeomFill_HArray1OfLocationLaw(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		GeomFill_HArray1OfLocationLaw(const Standard_Integer Low, const Standard_Integer Up, const Handle_GeomFill_LocationLaw &V);
		%feature("autodoc", "1");
		void Init(const Handle_GeomFill_LocationLaw &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_GeomFill_LocationLaw &Value);
		%feature("autodoc", "1");
		const Handle_GeomFill_LocationLaw & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_GeomFill_LocationLaw & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const GeomFill_Array1OfLocationLaw & Array1() const;
		%feature("autodoc", "1");
		GeomFill_Array1OfLocationLaw & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GeomFill_HArray1OfLocationLaw {
	Handle_GeomFill_HArray1OfLocationLaw GetHandle() {
	return *(Handle_GeomFill_HArray1OfLocationLaw*) &$self;
	}
};
%extend GeomFill_HArray1OfLocationLaw {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") GeomFill_HArray1OfLocationLaw::~GeomFill_HArray1OfLocationLaw %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomFill_HArray1OfLocationLaw {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomFill;
class GeomFill {
	public:
		%feature("autodoc", "1");
		GeomFill();
		%feature("autodoc", "1");
		static		Handle_Geom_Surface Surface(const Handle_Geom_Curve &Curve1, const Handle_Geom_Curve &Curve2);
		%feature("autodoc", "1");
		static		void GetCircle(const Convert_ParameterisationType TConv, const gp_Vec ns1, const gp_Vec ns2, const gp_Vec nplan, const gp_Pnt pt1, const gp_Pnt pt2, const Standard_Real Rayon, const gp_Pnt Center, TColgp_Array1OfPnt & Poles, TColStd_Array1OfReal & Weigths);
		%feature("autodoc", "1");
		static		Standard_Boolean GetCircle(const Convert_ParameterisationType TConv, const gp_Vec ns1, const gp_Vec ns2, const gp_Vec dn1w, const gp_Vec dn2w, const gp_Vec nplan, const gp_Vec dnplan, const gp_Pnt pts1, const gp_Pnt pts2, const gp_Vec tang1, const gp_Vec tang2, const Standard_Real Rayon, const Standard_Real DRayon, const gp_Pnt Center, const gp_Vec DCenter, TColgp_Array1OfPnt & Poles, TColgp_Array1OfVec & DPoles, TColStd_Array1OfReal & Weigths, TColStd_Array1OfReal & DWeigths);
		%feature("autodoc", "1");
		static		Standard_Boolean GetCircle(const Convert_ParameterisationType TConv, const gp_Vec ns1, const gp_Vec ns2, const gp_Vec dn1w, const gp_Vec dn2w, const gp_Vec d2n1w, const gp_Vec d2n2w, const gp_Vec nplan, const gp_Vec dnplan, const gp_Vec d2nplan, const gp_Pnt pts1, const gp_Pnt pts2, const gp_Vec tang1, const gp_Vec tang2, const gp_Vec Dtang1, const gp_Vec Dtang2, const Standard_Real Rayon, const Standard_Real DRayon, const Standard_Real D2Rayon, const gp_Pnt Center, const gp_Vec DCenter, const gp_Vec D2Center, TColgp_Array1OfPnt & Poles, TColgp_Array1OfVec & DPoles, TColgp_Array1OfVec & D2Poles, TColStd_Array1OfReal & Weigths, TColStd_Array1OfReal & DWeigths, TColStd_Array1OfReal & D2Weigths);
		%feature("autodoc","GetShape(Standard_Real MaxAng) -> [Standard_Integer, Standard_Integer, Standard_Integer]");

		static		void GetShape(const Standard_Real MaxAng, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue, Convert_ParameterisationType & TypeConv);
		%feature("autodoc", "1");
		static		void Knots(const Convert_ParameterisationType TypeConv, TColStd_Array1OfReal & TKnots);
		%feature("autodoc", "1");
		static		void Mults(const Convert_ParameterisationType TypeConv, TColStd_Array1OfInteger & TMults);
		%feature("autodoc", "1");
		static		void GetMinimalWeights(const Convert_ParameterisationType TConv, const Standard_Real AngleMin, const Standard_Real AngleMax, TColStd_Array1OfReal & Weigths);
		%feature("autodoc", "1");
		static		Standard_Real GetTolerance(const Convert_ParameterisationType TConv, const Standard_Real AngleMin, const Standard_Real Radius, const Standard_Real AngularTol, const Standard_Real SpatialTol);

};
%feature("shadow") GeomFill::~GeomFill %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomFill {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomFill_QuasiAngularConvertor;
class GeomFill_QuasiAngularConvertor {
	public:
		%feature("autodoc", "1");
		GeomFill_QuasiAngularConvertor();
		%feature("autodoc", "1");
		Standard_Boolean Initialized() const;
		%feature("autodoc", "1");
		void Init();
		%feature("autodoc", "1");
		void Section(const gp_Pnt FirstPnt, const gp_Pnt Center, const gp_Vec Dir, const Standard_Real Angle, TColgp_Array1OfPnt & Poles, TColStd_Array1OfReal & Weights);
		%feature("autodoc", "1");
		void Section(const gp_Pnt FirstPnt, const gp_Vec DFirstPnt, const gp_Pnt Center, const gp_Vec DCenter, const gp_Vec Dir, const gp_Vec DDir, const Standard_Real Angle, const Standard_Real DAngle, TColgp_Array1OfPnt & Poles, TColgp_Array1OfVec & DPoles, TColStd_Array1OfReal & Weights, TColStd_Array1OfReal & DWeights);
		%feature("autodoc", "1");
		void Section(const gp_Pnt FirstPnt, const gp_Vec DFirstPnt, const gp_Vec D2FirstPnt, const gp_Pnt Center, const gp_Vec DCenter, const gp_Vec D2Center, const gp_Vec Dir, const gp_Vec DDir, const gp_Vec D2Dir, const Standard_Real Angle, const Standard_Real DAngle, const Standard_Real D2Angle, TColgp_Array1OfPnt & Poles, TColgp_Array1OfVec & DPoles, TColgp_Array1OfVec & D2Poles, TColStd_Array1OfReal & Weights, TColStd_Array1OfReal & DWeights, TColStd_Array1OfReal & D2Weights);

};
%feature("shadow") GeomFill_QuasiAngularConvertor::~GeomFill_QuasiAngularConvertor %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomFill_QuasiAngularConvertor {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomFill_SweepFunction;
class GeomFill_SweepFunction : public Approx_SweepFunction {
	public:
		%feature("autodoc", "1");
		GeomFill_SweepFunction(const Handle_GeomFill_SectionLaw &Section, const Handle_GeomFill_LocationLaw &Location, const Standard_Real FirstParameter, const Standard_Real FirstParameterOnS, const Standard_Real RatioParameterOnS);
		%feature("autodoc", "1");
		virtual		Standard_Boolean D0(const Standard_Real Param, const Standard_Real First, const Standard_Real Last, TColgp_Array1OfPnt & Poles, TColgp_Array1OfPnt2d & Poles2d, TColStd_Array1OfReal & Weigths);
		%feature("autodoc", "1");
		virtual		Standard_Boolean D1(const Standard_Real Param, const Standard_Real First, const Standard_Real Last, TColgp_Array1OfPnt & Poles, TColgp_Array1OfVec & DPoles, TColgp_Array1OfPnt2d & Poles2d, TColgp_Array1OfVec2d & DPoles2d, TColStd_Array1OfReal & Weigths, TColStd_Array1OfReal & DWeigths);
		%feature("autodoc", "1");
		virtual		Standard_Boolean D2(const Standard_Real Param, const Standard_Real First, const Standard_Real Last, TColgp_Array1OfPnt & Poles, TColgp_Array1OfVec & DPoles, TColgp_Array1OfVec & D2Poles, TColgp_Array1OfPnt2d & Poles2d, TColgp_Array1OfVec2d & DPoles2d, TColgp_Array1OfVec2d & D2Poles2d, TColStd_Array1OfReal & Weigths, TColStd_Array1OfReal & DWeigths, TColStd_Array1OfReal & D2Weigths);
		%feature("autodoc", "1");
		virtual		Standard_Integer Nb2dCurves() const;
		%feature("autodoc","SectionShape() -> [Standard_Integer, Standard_Integer, Standard_Integer]");

		virtual		void SectionShape(Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		virtual		void Knots(TColStd_Array1OfReal & TKnots) const;
		%feature("autodoc", "1");
		virtual		void Mults(TColStd_Array1OfInteger & TMults) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsRational() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbIntervals(const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		virtual		void Intervals(TColStd_Array1OfReal & T, const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		virtual		void SetInterval(const Standard_Real First, const Standard_Real Last);
		%feature("autodoc","Resolution(Standard_Integer Index, Standard_Real Tol) -> [Standard_Real, Standard_Real]");

		virtual		void Resolution(const Standard_Integer Index, const Standard_Real Tol, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		virtual		void GetTolerance(const Standard_Real BoundTol, const Standard_Real SurfTol, const Standard_Real AngleTol, TColStd_Array1OfReal & Tol3d) const;
		%feature("autodoc", "1");
		virtual		void SetTolerance(const Standard_Real Tol3d, const Standard_Real Tol2d);
		%feature("autodoc", "1");
		virtual		gp_Pnt BarycentreOfSurf() const;
		%feature("autodoc", "1");
		virtual		Standard_Real MaximalSection() const;
		%feature("autodoc", "1");
		virtual		void GetMinimalWeight(TColStd_Array1OfReal & Weigths) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GeomFill_SweepFunction {
	Handle_GeomFill_SweepFunction GetHandle() {
	return *(Handle_GeomFill_SweepFunction*) &$self;
	}
};
%extend GeomFill_SweepFunction {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") GeomFill_SweepFunction::~GeomFill_SweepFunction %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomFill_SweepFunction {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomFill_ConstrainedFilling;
class GeomFill_ConstrainedFilling {
	public:
		%feature("autodoc", "1");
		GeomFill_ConstrainedFilling(const Standard_Integer MaxDeg, const Standard_Integer MaxSeg);
		%feature("autodoc", "1");
		void Init(const Handle_GeomFill_Boundary &B1, const Handle_GeomFill_Boundary &B2, const Handle_GeomFill_Boundary &B3, const Standard_Boolean NoCheck=0);
		%feature("autodoc", "1");
		void Init(const Handle_GeomFill_Boundary &B1, const Handle_GeomFill_Boundary &B2, const Handle_GeomFill_Boundary &B3, const Handle_GeomFill_Boundary &B4, const Standard_Boolean NoCheck=0);
		%feature("autodoc", "1");
		void SetDomain(const Standard_Real l, const Handle_GeomFill_BoundWithSurf &B);
		%feature("autodoc", "1");
		void ReBuild();
		%feature("autodoc", "1");
		Handle_GeomFill_Boundary Boundary(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Handle_Geom_BSplineSurface Surface() const;
		%feature("autodoc","Eval(Standard_Real W, Standard_Integer Ord) -> Standard_Real");

		Standard_Integer Eval(const Standard_Real W, const Standard_Integer Ord, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		void CheckCoonsAlgPatch(const Standard_Integer I);
		%feature("autodoc", "1");
		void CheckTgteField(const Standard_Integer I);
		%feature("autodoc", "1");
		void CheckApprox(const Standard_Integer I);
		%feature("autodoc", "1");
		void CheckResult(const Standard_Integer I);

};
%feature("shadow") GeomFill_ConstrainedFilling::~GeomFill_ConstrainedFilling %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomFill_ConstrainedFilling {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomFill_LocFunction;
class GeomFill_LocFunction {
	public:
		%feature("autodoc", "1");
		GeomFill_LocFunction(const Handle_GeomFill_LocationLaw &Law);
		%feature("autodoc", "1");
		Standard_Boolean D0(const Standard_Real Param, const Standard_Real First, const Standard_Real Last);
		%feature("autodoc", "1");
		Standard_Boolean D1(const Standard_Real Param, const Standard_Real First, const Standard_Real Last);
		%feature("autodoc", "1");
		Standard_Boolean D2(const Standard_Real Param, const Standard_Real First, const Standard_Real Last);
		%feature("autodoc","DN(Standard_Real Param, Standard_Real First, Standard_Real Last, Standard_Integer Order) -> [Standard_Real, Standard_Integer]");

		void DN(const Standard_Real Param, const Standard_Real First, const Standard_Real Last, const Standard_Integer Order, Standard_Real &OutValue, Standard_Integer &OutValue);

};
%feature("shadow") GeomFill_LocFunction::~GeomFill_LocFunction %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomFill_LocFunction {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomFill_SequenceOfTrsf;
class GeomFill_SequenceOfTrsf : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		GeomFill_SequenceOfTrsf();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const GeomFill_SequenceOfTrsf & Assign(const GeomFill_SequenceOfTrsf &Other);
		%feature("autodoc", "1");
		const GeomFill_SequenceOfTrsf & operator=(const GeomFill_SequenceOfTrsf &Other);
		%feature("autodoc", "1");
		void Append(const gp_Trsf T);
		%feature("autodoc", "1");
		void Append(GeomFill_SequenceOfTrsf & S);
		%feature("autodoc", "1");
		void Prepend(const gp_Trsf T);
		%feature("autodoc", "1");
		void Prepend(GeomFill_SequenceOfTrsf & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const gp_Trsf I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, GeomFill_SequenceOfTrsf & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const gp_Trsf T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, GeomFill_SequenceOfTrsf & S);
		%feature("autodoc", "1");
		const gp_Trsf  First() const;
		%feature("autodoc", "1");
		const gp_Trsf  Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, GeomFill_SequenceOfTrsf & S);
		%feature("autodoc", "1");
		const gp_Trsf  Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const gp_Trsf  operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const gp_Trsf I);
		%feature("autodoc", "1");
		gp_Trsf  ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		gp_Trsf  operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") GeomFill_SequenceOfTrsf::~GeomFill_SequenceOfTrsf %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomFill_SequenceOfTrsf {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomFill_AppSurf;
class GeomFill_AppSurf : public AppBlend_Approx {
	public:
		%feature("autodoc", "1");
		GeomFill_AppSurf();
		%feature("autodoc", "1");
		GeomFill_AppSurf(const Standard_Integer Degmin, const Standard_Integer Degmax, const Standard_Real Tol3d, const Standard_Real Tol2d, const Standard_Integer NbIt, const Standard_Boolean KnownParameters=0);
		%feature("autodoc", "1");
		void Init(const Standard_Integer Degmin, const Standard_Integer Degmax, const Standard_Real Tol3d, const Standard_Real Tol2d, const Standard_Integer NbIt, const Standard_Boolean KnownParameters=0);
		%feature("autodoc", "1");
		void SetParType(const Approx_ParametrizationType ParType);
		%feature("autodoc", "1");
		void SetContinuity(const GeomAbs_Shape C);
		%feature("autodoc", "1");
		void SetCriteriumWeight(const Standard_Real W1, const Standard_Real W2, const Standard_Real W3);
		%feature("autodoc", "1");
		Approx_ParametrizationType ParType() const;
		%feature("autodoc", "1");
		GeomAbs_Shape Continuity() const;
		%feature("autodoc","CriteriumWeight() -> [Standard_Real, Standard_Real, Standard_Real]");

		void CriteriumWeight(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		void Perform(const Handle_GeomFill_Line &Lin, GeomFill_SectionGenerator & SecGen, const Standard_Boolean SpApprox=0);
		%feature("autodoc", "1");
		void PerformSmoothing(const Handle_GeomFill_Line &Lin, GeomFill_SectionGenerator & SecGen);
		%feature("autodoc", "1");
		void Perform(const Handle_GeomFill_Line &Lin, GeomFill_SectionGenerator & SecGen, const Standard_Integer NbMaxP);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsDone() const;
		%feature("autodoc","SurfShape() -> [Standard_Integer, Standard_Integer, Standard_Integer, Standard_Integer, Standard_Integer, Standard_Integer]");

		virtual		void SurfShape(Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		virtual		void Surface(TColgp_Array2OfPnt & TPoles, TColStd_Array2OfReal & TWeights, TColStd_Array1OfReal & TUKnots, TColStd_Array1OfReal & TVKnots, TColStd_Array1OfInteger & TUMults, TColStd_Array1OfInteger & TVMults) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer UDegree() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer VDegree() const;
		%feature("autodoc", "1");
		virtual		const TColgp_Array2OfPnt & SurfPoles() const;
		%feature("autodoc", "1");
		virtual		const TColStd_Array2OfReal & SurfWeights() const;
		%feature("autodoc", "1");
		virtual		const TColStd_Array1OfReal & SurfUKnots() const;
		%feature("autodoc", "1");
		virtual		const TColStd_Array1OfReal & SurfVKnots() const;
		%feature("autodoc", "1");
		virtual		const TColStd_Array1OfInteger & SurfUMults() const;
		%feature("autodoc", "1");
		virtual		const TColStd_Array1OfInteger & SurfVMults() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbCurves2d() const;
		%feature("autodoc","Curves2dShape() -> [Standard_Integer, Standard_Integer, Standard_Integer]");

		virtual		void Curves2dShape(Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		virtual		void Curve2d(const Standard_Integer Index, TColgp_Array1OfPnt2d & TPoles, TColStd_Array1OfReal & TKnots, TColStd_Array1OfInteger & TMults) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer Curves2dDegree() const;
		%feature("autodoc", "1");
		virtual		const TColgp_Array1OfPnt2d & Curve2dPoles(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		virtual		const TColStd_Array1OfReal & Curves2dKnots() const;
		%feature("autodoc", "1");
		virtual		const TColStd_Array1OfInteger & Curves2dMults() const;
		%feature("autodoc","TolReached() -> [Standard_Real, Standard_Real]");

		virtual		void TolReached(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		virtual		Standard_Real TolCurveOnSurf(const Standard_Integer Index) const;

};
%feature("shadow") GeomFill_AppSurf::~GeomFill_AppSurf %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomFill_AppSurf {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomFill_Tensor;
class GeomFill_Tensor {
	public:
		%feature("autodoc", "1");
		GeomFill_Tensor(const Standard_Integer NbRow, const Standard_Integer NbCol, const Standard_Integer NbMat);
		%feature("autodoc", "1");
		void Init(const Standard_Real InitialValue);
		%feature("autodoc", "1");
		const Standard_Real & Value(const Standard_Integer Row, const Standard_Integer Col, const Standard_Integer Mat) const;
		%feature("autodoc", "1");
		const Standard_Real & operator()(const Standard_Integer Row, const Standard_Integer Col, const Standard_Integer Mat) const;
		%feature("autodoc","1");
		%extend {
				Standard_Real GetChangeValue(const Standard_Integer Row, const Standard_Integer Col, const Standard_Integer Mat) {
				return (Standard_Real) $self->ChangeValue(Row,Col,Mat);
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetChangeValue(Standard_Real value ,const Standard_Integer Row, const Standard_Integer Col, const Standard_Integer Mat) {
				$self->ChangeValue(Row,Col,Mat)=value;
				}
		};
		%feature("autodoc", "1");
		Standard_Real & operator()(const Standard_Integer Row, const Standard_Integer Col, const Standard_Integer Mat);
		%feature("autodoc", "1");
		void Multiply(const math_Vector &Right, math_Matrix & Product) const;

};
%feature("shadow") GeomFill_Tensor::~GeomFill_Tensor %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomFill_Tensor {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomFill_UniformSection;
class GeomFill_UniformSection : public GeomFill_SectionLaw {
	public:
		%feature("autodoc", "1");
		GeomFill_UniformSection(const Handle_Geom_Curve &C, const Standard_Real FirstParameter=0.0, const Standard_Real LastParameter=1.0e+0);
		%feature("autodoc", "1");
		virtual		Standard_Boolean D0(const Standard_Real Param, TColgp_Array1OfPnt & Poles, TColStd_Array1OfReal & Weigths);
		%feature("autodoc", "1");
		virtual		Standard_Boolean D1(const Standard_Real Param, TColgp_Array1OfPnt & Poles, TColgp_Array1OfVec & DPoles, TColStd_Array1OfReal & Weigths, TColStd_Array1OfReal & DWeigths);
		%feature("autodoc", "1");
		virtual		Standard_Boolean D2(const Standard_Real Param, TColgp_Array1OfPnt & Poles, TColgp_Array1OfVec & DPoles, TColgp_Array1OfVec & D2Poles, TColStd_Array1OfReal & Weigths, TColStd_Array1OfReal & DWeigths, TColStd_Array1OfReal & D2Weigths);
		%feature("autodoc", "1");
		virtual		Handle_Geom_BSplineSurface BSplineSurface() const;
		%feature("autodoc","SectionShape() -> [Standard_Integer, Standard_Integer, Standard_Integer]");

		virtual		void SectionShape(Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		virtual		void Knots(TColStd_Array1OfReal & TKnots) const;
		%feature("autodoc", "1");
		virtual		void Mults(TColStd_Array1OfInteger & TMults) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsRational() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsUPeriodic() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsVPeriodic() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbIntervals(const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		virtual		void Intervals(TColStd_Array1OfReal & T, const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		virtual		void SetInterval(const Standard_Real First, const Standard_Real Last);
		%feature("autodoc","GetInterval() -> [Standard_Real, Standard_Real]");

		virtual		void GetInterval(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","GetDomain() -> [Standard_Real, Standard_Real]");

		virtual		void GetDomain(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		virtual		void GetTolerance(const Standard_Real BoundTol, const Standard_Real SurfTol, const Standard_Real AngleTol, TColStd_Array1OfReal & Tol3d) const;
		%feature("autodoc", "1");
		virtual		gp_Pnt BarycentreOfSurf() const;
		%feature("autodoc", "1");
		virtual		Standard_Real MaximalSection() const;
		%feature("autodoc", "1");
		virtual		void GetMinimalWeight(TColStd_Array1OfReal & Weigths) const;
		%feature("autodoc","IsConstant() -> Standard_Real");

		virtual		Standard_Boolean IsConstant(Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		virtual		Handle_Geom_Curve ConstantSection() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GeomFill_UniformSection {
	Handle_GeomFill_UniformSection GetHandle() {
	return *(Handle_GeomFill_UniformSection*) &$self;
	}
};
%extend GeomFill_UniformSection {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") GeomFill_UniformSection::~GeomFill_UniformSection %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomFill_UniformSection {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomFill_Stretch;
class GeomFill_Stretch : public GeomFill_Filling {
	public:
		%feature("autodoc", "1");
		GeomFill_Stretch();
		%feature("autodoc", "1");
		GeomFill_Stretch(const TColgp_Array1OfPnt &P1, const TColgp_Array1OfPnt &P2, const TColgp_Array1OfPnt &P3, const TColgp_Array1OfPnt &P4);
		%feature("autodoc", "1");
		GeomFill_Stretch(const TColgp_Array1OfPnt &P1, const TColgp_Array1OfPnt &P2, const TColgp_Array1OfPnt &P3, const TColgp_Array1OfPnt &P4, const TColStd_Array1OfReal &W1, const TColStd_Array1OfReal &W2, const TColStd_Array1OfReal &W3, const TColStd_Array1OfReal &W4);
		%feature("autodoc", "1");
		void Init(const TColgp_Array1OfPnt &P1, const TColgp_Array1OfPnt &P2, const TColgp_Array1OfPnt &P3, const TColgp_Array1OfPnt &P4);
		%feature("autodoc", "1");
		void Init(const TColgp_Array1OfPnt &P1, const TColgp_Array1OfPnt &P2, const TColgp_Array1OfPnt &P3, const TColgp_Array1OfPnt &P4, const TColStd_Array1OfReal &W1, const TColStd_Array1OfReal &W2, const TColStd_Array1OfReal &W3, const TColStd_Array1OfReal &W4);

};
%feature("shadow") GeomFill_Stretch::~GeomFill_Stretch %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomFill_Stretch {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomFill_SimpleBound;
class GeomFill_SimpleBound : public GeomFill_Boundary {
	public:
		%feature("autodoc", "1");
		GeomFill_SimpleBound(const Handle_Adaptor3d_HCurve &Curve, const Standard_Real Tol3d, const Standard_Real Tolang);
		%feature("autodoc", "1");
		virtual		gp_Pnt Value(const Standard_Real U) const;
		%feature("autodoc", "1");
		virtual		void D1(const Standard_Real U, gp_Pnt & P, gp_Vec & V) const;
		%feature("autodoc", "1");
		virtual		void Reparametrize(const Standard_Real First, const Standard_Real Last, const Standard_Boolean HasDF, const Standard_Boolean HasDL, const Standard_Real DF, const Standard_Real DL, const Standard_Boolean Rev);
		%feature("autodoc","Bounds() -> [Standard_Real, Standard_Real]");

		virtual		void Bounds(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsDegenerated() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GeomFill_SimpleBound {
	Handle_GeomFill_SimpleBound GetHandle() {
	return *(Handle_GeomFill_SimpleBound*) &$self;
	}
};
%extend GeomFill_SimpleBound {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") GeomFill_SimpleBound::~GeomFill_SimpleBound %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomFill_SimpleBound {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomFill_BSplineCurves;
class GeomFill_BSplineCurves {
	public:
		%feature("autodoc", "1");
		GeomFill_BSplineCurves();
		%feature("autodoc", "1");
		GeomFill_BSplineCurves(const Handle_Geom_BSplineCurve &C1, const Handle_Geom_BSplineCurve &C2, const Handle_Geom_BSplineCurve &C3, const Handle_Geom_BSplineCurve &C4, const GeomFill_FillingStyle Type);
		%feature("autodoc", "1");
		GeomFill_BSplineCurves(const Handle_Geom_BSplineCurve &C1, const Handle_Geom_BSplineCurve &C2, const Handle_Geom_BSplineCurve &C3, const GeomFill_FillingStyle Type);
		%feature("autodoc", "1");
		GeomFill_BSplineCurves(const Handle_Geom_BSplineCurve &C1, const Handle_Geom_BSplineCurve &C2, const GeomFill_FillingStyle Type);
		%feature("autodoc", "1");
		void Init(const Handle_Geom_BSplineCurve &C1, const Handle_Geom_BSplineCurve &C2, const Handle_Geom_BSplineCurve &C3, const Handle_Geom_BSplineCurve &C4, const GeomFill_FillingStyle Type);
		%feature("autodoc", "1");
		void Init(const Handle_Geom_BSplineCurve &C1, const Handle_Geom_BSplineCurve &C2, const Handle_Geom_BSplineCurve &C3, const GeomFill_FillingStyle Type);
		%feature("autodoc", "1");
		void Init(const Handle_Geom_BSplineCurve &C1, const Handle_Geom_BSplineCurve &C2, const GeomFill_FillingStyle Type);
		%feature("autodoc", "1");
		const Handle_Geom_BSplineSurface & Surface() const;

};
%feature("shadow") GeomFill_BSplineCurves::~GeomFill_BSplineCurves %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomFill_BSplineCurves {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomFill_Sweep;
class GeomFill_Sweep {
	public:
		%feature("autodoc", "1");
		GeomFill_Sweep(const Handle_GeomFill_LocationLaw &Location, const Standard_Boolean WithKpart=1);
		%feature("autodoc", "1");
		void SetDomain(const Standard_Real First, const Standard_Real Last, const Standard_Real SectionFirst, const Standard_Real SectionLast);
		%feature("autodoc", "1");
		void SetTolerance(const Standard_Real Tol3d, const Standard_Real BoundTol=1.0e+0, const Standard_Real Tol2d=1.00000000000000008180305391403130954586231382564e-5, const Standard_Real TolAngular=1.0e+0);
		%feature("autodoc", "1");
		Standard_Boolean ExchangeUV() const;
		%feature("autodoc", "1");
		Standard_Boolean UReversed() const;
		%feature("autodoc", "1");
		Standard_Boolean VReversed() const;
		%feature("autodoc", "1");
		void Build(const Handle_GeomFill_SectionLaw &Section, const GeomFill_ApproxStyle Methode=GeomFill_Location, const GeomAbs_Shape Continuity=GeomAbs_C2, const Standard_Integer Degmax=10, const Standard_Integer Segmax=30);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Real ErrorOnSurface() const;
		%feature("autodoc","ErrorOnRestriction(Standard_Boolean IsFirst) -> [Standard_Real, Standard_Real]");

		void ErrorOnRestriction(const Standard_Boolean IsFirst, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","ErrorOnTrace(Standard_Integer IndexOfTrace) -> [Standard_Real, Standard_Real]");

		void ErrorOnTrace(const Standard_Integer IndexOfTrace, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Handle_Geom_Surface Surface() const;
		%feature("autodoc", "1");
		Handle_Geom2d_Curve Restriction(const Standard_Boolean IsFirst) const;
		%feature("autodoc", "1");
		Standard_Integer NumberOfTrace() const;
		%feature("autodoc", "1");
		Handle_Geom2d_Curve Trace(const Standard_Integer IndexOfTrace) const;

};
%feature("shadow") GeomFill_Sweep::~GeomFill_Sweep %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomFill_Sweep {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomFill_GuideTrihedronPlan;
class GeomFill_GuideTrihedronPlan : public GeomFill_TrihedronWithGuide {
	public:
		%feature("autodoc", "1");
		GeomFill_GuideTrihedronPlan(const Handle_Adaptor3d_HCurve &theGuide);
		%feature("autodoc", "1");
		virtual		void SetCurve(const Handle_Adaptor3d_HCurve &thePath);
		%feature("autodoc", "1");
		virtual		Handle_GeomFill_TrihedronLaw Copy() const;
		%feature("autodoc", "1");
		virtual		GeomFill_PipeError ErrorStatus() const;
		%feature("autodoc", "1");
		virtual		Handle_Adaptor3d_HCurve Guide() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean D0(const Standard_Real Param, gp_Vec & Tangent, gp_Vec & Normal, gp_Vec & BiNormal);
		%feature("autodoc", "1");
		virtual		Standard_Boolean D1(const Standard_Real Param, gp_Vec & Tangent, gp_Vec & DTangent, gp_Vec & Normal, gp_Vec & DNormal, gp_Vec & BiNormal, gp_Vec & DBiNormal);
		%feature("autodoc", "1");
		virtual		Standard_Boolean D2(const Standard_Real Param, gp_Vec & Tangent, gp_Vec & DTangent, gp_Vec & D2Tangent, gp_Vec & Normal, gp_Vec & DNormal, gp_Vec & D2Normal, gp_Vec & BiNormal, gp_Vec & DBiNormal, gp_Vec & D2BiNormal);
		%feature("autodoc", "1");
		virtual		void SetInterval(const Standard_Real First, const Standard_Real Last);
		%feature("autodoc", "1");
		virtual		Standard_Integer NbIntervals(const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		virtual		void Intervals(TColStd_Array1OfReal & T, const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		virtual		void GetAverageLaw(gp_Vec & ATangent, gp_Vec & ANormal, gp_Vec & ABiNormal);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsConstant() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsOnlyBy3dCurve() const;
		%feature("autodoc", "1");
		virtual		void Origine(const Standard_Real OrACR1, const Standard_Real OrACR2);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GeomFill_GuideTrihedronPlan {
	Handle_GeomFill_GuideTrihedronPlan GetHandle() {
	return *(Handle_GeomFill_GuideTrihedronPlan*) &$self;
	}
};
%extend GeomFill_GuideTrihedronPlan {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") GeomFill_GuideTrihedronPlan::~GeomFill_GuideTrihedronPlan %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomFill_GuideTrihedronPlan {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomFill_HArray1OfSectionLaw;
class GeomFill_HArray1OfSectionLaw : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		GeomFill_HArray1OfSectionLaw(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		GeomFill_HArray1OfSectionLaw(const Standard_Integer Low, const Standard_Integer Up, const Handle_GeomFill_SectionLaw &V);
		%feature("autodoc", "1");
		void Init(const Handle_GeomFill_SectionLaw &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_GeomFill_SectionLaw &Value);
		%feature("autodoc", "1");
		const Handle_GeomFill_SectionLaw & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_GeomFill_SectionLaw & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const GeomFill_Array1OfSectionLaw & Array1() const;
		%feature("autodoc", "1");
		GeomFill_Array1OfSectionLaw & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GeomFill_HArray1OfSectionLaw {
	Handle_GeomFill_HArray1OfSectionLaw GetHandle() {
	return *(Handle_GeomFill_HArray1OfSectionLaw*) &$self;
	}
};
%extend GeomFill_HArray1OfSectionLaw {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") GeomFill_HArray1OfSectionLaw::~GeomFill_HArray1OfSectionLaw %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomFill_HArray1OfSectionLaw {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomFill_SectionGenerator;
class GeomFill_SectionGenerator : public GeomFill_Profiler {
	public:
		%feature("autodoc", "1");
		GeomFill_SectionGenerator();
		%feature("autodoc", "1");
		void SetParam(const Handle_TColStd_HArray1OfReal &Params);
		%feature("autodoc","GetShape() -> [Standard_Integer, Standard_Integer, Standard_Integer, Standard_Integer]");

		void GetShape(Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		void Knots(TColStd_Array1OfReal & TKnots) const;
		%feature("autodoc", "1");
		void Mults(TColStd_Array1OfInteger & TMults) const;
		%feature("autodoc", "1");
		Standard_Boolean Section(const Standard_Integer P, TColgp_Array1OfPnt & Poles, TColgp_Array1OfVec & DPoles, TColgp_Array1OfPnt2d & Poles2d, TColgp_Array1OfVec2d & DPoles2d, TColStd_Array1OfReal & Weigths, TColStd_Array1OfReal & DWeigths) const;
		%feature("autodoc", "1");
		void Section(const Standard_Integer P, TColgp_Array1OfPnt & Poles, TColgp_Array1OfPnt2d & Poles2d, TColStd_Array1OfReal & Weigths) const;
		%feature("autodoc", "1");
		Standard_Real Parameter(const Standard_Integer P) const;

};
%feature("shadow") GeomFill_SectionGenerator::~GeomFill_SectionGenerator %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomFill_SectionGenerator {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomFill_AppSweep;
class GeomFill_AppSweep : public AppBlend_Approx {
	public:
		%feature("autodoc", "1");
		GeomFill_AppSweep();
		%feature("autodoc", "1");
		GeomFill_AppSweep(const Standard_Integer Degmin, const Standard_Integer Degmax, const Standard_Real Tol3d, const Standard_Real Tol2d, const Standard_Integer NbIt, const Standard_Boolean KnownParameters=0);
		%feature("autodoc", "1");
		void Init(const Standard_Integer Degmin, const Standard_Integer Degmax, const Standard_Real Tol3d, const Standard_Real Tol2d, const Standard_Integer NbIt, const Standard_Boolean KnownParameters=0);
		%feature("autodoc", "1");
		void SetParType(const Approx_ParametrizationType ParType);
		%feature("autodoc", "1");
		void SetContinuity(const GeomAbs_Shape C);
		%feature("autodoc", "1");
		void SetCriteriumWeight(const Standard_Real W1, const Standard_Real W2, const Standard_Real W3);
		%feature("autodoc", "1");
		Approx_ParametrizationType ParType() const;
		%feature("autodoc", "1");
		GeomAbs_Shape Continuity() const;
		%feature("autodoc","CriteriumWeight() -> [Standard_Real, Standard_Real, Standard_Real]");

		void CriteriumWeight(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		void Perform(const Handle_GeomFill_Line &Lin, GeomFill_SweepSectionGenerator & SecGen, const Standard_Boolean SpApprox=0);
		%feature("autodoc", "1");
		void PerformSmoothing(const Handle_GeomFill_Line &Lin, GeomFill_SweepSectionGenerator & SecGen);
		%feature("autodoc", "1");
		void Perform(const Handle_GeomFill_Line &Lin, GeomFill_SweepSectionGenerator & SecGen, const Standard_Integer NbMaxP);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsDone() const;
		%feature("autodoc","SurfShape() -> [Standard_Integer, Standard_Integer, Standard_Integer, Standard_Integer, Standard_Integer, Standard_Integer]");

		virtual		void SurfShape(Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		virtual		void Surface(TColgp_Array2OfPnt & TPoles, TColStd_Array2OfReal & TWeights, TColStd_Array1OfReal & TUKnots, TColStd_Array1OfReal & TVKnots, TColStd_Array1OfInteger & TUMults, TColStd_Array1OfInteger & TVMults) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer UDegree() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer VDegree() const;
		%feature("autodoc", "1");
		virtual		const TColgp_Array2OfPnt & SurfPoles() const;
		%feature("autodoc", "1");
		virtual		const TColStd_Array2OfReal & SurfWeights() const;
		%feature("autodoc", "1");
		virtual		const TColStd_Array1OfReal & SurfUKnots() const;
		%feature("autodoc", "1");
		virtual		const TColStd_Array1OfReal & SurfVKnots() const;
		%feature("autodoc", "1");
		virtual		const TColStd_Array1OfInteger & SurfUMults() const;
		%feature("autodoc", "1");
		virtual		const TColStd_Array1OfInteger & SurfVMults() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbCurves2d() const;
		%feature("autodoc","Curves2dShape() -> [Standard_Integer, Standard_Integer, Standard_Integer]");

		virtual		void Curves2dShape(Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		virtual		void Curve2d(const Standard_Integer Index, TColgp_Array1OfPnt2d & TPoles, TColStd_Array1OfReal & TKnots, TColStd_Array1OfInteger & TMults) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer Curves2dDegree() const;
		%feature("autodoc", "1");
		virtual		const TColgp_Array1OfPnt2d & Curve2dPoles(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		virtual		const TColStd_Array1OfReal & Curves2dKnots() const;
		%feature("autodoc", "1");
		virtual		const TColStd_Array1OfInteger & Curves2dMults() const;
		%feature("autodoc","TolReached() -> [Standard_Real, Standard_Real]");

		virtual		void TolReached(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		virtual		Standard_Real TolCurveOnSurf(const Standard_Integer Index) const;

};
%feature("shadow") GeomFill_AppSweep::~GeomFill_AppSweep %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomFill_AppSweep {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomFill_EvolvedSection;
class GeomFill_EvolvedSection : public GeomFill_SectionLaw {
	public:
		%feature("autodoc", "1");
		GeomFill_EvolvedSection(const Handle_Geom_Curve &C, const Handle_Law_Function &L);
		%feature("autodoc", "1");
		virtual		Standard_Boolean D0(const Standard_Real Param, TColgp_Array1OfPnt & Poles, TColStd_Array1OfReal & Weigths);
		%feature("autodoc", "1");
		virtual		Standard_Boolean D1(const Standard_Real Param, TColgp_Array1OfPnt & Poles, TColgp_Array1OfVec & DPoles, TColStd_Array1OfReal & Weigths, TColStd_Array1OfReal & DWeigths);
		%feature("autodoc", "1");
		virtual		Standard_Boolean D2(const Standard_Real Param, TColgp_Array1OfPnt & Poles, TColgp_Array1OfVec & DPoles, TColgp_Array1OfVec & D2Poles, TColStd_Array1OfReal & Weigths, TColStd_Array1OfReal & DWeigths, TColStd_Array1OfReal & D2Weigths);
		%feature("autodoc", "1");
		virtual		Handle_Geom_BSplineSurface BSplineSurface() const;
		%feature("autodoc","SectionShape() -> [Standard_Integer, Standard_Integer, Standard_Integer]");

		virtual		void SectionShape(Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		virtual		void Knots(TColStd_Array1OfReal & TKnots) const;
		%feature("autodoc", "1");
		virtual		void Mults(TColStd_Array1OfInteger & TMults) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsRational() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsUPeriodic() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsVPeriodic() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbIntervals(const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		virtual		void Intervals(TColStd_Array1OfReal & T, const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		virtual		void SetInterval(const Standard_Real First, const Standard_Real Last);
		%feature("autodoc","GetInterval() -> [Standard_Real, Standard_Real]");

		virtual		void GetInterval(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","GetDomain() -> [Standard_Real, Standard_Real]");

		virtual		void GetDomain(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		virtual		void GetTolerance(const Standard_Real BoundTol, const Standard_Real SurfTol, const Standard_Real AngleTol, TColStd_Array1OfReal & Tol3d) const;
		%feature("autodoc", "1");
		virtual		gp_Pnt BarycentreOfSurf() const;
		%feature("autodoc", "1");
		virtual		Standard_Real MaximalSection() const;
		%feature("autodoc", "1");
		virtual		void GetMinimalWeight(TColStd_Array1OfReal & Weigths) const;
		%feature("autodoc","IsConstant() -> Standard_Real");

		virtual		Standard_Boolean IsConstant(Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		virtual		Handle_Geom_Curve ConstantSection() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GeomFill_EvolvedSection {
	Handle_GeomFill_EvolvedSection GetHandle() {
	return *(Handle_GeomFill_EvolvedSection*) &$self;
	}
};
%extend GeomFill_EvolvedSection {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") GeomFill_EvolvedSection::~GeomFill_EvolvedSection %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomFill_EvolvedSection {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomFill_DraftTrihedron;
class GeomFill_DraftTrihedron : public GeomFill_TrihedronLaw {
	public:
		%feature("autodoc", "1");
		GeomFill_DraftTrihedron(const gp_Vec BiNormal, const Standard_Real Angle);
		%feature("autodoc", "1");
		void SetAngle(const Standard_Real Angle);
		%feature("autodoc", "1");
		virtual		Handle_GeomFill_TrihedronLaw Copy() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean D0(const Standard_Real Param, gp_Vec & Tangent, gp_Vec & Normal, gp_Vec & BiNormal);
		%feature("autodoc", "1");
		virtual		Standard_Boolean D1(const Standard_Real Param, gp_Vec & Tangent, gp_Vec & DTangent, gp_Vec & Normal, gp_Vec & DNormal, gp_Vec & BiNormal, gp_Vec & DBiNormal);
		%feature("autodoc", "1");
		virtual		Standard_Boolean D2(const Standard_Real Param, gp_Vec & Tangent, gp_Vec & DTangent, gp_Vec & D2Tangent, gp_Vec & Normal, gp_Vec & DNormal, gp_Vec & D2Normal, gp_Vec & BiNormal, gp_Vec & DBiNormal, gp_Vec & D2BiNormal);
		%feature("autodoc", "1");
		virtual		Standard_Integer NbIntervals(const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		virtual		void Intervals(TColStd_Array1OfReal & T, const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		virtual		void GetAverageLaw(gp_Vec & ATangent, gp_Vec & ANormal, gp_Vec & ABiNormal);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsConstant() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsOnlyBy3dCurve() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GeomFill_DraftTrihedron {
	Handle_GeomFill_DraftTrihedron GetHandle() {
	return *(Handle_GeomFill_DraftTrihedron*) &$self;
	}
};
%extend GeomFill_DraftTrihedron {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") GeomFill_DraftTrihedron::~GeomFill_DraftTrihedron %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomFill_DraftTrihedron {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomFill_Coons;
class GeomFill_Coons : public GeomFill_Filling {
	public:
		%feature("autodoc", "1");
		GeomFill_Coons();
		%feature("autodoc", "1");
		GeomFill_Coons(const TColgp_Array1OfPnt &P1, const TColgp_Array1OfPnt &P2, const TColgp_Array1OfPnt &P3, const TColgp_Array1OfPnt &P4);
		%feature("autodoc", "1");
		GeomFill_Coons(const TColgp_Array1OfPnt &P1, const TColgp_Array1OfPnt &P2, const TColgp_Array1OfPnt &P3, const TColgp_Array1OfPnt &P4, const TColStd_Array1OfReal &W1, const TColStd_Array1OfReal &W2, const TColStd_Array1OfReal &W3, const TColStd_Array1OfReal &W4);
		%feature("autodoc", "1");
		void Init(const TColgp_Array1OfPnt &P1, const TColgp_Array1OfPnt &P2, const TColgp_Array1OfPnt &P3, const TColgp_Array1OfPnt &P4);
		%feature("autodoc", "1");
		void Init(const TColgp_Array1OfPnt &P1, const TColgp_Array1OfPnt &P2, const TColgp_Array1OfPnt &P3, const TColgp_Array1OfPnt &P4, const TColStd_Array1OfReal &W1, const TColStd_Array1OfReal &W2, const TColStd_Array1OfReal &W3, const TColStd_Array1OfReal &W4);

};
%feature("shadow") GeomFill_Coons::~GeomFill_Coons %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomFill_Coons {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomFill_BoundWithSurf;
class GeomFill_BoundWithSurf : public GeomFill_Boundary {
	public:
		%feature("autodoc", "1");
		GeomFill_BoundWithSurf(const Adaptor3d_CurveOnSurface &CurveOnSurf, const Standard_Real Tol3d, const Standard_Real Tolang);
		%feature("autodoc", "1");
		virtual		gp_Pnt Value(const Standard_Real U) const;
		%feature("autodoc", "1");
		virtual		void D1(const Standard_Real U, gp_Pnt & P, gp_Vec & V) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean HasNormals() const;
		%feature("autodoc", "1");
		virtual		gp_Vec Norm(const Standard_Real U) const;
		%feature("autodoc", "1");
		virtual		void D1Norm(const Standard_Real U, gp_Vec & N, gp_Vec & DN) const;
		%feature("autodoc", "1");
		virtual		void Reparametrize(const Standard_Real First, const Standard_Real Last, const Standard_Boolean HasDF, const Standard_Boolean HasDL, const Standard_Real DF, const Standard_Real DL, const Standard_Boolean Rev);
		%feature("autodoc","Bounds() -> [Standard_Real, Standard_Real]");

		virtual		void Bounds(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsDegenerated() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GeomFill_BoundWithSurf {
	Handle_GeomFill_BoundWithSurf GetHandle() {
	return *(Handle_GeomFill_BoundWithSurf*) &$self;
	}
};
%extend GeomFill_BoundWithSurf {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") GeomFill_BoundWithSurf::~GeomFill_BoundWithSurf %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomFill_BoundWithSurf {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomFill_BezierCurves;
class GeomFill_BezierCurves {
	public:
		%feature("autodoc", "1");
		GeomFill_BezierCurves();
		%feature("autodoc", "1");
		GeomFill_BezierCurves(const Handle_Geom_BezierCurve &C1, const Handle_Geom_BezierCurve &C2, const Handle_Geom_BezierCurve &C3, const Handle_Geom_BezierCurve &C4, const GeomFill_FillingStyle Type);
		%feature("autodoc", "1");
		GeomFill_BezierCurves(const Handle_Geom_BezierCurve &C1, const Handle_Geom_BezierCurve &C2, const Handle_Geom_BezierCurve &C3, const GeomFill_FillingStyle Type);
		%feature("autodoc", "1");
		GeomFill_BezierCurves(const Handle_Geom_BezierCurve &C1, const Handle_Geom_BezierCurve &C2, const GeomFill_FillingStyle Type);
		%feature("autodoc", "1");
		void Init(const Handle_Geom_BezierCurve &C1, const Handle_Geom_BezierCurve &C2, const Handle_Geom_BezierCurve &C3, const Handle_Geom_BezierCurve &C4, const GeomFill_FillingStyle Type);
		%feature("autodoc", "1");
		void Init(const Handle_Geom_BezierCurve &C1, const Handle_Geom_BezierCurve &C2, const Handle_Geom_BezierCurve &C3, const GeomFill_FillingStyle Type);
		%feature("autodoc", "1");
		void Init(const Handle_Geom_BezierCurve &C1, const Handle_Geom_BezierCurve &C2, const GeomFill_FillingStyle Type);
		%feature("autodoc", "1");
		const Handle_Geom_BezierSurface & Surface() const;

};
%feature("shadow") GeomFill_BezierCurves::~GeomFill_BezierCurves %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomFill_BezierCurves {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomFill_SequenceNodeOfSequenceOfTrsf;
class GeomFill_SequenceNodeOfSequenceOfTrsf : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		GeomFill_SequenceNodeOfSequenceOfTrsf(const gp_Trsf I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		gp_Trsf  Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GeomFill_SequenceNodeOfSequenceOfTrsf {
	Handle_GeomFill_SequenceNodeOfSequenceOfTrsf GetHandle() {
	return *(Handle_GeomFill_SequenceNodeOfSequenceOfTrsf*) &$self;
	}
};
%extend GeomFill_SequenceNodeOfSequenceOfTrsf {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") GeomFill_SequenceNodeOfSequenceOfTrsf::~GeomFill_SequenceNodeOfSequenceOfTrsf %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomFill_SequenceNodeOfSequenceOfTrsf {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomFill_Line;
class GeomFill_Line : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		GeomFill_Line();
		%feature("autodoc", "1");
		GeomFill_Line(const Standard_Integer NbPoints);
		%feature("autodoc", "1");
		Standard_Integer NbPoints() const;
		%feature("autodoc", "1");
		Standard_Integer Point(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GeomFill_Line {
	Handle_GeomFill_Line GetHandle() {
	return *(Handle_GeomFill_Line*) &$self;
	}
};
%extend GeomFill_Line {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") GeomFill_Line::~GeomFill_Line %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomFill_Line {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomFill_CurveAndTrihedron;
class GeomFill_CurveAndTrihedron : public GeomFill_LocationLaw {
	public:
		%feature("autodoc", "1");
		GeomFill_CurveAndTrihedron(const Handle_GeomFill_TrihedronLaw &Trihedron);
		%feature("autodoc", "1");
		virtual		void SetCurve(const Handle_Adaptor3d_HCurve &C);
		%feature("autodoc", "1");
		virtual		const Handle_Adaptor3d_HCurve & GetCurve() const;
		%feature("autodoc", "1");
		virtual		void SetTrsf(const gp_Mat Transfo);
		%feature("autodoc", "1");
		virtual		Handle_GeomFill_LocationLaw Copy() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean D0(const Standard_Real Param, gp_Mat & M, gp_Vec & V);
		%feature("autodoc", "1");
		virtual		Standard_Boolean D0(const Standard_Real Param, gp_Mat & M, gp_Vec & V, TColgp_Array1OfPnt2d & Poles2d);
		%feature("autodoc", "1");
		virtual		Standard_Boolean D1(const Standard_Real Param, gp_Mat & M, gp_Vec & V, gp_Mat & DM, gp_Vec & DV, TColgp_Array1OfPnt2d & Poles2d, TColgp_Array1OfVec2d & DPoles2d);
		%feature("autodoc", "1");
		virtual		Standard_Boolean D2(const Standard_Real Param, gp_Mat & M, gp_Vec & V, gp_Mat & DM, gp_Vec & DV, gp_Mat & D2M, gp_Vec & D2V, TColgp_Array1OfPnt2d & Poles2d, TColgp_Array1OfVec2d & DPoles2d, TColgp_Array1OfVec2d & D2Poles2d);
		%feature("autodoc", "1");
		virtual		Standard_Integer NbIntervals(const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		virtual		void Intervals(TColStd_Array1OfReal & T, const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		virtual		void SetInterval(const Standard_Real First, const Standard_Real Last);
		%feature("autodoc","GetInterval() -> [Standard_Real, Standard_Real]");

		virtual		void GetInterval(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","GetDomain() -> [Standard_Real, Standard_Real]");

		virtual		void GetDomain(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		virtual		Standard_Real GetMaximalNorm();
		%feature("autodoc", "1");
		virtual		void GetAverageLaw(gp_Mat & AM, gp_Vec & AV);
		%feature("autodoc","IsTranslation() -> Standard_Real");

		virtual		Standard_Boolean IsTranslation(Standard_Real &OutValue) const;
		%feature("autodoc","IsRotation() -> Standard_Real");

		virtual		Standard_Boolean IsRotation(Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		virtual		void Rotation(gp_Pnt & Center) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GeomFill_CurveAndTrihedron {
	Handle_GeomFill_CurveAndTrihedron GetHandle() {
	return *(Handle_GeomFill_CurveAndTrihedron*) &$self;
	}
};
%extend GeomFill_CurveAndTrihedron {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") GeomFill_CurveAndTrihedron::~GeomFill_CurveAndTrihedron %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomFill_CurveAndTrihedron {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomFill_CorrectedFrenet;
class GeomFill_CorrectedFrenet : public GeomFill_TrihedronLaw {
	public:
		%feature("autodoc", "1");
		GeomFill_CorrectedFrenet();
		%feature("autodoc", "1");
		virtual		Handle_GeomFill_TrihedronLaw Copy() const;
		%feature("autodoc", "1");
		virtual		void SetCurve(const Handle_Adaptor3d_HCurve &C);
		%feature("autodoc", "1");
		virtual		void SetInterval(const Standard_Real First, const Standard_Real Last);
		%feature("autodoc", "1");
		virtual		Standard_Boolean D0(const Standard_Real Param, gp_Vec & Tangent, gp_Vec & Normal, gp_Vec & BiNormal);
		%feature("autodoc", "1");
		virtual		Standard_Boolean D1(const Standard_Real Param, gp_Vec & Tangent, gp_Vec & DTangent, gp_Vec & Normal, gp_Vec & DNormal, gp_Vec & BiNormal, gp_Vec & DBiNormal);
		%feature("autodoc", "1");
		virtual		Standard_Boolean D2(const Standard_Real Param, gp_Vec & Tangent, gp_Vec & DTangent, gp_Vec & D2Tangent, gp_Vec & Normal, gp_Vec & DNormal, gp_Vec & D2Normal, gp_Vec & BiNormal, gp_Vec & DBiNormal, gp_Vec & D2BiNormal);
		%feature("autodoc", "1");
		virtual		Standard_Integer NbIntervals(const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		virtual		void Intervals(TColStd_Array1OfReal & T, const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		virtual		void GetAverageLaw(gp_Vec & ATangent, gp_Vec & ANormal, gp_Vec & ABiNormal);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsConstant() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsOnlyBy3dCurve() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GeomFill_CorrectedFrenet {
	Handle_GeomFill_CorrectedFrenet GetHandle() {
	return *(Handle_GeomFill_CorrectedFrenet*) &$self;
	}
};
%extend GeomFill_CorrectedFrenet {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") GeomFill_CorrectedFrenet::~GeomFill_CorrectedFrenet %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomFill_CorrectedFrenet {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomFill_Array1OfLocationLaw;
class GeomFill_Array1OfLocationLaw {
	public:
		%feature("autodoc", "1");
		GeomFill_Array1OfLocationLaw(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		GeomFill_Array1OfLocationLaw(const Handle_GeomFill_LocationLaw &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Handle_GeomFill_LocationLaw &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const GeomFill_Array1OfLocationLaw & Assign(const GeomFill_Array1OfLocationLaw &Other);
		%feature("autodoc", "1");
		const GeomFill_Array1OfLocationLaw & operator=(const GeomFill_Array1OfLocationLaw &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_GeomFill_LocationLaw &Value);
		%feature("autodoc", "1");
		const Handle_GeomFill_LocationLaw & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_GeomFill_LocationLaw & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_GeomFill_LocationLaw & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_GeomFill_LocationLaw & operator()(const Standard_Integer Index);

};
%feature("shadow") GeomFill_Array1OfLocationLaw::~GeomFill_Array1OfLocationLaw %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomFill_Array1OfLocationLaw {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomFill_Curved;
class GeomFill_Curved : public GeomFill_Filling {
	public:
		%feature("autodoc", "1");
		GeomFill_Curved();
		%feature("autodoc", "1");
		GeomFill_Curved(const TColgp_Array1OfPnt &P1, const TColgp_Array1OfPnt &P2, const TColgp_Array1OfPnt &P3, const TColgp_Array1OfPnt &P4);
		%feature("autodoc", "1");
		GeomFill_Curved(const TColgp_Array1OfPnt &P1, const TColgp_Array1OfPnt &P2, const TColgp_Array1OfPnt &P3, const TColgp_Array1OfPnt &P4, const TColStd_Array1OfReal &W1, const TColStd_Array1OfReal &W2, const TColStd_Array1OfReal &W3, const TColStd_Array1OfReal &W4);
		%feature("autodoc", "1");
		GeomFill_Curved(const TColgp_Array1OfPnt &P1, const TColgp_Array1OfPnt &P2, const TColgp_Array1OfPnt &P3);
		%feature("autodoc", "1");
		GeomFill_Curved(const TColgp_Array1OfPnt &P1, const TColgp_Array1OfPnt &P2, const TColgp_Array1OfPnt &P3, const TColStd_Array1OfReal &W1, const TColStd_Array1OfReal &W2, const TColStd_Array1OfReal &W3);
		%feature("autodoc", "1");
		GeomFill_Curved(const TColgp_Array1OfPnt &P1, const TColgp_Array1OfPnt &P2);
		%feature("autodoc", "1");
		GeomFill_Curved(const TColgp_Array1OfPnt &P1, const TColgp_Array1OfPnt &P2, const TColStd_Array1OfReal &W1, const TColStd_Array1OfReal &W2);
		%feature("autodoc", "1");
		void Init(const TColgp_Array1OfPnt &P1, const TColgp_Array1OfPnt &P2, const TColgp_Array1OfPnt &P3, const TColgp_Array1OfPnt &P4);
		%feature("autodoc", "1");
		void Init(const TColgp_Array1OfPnt &P1, const TColgp_Array1OfPnt &P2, const TColgp_Array1OfPnt &P3, const TColgp_Array1OfPnt &P4, const TColStd_Array1OfReal &W1, const TColStd_Array1OfReal &W2, const TColStd_Array1OfReal &W3, const TColStd_Array1OfReal &W4);
		%feature("autodoc", "1");
		void Init(const TColgp_Array1OfPnt &P1, const TColgp_Array1OfPnt &P2, const TColgp_Array1OfPnt &P3);
		%feature("autodoc", "1");
		void Init(const TColgp_Array1OfPnt &P1, const TColgp_Array1OfPnt &P2, const TColgp_Array1OfPnt &P3, const TColStd_Array1OfReal &W1, const TColStd_Array1OfReal &W2, const TColStd_Array1OfReal &W3);
		%feature("autodoc", "1");
		void Init(const TColgp_Array1OfPnt &P1, const TColgp_Array1OfPnt &P2);
		%feature("autodoc", "1");
		void Init(const TColgp_Array1OfPnt &P1, const TColgp_Array1OfPnt &P2, const TColStd_Array1OfReal &W1, const TColStd_Array1OfReal &W2);

};
%feature("shadow") GeomFill_Curved::~GeomFill_Curved %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomFill_Curved {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor GeomFill_LocationGuide;
class GeomFill_LocationGuide : public GeomFill_LocationLaw {
	public:
		%feature("autodoc", "1");
		GeomFill_LocationGuide(const Handle_GeomFill_TrihedronWithGuide &Triedre);
		%feature("autodoc","Set(const Section, Standard_Boolean rotat, Standard_Real SFirst, Standard_Real SLast, Standard_Real PrecAngle) -> Standard_Real");

		void Set(const Handle_GeomFill_SectionLaw &Section, const Standard_Boolean rotat, const Standard_Real SFirst, const Standard_Real SLast, const Standard_Real PrecAngle, Standard_Real &OutValue);
		%feature("autodoc", "1");
		void EraseRotation();
		%feature("autodoc", "1");
		virtual		void SetCurve(const Handle_Adaptor3d_HCurve &C);
		%feature("autodoc", "1");
		virtual		const Handle_Adaptor3d_HCurve & GetCurve() const;
		%feature("autodoc", "1");
		virtual		void SetTrsf(const gp_Mat Transfo);
		%feature("autodoc", "1");
		virtual		Handle_GeomFill_LocationLaw Copy() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean D0(const Standard_Real Param, gp_Mat & M, gp_Vec & V);
		%feature("autodoc", "1");
		virtual		Standard_Boolean D0(const Standard_Real Param, gp_Mat & M, gp_Vec & V, TColgp_Array1OfPnt2d & Poles2d);
		%feature("autodoc", "1");
		virtual		Standard_Boolean D1(const Standard_Real Param, gp_Mat & M, gp_Vec & V, gp_Mat & DM, gp_Vec & DV, TColgp_Array1OfPnt2d & Poles2d, TColgp_Array1OfVec2d & DPoles2d);
		%feature("autodoc", "1");
		virtual		Standard_Boolean D2(const Standard_Real Param, gp_Mat & M, gp_Vec & V, gp_Mat & DM, gp_Vec & DV, gp_Mat & D2M, gp_Vec & D2V, TColgp_Array1OfPnt2d & Poles2d, TColgp_Array1OfVec2d & DPoles2d, TColgp_Array1OfVec2d & D2Poles2d);
		%feature("autodoc", "1");
		virtual		Standard_Boolean HasFirstRestriction() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean HasLastRestriction() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer TraceNumber() const;
		%feature("autodoc", "1");
		virtual		GeomFill_PipeError ErrorStatus() const;
		%feature("autodoc", "1");
		virtual		Standard_Integer NbIntervals(const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		virtual		void Intervals(TColStd_Array1OfReal & T, const GeomAbs_Shape S) const;
		%feature("autodoc", "1");
		virtual		void SetInterval(const Standard_Real First, const Standard_Real Last);
		%feature("autodoc","GetInterval() -> [Standard_Real, Standard_Real]");

		virtual		void GetInterval(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc","GetDomain() -> [Standard_Real, Standard_Real]");

		virtual		void GetDomain(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		virtual		void SetTolerance(const Standard_Real Tol3d, const Standard_Real Tol2d);
		%feature("autodoc","Resolution(Standard_Integer Index, Standard_Real Tol) -> [Standard_Real, Standard_Real]");

		virtual		void Resolution(const Standard_Integer Index, const Standard_Real Tol, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		virtual		Standard_Real GetMaximalNorm();
		%feature("autodoc", "1");
		virtual		void GetAverageLaw(gp_Mat & AM, gp_Vec & AV);
		%feature("autodoc","IsTranslation() -> Standard_Real");

		virtual		Standard_Boolean IsTranslation(Standard_Real &OutValue) const;
		%feature("autodoc","IsRotation() -> Standard_Real");

		virtual		Standard_Boolean IsRotation(Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		virtual		void Rotation(gp_Pnt & Center) const;
		%feature("autodoc", "1");
		Handle_Geom_Curve Section() const;
		%feature("autodoc", "1");
		Handle_Adaptor3d_HCurve Guide() const;
		%feature("autodoc", "1");
		void SetOrigine(const Standard_Real Param1, const Standard_Real Param2);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend GeomFill_LocationGuide {
	Handle_GeomFill_LocationGuide GetHandle() {
	return *(Handle_GeomFill_LocationGuide*) &$self;
	}
};
%extend GeomFill_LocationGuide {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") GeomFill_LocationGuide::~GeomFill_LocationGuide %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend GeomFill_LocationGuide {
	void _kill_pointed() {
		delete $self;
	}
};
