/*

Copyright 2008-2010 Thomas Paviot (tpaviot@gmail.com)

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

$Revision$
$Date$
$Author$
$HeaderURL$

*/
%rename(downcast) Handle_StepVisual_PresentationRepresentation::DownCast;
%rename(downcast) Handle_StepVisual_MechanicalDesignGeometricPresentationRepresentation::DownCast;
%rename(downcast) Handle_StepVisual_CompositeText::DownCast;
%rename(downcast) Handle_StepVisual_Invisibility::DownCast;
%rename(downcast) Handle_StepVisual_CameraModel::DownCast;
%rename(downcast) Handle_StepVisual_SurfaceStyleSegmentationCurve::DownCast;
%rename(downcast) Handle_StepVisual_Colour::DownCast;
%rename(downcast) Handle_StepVisual_PreDefinedColour::DownCast;
%rename(downcast) Handle_StepVisual_CameraUsage::DownCast;
%rename(downcast) Handle_StepVisual_AnnotationText::DownCast;
%rename(downcast) Handle_StepVisual_ContextDependentInvisibility::DownCast;
%rename(downcast) Handle_StepVisual_ExternallyDefinedCurveFont::DownCast;
%rename(downcast) Handle_StepVisual_MarkerMember::DownCast;
%rename(downcast) Handle_StepVisual_PresentationView::DownCast;
%rename(downcast) Handle_StepVisual_StyledItem::DownCast;
%rename(downcast) Handle_StepVisual_OverRidingStyledItem::DownCast;
%rename(downcast) Handle_StepVisual_ContextDependentOverRidingStyledItem::DownCast;
%rename(downcast) Handle_StepVisual_PresentationSize::DownCast;
%rename(downcast) Handle_StepVisual_DraughtingPreDefinedColour::DownCast;
%rename(downcast) Handle_StepVisual_HArray1OfTextOrCharacter::DownCast;
%rename(downcast) Handle_StepVisual_CameraModelD2::DownCast;
%rename(downcast) Handle_StepVisual_CameraModelD3::DownCast;
%rename(downcast) Handle_StepVisual_CameraImage::DownCast;
%rename(downcast) Handle_StepVisual_SurfaceStyleParameterLine::DownCast;
%rename(downcast) Handle_StepVisual_AnnotationOccurrence::DownCast;
%rename(downcast) Handle_StepVisual_CameraImage2dWithScale::DownCast;
%rename(downcast) Handle_StepVisual_HArray1OfPresentationStyleAssignment::DownCast;
%rename(downcast) Handle_StepVisual_PresentationLayerAssignment::DownCast;
%rename(downcast) Handle_StepVisual_PresentationArea::DownCast;
%rename(downcast) Handle_StepVisual_MechanicalDesignGeometricPresentationArea::DownCast;
%rename(downcast) Handle_StepVisual_PresentationStyleAssignment::DownCast;
%rename(downcast) Handle_StepVisual_PresentationStyleByContext::DownCast;
%rename(downcast) Handle_StepVisual_ViewVolume::DownCast;
%rename(downcast) Handle_StepVisual_TextStyle::DownCast;
%rename(downcast) Handle_StepVisual_TextStyleWithBoxCharacteristics::DownCast;
%rename(downcast) Handle_StepVisual_SurfaceSideStyle::DownCast;
%rename(downcast) Handle_StepVisual_PointStyle::DownCast;
%rename(downcast) Handle_StepVisual_HArray1OfDirectionCountSelect::DownCast;
%rename(downcast) Handle_StepVisual_FillAreaStyle::DownCast;
%rename(downcast) Handle_StepVisual_ColourSpecification::DownCast;
%rename(downcast) Handle_StepVisual_ColourRgb::DownCast;
%rename(downcast) Handle_StepVisual_PresentationSet::DownCast;
%rename(downcast) Handle_StepVisual_CurveStyle::DownCast;
%rename(downcast) Handle_StepVisual_ExternallyDefinedTextFont::DownCast;
%rename(downcast) Handle_StepVisual_TemplateInstance::DownCast;
%rename(downcast) Handle_StepVisual_HArray1OfFillStyleSelect::DownCast;
%rename(downcast) Handle_StepVisual_FillAreaStyleColour::DownCast;
%rename(downcast) Handle_StepVisual_HArray1OfSurfaceStyleElementSelect::DownCast;
%rename(downcast) Handle_StepVisual_SurfaceStyleFillArea::DownCast;
%rename(downcast) Handle_StepVisual_PresentedItem::DownCast;
%rename(downcast) Handle_StepVisual_Template::DownCast;
%rename(downcast) Handle_StepVisual_AreaInSet::DownCast;
%rename(downcast) Handle_StepVisual_TextStyleForDefinedFont::DownCast;
%rename(downcast) Handle_StepVisual_PreDefinedItem::DownCast;
%rename(downcast) Handle_StepVisual_PreDefinedCurveFont::DownCast;
%rename(downcast) Handle_StepVisual_HArray1OfBoxCharacteristicSelect::DownCast;
%rename(downcast) Handle_StepVisual_PreDefinedTextFont::DownCast;
%rename(downcast) Handle_StepVisual_CurveStyleFontPattern::DownCast;
%rename(downcast) Handle_StepVisual_SurfaceStyleUsage::DownCast;
%rename(downcast) Handle_StepVisual_PlanarExtent::DownCast;
%rename(downcast) Handle_StepVisual_PlanarBox::DownCast;
%rename(downcast) Handle_StepVisual_DraughtingAnnotationOccurrence::DownCast;
%rename(downcast) Handle_StepVisual_HArray1OfCurveStyleFontPattern::DownCast;
%rename(downcast) Handle_StepVisual_HArray1OfPresentationStyleSelect::DownCast;
%rename(downcast) Handle_StepVisual_AnnotationTextOccurrence::DownCast;
%rename(downcast) Handle_StepVisual_DraughtingPreDefinedCurveFont::DownCast;
%rename(downcast) Handle_StepVisual_TextLiteral::DownCast;
%rename(downcast) Handle_StepVisual_CompositeTextWithExtent::DownCast;
%rename(downcast) Handle_StepVisual_DraughtingModel::DownCast;
%rename(downcast) Handle_StepVisual_SurfaceStyleBoundary::DownCast;
%rename(downcast) Handle_StepVisual_HArray1OfLayeredItem::DownCast;
%rename(downcast) Handle_StepVisual_PresentationLayerUsage::DownCast;
%rename(downcast) Handle_StepVisual_HArray1OfStyleContextSelect::DownCast;
%rename(downcast) Handle_StepVisual_PresentedItemRepresentation::DownCast;
%rename(downcast) Handle_StepVisual_HArray1OfInvisibleItem::DownCast;
%rename(downcast) Handle_StepVisual_SurfaceStyleSilhouette::DownCast;
%rename(downcast) Handle_StepVisual_BackgroundColour::DownCast;
%rename(downcast) Handle_StepVisual_CameraImage3dWithScale::DownCast;
%rename(downcast) Handle_StepVisual_CurveStyleFont::DownCast;
%rename(downcast) Handle_StepVisual_SurfaceStyleControlGrid::DownCast;
