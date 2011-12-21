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
%rename(DownCast) Handle_StepVisual_PresentationRepresentation::DownCast;
%rename(DownCast) Handle_StepVisual_MechanicalDesignGeometricPresentationRepresentation::DownCast;
%rename(DownCast) Handle_StepVisual_Invisibility::DownCast;
%rename(DownCast) Handle_StepVisual_CurveStyle::DownCast;
%rename(DownCast) Handle_StepVisual_SurfaceStyleSegmentationCurve::DownCast;
%rename(DownCast) Handle_StepVisual_Colour::DownCast;
%rename(DownCast) Handle_StepVisual_PreDefinedColour::DownCast;
%rename(DownCast) Handle_StepVisual_AnnotationText::DownCast;
%rename(DownCast) Handle_StepVisual_ContextDependentInvisibility::DownCast;
%rename(DownCast) Handle_StepVisual_ExternallyDefinedCurveFont::DownCast;
%rename(DownCast) Handle_StepVisual_MarkerMember::DownCast;
%rename(DownCast) Handle_StepVisual_PresentationView::DownCast;
%rename(DownCast) Handle_StepVisual_StyledItem::DownCast;
%rename(DownCast) Handle_StepVisual_OverRidingStyledItem::DownCast;
%rename(DownCast) Handle_StepVisual_ContextDependentOverRidingStyledItem::DownCast;
%rename(DownCast) Handle_StepVisual_PresentationSize::DownCast;
%rename(DownCast) Handle_StepVisual_DraughtingPreDefinedColour::DownCast;
%rename(DownCast) Handle_StepVisual_PresentationLayerAssignment::DownCast;
%rename(DownCast) Handle_StepVisual_CameraModel::DownCast;
%rename(DownCast) Handle_StepVisual_CameraModelD3::DownCast;
%rename(DownCast) Handle_StepVisual_HArray1OfTextOrCharacter::DownCast;
%rename(DownCast) Handle_StepVisual_ColourSpecification::DownCast;
%rename(DownCast) Handle_StepVisual_TextStyleForDefinedFont::DownCast;
%rename(DownCast) Handle_StepVisual_CameraModelD2::DownCast;
%rename(DownCast) Handle_StepVisual_CameraImage::DownCast;
%rename(DownCast) Handle_StepVisual_SurfaceStyleParameterLine::DownCast;
%rename(DownCast) Handle_StepVisual_AnnotationOccurrence::DownCast;
%rename(DownCast) Handle_StepVisual_CameraImage2dWithScale::DownCast;
%rename(DownCast) Handle_StepVisual_HArray1OfPresentationStyleAssignment::DownCast;
%rename(DownCast) Handle_StepVisual_PresentationArea::DownCast;
%rename(DownCast) Handle_StepVisual_MechanicalDesignGeometricPresentationArea::DownCast;
%rename(DownCast) Handle_StepVisual_ViewVolume::DownCast;
%rename(DownCast) Handle_StepVisual_TextStyle::DownCast;
%rename(DownCast) Handle_StepVisual_TextStyleWithBoxCharacteristics::DownCast;
%rename(DownCast) Handle_StepVisual_SurfaceStyleControlGrid::DownCast;
%rename(DownCast) Handle_StepVisual_SurfaceSideStyle::DownCast;
%rename(DownCast) Handle_StepVisual_CurveStyleFont::DownCast;
%rename(DownCast) Handle_StepVisual_CompositeText::DownCast;
%rename(DownCast) Handle_StepVisual_PointStyle::DownCast;
%rename(DownCast) Handle_StepVisual_HArray1OfDirectionCountSelect::DownCast;
%rename(DownCast) Handle_StepVisual_FillAreaStyle::DownCast;
%rename(DownCast) Handle_StepVisual_ColourRgb::DownCast;
%rename(DownCast) Handle_StepVisual_PresentationSet::DownCast;
%rename(DownCast) Handle_StepVisual_ExternallyDefinedTextFont::DownCast;
%rename(DownCast) Handle_StepVisual_TemplateInstance::DownCast;
%rename(DownCast) Handle_StepVisual_HArray1OfFillStyleSelect::DownCast;
%rename(DownCast) Handle_StepVisual_FillAreaStyleColour::DownCast;
%rename(DownCast) Handle_StepVisual_HArray1OfSurfaceStyleElementSelect::DownCast;
%rename(DownCast) Handle_StepVisual_SurfaceStyleFillArea::DownCast;
%rename(DownCast) Handle_StepVisual_PresentedItem::DownCast;
%rename(DownCast) Handle_StepVisual_Template::DownCast;
%rename(DownCast) Handle_StepVisual_AreaInSet::DownCast;
%rename(DownCast) Handle_StepVisual_CameraImage3dWithScale::DownCast;
%rename(DownCast) Handle_StepVisual_BackgroundColour::DownCast;
%rename(DownCast) Handle_StepVisual_PreDefinedItem::DownCast;
%rename(DownCast) Handle_StepVisual_PreDefinedCurveFont::DownCast;
%rename(DownCast) Handle_StepVisual_HArray1OfBoxCharacteristicSelect::DownCast;
%rename(DownCast) Handle_StepVisual_CurveStyleFontPattern::DownCast;
%rename(DownCast) Handle_StepVisual_SurfaceStyleUsage::DownCast;
%rename(DownCast) Handle_StepVisual_PlanarExtent::DownCast;
%rename(DownCast) Handle_StepVisual_PlanarBox::DownCast;
%rename(DownCast) Handle_StepVisual_DraughtingAnnotationOccurrence::DownCast;
%rename(DownCast) Handle_StepVisual_HArray1OfCurveStyleFontPattern::DownCast;
%rename(DownCast) Handle_StepVisual_AnnotationTextOccurrence::DownCast;
%rename(DownCast) Handle_StepVisual_DraughtingPreDefinedCurveFont::DownCast;
%rename(DownCast) Handle_StepVisual_TextLiteral::DownCast;
%rename(DownCast) Handle_StepVisual_PresentationStyleAssignment::DownCast;
%rename(DownCast) Handle_StepVisual_CompositeTextWithExtent::DownCast;
%rename(DownCast) Handle_StepVisual_HArray1OfStyleContextSelect::DownCast;
%rename(DownCast) Handle_StepVisual_DraughtingModel::DownCast;
%rename(DownCast) Handle_StepVisual_SurfaceStyleBoundary::DownCast;
%rename(DownCast) Handle_StepVisual_PresentedItemRepresentation::DownCast;
%rename(DownCast) Handle_StepVisual_HArray1OfInvisibleItem::DownCast;
%rename(DownCast) Handle_StepVisual_SurfaceStyleSilhouette::DownCast;
%rename(DownCast) Handle_StepVisual_HArray1OfLayeredItem::DownCast;
%rename(DownCast) Handle_StepVisual_PreDefinedTextFont::DownCast;
%rename(DownCast) Handle_StepVisual_CameraUsage::DownCast;
%rename(DownCast) Handle_StepVisual_PresentationStyleByContext::DownCast;
%rename(DownCast) Handle_StepVisual_PresentationLayerUsage::DownCast;
%rename(DownCast) Handle_StepVisual_HArray1OfPresentationStyleSelect::DownCast;
