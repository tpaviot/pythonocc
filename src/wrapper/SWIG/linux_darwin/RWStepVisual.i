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

%module RWStepVisual
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include RWStepVisual_renames.i


%include RWStepVisual_required_python_modules.i


%include RWStepVisual_dependencies.i


%include RWStepVisual_headers.i




%nodefaultctor RWStepVisual_RWAreaInSet;
class RWStepVisual_RWAreaInSet {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWAreaInSet();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_AreaInSet &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_AreaInSet &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_AreaInSet &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepVisual_RWAreaInSet::~RWStepVisual_RWAreaInSet %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepVisual_RWAreaInSet {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepVisual_RWCompositeTextWithExtent;
class RWStepVisual_RWCompositeTextWithExtent {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWCompositeTextWithExtent();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_CompositeTextWithExtent &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_CompositeTextWithExtent &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_CompositeTextWithExtent &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepVisual_RWCompositeTextWithExtent::~RWStepVisual_RWCompositeTextWithExtent %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepVisual_RWCompositeTextWithExtent {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepVisual_RWBackgroundColour;
class RWStepVisual_RWBackgroundColour {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWBackgroundColour();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_BackgroundColour &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_BackgroundColour &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_BackgroundColour &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepVisual_RWBackgroundColour::~RWStepVisual_RWBackgroundColour %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepVisual_RWBackgroundColour {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepVisual_RWContextDependentInvisibility;
class RWStepVisual_RWContextDependentInvisibility {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWContextDependentInvisibility();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_ContextDependentInvisibility &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_ContextDependentInvisibility &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_ContextDependentInvisibility &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepVisual_RWContextDependentInvisibility::~RWStepVisual_RWContextDependentInvisibility %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepVisual_RWContextDependentInvisibility {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepVisual_RWTextStyle;
class RWStepVisual_RWTextStyle {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWTextStyle();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_TextStyle &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_TextStyle &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_TextStyle &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepVisual_RWTextStyle::~RWStepVisual_RWTextStyle %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepVisual_RWTextStyle {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepVisual_RWFillAreaStyle;
class RWStepVisual_RWFillAreaStyle {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWFillAreaStyle();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_FillAreaStyle &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_FillAreaStyle &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_FillAreaStyle &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepVisual_RWFillAreaStyle::~RWStepVisual_RWFillAreaStyle %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepVisual_RWFillAreaStyle {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepVisual_RWCompositeText;
class RWStepVisual_RWCompositeText {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWCompositeText();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_CompositeText &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_CompositeText &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_CompositeText &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepVisual_RWCompositeText::~RWStepVisual_RWCompositeText %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepVisual_RWCompositeText {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepVisual_RWCameraModelD2;
class RWStepVisual_RWCameraModelD2 {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWCameraModelD2();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_CameraModelD2 &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_CameraModelD2 &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_CameraModelD2 &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepVisual_RWCameraModelD2::~RWStepVisual_RWCameraModelD2 %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepVisual_RWCameraModelD2 {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepVisual_RWSurfaceStyleSilhouette;
class RWStepVisual_RWSurfaceStyleSilhouette {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWSurfaceStyleSilhouette();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_SurfaceStyleSilhouette &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_SurfaceStyleSilhouette &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_SurfaceStyleSilhouette &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepVisual_RWSurfaceStyleSilhouette::~RWStepVisual_RWSurfaceStyleSilhouette %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepVisual_RWSurfaceStyleSilhouette {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepVisual_RWMechanicalDesignGeometricPresentationRepresentation;
class RWStepVisual_RWMechanicalDesignGeometricPresentationRepresentation {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWMechanicalDesignGeometricPresentationRepresentation();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_MechanicalDesignGeometricPresentationRepresentation &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_MechanicalDesignGeometricPresentationRepresentation &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_MechanicalDesignGeometricPresentationRepresentation &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepVisual_RWMechanicalDesignGeometricPresentationRepresentation::~RWStepVisual_RWMechanicalDesignGeometricPresentationRepresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepVisual_RWMechanicalDesignGeometricPresentationRepresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepVisual_RWPresentedItemRepresentation;
class RWStepVisual_RWPresentedItemRepresentation {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWPresentedItemRepresentation();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_PresentedItemRepresentation &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_PresentedItemRepresentation &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_PresentedItemRepresentation &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepVisual_RWPresentedItemRepresentation::~RWStepVisual_RWPresentedItemRepresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepVisual_RWPresentedItemRepresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepVisual_RWSurfaceStyleUsage;
class RWStepVisual_RWSurfaceStyleUsage {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWSurfaceStyleUsage();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_SurfaceStyleUsage &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_SurfaceStyleUsage &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_SurfaceStyleUsage &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepVisual_RWSurfaceStyleUsage::~RWStepVisual_RWSurfaceStyleUsage %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepVisual_RWSurfaceStyleUsage {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepVisual_RWPreDefinedColour;
class RWStepVisual_RWPreDefinedColour {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWPreDefinedColour();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_PreDefinedColour &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_PreDefinedColour &ent) const;

};
%feature("shadow") RWStepVisual_RWPreDefinedColour::~RWStepVisual_RWPreDefinedColour %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepVisual_RWPreDefinedColour {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepVisual_RWPreDefinedCurveFont;
class RWStepVisual_RWPreDefinedCurveFont {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWPreDefinedCurveFont();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_PreDefinedCurveFont &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_PreDefinedCurveFont &ent) const;

};
%feature("shadow") RWStepVisual_RWPreDefinedCurveFont::~RWStepVisual_RWPreDefinedCurveFont %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepVisual_RWPreDefinedCurveFont {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepVisual_RWPresentationLayerUsage;
class RWStepVisual_RWPresentationLayerUsage {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWPresentationLayerUsage();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_PresentationLayerUsage &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_PresentationLayerUsage &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_PresentationLayerUsage &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepVisual_RWPresentationLayerUsage::~RWStepVisual_RWPresentationLayerUsage %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepVisual_RWPresentationLayerUsage {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepVisual_RWSurfaceStyleControlGrid;
class RWStepVisual_RWSurfaceStyleControlGrid {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWSurfaceStyleControlGrid();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_SurfaceStyleControlGrid &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_SurfaceStyleControlGrid &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_SurfaceStyleControlGrid &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepVisual_RWSurfaceStyleControlGrid::~RWStepVisual_RWSurfaceStyleControlGrid %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepVisual_RWSurfaceStyleControlGrid {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepVisual_RWMechanicalDesignGeometricPresentationArea;
class RWStepVisual_RWMechanicalDesignGeometricPresentationArea {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWMechanicalDesignGeometricPresentationArea();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_MechanicalDesignGeometricPresentationArea &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_MechanicalDesignGeometricPresentationArea &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_MechanicalDesignGeometricPresentationArea &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepVisual_RWMechanicalDesignGeometricPresentationArea::~RWStepVisual_RWMechanicalDesignGeometricPresentationArea %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepVisual_RWMechanicalDesignGeometricPresentationArea {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepVisual_RWPresentationView;
class RWStepVisual_RWPresentationView {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWPresentationView();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_PresentationView &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_PresentationView &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_PresentationView &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepVisual_RWPresentationView::~RWStepVisual_RWPresentationView %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepVisual_RWPresentationView {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepVisual_RWPresentationSize;
class RWStepVisual_RWPresentationSize {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWPresentationSize();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_PresentationSize &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_PresentationSize &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_PresentationSize &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepVisual_RWPresentationSize::~RWStepVisual_RWPresentationSize %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepVisual_RWPresentationSize {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepVisual_RWPresentationStyleByContext;
class RWStepVisual_RWPresentationStyleByContext {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWPresentationStyleByContext();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_PresentationStyleByContext &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_PresentationStyleByContext &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_PresentationStyleByContext &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepVisual_RWPresentationStyleByContext::~RWStepVisual_RWPresentationStyleByContext %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepVisual_RWPresentationStyleByContext {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepVisual_RWPresentationSet;
class RWStepVisual_RWPresentationSet {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWPresentationSet();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_PresentationSet &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_PresentationSet &ent) const;

};
%feature("shadow") RWStepVisual_RWPresentationSet::~RWStepVisual_RWPresentationSet %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepVisual_RWPresentationSet {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepVisual_RWContextDependentOverRidingStyledItem;
class RWStepVisual_RWContextDependentOverRidingStyledItem {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWContextDependentOverRidingStyledItem();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_ContextDependentOverRidingStyledItem &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_ContextDependentOverRidingStyledItem &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_ContextDependentOverRidingStyledItem &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepVisual_RWContextDependentOverRidingStyledItem::~RWStepVisual_RWContextDependentOverRidingStyledItem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepVisual_RWContextDependentOverRidingStyledItem {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepVisual_RWSurfaceStyleSegmentationCurve;
class RWStepVisual_RWSurfaceStyleSegmentationCurve {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWSurfaceStyleSegmentationCurve();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_SurfaceStyleSegmentationCurve &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_SurfaceStyleSegmentationCurve &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_SurfaceStyleSegmentationCurve &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepVisual_RWSurfaceStyleSegmentationCurve::~RWStepVisual_RWSurfaceStyleSegmentationCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepVisual_RWSurfaceStyleSegmentationCurve {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepVisual_RWPresentationArea;
class RWStepVisual_RWPresentationArea {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWPresentationArea();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_PresentationArea &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_PresentationArea &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_PresentationArea &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepVisual_RWPresentationArea::~RWStepVisual_RWPresentationArea %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepVisual_RWPresentationArea {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepVisual_RWOverRidingStyledItem;
class RWStepVisual_RWOverRidingStyledItem {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWOverRidingStyledItem();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_OverRidingStyledItem &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_OverRidingStyledItem &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_OverRidingStyledItem &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepVisual_RWOverRidingStyledItem::~RWStepVisual_RWOverRidingStyledItem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepVisual_RWOverRidingStyledItem {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepVisual_RWTextStyleWithBoxCharacteristics;
class RWStepVisual_RWTextStyleWithBoxCharacteristics {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWTextStyleWithBoxCharacteristics();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_TextStyleWithBoxCharacteristics &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_TextStyleWithBoxCharacteristics &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_TextStyleWithBoxCharacteristics &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepVisual_RWTextStyleWithBoxCharacteristics::~RWStepVisual_RWTextStyleWithBoxCharacteristics %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepVisual_RWTextStyleWithBoxCharacteristics {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepVisual_RWSurfaceSideStyle;
class RWStepVisual_RWSurfaceSideStyle {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWSurfaceSideStyle();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_SurfaceSideStyle &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_SurfaceSideStyle &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_SurfaceSideStyle &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepVisual_RWSurfaceSideStyle::~RWStepVisual_RWSurfaceSideStyle %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepVisual_RWSurfaceSideStyle {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepVisual_RWDraughtingModel;
class RWStepVisual_RWDraughtingModel {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWDraughtingModel();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_DraughtingModel &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_DraughtingModel &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_DraughtingModel &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepVisual_RWDraughtingModel::~RWStepVisual_RWDraughtingModel %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepVisual_RWDraughtingModel {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepVisual_RWPresentationLayerAssignment;
class RWStepVisual_RWPresentationLayerAssignment {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWPresentationLayerAssignment();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_PresentationLayerAssignment &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_PresentationLayerAssignment &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_PresentationLayerAssignment &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepVisual_RWPresentationLayerAssignment::~RWStepVisual_RWPresentationLayerAssignment %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepVisual_RWPresentationLayerAssignment {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepVisual_RWPlanarExtent;
class RWStepVisual_RWPlanarExtent {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWPlanarExtent();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_PlanarExtent &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_PlanarExtent &ent) const;

};
%feature("shadow") RWStepVisual_RWPlanarExtent::~RWStepVisual_RWPlanarExtent %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepVisual_RWPlanarExtent {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepVisual_RWInvisibility;
class RWStepVisual_RWInvisibility {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWInvisibility();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_Invisibility &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_Invisibility &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_Invisibility &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepVisual_RWInvisibility::~RWStepVisual_RWInvisibility %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepVisual_RWInvisibility {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepVisual_RWStyledItem;
class RWStepVisual_RWStyledItem {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWStyledItem();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_StyledItem &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_StyledItem &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_StyledItem &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepVisual_RWStyledItem::~RWStepVisual_RWStyledItem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepVisual_RWStyledItem {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepVisual_RWPlanarBox;
class RWStepVisual_RWPlanarBox {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWPlanarBox();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_PlanarBox &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_PlanarBox &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_PlanarBox &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepVisual_RWPlanarBox::~RWStepVisual_RWPlanarBox %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepVisual_RWPlanarBox {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepVisual_RWSurfaceStyleBoundary;
class RWStepVisual_RWSurfaceStyleBoundary {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWSurfaceStyleBoundary();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_SurfaceStyleBoundary &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_SurfaceStyleBoundary &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_SurfaceStyleBoundary &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepVisual_RWSurfaceStyleBoundary::~RWStepVisual_RWSurfaceStyleBoundary %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepVisual_RWSurfaceStyleBoundary {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepVisual_RWCameraImage;
class RWStepVisual_RWCameraImage {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWCameraImage();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_CameraImage &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_CameraImage &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_CameraImage &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepVisual_RWCameraImage::~RWStepVisual_RWCameraImage %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepVisual_RWCameraImage {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepVisual_RWPreDefinedItem;
class RWStepVisual_RWPreDefinedItem {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWPreDefinedItem();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_PreDefinedItem &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_PreDefinedItem &ent) const;

};
%feature("shadow") RWStepVisual_RWPreDefinedItem::~RWStepVisual_RWPreDefinedItem %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepVisual_RWPreDefinedItem {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepVisual_RWColourSpecification;
class RWStepVisual_RWColourSpecification {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWColourSpecification();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_ColourSpecification &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_ColourSpecification &ent) const;

};
%feature("shadow") RWStepVisual_RWColourSpecification::~RWStepVisual_RWColourSpecification %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepVisual_RWColourSpecification {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepVisual_RWFillAreaStyleColour;
class RWStepVisual_RWFillAreaStyleColour {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWFillAreaStyleColour();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_FillAreaStyleColour &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_FillAreaStyleColour &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_FillAreaStyleColour &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepVisual_RWFillAreaStyleColour::~RWStepVisual_RWFillAreaStyleColour %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepVisual_RWFillAreaStyleColour {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepVisual_RWTemplateInstance;
class RWStepVisual_RWTemplateInstance {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWTemplateInstance();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_TemplateInstance &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_TemplateInstance &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_TemplateInstance &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepVisual_RWTemplateInstance::~RWStepVisual_RWTemplateInstance %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepVisual_RWTemplateInstance {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepVisual_RWTextLiteral;
class RWStepVisual_RWTextLiteral {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWTextLiteral();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_TextLiteral &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_TextLiteral &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_TextLiteral &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepVisual_RWTextLiteral::~RWStepVisual_RWTextLiteral %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepVisual_RWTextLiteral {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepVisual_RWSurfaceStyleFillArea;
class RWStepVisual_RWSurfaceStyleFillArea {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWSurfaceStyleFillArea();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_SurfaceStyleFillArea &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_SurfaceStyleFillArea &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_SurfaceStyleFillArea &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepVisual_RWSurfaceStyleFillArea::~RWStepVisual_RWSurfaceStyleFillArea %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepVisual_RWSurfaceStyleFillArea {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepVisual_RWViewVolume;
class RWStepVisual_RWViewVolume {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWViewVolume();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_ViewVolume &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_ViewVolume &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_ViewVolume &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepVisual_RWViewVolume::~RWStepVisual_RWViewVolume %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepVisual_RWViewVolume {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepVisual_RWDraughtingPreDefinedCurveFont;
class RWStepVisual_RWDraughtingPreDefinedCurveFont {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWDraughtingPreDefinedCurveFont();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_DraughtingPreDefinedCurveFont &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_DraughtingPreDefinedCurveFont &ent) const;

};
%feature("shadow") RWStepVisual_RWDraughtingPreDefinedCurveFont::~RWStepVisual_RWDraughtingPreDefinedCurveFont %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepVisual_RWDraughtingPreDefinedCurveFont {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepVisual_RWCurveStyle;
class RWStepVisual_RWCurveStyle {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWCurveStyle();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_CurveStyle &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_CurveStyle &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_CurveStyle &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepVisual_RWCurveStyle::~RWStepVisual_RWCurveStyle %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepVisual_RWCurveStyle {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepVisual_RWTemplate;
class RWStepVisual_RWTemplate {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWTemplate();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_Template &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_Template &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_Template &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepVisual_RWTemplate::~RWStepVisual_RWTemplate %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepVisual_RWTemplate {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepVisual_RWColourRgb;
class RWStepVisual_RWColourRgb {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWColourRgb();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_ColourRgb &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_ColourRgb &ent) const;

};
%feature("shadow") RWStepVisual_RWColourRgb::~RWStepVisual_RWColourRgb %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepVisual_RWColourRgb {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepVisual_RWCameraModel;
class RWStepVisual_RWCameraModel {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWCameraModel();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_CameraModel &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_CameraModel &ent) const;

};
%feature("shadow") RWStepVisual_RWCameraModel::~RWStepVisual_RWCameraModel %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepVisual_RWCameraModel {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepVisual_RWPointStyle;
class RWStepVisual_RWPointStyle {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWPointStyle();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_PointStyle &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_PointStyle &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_PointStyle &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepVisual_RWPointStyle::~RWStepVisual_RWPointStyle %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepVisual_RWPointStyle {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepVisual_RWCurveStyleFontPattern;
class RWStepVisual_RWCurveStyleFontPattern {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWCurveStyleFontPattern();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_CurveStyleFontPattern &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_CurveStyleFontPattern &ent) const;

};
%feature("shadow") RWStepVisual_RWCurveStyleFontPattern::~RWStepVisual_RWCurveStyleFontPattern %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepVisual_RWCurveStyleFontPattern {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepVisual_RWCameraUsage;
class RWStepVisual_RWCameraUsage {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWCameraUsage();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_CameraUsage &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_CameraUsage &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_CameraUsage &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepVisual_RWCameraUsage::~RWStepVisual_RWCameraUsage %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepVisual_RWCameraUsage {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepVisual_RWTextStyleForDefinedFont;
class RWStepVisual_RWTextStyleForDefinedFont {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWTextStyleForDefinedFont();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_TextStyleForDefinedFont &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_TextStyleForDefinedFont &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_TextStyleForDefinedFont &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepVisual_RWTextStyleForDefinedFont::~RWStepVisual_RWTextStyleForDefinedFont %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepVisual_RWTextStyleForDefinedFont {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepVisual_RWColour;
class RWStepVisual_RWColour {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWColour();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_Colour &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_Colour &ent) const;

};
%feature("shadow") RWStepVisual_RWColour::~RWStepVisual_RWColour %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepVisual_RWColour {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepVisual_RWPresentationRepresentation;
class RWStepVisual_RWPresentationRepresentation {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWPresentationRepresentation();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_PresentationRepresentation &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_PresentationRepresentation &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_PresentationRepresentation &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepVisual_RWPresentationRepresentation::~RWStepVisual_RWPresentationRepresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepVisual_RWPresentationRepresentation {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepVisual_RWCurveStyleFont;
class RWStepVisual_RWCurveStyleFont {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWCurveStyleFont();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_CurveStyleFont &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_CurveStyleFont &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_CurveStyleFont &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepVisual_RWCurveStyleFont::~RWStepVisual_RWCurveStyleFont %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepVisual_RWCurveStyleFont {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepVisual_RWSurfaceStyleParameterLine;
class RWStepVisual_RWSurfaceStyleParameterLine {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWSurfaceStyleParameterLine();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_SurfaceStyleParameterLine &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_SurfaceStyleParameterLine &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_SurfaceStyleParameterLine &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepVisual_RWSurfaceStyleParameterLine::~RWStepVisual_RWSurfaceStyleParameterLine %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepVisual_RWSurfaceStyleParameterLine {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepVisual_RWExternallyDefinedCurveFont;
class RWStepVisual_RWExternallyDefinedCurveFont {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWExternallyDefinedCurveFont();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_ExternallyDefinedCurveFont &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_ExternallyDefinedCurveFont &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_ExternallyDefinedCurveFont &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepVisual_RWExternallyDefinedCurveFont::~RWStepVisual_RWExternallyDefinedCurveFont %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepVisual_RWExternallyDefinedCurveFont {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepVisual_RWPresentationStyleAssignment;
class RWStepVisual_RWPresentationStyleAssignment {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWPresentationStyleAssignment();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_PresentationStyleAssignment &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_PresentationStyleAssignment &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_PresentationStyleAssignment &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepVisual_RWPresentationStyleAssignment::~RWStepVisual_RWPresentationStyleAssignment %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepVisual_RWPresentationStyleAssignment {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepVisual_RWCameraModelD3;
class RWStepVisual_RWCameraModelD3 {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWCameraModelD3();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_CameraModelD3 &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_CameraModelD3 &ent) const;
		%feature("autodoc", "1");
		void Share(const Handle_StepVisual_CameraModelD3 &ent, Interface_EntityIterator & iter) const;

};
%feature("shadow") RWStepVisual_RWCameraModelD3::~RWStepVisual_RWCameraModelD3 %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepVisual_RWCameraModelD3 {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor RWStepVisual_RWDraughtingPreDefinedColour;
class RWStepVisual_RWDraughtingPreDefinedColour {
	public:
		%feature("autodoc", "1");
		RWStepVisual_RWDraughtingPreDefinedColour();
		%feature("autodoc", "1");
		void ReadStep(const Handle_StepData_StepReaderData &data, const Standard_Integer num, Handle_Interface_Check & ach, const Handle_StepVisual_DraughtingPreDefinedColour &ent) const;
		%feature("autodoc", "1");
		void WriteStep(StepData_StepWriter & SW, const Handle_StepVisual_DraughtingPreDefinedColour &ent) const;

};
%feature("shadow") RWStepVisual_RWDraughtingPreDefinedColour::~RWStepVisual_RWDraughtingPreDefinedColour %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend RWStepVisual_RWDraughtingPreDefinedColour {
	void _kill_pointed() {
		delete $self;
	}
};
