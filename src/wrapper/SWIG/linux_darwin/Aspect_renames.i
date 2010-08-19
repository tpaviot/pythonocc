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
%rename(downcast) Handle_Aspect_TypeMapDefinitionError::DownCast;
%rename(downcast) Handle_Aspect_AspectLineDefinitionError::DownCast;
%rename(downcast) Handle_Aspect_SequenceNodeOfSequenceOfWidthMapEntry::DownCast;
%rename(downcast) Handle_Aspect_ColorMap::DownCast;
%rename(downcast) Handle_Aspect_GenericColorMap::DownCast;
%rename(downcast) Handle_Aspect_SequenceNodeOfSequenceOfColorMapEntry::DownCast;
%rename(downcast) Handle_Aspect_SequenceNodeOfSequenceOfMarkMapEntry::DownCast;
%rename(downcast) Handle_Aspect_MarkerStyleDefinitionError::DownCast;
%rename(downcast) Handle_Aspect_Driver::DownCast;
%rename(downcast) Handle_Aspect_WindowDriver::DownCast;
%rename(downcast) Handle_Aspect_PixMap::DownCast;
%rename(downcast) Handle_Aspect_DriverDefinitionError::DownCast;
%rename(downcast) Handle_Aspect_GraphicDeviceDefinitionError::DownCast;
%rename(downcast) Handle_Aspect_MarkMap::DownCast;
%rename(downcast) Handle_Aspect_Grid::DownCast;
%rename(downcast) Handle_Aspect_PixmapError::DownCast;
%rename(downcast) Handle_Aspect_AspectMarker::DownCast;
%rename(downcast) Handle_Aspect_ColorMapDefinitionError::DownCast;
%rename(downcast) Handle_Aspect_Window::DownCast;
%rename(downcast) Handle_Aspect_CircularGrid::DownCast;
%rename(downcast) Handle_Aspect_BadAccess::DownCast;
%rename(downcast) Handle_Aspect_WidthMap::DownCast;
%rename(downcast) Handle_Aspect_AspectFillArea::DownCast;
%rename(downcast) Handle_Aspect_SequenceNodeOfSequenceOfTypeMapEntry::DownCast;
%rename(downcast) Handle_Aspect_EdgeDefinitionError::DownCast;
%rename(downcast) Handle_Aspect_FontStyleDefinitionError::DownCast;
%rename(downcast) Handle_Aspect_WidthMapDefinitionError::DownCast;
%rename(downcast) Handle_Aspect_RectangularGrid::DownCast;
%rename(downcast) Handle_Aspect_LineStyleDefinitionError::DownCast;
%rename(downcast) Handle_Aspect_SequenceNodeOfSequenceOfFontMapEntry::DownCast;
%rename(downcast) Handle_Aspect_IdentDefinitionError::DownCast;
%rename(downcast) Handle_Aspect_UndefinedMap::DownCast;
%rename(downcast) Handle_Aspect_ColorRampColorMap::DownCast;
%rename(downcast) Handle_Aspect_AspectMarkerDefinitionError::DownCast;
%rename(downcast) Handle_Aspect_PixmapDefinitionError::DownCast;
%rename(downcast) Handle_Aspect_MarkMapDefinitionError::DownCast;
%rename(downcast) Handle_Aspect_FontMap::DownCast;
%rename(downcast) Handle_Aspect_LineWidthDefinitionError::DownCast;
%rename(downcast) Handle_Aspect_AspectLine::DownCast;
%rename(downcast) Handle_Aspect_DriverError::DownCast;
%rename(downcast) Handle_Aspect_ColorCubeColorMap::DownCast;
%rename(downcast) Handle_Aspect_ColorScale::DownCast;
%rename(downcast) Handle_Aspect_GraphicDriver::DownCast;
%rename(downcast) Handle_Aspect_FontMapDefinitionError::DownCast;
%rename(downcast) Handle_Aspect_WindowError::DownCast;
%rename(downcast) Handle_Aspect_SequenceNodeOfSequenceOfColor::DownCast;
%rename(downcast) Handle_Aspect_GraphicDevice::DownCast;
%rename(downcast) Handle_Aspect_WindowDefinitionError::DownCast;
%rename(downcast) Handle_Aspect_AspectFillAreaDefinitionError::DownCast;
%rename(downcast) Handle_Aspect_TypeMap::DownCast;
%rename(downcast) Handle_Aspect_PolyStyleDefinitionError::DownCast;
%rename(raise) Aspect_ColorMapDefinitionError::Raise;
%rename(raise) Aspect_ColorMapDefinitionError::Raise;
%rename(newinstance) Aspect_ColorMapDefinitionError::NewInstance;
%rename(raise) Aspect_UndefinedMap::Raise;
%rename(raise) Aspect_UndefinedMap::Raise;
%rename(newinstance) Aspect_UndefinedMap::NewInstance;
%rename(raise) Aspect_PixmapError::Raise;
%rename(raise) Aspect_PixmapError::Raise;
%rename(newinstance) Aspect_PixmapError::NewInstance;
%rename(raise) Aspect_WindowError::Raise;
%rename(raise) Aspect_WindowError::Raise;
%rename(newinstance) Aspect_WindowError::NewInstance;
%rename(raise) Aspect_AspectFillAreaDefinitionError::Raise;
%rename(raise) Aspect_AspectFillAreaDefinitionError::Raise;
%rename(newinstance) Aspect_AspectFillAreaDefinitionError::NewInstance;
%rename(raise) Aspect_DriverDefinitionError::Raise;
%rename(raise) Aspect_DriverDefinitionError::Raise;
%rename(newinstance) Aspect_DriverDefinitionError::NewInstance;
%rename(raise) Aspect_LineStyleDefinitionError::Raise;
%rename(raise) Aspect_LineStyleDefinitionError::Raise;
%rename(newinstance) Aspect_LineStyleDefinitionError::NewInstance;
%rename(raise) Aspect_PixmapDefinitionError::Raise;
%rename(raise) Aspect_PixmapDefinitionError::Raise;
%rename(newinstance) Aspect_PixmapDefinitionError::NewInstance;
%rename(raise) Aspect_GraphicDeviceDefinitionError::Raise;
%rename(raise) Aspect_GraphicDeviceDefinitionError::Raise;
%rename(newinstance) Aspect_GraphicDeviceDefinitionError::NewInstance;
%rename(raise) Aspect_EdgeDefinitionError::Raise;
%rename(raise) Aspect_EdgeDefinitionError::Raise;
%rename(newinstance) Aspect_EdgeDefinitionError::NewInstance;
%rename(raise) Aspect_MarkMapDefinitionError::Raise;
%rename(raise) Aspect_MarkMapDefinitionError::Raise;
%rename(newinstance) Aspect_MarkMapDefinitionError::NewInstance;
%rename(raise) Aspect_FontStyleDefinitionError::Raise;
%rename(raise) Aspect_FontStyleDefinitionError::Raise;
%rename(newinstance) Aspect_FontStyleDefinitionError::NewInstance;
%rename(raise) Aspect_AspectMarkerDefinitionError::Raise;
%rename(raise) Aspect_AspectMarkerDefinitionError::Raise;
%rename(newinstance) Aspect_AspectMarkerDefinitionError::NewInstance;
%rename(raise) Aspect_TypeMapDefinitionError::Raise;
%rename(raise) Aspect_TypeMapDefinitionError::Raise;
%rename(newinstance) Aspect_TypeMapDefinitionError::NewInstance;
%rename(raise) Aspect_MarkerStyleDefinitionError::Raise;
%rename(raise) Aspect_MarkerStyleDefinitionError::Raise;
%rename(newinstance) Aspect_MarkerStyleDefinitionError::NewInstance;
%rename(raise) Aspect_PolyStyleDefinitionError::Raise;
%rename(raise) Aspect_PolyStyleDefinitionError::Raise;
%rename(newinstance) Aspect_PolyStyleDefinitionError::NewInstance;
%rename(raise) Aspect_DriverError::Raise;
%rename(raise) Aspect_DriverError::Raise;
%rename(newinstance) Aspect_DriverError::NewInstance;
%rename(raise) Aspect_LineWidthDefinitionError::Raise;
%rename(raise) Aspect_LineWidthDefinitionError::Raise;
%rename(newinstance) Aspect_LineWidthDefinitionError::NewInstance;
%rename(valuesoffosp) Aspect::ValuesOfFOSP;
%rename(tocstring) Aspect::ToCString;
%rename(inverse) Aspect::Inverse;
%rename(raise) Aspect_BadAccess::Raise;
%rename(raise) Aspect_BadAccess::Raise;
%rename(newinstance) Aspect_BadAccess::NewInstance;
%rename(raise) Aspect_AspectLineDefinitionError::Raise;
%rename(raise) Aspect_AspectLineDefinitionError::Raise;
%rename(newinstance) Aspect_AspectLineDefinitionError::NewInstance;
%rename(raise) Aspect_IdentDefinitionError::Raise;
%rename(raise) Aspect_IdentDefinitionError::Raise;
%rename(newinstance) Aspect_IdentDefinitionError::NewInstance;
%rename(raise) Aspect_WindowDefinitionError::Raise;
%rename(raise) Aspect_WindowDefinitionError::Raise;
%rename(newinstance) Aspect_WindowDefinitionError::NewInstance;
%rename(raise) Aspect_WidthMapDefinitionError::Raise;
%rename(raise) Aspect_WidthMapDefinitionError::Raise;
%rename(newinstance) Aspect_WidthMapDefinitionError::NewInstance;
%rename(raise) Aspect_FontMapDefinitionError::Raise;
%rename(raise) Aspect_FontMapDefinitionError::Raise;
%rename(newinstance) Aspect_FontMapDefinitionError::NewInstance;
%rename(findcolor) Aspect_ColorScale::FindColor;
