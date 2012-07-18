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

// Headers necessary to define wrapped classes.

#include<Aspect.hxx>
#include<Aspect_Array1OfEdge.hxx>
#include<Aspect_AspectFillArea.hxx>
#include<Aspect_AspectFillAreaDefinitionError.hxx>
#include<Aspect_AspectLine.hxx>
#include<Aspect_AspectLineDefinitionError.hxx>
#include<Aspect_AspectMarker.hxx>
#include<Aspect_AspectMarkerDefinitionError.hxx>
#include<Aspect_Background.hxx>
#include<Aspect_BadAccess.hxx>
#include<Aspect_CLayer2d.hxx>
#include<Aspect_CardinalPoints.hxx>
#include<Aspect_CircularGrid.hxx>
#include<Aspect_ColorCubeColorMap.hxx>
#include<Aspect_ColorMap.hxx>
#include<Aspect_ColorMapDefinitionError.hxx>
#include<Aspect_ColorMapEntry.hxx>
#include<Aspect_ColorPixel.hxx>
#include<Aspect_ColorRampColorMap.hxx>
#include<Aspect_ColorScale.hxx>
#include<Aspect_Convert.hxx>
#include<Aspect_Display.hxx>
#include<Aspect_Drawable.hxx>
#include<Aspect_Driver.hxx>
#include<Aspect_DriverDefinitionError.hxx>
#include<Aspect_DriverError.hxx>
#include<Aspect_DriverPtr.hxx>
#include<Aspect_Edge.hxx>
#include<Aspect_EdgeDefinitionError.hxx>
#include<Aspect_FStream.hxx>
#include<Aspect_FillMethod.hxx>
#include<Aspect_FontMap.hxx>
#include<Aspect_FontMapDefinitionError.hxx>
#include<Aspect_FontMapEntry.hxx>
#include<Aspect_FontStyle.hxx>
#include<Aspect_FontStyleDefinitionError.hxx>
#include<Aspect_FormatOfSheetPaper.hxx>
#include<Aspect_GenId.hxx>
#include<Aspect_GenericColorMap.hxx>
#include<Aspect_GradientBackground.hxx>
#include<Aspect_GradientFillMethod.hxx>
#include<Aspect_GraphicCallbackProc.hxx>
#include<Aspect_GraphicDevice.hxx>
#include<Aspect_GraphicDeviceDefinitionError.hxx>
#include<Aspect_GraphicDriver.hxx>
#include<Aspect_Grid.hxx>
#include<Aspect_GridDrawMode.hxx>
#include<Aspect_GridType.hxx>
#include<Aspect_Handle.hxx>
#include<Aspect_HatchStyle.hxx>
#include<Aspect_IFStream.hxx>
#include<Aspect_IdentDefinitionError.hxx>
#include<Aspect_IndexPixel.hxx>
#include<Aspect_InteriorStyle.hxx>
#include<Aspect_LineStyle.hxx>
#include<Aspect_LineStyleDefinitionError.hxx>
#include<Aspect_LineWidthDefinitionError.hxx>
#include<Aspect_ListingType.hxx>
#include<Aspect_MarkMap.hxx>
#include<Aspect_MarkMapDefinitionError.hxx>
#include<Aspect_MarkMapEntry.hxx>
#include<Aspect_MarkerStyle.hxx>
#include<Aspect_MarkerStyleDefinitionError.hxx>
#include<Aspect_PixMap.hxx>
#include<Aspect_Pixel.hxx>
#include<Aspect_PixmapDefinitionError.hxx>
#include<Aspect_PixmapError.hxx>
#include<Aspect_PlotMode.hxx>
#include<Aspect_PlotterOrigin.hxx>
#include<Aspect_PolyStyleDefinitionError.hxx>
#include<Aspect_PolygonOffsetMode.hxx>
#include<Aspect_PrintAlgo.hxx>
#include<Aspect_RGBPixel.hxx>
#include<Aspect_RectangularGrid.hxx>
#include<Aspect_RenderingContext.hxx>
#include<Aspect_SequenceNodeOfSequenceOfColor.hxx>
#include<Aspect_SequenceNodeOfSequenceOfColorMapEntry.hxx>
#include<Aspect_SequenceNodeOfSequenceOfFontMapEntry.hxx>
#include<Aspect_SequenceNodeOfSequenceOfMarkMapEntry.hxx>
#include<Aspect_SequenceNodeOfSequenceOfTypeMapEntry.hxx>
#include<Aspect_SequenceNodeOfSequenceOfWidthMapEntry.hxx>
#include<Aspect_SequenceOfColor.hxx>
#include<Aspect_SequenceOfColorMapEntry.hxx>
#include<Aspect_SequenceOfFontMapEntry.hxx>
#include<Aspect_SequenceOfMarkMapEntry.hxx>
#include<Aspect_SequenceOfTypeMapEntry.hxx>
#include<Aspect_SequenceOfWidthMapEntry.hxx>
#include<Aspect_TypeMap.hxx>
#include<Aspect_TypeMapDefinitionError.hxx>
#include<Aspect_TypeMapEntry.hxx>
#include<Aspect_TypeOfColorMap.hxx>
#include<Aspect_TypeOfColorScaleData.hxx>
#include<Aspect_TypeOfColorScaleOrientation.hxx>
#include<Aspect_TypeOfColorScalePosition.hxx>
#include<Aspect_TypeOfColorSpace.hxx>
#include<Aspect_TypeOfConstraint.hxx>
#include<Aspect_TypeOfDeflection.hxx>
#include<Aspect_TypeOfDegenerateModel.hxx>
#include<Aspect_TypeOfDisplayText.hxx>
#include<Aspect_TypeOfDrawMode.hxx>
#include<Aspect_TypeOfEdge.hxx>
#include<Aspect_TypeOfFacingModel.hxx>
#include<Aspect_TypeOfFont.hxx>
#include<Aspect_TypeOfHighlightMethod.hxx>
#include<Aspect_TypeOfLayer.hxx>
#include<Aspect_TypeOfLine.hxx>
#include<Aspect_TypeOfMarker.hxx>
#include<Aspect_TypeOfPrimitive.hxx>
#include<Aspect_TypeOfRenderingMode.hxx>
#include<Aspect_TypeOfResize.hxx>
#include<Aspect_TypeOfStyleText.hxx>
#include<Aspect_TypeOfText.hxx>
#include<Aspect_TypeOfTriedronEcho.hxx>
#include<Aspect_TypeOfTriedronPosition.hxx>
#include<Aspect_TypeOfUpdate.hxx>
#include<Aspect_UndefinedMap.hxx>
#include<Aspect_Units.hxx>
#include<Aspect_WidthMap.hxx>
#include<Aspect_WidthMapDefinitionError.hxx>
#include<Aspect_WidthMapEntry.hxx>
#include<Aspect_WidthOfLine.hxx>
#include<Aspect_Window.hxx>
#include<Aspect_WindowDefinitionError.hxx>
#include<Aspect_WindowDriver.hxx>
#include<Aspect_WindowDriverPtr.hxx>
#include<Aspect_WindowError.hxx>
#include<Handle_Aspect_AspectFillArea.hxx>
#include<Handle_Aspect_AspectFillAreaDefinitionError.hxx>
#include<Handle_Aspect_AspectLine.hxx>
#include<Handle_Aspect_AspectLineDefinitionError.hxx>
#include<Handle_Aspect_AspectMarker.hxx>
#include<Handle_Aspect_AspectMarkerDefinitionError.hxx>
#include<Handle_Aspect_BadAccess.hxx>
#include<Handle_Aspect_CircularGrid.hxx>
#include<Handle_Aspect_ColorCubeColorMap.hxx>
#include<Handle_Aspect_ColorMap.hxx>
#include<Handle_Aspect_ColorMapDefinitionError.hxx>
#include<Handle_Aspect_ColorRampColorMap.hxx>
#include<Handle_Aspect_ColorScale.hxx>
#include<Handle_Aspect_Driver.hxx>
#include<Handle_Aspect_DriverDefinitionError.hxx>
#include<Handle_Aspect_DriverError.hxx>
#include<Handle_Aspect_EdgeDefinitionError.hxx>
#include<Handle_Aspect_FontMap.hxx>
#include<Handle_Aspect_FontMapDefinitionError.hxx>
#include<Handle_Aspect_FontStyleDefinitionError.hxx>
#include<Handle_Aspect_GenericColorMap.hxx>
#include<Handle_Aspect_GraphicDevice.hxx>
#include<Handle_Aspect_GraphicDeviceDefinitionError.hxx>
#include<Handle_Aspect_GraphicDriver.hxx>
#include<Handle_Aspect_Grid.hxx>
#include<Handle_Aspect_IdentDefinitionError.hxx>
#include<Handle_Aspect_LineStyleDefinitionError.hxx>
#include<Handle_Aspect_LineWidthDefinitionError.hxx>
#include<Handle_Aspect_MarkMap.hxx>
#include<Handle_Aspect_MarkMapDefinitionError.hxx>
#include<Handle_Aspect_MarkerStyleDefinitionError.hxx>
#include<Handle_Aspect_PixMap.hxx>
#include<Handle_Aspect_PixmapDefinitionError.hxx>
#include<Handle_Aspect_PixmapError.hxx>
#include<Handle_Aspect_PolyStyleDefinitionError.hxx>
#include<Handle_Aspect_RectangularGrid.hxx>
#include<Handle_Aspect_SequenceNodeOfSequenceOfColor.hxx>
#include<Handle_Aspect_SequenceNodeOfSequenceOfColorMapEntry.hxx>
#include<Handle_Aspect_SequenceNodeOfSequenceOfFontMapEntry.hxx>
#include<Handle_Aspect_SequenceNodeOfSequenceOfMarkMapEntry.hxx>
#include<Handle_Aspect_SequenceNodeOfSequenceOfTypeMapEntry.hxx>
#include<Handle_Aspect_SequenceNodeOfSequenceOfWidthMapEntry.hxx>
#include<Handle_Aspect_TypeMap.hxx>
#include<Handle_Aspect_TypeMapDefinitionError.hxx>
#include<Handle_Aspect_UndefinedMap.hxx>
#include<Handle_Aspect_WidthMap.hxx>
#include<Handle_Aspect_WidthMapDefinitionError.hxx>
#include<Handle_Aspect_Window.hxx>
#include<Handle_Aspect_WindowDefinitionError.hxx>
#include<Handle_Aspect_WindowDriver.hxx>
#include<Handle_Aspect_WindowError.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<TColStd_Array1OfReal.hxx>
#include<TColStd_Array1OfBoolean.hxx>
#include<Quantity_Color.hxx>
#include<TShort_Array1OfShortReal.hxx>
#include<TCollection_ExtendedString.hxx>
#include<Aspect.hxx>
#include<TColStd_Array2OfReal.hxx>
#include<TColQuantity_Array1OfLength.hxx>
#include<TCollection_AsciiString.hxx>
#include<TColStd_SequenceOfExtendedString.hxx>
%}
